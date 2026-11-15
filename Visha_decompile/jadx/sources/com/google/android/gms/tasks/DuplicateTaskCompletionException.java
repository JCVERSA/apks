package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import defpackage.xda;

public final class DuplicateTaskCompletionException extends IllegalStateException {
    private DuplicateTaskCompletionException(String str, @Nullable Throwable th) {
        super(str, th);
    }

    @NonNull
    public static IllegalStateException of(@NonNull xda xdaVar) {
        String strConcat;
        if (!xdaVar.p()) {
            return new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
        }
        Exception excL = xdaVar.l();
        if (excL != null) {
            strConcat = "failure";
        } else if (xdaVar.q()) {
            strConcat = "result ".concat(String.valueOf(xdaVar.m()));
        } else {
            strConcat = xdaVar.o() ? "cancellation" : "unknown issue";
        }
        return new DuplicateTaskCompletionException("Complete with: ".concat(strConcat), excL);
    }
}
