package com.google.gson;

import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.internal.NumberLimits;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.MalformedJsonException;
import java.io.IOException;
import java.math.BigDecimal;

public enum ToNumberPolicy implements ToNumberStrategy {
    DOUBLE {
        @Override
        public Double readNumber(JsonReader jsonReader) throws IOException {
            return Double.valueOf(jsonReader.nextDouble());
        }
    },
    LAZILY_PARSED_NUMBER {
        @Override
        public Number readNumber(JsonReader jsonReader) throws IOException {
            return new LazilyParsedNumber(jsonReader.nextString());
        }
    },
    LONG_OR_DOUBLE {
        private Number parseAsDouble(String str, JsonReader jsonReader) throws IOException {
            try {
                Double dValueOf = Double.valueOf(str);
                if (dValueOf.isInfinite() || dValueOf.isNaN()) {
                    if (!jsonReader.isLenient()) {
                        throw new MalformedJsonException("JSON forbids NaN and infinities: " + dValueOf + "; at path " + jsonReader.getPreviousPath());
                    }
                }
                return dValueOf;
            } catch (NumberFormatException e) {
                throw new JsonParseException("Cannot parse " + str + "; at path " + jsonReader.getPreviousPath(), e);
            }
        }

        @Override
        public Number readNumber(JsonReader jsonReader) throws JsonParseException, IOException {
            String strNextString = jsonReader.nextString();
            if (strNextString.indexOf(46) >= 0) {
                return parseAsDouble(strNextString, jsonReader);
            }
            try {
                return Long.valueOf(Long.parseLong(strNextString));
            } catch (NumberFormatException unused) {
                return parseAsDouble(strNextString, jsonReader);
            }
        }
    },
    BIG_DECIMAL {
        @Override
        public BigDecimal readNumber(JsonReader jsonReader) throws IOException {
            String strNextString = jsonReader.nextString();
            try {
                return NumberLimits.parseBigDecimal(strNextString);
            } catch (NumberFormatException e) {
                throw new JsonParseException("Cannot parse " + strNextString + "; at path " + jsonReader.getPreviousPath(), e);
            }
        }
    }
}
