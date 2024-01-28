var pesos: Double = 4
var reais: Double = 5
var soles: Double = 6

var total: Double

// USD
// 🇨🇴 Pesos conversion rate: 0.00029
// 🇧🇷 Reais conversion rate: 0.24
// 🇵🇪 Soles conversion rate: 0.29

var rate1 = 0.00029
var rate2 = 0.24
var rate3 = 0.29
total = rate1 * pesos + rate2 * reais + rate3 * soles

print("US Dollars = $\(total)")