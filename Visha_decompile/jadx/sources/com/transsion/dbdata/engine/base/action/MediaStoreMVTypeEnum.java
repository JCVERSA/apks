package com.transsion.dbdata.engine.base.action;

import com.transsion.dbdata.beans.AudioResultModel;
import com.transsion.dbdata.beans.media.AudioItem;
import defpackage.ax5;
import defpackage.db3;
import defpackage.jx5;
import defpackage.qu4;
import defpackage.xw5;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.enums.a;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B%\b\u0002\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\u001b\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\b\u001a\u0004\b\t\u0010\nR\u001f\u0010\u0005\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u000b\u001a\u0004\b\f\u0010\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lcom/transsion/dbdata/engine/base/action/MediaStoreMVTypeEnum;", "", "Ljava/lang/Class;", "outPutType", "Lqu4;", "typeHandler", MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/Class;Lqu4;)V", "Ljava/lang/Class;", "getOutPutType", "()Ljava/lang/Class;", "Lqu4;", "getTypeHandler", "()Lqu4;", "AUDIO_ITEM", "AUDIO_STORE_ITEM", "AUDIO_MODEL_ITEM", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public enum MediaStoreMVTypeEnum {
    AUDIO_ITEM(AudioItem.class, new xw5()),
    AUDIO_STORE_ITEM(Boolean.TYPE, new ax5()),
    AUDIO_MODEL_ITEM(AudioResultModel.class, new jx5());

    private static final db3 $ENTRIES = a.a(values());
    private final Class<?> outPutType;
    private final qu4 typeHandler;

    MediaStoreMVTypeEnum(Class cls, qu4 qu4Var) {
        this.outPutType = cls;
        this.typeHandler = qu4Var;
    }

    public static db3 getEntries() {
        return $ENTRIES;
    }

    public final Class<?> getOutPutType() {
        return this.outPutType;
    }

    public final qu4 getTypeHandler() {
        return this.typeHandler;
    }
}
