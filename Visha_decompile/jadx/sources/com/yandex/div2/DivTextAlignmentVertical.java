package com.yandex.div2;

import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.e74;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/yandex/div2/DivTextAlignmentVertical;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "TOP", "CENTER", "BOTTOM", "BASELINE", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public enum DivTextAlignmentVertical {
    TOP("top"),
    CENTER(TtmlNode.CENTER),
    BOTTOM("bottom"),
    BASELINE("baseline");

    private final String value;

    public static final Companion INSTANCE = new Companion(null);
    public static final e74 TO_STRING = new e74() {
        @Override
        public final String invoke(DivTextAlignmentVertical divTextAlignmentVertical) {
            y45.j(divTextAlignmentVertical, ES6Iterator.VALUE_PROPERTY);
            return DivTextAlignmentVertical.INSTANCE.b(divTextAlignmentVertical);
        }
    };
    public static final e74 FROM_STRING = new e74() {
        @Override
        public final DivTextAlignmentVertical invoke(String str) {
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            return DivTextAlignmentVertical.INSTANCE.a(str);
        }
    };

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivTextAlignmentVertical a(String str) {
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            DivTextAlignmentVertical divTextAlignmentVertical = DivTextAlignmentVertical.TOP;
            if (y45.e(str, divTextAlignmentVertical.value)) {
                return divTextAlignmentVertical;
            }
            DivTextAlignmentVertical divTextAlignmentVertical2 = DivTextAlignmentVertical.CENTER;
            if (y45.e(str, divTextAlignmentVertical2.value)) {
                return divTextAlignmentVertical2;
            }
            DivTextAlignmentVertical divTextAlignmentVertical3 = DivTextAlignmentVertical.BOTTOM;
            if (y45.e(str, divTextAlignmentVertical3.value)) {
                return divTextAlignmentVertical3;
            }
            DivTextAlignmentVertical divTextAlignmentVertical4 = DivTextAlignmentVertical.BASELINE;
            if (y45.e(str, divTextAlignmentVertical4.value)) {
                return divTextAlignmentVertical4;
            }
            return null;
        }

        public final String b(DivTextAlignmentVertical divTextAlignmentVertical) {
            y45.j(divTextAlignmentVertical, "obj");
            return divTextAlignmentVertical.value;
        }

        public Companion() {
        }
    }

    DivTextAlignmentVertical(String str) {
        this.value = str;
    }
}
