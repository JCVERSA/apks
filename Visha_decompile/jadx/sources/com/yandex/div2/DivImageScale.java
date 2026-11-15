package com.yandex.div2;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.e74;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/yandex/div2/DivImageScale;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "FILL", "NO_SCALE", "FIT", "STRETCH", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public enum DivImageScale {
    FILL("fill"),
    NO_SCALE("no_scale"),
    FIT("fit"),
    STRETCH("stretch");

    private final String value;

    public static final Companion INSTANCE = new Companion(null);
    public static final e74 TO_STRING = new e74() {
        @Override
        public final String invoke(DivImageScale divImageScale) {
            y45.j(divImageScale, ES6Iterator.VALUE_PROPERTY);
            return DivImageScale.INSTANCE.b(divImageScale);
        }
    };
    public static final e74 FROM_STRING = new e74() {
        @Override
        public final DivImageScale invoke(String str) {
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            return DivImageScale.INSTANCE.a(str);
        }
    };

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivImageScale a(String str) {
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            DivImageScale divImageScale = DivImageScale.FILL;
            if (y45.e(str, divImageScale.value)) {
                return divImageScale;
            }
            DivImageScale divImageScale2 = DivImageScale.NO_SCALE;
            if (y45.e(str, divImageScale2.value)) {
                return divImageScale2;
            }
            DivImageScale divImageScale3 = DivImageScale.FIT;
            if (y45.e(str, divImageScale3.value)) {
                return divImageScale3;
            }
            DivImageScale divImageScale4 = DivImageScale.STRETCH;
            if (y45.e(str, divImageScale4.value)) {
                return divImageScale4;
            }
            return null;
        }

        public final String b(DivImageScale divImageScale) {
            y45.j(divImageScale, "obj");
            return divImageScale.value;
        }

        public Companion() {
        }
    }

    DivImageScale(String str) {
        this.value = str;
    }
}
