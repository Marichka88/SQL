var moment = require('moment');

console.log("Hello FROM JAVASCRIPT");

var datetime = moment().startOf('day').fromNow();
console.log(datetime);



import advancedFormat from 'dayjs/plugin/advancedFormat' // load on demand

dayjs.extend(advancedFormat) // use plugin

dayjs().format('Q Do k kk X x') // more available formats

console.log(datetime) 