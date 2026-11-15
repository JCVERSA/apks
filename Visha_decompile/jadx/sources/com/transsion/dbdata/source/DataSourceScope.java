package com.transsion.dbdata.source;

import defpackage.db3;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.enums.a;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\b\u001a\u00020\tj\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\n"}, d2 = {"Lcom/transsion/dbdata/source/DataSourceScope;", "", MethodDecl.initName, "(Ljava/lang/String;I)V", "AUDIO", "VIDEO", "IMAGE", "COMBINE", "isVideoScope", "", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public enum DataSourceScope {
    AUDIO,
    VIDEO,
    IMAGE,
    COMBINE;

    private static final db3 $ENTRIES = a.a(values());

    public static db3 getEntries() {
        return $ENTRIES;
    }

    public final boolean isVideoScope() {
        return this == VIDEO;
    }
}
