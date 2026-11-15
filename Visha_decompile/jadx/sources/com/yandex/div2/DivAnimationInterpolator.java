package com.yandex.div2;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.e74;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\r\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/yandex/div2/DivAnimationInterpolator;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "LINEAR", "EASE", "EASE_IN", "EASE_OUT", "EASE_IN_OUT", "SPRING", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public enum DivAnimationInterpolator {
    LINEAR("linear"),
    EASE("ease"),
    EASE_IN("ease_in"),
    EASE_OUT("ease_out"),
    EASE_IN_OUT("ease_in_out"),
    SPRING("spring");

    private final String value;

    public static final Companion INSTANCE = new Companion(null);
    public static final e74 TO_STRING = new e74() {
        @Override
        public final String invoke(DivAnimationInterpolator divAnimationInterpolator) {
            y45.j(divAnimationInterpolator, ES6Iterator.VALUE_PROPERTY);
            return DivAnimationInterpolator.INSTANCE.b(divAnimationInterpolator);
        }
    };
    public static final e74 FROM_STRING = new e74() {
        @Override
        public final DivAnimationInterpolator invoke(String str) {
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            return DivAnimationInterpolator.INSTANCE.a(str);
        }
    };

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivAnimationInterpolator a(String str) {
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            DivAnimationInterpolator divAnimationInterpolator = DivAnimationInterpolator.LINEAR;
            if (y45.e(str, divAnimationInterpolator.value)) {
                return divAnimationInterpolator;
            }
            DivAnimationInterpolator divAnimationInterpolator2 = DivAnimationInterpolator.EASE;
            if (y45.e(str, divAnimationInterpolator2.value)) {
                return divAnimationInterpolator2;
            }
            DivAnimationInterpolator divAnimationInterpolator3 = DivAnimationInterpolator.EASE_IN;
            if (y45.e(str, divAnimationInterpolator3.value)) {
                return divAnimationInterpolator3;
            }
            DivAnimationInterpolator divAnimationInterpolator4 = DivAnimationInterpolator.EASE_OUT;
            if (y45.e(str, divAnimationInterpolator4.value)) {
                return divAnimationInterpolator4;
            }
            DivAnimationInterpolator divAnimationInterpolator5 = DivAnimationInterpolator.EASE_IN_OUT;
            if (y45.e(str, divAnimationInterpolator5.value)) {
                return divAnimationInterpolator5;
            }
            DivAnimationInterpolator divAnimationInterpolator6 = DivAnimationInterpolator.SPRING;
            if (y45.e(str, divAnimationInterpolator6.value)) {
                return divAnimationInterpolator6;
            }
            return null;
        }

        public final String b(DivAnimationInterpolator divAnimationInterpolator) {
            y45.j(divAnimationInterpolator, "obj");
            return divAnimationInterpolator.value;
        }

        public Companion() {
        }
    }

    DivAnimationInterpolator(String str) {
        this.value = str;
    }
}
