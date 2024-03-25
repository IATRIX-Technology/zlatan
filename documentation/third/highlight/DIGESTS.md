## Subresource Integrity

If you are loading Highlight.js via CDN you may wish to use [Subresource Integrity](https://developer.mozilla.org/en-US/docs/Web/Security/Subresource_Integrity) to guarantee that you are using a legimitate build of the library.

To do this you simply need to add the `integrity` attribute for each JavaScript file you download via CDN. These digests are used by the browser to confirm the files downloaded have not been modified.

```html
<script
  src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/highlight.min.js"
  integrity="sha384-9mu2JKpUImscOMmwjm1y6MA2YsW3amSoFNYwKeUHxaXYKQ1naywWmamEGMdviEen"></script>
<!-- including any other grammars you might need to load -->
<script
  src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/languages/go.min.js"
  integrity="sha384-WmGkHEmwSI19EhTfO1nrSk3RziUQKRWg3vO0Ur3VYZjWvJRdRnX4/scQg+S2w1fI"></script>
```

The full list of digests for every file can be found below.

### Digests

```
sha384-rqtFXvniNXrZTFRcZc5F9ano/u0O/msM134wIOTua4N8YclRvV9PwTwlUv/fgXYj /es/languages/delphi.js
sha384-jXq3YW2qBlEEVJJxkiYe4RHnEk4kkPJu7Wg0Cea5VnZygckFLo0ripESXwXtYD2r /es/languages/delphi.min.js
sha384-Gf06qf01IrD0JuCt67iLFhFOVo/4cdUftWqIK7Dd60VAaVUKBWyzOT/2veU3LT8N /languages/delphi.js
sha384-ii437zeP5iV+Dk6oU6OW83sd8HK1skKMk4zkamqKUfp/mSRFeK26M3IokGhAgTpS /languages/delphi.min.js
sha384-6Cjon1nwlYL2qfjZmtB5zxup/cLDcqL+4hOhiijmbcSDkPg4XTgDVRPpo3Vg7tuD /highlight.js
sha384-XyBjfIWRV+shVRJeQA3eL16AEM/rLrczBXF3XqFOL1KKRD2Htc1xytdLVVymmQFR /highlight.min.js
```

