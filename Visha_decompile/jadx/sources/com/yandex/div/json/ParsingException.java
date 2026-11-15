package com.yandex.div.json;

import defpackage.bb5;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0016\u0018\u00002\u00060\u0001j\u0002`\u0002B=\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\f\u0010\rR\u001a\u0010\u0004\u001a\u00020\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\n\u001a\u0004\u0018\u00010\t8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\n\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/yandex/div/json/ParsingException;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "Lcom/yandex/div/json/ParsingExceptionReason;", "reason", "", "message", "", "cause", "Lbb5;", "source", "jsonSummary", MethodDecl.initName, "(Lcom/yandex/div/json/ParsingExceptionReason;Ljava/lang/String;Ljava/lang/Throwable;Lbb5;Ljava/lang/String;)V", "Lcom/yandex/div/json/ParsingExceptionReason;", "getReason", "()Lcom/yandex/div/json/ParsingExceptionReason;", "Lbb5;", "getSource", "()Lbb5;", "Ljava/lang/String;", "getJsonSummary", "()Ljava/lang/String;", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class ParsingException extends RuntimeException {
    private final String jsonSummary;
    private final ParsingExceptionReason reason;
    private final bb5 source;

    public ParsingException(ParsingExceptionReason parsingExceptionReason, String str, Throwable th, bb5 bb5Var, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(parsingExceptionReason, str, (i & 4) != 0 ? null : th, (i & 8) != 0 ? null : bb5Var, (i & 16) != 0 ? null : str2);
    }

    public String getJsonSummary() {
        return this.jsonSummary;
    }

    public ParsingExceptionReason getReason() {
        return this.reason;
    }

    public bb5 getSource() {
        return this.source;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ParsingException(ParsingExceptionReason parsingExceptionReason, String str, Throwable th, bb5 bb5Var, String str2) {
        super(str, th);
        y45.j(parsingExceptionReason, "reason");
        y45.j(str, "message");
        this.reason = parsingExceptionReason;
        this.source = bb5Var;
        this.jsonSummary = str2;
    }
}
