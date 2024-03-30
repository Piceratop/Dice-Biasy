// @function           scr_random(_arr)
// @param {array} _arr The array to be picked randomly from
// @description        Pick a random element in an array

function choose_array(_arr){
	return _arr[irandom_range(0, array_length(_arr) - 1)];
}