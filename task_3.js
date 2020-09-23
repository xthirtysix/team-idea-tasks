const getCurrency = async (valuteCode) => {
  const parser = new DOMParser();

  try {
    let res = await fetch(
      // "http://www.cbr.ru/scripts/XML_daily.asp"
      "https://www.cbr-xml-daily.ru/daily_utf8.xml"
      )
      .then((data) => {
        return data.text();
      })
      .then((data) => {
        return parser.parseFromString(data, "text/xml");
      });

    const valutes = res.getElementsByTagName("Valute");

    const valute = [...valutes].filter((el) => {
      return [...el.childNodes].some((val) => {
        return val.innerHTML === valuteCode;
      });
    })[0].childNodes;

    const valuteNominal = parseInt(
      [...valute].filter((el) => {
        return el.tagName === "Nominal";
      })[0].innerHTML,
      0
    );
    const valuteValue = parseFloat(
      [...valute]
        .filter((el) => {
          return el.tagName === "Value";
        })[0]
        .innerHTML.split(",")
        .join("."),
      0
    );

    return valuteValue / valuteNominal;
  } catch (error) {
    console.error(
      "Unable to fetch data. Please check your internet connection"
    );
  }
};

await getCurrency("HKD").then((data) => {
  return `HKD to RUB: ${data}`;
});
