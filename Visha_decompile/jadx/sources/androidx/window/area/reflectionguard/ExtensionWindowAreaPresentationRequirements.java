package androidx.window.area.reflectionguard;

import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY})
public interface ExtensionWindowAreaPresentationRequirements {
    @NonNull
    Context getPresentationContext();

    void setPresentationView(@NonNull View view);
}
