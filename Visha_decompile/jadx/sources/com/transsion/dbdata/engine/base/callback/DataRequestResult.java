package com.transsion.dbdata.engine.base.callback;

import defpackage.db3;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.enums.a;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;", "", MethodDecl.initName, "(Ljava/lang/String;I)V", "SUCCESS", "FAILURE", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public enum DataRequestResult {
    SUCCESS,
    FAILURE;

    private static final db3 $ENTRIES = a.a(values());

    public static db3 getEntries() {
        return $ENTRIES;
    }
}
