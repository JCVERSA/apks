package com.yandex.div.internal.parser;

import android.net.Uri;
import defpackage.e74;
import defpackage.k81;
import defpackage.li1;
import defpackage.vib;
import defpackage.y45;
import org.mozilla.javascript.ES6Iterator;

public abstract class ParsingConvertersKt {
    public static final e74 a = new e74() {
        @Override
        public Object invoke(Object obj) {
            return invoke(((Number) obj).intValue());
        }

        public final String invoke(int i) {
            return k81.j(k81.d(i));
        }
    };
    public static final e74 b = new e74() {
        @Override
        public final Integer invoke(Object obj) {
            if (obj instanceof String) {
                return Integer.valueOf(k81.b.b((String) obj));
            }
            if (obj instanceof k81) {
                return Integer.valueOf(((k81) obj).k());
            }
            if (obj == null) {
                return null;
            }
            throw new ClassCastException("Received value of wrong type");
        }
    };
    public static final e74 c = new e74() {
        @Override
        public final String invoke(Uri uri) {
            y45.j(uri, "uri");
            String string = uri.toString();
            y45.i(string, "uri.toString()");
            return string;
        }
    };
    public static final e74 d = new e74() {
        @Override
        public final Uri invoke(String str) {
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            Uri uri = Uri.parse(str);
            y45.i(uri, "parse(value)");
            return uri;
        }
    };
    public static final e74 e = new e74() {
        @Override
        public final Uri invoke(Object obj) {
            y45.j(obj, ES6Iterator.VALUE_PROPERTY);
            if (obj instanceof String) {
                Uri uri = Uri.parse((String) obj);
                y45.i(uri, "parse(value)");
                return uri;
            }
            if (!(obj instanceof vib)) {
                throw new ClassCastException("Received value of wrong type");
            }
            Uri uri2 = Uri.parse(((vib) obj).g());
            y45.i(uri2, "parse(value.value)");
            return uri2;
        }
    };
    public static final e74 f = new e74() {
        @Override
        public final Boolean invoke(Object obj) {
            y45.j(obj, ES6Iterator.VALUE_PROPERTY);
            if (obj instanceof Boolean) {
                return (Boolean) obj;
            }
            if (obj instanceof Number) {
                return li1.c((Number) obj);
            }
            throw new ClassCastException("Received value of wrong type");
        }
    };
    public static final e74 g = new e74() {
        @Override
        public final Double invoke(Number number) {
            y45.j(number, "n");
            return Double.valueOf(number.doubleValue());
        }
    };
    public static final e74 h = new e74() {
        @Override
        public final Long invoke(Number number) {
            y45.j(number, "n");
            return Long.valueOf(number.longValue());
        }
    };
}
