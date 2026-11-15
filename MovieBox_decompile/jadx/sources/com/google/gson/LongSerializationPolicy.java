package com.google.gson;

public enum LongSerializationPolicy {
    DEFAULT {
        @Override
        public JsonElement serialize(Long l10) {
            return l10 == null ? JsonNull.INSTANCE : new JsonPrimitive(l10);
        }
    },
    STRING {
        @Override
        public JsonElement serialize(Long l10) {
            return l10 == null ? JsonNull.INSTANCE : new JsonPrimitive(l10.toString());
        }
    };

    public abstract JsonElement serialize(Long l10);
}
