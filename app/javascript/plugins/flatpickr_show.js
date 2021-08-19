import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const initFlatpickrShow = () => {
  if (window.location.pathname.match(/\/items\/\d+/)) {
    flatpickr("#startdate", {
      altInput: true,
      plugins: [new rangePlugin({ input: "#enddate" })],
      inline: true
    });
  }
}

export { initFlatpickrShow };
