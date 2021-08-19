import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const initFlatpickr = () => {
  if (!window.location.pathname.match(/\/items\/\d+/)) {
    flatpickr("#startdate", {
      altInput: true,
      plugins: [new rangePlugin({ input: "#enddate" })],
    });
  }
}
export { initFlatpickr };
