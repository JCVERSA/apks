package io.appmetrica.analytics;

import androidx.annotation.NonNull;

public class ValidationException extends IllegalArgumentException {
    public ValidationException(@NonNull String str) {
        super(str);
    }
}
