package com.mgadplus.mgutil;

import android.util.Log;

public abstract class SourceKitLogger {
    public static a a = a.invalid;

    public enum a {
        verbose(1),
        debug(2),
        info(3),
        warning(4),
        error(5),
        alldebug(6),
        invalid(7);

        private int value;

        a(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static void a(String str, String str2) {
        if (a.getValue() != a.alldebug.getValue()) {
            if (a.getValue() <= a.error.getValue()) {
                if (str2 == null) {
                    str2 = "null";
                }
                Log.d(str, str2);
                return;
            }
            return;
        }
        if (str2 == null) {
            str2 = "null";
        }
        Log.d("mgmisdk_" + str, str2);
    }

    public static void b(String str, String str2) {
        if (a.getValue() == a.alldebug.getValue()) {
            if (str2 == null) {
                str2 = "null";
            }
            Log.e("mgmisdk_", str2);
        } else if (a.getValue() <= a.error.getValue()) {
            if (str2 == null) {
                str2 = "null";
            }
            Log.e(str, str2);
        }
    }

    public static void c(String str, String str2) {
        if (a.getValue() <= a.info.getValue()) {
            if (str2 == null) {
                str2 = "null";
            }
            Log.i(str, str2);
        }
    }
}
