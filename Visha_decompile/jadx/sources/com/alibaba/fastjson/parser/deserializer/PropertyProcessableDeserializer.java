package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import java.lang.reflect.Type;

public class PropertyProcessableDeserializer implements ObjectDeserializer {
    public final Class<PropertyProcessable> type;

    public PropertyProcessableDeserializer(Class<PropertyProcessable> cls) {
        this.type = cls;
    }

    @Override
    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        try {
            return (T) defaultJSONParser.parse(this.type.newInstance(), obj);
        } catch (Exception unused) {
            throw new JSONException("craete instance error");
        }
    }

    @Override
    public int getFastMatchToken() {
        return 12;
    }
}
