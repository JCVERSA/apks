package androidx.work;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

public abstract class InputMergerFactory {
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static InputMergerFactory getDefaultInputMergerFactory() {
        return new InputMergerFactory() {
            @Override
            @Nullable
            public InputMerger createInputMerger(@NonNull String str) {
                return null;
            }
        };
    }

    @Nullable
    public abstract InputMerger createInputMerger(@NonNull String str);

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final InputMerger createInputMergerWithDefaultFallback(@NonNull String str) {
        InputMerger inputMergerCreateInputMerger = createInputMerger(str);
        return inputMergerCreateInputMerger == null ? InputMerger.fromClassName(str) : inputMergerCreateInputMerger;
    }
}
