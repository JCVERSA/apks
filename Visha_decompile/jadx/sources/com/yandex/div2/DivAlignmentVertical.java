package com.yandex.div2;

import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.e74;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/yandex/div2/DivAlignmentVertical;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "TOP", "CENTER", "BOTTOM", "BASELINE", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public enum DivAlignmentVertical {
    TOP("top"),
    CENTER(TtmlNode.CENTER),
    BOTTOM("bottom"),
    BASELINE("baseline");

    private final String value;

    public static final Companion INSTANCE = new Companion(null);
    public static final e74 TO_STRING = new e74() {
        @Override
        public final String invoke(DivAlignmentVertical divAlignmentVertical) {
            y45.j(divAlignmentVertical, ES6Iterator.VALUE_PROPERTY);
            return DivAlignmentVertical.INSTANCE.b(divAlignmentVertical);
        }
    };
    public static final e74 FROM_STRING = new e74() {
        @Override
        public final DivAlignmentVertical invoke(String str) {
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            return DivAlignmentVertical.INSTANCE.a(str);
        }
    };

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivAlignmentVertical a(String str) {
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            DivAlignmentVertical divAlignmentVertical = DivAlignmentVertical.TOP;
            if (y45.e(str, divAlignmentVertical.value)) {
                return divAlignmentVertical;
            }
            DivAlignmentVertical divAlignmentVertical2 = DivAlignmentVertical.CENTER;
            if (y45.e(str, divAlignmentVertical2.value)) {
                return divAlignmentVertical2;
            }
            DivAlignmentVertical divAlignmentVertical3 = DivAlignmentVertical.BOTTOM;
            if (y45.e(str, divAlignmentVertical3.value)) {
                return divAlignmentVertical3;
            }
            DivAlignmentVertical divAlignmentVertical4 = DivAlignmentVertical.BASELINE;
            if (y45.e(str, divAlignmentVertical4.value)) {
                return divAlignmentVertical4;
            }
            return null;
        }

        public final String b(DivAlignmentVertical divAlignmentVertical) {
            y45.j(divAlignmentVertical, "obj");
            return divAlignmentVertical.value;
        }

        public Companion() {
        }
    }

    DivAlignmentVertical(String str) {
        this.value = str;
    }
}
