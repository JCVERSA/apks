package com.yandex.div2;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.e74;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/yandex/div2/DivTransitionTrigger;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "DATA_CHANGE", "STATE_CHANGE", "VISIBILITY_CHANGE", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public enum DivTransitionTrigger {
    DATA_CHANGE("data_change"),
    STATE_CHANGE("state_change"),
    VISIBILITY_CHANGE("visibility_change");

    private final String value;

    public static final Companion INSTANCE = new Companion(null);
    public static final e74 TO_STRING = new e74() {
        @Override
        public final String invoke(DivTransitionTrigger divTransitionTrigger) {
            y45.j(divTransitionTrigger, ES6Iterator.VALUE_PROPERTY);
            return DivTransitionTrigger.INSTANCE.b(divTransitionTrigger);
        }
    };
    public static final e74 FROM_STRING = new e74() {
        @Override
        public final DivTransitionTrigger invoke(String str) {
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            return DivTransitionTrigger.INSTANCE.a(str);
        }
    };

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivTransitionTrigger a(String str) {
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            DivTransitionTrigger divTransitionTrigger = DivTransitionTrigger.DATA_CHANGE;
            if (y45.e(str, divTransitionTrigger.value)) {
                return divTransitionTrigger;
            }
            DivTransitionTrigger divTransitionTrigger2 = DivTransitionTrigger.STATE_CHANGE;
            if (y45.e(str, divTransitionTrigger2.value)) {
                return divTransitionTrigger2;
            }
            DivTransitionTrigger divTransitionTrigger3 = DivTransitionTrigger.VISIBILITY_CHANGE;
            if (y45.e(str, divTransitionTrigger3.value)) {
                return divTransitionTrigger3;
            }
            return null;
        }

        public final String b(DivTransitionTrigger divTransitionTrigger) {
            y45.j(divTransitionTrigger, "obj");
            return divTransitionTrigger.value;
        }

        public Companion() {
        }
    }

    DivTransitionTrigger(String str) {
        this.value = str;
    }
}
