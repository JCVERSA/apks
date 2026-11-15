package kotlin.reflect.jvm.internal.impl.renderer;

import defpackage.g1a;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;

public enum RenderingFormat {
    PLAIN {
        @Override
        public String escape(String str) {
            y45.j(str, "string");
            return str;
        }
    },
    HTML {
        @Override
        public String escape(String str) {
            y45.j(str, "string");
            return g1a.N(g1a.N(str, "<", "&lt;", false, 4, null), ">", "&gt;", false, 4, null);
        }
    };

    RenderingFormat(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract String escape(String str);
}
