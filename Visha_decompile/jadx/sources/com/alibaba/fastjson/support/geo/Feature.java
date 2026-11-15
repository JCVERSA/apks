package com.alibaba.fastjson.support.geo;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.alibaba.fastjson.annotation.JSONType;
import java.util.LinkedHashMap;
import java.util.Map;
import org.apache.commons.text.lookup.StringLookupFactory;

@JSONType(orders = {"type", TtmlNode.ATTR_ID, "bbox", "coordinates", StringLookupFactory.KEY_PROPERTIES}, typeName = "Feature")
public class Feature extends Geometry {
    private Geometry geometry;
    private String id;
    private Map<String, String> properties;

    public Feature() {
        super("Feature");
        this.properties = new LinkedHashMap();
    }

    public Geometry getGeometry() {
        return this.geometry;
    }

    public String getId() {
        return this.id;
    }

    public Map<String, String> getProperties() {
        return this.properties;
    }

    public void setGeometry(Geometry geometry) {
        this.geometry = geometry;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setProperties(Map<String, String> map) {
        this.properties = map;
    }
}
