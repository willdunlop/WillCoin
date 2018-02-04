# WillCoin

WillCoin (WIL) is a relatively useless coin that was created for the sole purpose of shits and giggles. WillCoin only exists within the boundaries of a local development ethereum network with no plans or reason to ever make it live.

### What does it do?
You can send. You can recieve. You can check your balance.

### How can I see it in action?

First, clone this repositroy to your local machine using `git clone https://github.com/willdunlop/WillCoin.git`

Secondly, install testrpc `npm i -g ethereum-testrpc` in order to simulate and run a local ethereum blockchain network as well as truffle `npm i -g truffle` in order to compile and migrate the contracts into the test network.

Run `testrpc` to start the testrpc blockchain which should run at `localhost:84545`. This should generate 10 address' with their respective private keys. Once this is done compile the WillCoin contracts with `truffle compile` and add it to the test blockchain network with `truffle migrate`

A front-end service for controlling funds has not been implemented. You can run `truffle test ./test/MyCoin.js` to see a test file transfer funds from one account to another. The output should appear as:

![Alt tag](test/DeepinScreenshot_select-area_20180204215805.png?raw=true "Title")
