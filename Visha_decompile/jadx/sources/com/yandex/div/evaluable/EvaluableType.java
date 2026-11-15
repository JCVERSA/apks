package com.yandex.div.evaluable;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0013\b\u0086\u0001\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0003\u0010\b\u001a\u0004\b\t\u0010\u0007j\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014¨\u0006\u0015"}, d2 = {"Lcom/yandex/div/evaluable/EvaluableType;", "", "", "typeName", MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "toString", "()Ljava/lang/String;", "Ljava/lang/String;", "getTypeName$div_evaluable", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "INTEGER", "NUMBER", "BOOLEAN", "STRING", "DATETIME", "COLOR", DataTypes.OBJ_URL, "DICT", "ARRAY", "div-evaluable"}, k = 1, mv = {1, 8, 0}, xi = 48)
public enum EvaluableType {
    INTEGER("Integer"),
    NUMBER(DataTypes.OBJ_NUMBER),
    BOOLEAN("Boolean"),
    STRING("String"),
    DATETIME("DateTime"),
    COLOR("Color"),
    URL("Url"),
    DICT("Dict"),
    ARRAY("Array");


    public static final Companion INSTANCE = new Companion(null);
    private final String typeName;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    EvaluableType(String str) {
        this.typeName = str;
    }

    public final String getTypeName() {
        return this.typeName;
    }

    @Override
    public String toString() {
        return this.typeName;
    }
}
