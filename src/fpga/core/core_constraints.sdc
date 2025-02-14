#
# user core constraints
#
# put your clock groups in here as well as any net assignments
#

set_clock_groups -asynchronous \
 -group { bridge_spiclk } \
 -group { clk_74a } \
 -group { clk_74b } \
 -group { ic|mp1|mf_pllbase_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk } \
 -group { ic|mp1|mf_pllbase_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER|divclk } \
 -group { ic|mp1|mf_pllbase_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk } \
          ic|mp1|mf_pllbase_inst|altera_pll_i|general[3].gpll~PLL_OUTPUT_COUNTER|divclk }

derive_clock_uncertainty

#set_multicycle_path -to {*Hq2x*} -setup 4
#set_multicycle_path -to {*Hq2x*} -hold 3

set_multicycle_path -from {ic|sdram|dout*} -to {ic|system|data*} -setup 2
set_multicycle_path -from {ic|sdram|dout*} -to {ic|system|data*} -hold 1
