package com.yandex.div2;

import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.e74;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/yandex/div2/DivAlignmentHorizontal;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "LEFT", "CENTER", "RIGHT", "START", "END", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public enum DivAlignmentHorizontal {
    LEFT(TtmlNode.LEFT),
    CENTER(TtmlNode.CENTER),
    RIGHT(TtmlNode.RIGHT),
    START(TtmlNode.START),
    END(TtmlNode.END);

    private final String value;

    public static final Companion INSTANCE = new Companion(null);
    public static final e74 TO_STRING = new e74() {
        @Override
        public final String invoke(DivAlignmentHorizontal divAlignmentHorizontal) {
            y45.j(divAlignmentHorizontal, ES6Iterator.VALUE_PROPERTY);
            return DivAlignmentHorizontal.INSTANCE.b(divAlignmentHorizontal);
        }
    };
    public static final e74 FROM_STRING = new e74() {
        @Override
        public final DivAlignmentHorizontal invoke(String str) {
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            return DivAlignmentHorizontal.INSTANCE.a(str);
        }
    };

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivAlignmentHorizontal a(String str) {
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            DivAlignmentHorizontal divAlignmentHorizontal = DivAlignmentHorizontal.LEFT;
            if (y45.e(str, divAlignmentHorizontal.value)) {
                return divAlignmentHorizontal;
            }
            DivAlignmentHorizontal divAlignmentHorizontal2 = DivAlignmentHorizontal.CENTER;
            if (y45.e(str, divAlignmentHorizontal2.value)) {
                return divAlignmentHorizontal2;
            }
            DivAlignmentHorizontal divAlignmentHorizontal3 = DivAlignmentHorizontal.RIGHT;
            if (y45.e(str, divAlignmentHorizontal3.value)) {
                return divAlignmentHorizontal3;
            }
            DivAlignmentHorizontal divAlignmentHorizontal4 = DivAlignmentHorizontal.START;
            if (y45.e(str, divAlignmentHorizontal4.value)) {
                return divAlignmentHorizontal4;
            }
            DivAlignmentHorizontal divAlignmentHorizontal5 = DivAlignmentHorizontal.END;
            if (y45.e(str, divAlignmentHorizontal5.value)) {
                return divAlignmentHorizontal5;
            }
            return null;
        }

        public final String b(DivAlignmentHorizontal divAlignmentHorizontal) {
            y45.j(divAlignmentHorizontal, "obj");
            return divAlignmentHorizontal.value;
        }

        public Companion() {
        }
    }

    DivAlignmentHorizontal(String str) {
        this.value = str;
    }
}
