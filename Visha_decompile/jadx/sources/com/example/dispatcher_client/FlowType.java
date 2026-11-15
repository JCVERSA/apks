package com.example.dispatcher_client;

import defpackage.db3;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.enums.a;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/example/dispatcher_client/FlowType;", "", MethodDecl.initName, "(Ljava/lang/String;I)V", "LLM_ONLY", "dispatcher_client_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public enum FlowType {
    LLM_ONLY;

    private static final db3 $ENTRIES = a.a(values());

    public static db3 getEntries() {
        return $ENTRIES;
    }
}
