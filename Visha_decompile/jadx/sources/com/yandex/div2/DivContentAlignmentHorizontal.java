package com.yandex.div2;

import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.e74;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lcom/yandex/div2/DivContentAlignmentHorizontal;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "LEFT", "CENTER", "RIGHT", "START", "END", "SPACE_BETWEEN", "SPACE_AROUND", "SPACE_EVENLY", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public enum DivContentAlignmentHorizontal {
    LEFT(TtmlNode.LEFT),
    CENTER(TtmlNode.CENTER),
    RIGHT(TtmlNode.RIGHT),
    START(TtmlNode.START),
    END(TtmlNode.END),
    SPACE_BETWEEN("space-between"),
    SPACE_AROUND("space-around"),
    SPACE_EVENLY("space-evenly");

    private final String value;

    public static final Companion INSTANCE = new Companion(null);
    public static final e74 TO_STRING = new e74() {
        @Override
        public final String invoke(DivContentAlignmentHorizontal divContentAlignmentHorizontal) {
            y45.j(divContentAlignmentHorizontal, ES6Iterator.VALUE_PROPERTY);
            return DivContentAlignmentHorizontal.INSTANCE.b(divContentAlignmentHorizontal);
        }
    };
    public static final e74 FROM_STRING = new e74() {
        @Override
        public final DivContentAlignmentHorizontal invoke(String str) {
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            return DivContentAlignmentHorizontal.INSTANCE.a(str);
        }
    };

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivContentAlignmentHorizontal a(String str) {
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            DivContentAlignmentHorizontal divContentAlignmentHorizontal = DivContentAlignmentHorizontal.LEFT;
            if (y45.e(str, divContentAlignmentHorizontal.value)) {
                return divContentAlignmentHorizontal;
            }
            DivContentAlignmentHorizontal divContentAlignmentHorizontal2 = DivContentAlignmentHorizontal.CENTER;
            if (y45.e(str, divContentAlignmentHorizontal2.value)) {
                return divContentAlignmentHorizontal2;
            }
            DivContentAlignmentHorizontal divContentAlignmentHorizontal3 = DivContentAlignmentHorizontal.RIGHT;
            if (y45.e(str, divContentAlignmentHorizontal3.value)) {
                return divContentAlignmentHorizontal3;
            }
            DivContentAlignmentHorizontal divContentAlignmentHorizontal4 = DivContentAlignmentHorizontal.START;
            if (y45.e(str, divContentAlignmentHorizontal4.value)) {
                return divContentAlignmentHorizontal4;
            }
            DivContentAlignmentHorizontal divContentAlignmentHorizontal5 = DivContentAlignmentHorizontal.END;
            if (y45.e(str, divContentAlignmentHorizontal5.value)) {
                return divContentAlignmentHorizontal5;
            }
            DivContentAlignmentHorizontal divContentAlignmentHorizontal6 = DivContentAlignmentHorizontal.SPACE_BETWEEN;
            if (y45.e(str, divContentAlignmentHorizontal6.value)) {
                return divContentAlignmentHorizontal6;
            }
            DivContentAlignmentHorizontal divContentAlignmentHorizontal7 = DivContentAlignmentHorizontal.SPACE_AROUND;
            if (y45.e(str, divContentAlignmentHorizontal7.value)) {
                return divContentAlignmentHorizontal7;
            }
            DivContentAlignmentHorizontal divContentAlignmentHorizontal8 = DivContentAlignmentHorizontal.SPACE_EVENLY;
            if (y45.e(str, divContentAlignmentHorizontal8.value)) {
                return divContentAlignmentHorizontal8;
            }
            return null;
        }

        public final String b(DivContentAlignmentHorizontal divContentAlignmentHorizontal) {
            y45.j(divContentAlignmentHorizontal, "obj");
            return divContentAlignmentHorizontal.value;
        }

        public Companion() {
        }
    }

    DivContentAlignmentHorizontal(String str) {
        this.value = str;
    }
}
