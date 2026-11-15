package com.transsion.dbdata.source;

import defpackage.db3;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.enums.a;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lcom/transsion/dbdata/source/Sorting;", "", ES6Iterator.VALUE_PROPERTY, "", MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "DEFAULT", "DATE_ASC", "DATE_DESC", "NAME_ASC", "NAME_DESC", "SIZE_ASC", "SIZE_DESC", "DURATION_ASC", "DURATION_DESC", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public enum Sorting {
    DEFAULT("date_modified DESC"),
    DATE_ASC("date_modified ASC"),
    DATE_DESC("date_modified DESC"),
    NAME_ASC("title ASC"),
    NAME_DESC("title DESC"),
    SIZE_ASC("_size ASC"),
    SIZE_DESC("_size DESC"),
    DURATION_ASC("duration ASC"),
    DURATION_DESC("duration DESC");

    private static final db3 $ENTRIES = a.a(values());
    private final String value;

    Sorting(String str) {
        this.value = str;
    }

    public static db3 getEntries() {
        return $ENTRIES;
    }

    public final String getValue() {
        return this.value;
    }
}
