package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.commons.lang3.BooleanUtils;

public class BooleanCodec implements ObjectSerializer, ObjectDeserializer {
    public static final BooleanCodec instance = new BooleanCodec();

    @Override
    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        Object obj2;
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        try {
            if (jSONLexer.token() == 6) {
                jSONLexer.nextToken(16);
                obj2 = (T) Boolean.TRUE;
            } else if (jSONLexer.token() == 7) {
                jSONLexer.nextToken(16);
                obj2 = (T) Boolean.FALSE;
            } else if (jSONLexer.token() == 2) {
                int iIntValue = jSONLexer.intValue();
                jSONLexer.nextToken(16);
                obj2 = iIntValue == 1 ? (T) Boolean.TRUE : (T) Boolean.FALSE;
            } else {
                Object obj3 = defaultJSONParser.parse();
                if (obj3 == null) {
                    return null;
                }
                obj2 = (T) TypeUtils.castToBoolean(obj3);
            }
            return type == AtomicBoolean.class ? (T) new AtomicBoolean(((Boolean) obj2).booleanValue()) : (T) obj2;
        } catch (Exception e) {
            throw new JSONException("parseBoolean error, field : " + obj, e);
        }
    }

    @Override
    public int getFastMatchToken() {
        return 6;
    }

    @Override
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        SerializeWriter serializeWriter = jSONSerializer.out;
        Boolean bool = (Boolean) obj;
        if (bool == null) {
            serializeWriter.writeNull(SerializerFeature.WriteNullBooleanAsFalse);
        } else if (bool.booleanValue()) {
            serializeWriter.write(BooleanUtils.TRUE);
        } else {
            serializeWriter.write(BooleanUtils.FALSE);
        }
    }
}
