package com.yandex.div2;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.e74;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/yandex/div2/DivVisibility;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "VISIBLE", "INVISIBLE", "GONE", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public enum DivVisibility {
    VISIBLE("visible"),
    INVISIBLE("invisible"),
    GONE("gone");

    private final String value;

    public static final Companion INSTANCE = new Companion(null);
    public static final e74 TO_STRING = new e74() {
        @Override
        public final String invoke(DivVisibility divVisibility) {
            y45.j(divVisibility, ES6Iterator.VALUE_PROPERTY);
            return DivVisibility.INSTANCE.b(divVisibility);
        }
    };
    public static final e74 FROM_STRING = new e74() {
        @Override
        public final DivVisibility invoke(String str) {
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            return DivVisibility.INSTANCE.a(str);
        }
    };

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivVisibility a(String str) {
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            DivVisibility divVisibility = DivVisibility.VISIBLE;
            if (y45.e(str, divVisibility.value)) {
                return divVisibility;
            }
            DivVisibility divVisibility2 = DivVisibility.INVISIBLE;
            if (y45.e(str, divVisibility2.value)) {
                return divVisibility2;
            }
            DivVisibility divVisibility3 = DivVisibility.GONE;
            if (y45.e(str, divVisibility3.value)) {
                return divVisibility3;
            }
            return null;
        }

        public final String b(DivVisibility divVisibility) {
            y45.j(divVisibility, "obj");
            return divVisibility.value;
        }

        public Companion() {
        }
    }

    DivVisibility(String str) {
        this.value = str;
    }
}
