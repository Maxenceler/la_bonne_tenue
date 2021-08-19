import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const initFlatpickrShow = () => {
  if (window.location.pathname.match(/\/items\/\d+/)) {
    flatpickr("#startdate", {
      altInput: true,
      mode: "range",
      inline: true
    });
  }
}

export { initFlatpickrShow };
