package com.bytedance.sdk.component.utils;

import java.io.Closeable;

public class TEQ {
    public static void Sj(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused) {
            }
        }
    }
}
