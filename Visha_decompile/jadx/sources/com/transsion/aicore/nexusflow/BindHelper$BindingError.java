package com.transsion.aicore.nexusflow;

import defpackage.db3;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.enums.a;

@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0007\u001a\u0004\b\b\u0010\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"com/transsion/aicore/nexusflow/BindHelper$BindingError", "", "Lcom/transsion/aicore/nexusflow/BindHelper$BindingError;", "", "message", MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "getMessage", "()Ljava/lang/String;", "SECURITY_EXCEPTION", "PACKAGE_NOT_FOUND", "SERVICE_NOT_BINDABLE", "ALL_METHODS_FAILED", "TIMEOUT", "UNKNOWN", "ipc_business_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public enum BindHelper$BindingError {
    SECURITY_EXCEPTION("安全异常: 权限不足"),
    PACKAGE_NOT_FOUND("目标包未找到"),
    SERVICE_NOT_BINDABLE("服务不可绑定"),
    ALL_METHODS_FAILED("所有绑定方法均失败"),
    TIMEOUT("绑定超时"),
    UNKNOWN("未知错误");

    private static final db3 $ENTRIES = a.a(values());
    private final String message;

    BindHelper$BindingError(String str) {
        this.message = str;
    }

    public static db3 getEntries() {
        return $ENTRIES;
    }

    public final String getMessage() {
        return this.message;
    }
}
