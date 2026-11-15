package com.bykv.vk.openvk.preload.b;

public interface e {

    public static class a implements e {
        @Override
        public final <T> T a(Class<T> cls) {
            try {
                return cls.newInstance();
            } catch (Exception e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    <T> T a(Class<T> cls);
}
