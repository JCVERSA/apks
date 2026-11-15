package com.google.gson;

public enum LongSerializationPolicy {
    DEFAULT {
        @Override
        public JsonElement serialize(Long l) {
            return l == null ? JsonNull.INSTANCE : new JsonPrimitive(l);
        }
    },
    STRING {
        @Override
        public JsonElement serialize(Long l) {
            return l == null ? JsonNull.INSTANCE : new JsonPrimitive(l.toString());
        }
    };

    public abstract JsonElement serialize(Long l);
}
