Parallel Coordinate Plots for GeoJSON Feature Collections
=========================================================

This is an extremely simple plug-in for D3 that generates an SVG-based parallel coordinate plot for a [GeoJSON][geojson] [Feature Collection][geojsonfc]. 

This code was heavily influenced by [Jason Davies'][davies] [Parallel Coordinates][daviespcp] example. In fact, you might even say I just straight-up copied the code and changed it to meet my needs. Because, that's exactly what I did. Thank you, Jason, for this example. 

Again, this is an extremely simple implementation of a Parallel Coordinate Plot. If you need something more complex or detailed, I suggest you take a look at Syntagmatic's [Parallel Coordinates][syntagmaticpcp] plug-in.

## API 

<a name="d3_pcpgeojson" href="#d3_pcpgeojson">#</a> d3.**pcpGeoJson**(_collection_[, _options_])

Creates a parallel coordinate plot for the properties, with values of type _Number_, of each [Features][geojsonf] in a [Feature Collection][geojsonfc]. Returns a reference to 

The _collection_ parameter is required and **must** be a GeoJSON Feature collection. Behavior is undefined if this parameter is not a Feature Collection. 

The _options_ parameter is an optional object that allows you to define the following properties:

* _id_      : [String] The ID of the container for the PCP, defaults to 'body'
* _keys_    : [Array] List of all property names to be used as dimensions of the PCP, defaults to all properties in the first feature that has data of type Number
* _buffers_ : [Array] Array of numbers, must specify all; [top, right, bottom, left], defaults to [30, 10, 10, 10]
* _width_   : [Number] Width of the plot, defaults to 960
* _height_  : [Number] Height of the plot, defaults to 500 
* _linker_  : [Function] Details to come...

### Linking Functionality

Details to come.

### Example Usage

```HTML 

<html lang="en">
<head>
  <script src="//d3.v3.min.js" charset="utf-8"></script>
  <script src="//d3.pcpGeoJson.min.js"></script>
  <link href="//d3.pcpGeoJson.css" rel='stylesheet' />
</head>
<body>
  <script type="text/javascript">
    d3.json('collection.json', function (error, collection) {
      if (error) {
        return console.warn(error);
      }

      d3.pcpGeoJson(collection);
    })
  </script>
</body>
</html>

```

<!-- Links -->

[davies]: https://www.jasondavies.com/
[daviespcp]: http://bl.ocks.org/jasondavies/1341281
[geog461w]: http://bulletins.psu.edu/undergrad/courses/G/GEOG/461W
[geog461wfp]: http://www.geovista.psu.edu/resources/geog461w.html
[geojson]: http://geojson.org/
[geojsonf]: http://geojson.org/geojson-spec.html#feature-objects
[geojsonfc]: http://geojson.org/geojson-spec.html#feature-collection-objects
[syntagmaticpcp]: https://github.com/syntagmatic/parallel-coordinates
