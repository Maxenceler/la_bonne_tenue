import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const initFlatpickr = () => {
  flatpickr("#startdate", {
    altInput: true,
    plugins: [new rangePlugin({ input: "#enddate" })]
  });
}

export { initFlatpickr };
