mkdir webscraping
cd webscraping

npm config ls -l 

npm config set init-main "index.js"
npm config set init-author-name "Shami Ivan"
npm config set init-version "1.0.0"
npm config set init-license "MIT"

npm init -y 

npm install puppeteer

touch index.js

# cat ../../Documents/programs/webscraping/index.js >> index.js 
echo "t puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page.goto('https://example.com');
  await page.screenshot({ path: 'example.png' });

  await browser.close();
})();


//const puppeteer = require('puppeteer');
//
//(async () => {
//  const browser = await puppeteer.launch({
//        executablePath: "/usr/bin/chromium-browser"
//          });
//            const page = await browser.newPage();
//              await page.goto('https://example.com');
//                await page.screenshot({ path: 'example.png' });
//
//                  await browser.close();
//
})();


" >> index.js
