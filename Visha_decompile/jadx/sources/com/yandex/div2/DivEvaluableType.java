package com.yandex.div2;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import defpackage.e74;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0010\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Lcom/yandex/div2/DivEvaluableType;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "STRING", "INTEGER", "NUMBER", "BOOLEAN", "DATETIME", "COLOR", DataTypes.OBJ_URL, "DICT", "ARRAY", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public enum DivEvaluableType {
    STRING("string"),
    INTEGER(TypedValues.Custom.S_INT),
    NUMBER("number"),
    BOOLEAN(TypedValues.Custom.S_BOOLEAN),
    DATETIME("datetime"),
    COLOR("color"),
    URL("url"),
    DICT("dict"),
    ARRAY("array");

    private final String value;

    public static final Companion INSTANCE = new Companion(null);
    public static final e74 TO_STRING = new e74() {
        @Override
        public final String invoke(DivEvaluableType divEvaluableType) {
            y45.j(divEvaluableType, ES6Iterator.VALUE_PROPERTY);
            return DivEvaluableType.INSTANCE.b(divEvaluableType);
        }
    };
    public static final e74 FROM_STRING = new e74() {
        @Override
        public final DivEvaluableType invoke(String str) {
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            return DivEvaluableType.INSTANCE.a(str);
        }
    };

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivEvaluableType a(String str) {
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            DivEvaluableType divEvaluableType = DivEvaluableType.STRING;
            if (y45.e(str, divEvaluableType.value)) {
                return divEvaluableType;
            }
            DivEvaluableType divEvaluableType2 = DivEvaluableType.INTEGER;
            if (y45.e(str, divEvaluableType2.value)) {
                return divEvaluableType2;
            }
            DivEvaluableType divEvaluableType3 = DivEvaluableType.NUMBER;
            if (y45.e(str, divEvaluableType3.value)) {
                return divEvaluableType3;
            }
            DivEvaluableType divEvaluableType4 = DivEvaluableType.BOOLEAN;
            if (y45.e(str, divEvaluableType4.value)) {
                return divEvaluableType4;
            }
            DivEvaluableType divEvaluableType5 = DivEvaluableType.DATETIME;
            if (y45.e(str, divEvaluableType5.value)) {
                return divEvaluableType5;
            }
            DivEvaluableType divEvaluableType6 = DivEvaluableType.COLOR;
            if (y45.e(str, divEvaluableType6.value)) {
                return divEvaluableType6;
            }
            DivEvaluableType divEvaluableType7 = DivEvaluableType.URL;
            if (y45.e(str, divEvaluableType7.value)) {
                return divEvaluableType7;
            }
            DivEvaluableType divEvaluableType8 = DivEvaluableType.DICT;
            if (y45.e(str, divEvaluableType8.value)) {
                return divEvaluableType8;
            }
            DivEvaluableType divEvaluableType9 = DivEvaluableType.ARRAY;
            if (y45.e(str, divEvaluableType9.value)) {
                return divEvaluableType9;
            }
            return null;
        }

        public final String b(DivEvaluableType divEvaluableType) {
            y45.j(divEvaluableType, "obj");
            return divEvaluableType.value;
        }

        public Companion() {
        }
    }

    DivEvaluableType(String str) {
        this.value = str;
    }
}
