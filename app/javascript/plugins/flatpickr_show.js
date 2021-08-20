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
};

const initFlatpickrGreyCalendar = () => {
  const bookingForm = document.getElementById('booking-form-div');
  if (bookingForm) {
    const bookings = JSON.parse(bookingForm.dataset.bookings);
    flatpickr("#startdate", {
      altInput: true,
      plugins: [new rangePlugin({ input: "#enddate" })],
      inline: true,
      "disable": bookings
    })
  }
};

export { initFlatpickrShow, initFlatpickrGreyCalendar };
