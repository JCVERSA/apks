package com.yandex.div2;

import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.e74;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/yandex/div2/DivContentAlignmentVertical;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "TOP", "CENTER", "BOTTOM", "BASELINE", "SPACE_BETWEEN", "SPACE_AROUND", "SPACE_EVENLY", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public enum DivContentAlignmentVertical {
    TOP("top"),
    CENTER(TtmlNode.CENTER),
    BOTTOM("bottom"),
    BASELINE("baseline"),
    SPACE_BETWEEN("space-between"),
    SPACE_AROUND("space-around"),
    SPACE_EVENLY("space-evenly");

    private final String value;

    public static final Companion INSTANCE = new Companion(null);
    public static final e74 TO_STRING = new e74() {
        @Override
        public final String invoke(DivContentAlignmentVertical divContentAlignmentVertical) {
            y45.j(divContentAlignmentVertical, ES6Iterator.VALUE_PROPERTY);
            return DivContentAlignmentVertical.INSTANCE.b(divContentAlignmentVertical);
        }
    };
    public static final e74 FROM_STRING = new e74() {
        @Override
        public final DivContentAlignmentVertical invoke(String str) {
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            return DivContentAlignmentVertical.INSTANCE.a(str);
        }
    };

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivContentAlignmentVertical a(String str) {
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            DivContentAlignmentVertical divContentAlignmentVertical = DivContentAlignmentVertical.TOP;
            if (y45.e(str, divContentAlignmentVertical.value)) {
                return divContentAlignmentVertical;
            }
            DivContentAlignmentVertical divContentAlignmentVertical2 = DivContentAlignmentVertical.CENTER;
            if (y45.e(str, divContentAlignmentVertical2.value)) {
                return divContentAlignmentVertical2;
            }
            DivContentAlignmentVertical divContentAlignmentVertical3 = DivContentAlignmentVertical.BOTTOM;
            if (y45.e(str, divContentAlignmentVertical3.value)) {
                return divContentAlignmentVertical3;
            }
            DivContentAlignmentVertical divContentAlignmentVertical4 = DivContentAlignmentVertical.BASELINE;
            if (y45.e(str, divContentAlignmentVertical4.value)) {
                return divContentAlignmentVertical4;
            }
            DivContentAlignmentVertical divContentAlignmentVertical5 = DivContentAlignmentVertical.SPACE_BETWEEN;
            if (y45.e(str, divContentAlignmentVertical5.value)) {
                return divContentAlignmentVertical5;
            }
            DivContentAlignmentVertical divContentAlignmentVertical6 = DivContentAlignmentVertical.SPACE_AROUND;
            if (y45.e(str, divContentAlignmentVertical6.value)) {
                return divContentAlignmentVertical6;
            }
            DivContentAlignmentVertical divContentAlignmentVertical7 = DivContentAlignmentVertical.SPACE_EVENLY;
            if (y45.e(str, divContentAlignmentVertical7.value)) {
                return divContentAlignmentVertical7;
            }
            return null;
        }

        public final String b(DivContentAlignmentVertical divContentAlignmentVertical) {
            y45.j(divContentAlignmentVertical, "obj");
            return divContentAlignmentVertical.value;
        }

        public Companion() {
        }
    }

    DivContentAlignmentVertical(String str) {
        this.value = str;
    }
}
