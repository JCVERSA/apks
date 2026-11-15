package com.yandex.div2;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.e74;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\r\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/yandex/div2/DivBlendMode;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "SOURCE_IN", "SOURCE_ATOP", "DARKEN", "LIGHTEN", "MULTIPLY", "SCREEN", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public enum DivBlendMode {
    SOURCE_IN("source_in"),
    SOURCE_ATOP("source_atop"),
    DARKEN("darken"),
    LIGHTEN("lighten"),
    MULTIPLY("multiply"),
    SCREEN("screen");

    private final String value;

    public static final Companion INSTANCE = new Companion(null);
    public static final e74 TO_STRING = new e74() {
        @Override
        public final String invoke(DivBlendMode divBlendMode) {
            y45.j(divBlendMode, ES6Iterator.VALUE_PROPERTY);
            return DivBlendMode.INSTANCE.b(divBlendMode);
        }
    };
    public static final e74 FROM_STRING = new e74() {
        @Override
        public final DivBlendMode invoke(String str) {
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            return DivBlendMode.INSTANCE.a(str);
        }
    };

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivBlendMode a(String str) {
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            DivBlendMode divBlendMode = DivBlendMode.SOURCE_IN;
            if (y45.e(str, divBlendMode.value)) {
                return divBlendMode;
            }
            DivBlendMode divBlendMode2 = DivBlendMode.SOURCE_ATOP;
            if (y45.e(str, divBlendMode2.value)) {
                return divBlendMode2;
            }
            DivBlendMode divBlendMode3 = DivBlendMode.DARKEN;
            if (y45.e(str, divBlendMode3.value)) {
                return divBlendMode3;
            }
            DivBlendMode divBlendMode4 = DivBlendMode.LIGHTEN;
            if (y45.e(str, divBlendMode4.value)) {
                return divBlendMode4;
            }
            DivBlendMode divBlendMode5 = DivBlendMode.MULTIPLY;
            if (y45.e(str, divBlendMode5.value)) {
                return divBlendMode5;
            }
            DivBlendMode divBlendMode6 = DivBlendMode.SCREEN;
            if (y45.e(str, divBlendMode6.value)) {
                return divBlendMode6;
            }
            return null;
        }

        public final String b(DivBlendMode divBlendMode) {
            y45.j(divBlendMode, "obj");
            return divBlendMode.value;
        }

        public Companion() {
        }
    }

    DivBlendMode(String str) {
        this.value = str;
    }
}
