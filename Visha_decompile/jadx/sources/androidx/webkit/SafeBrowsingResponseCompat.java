package androidx.webkit;

import androidx.annotation.RestrictTo;

public abstract class SafeBrowsingResponseCompat {
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public SafeBrowsingResponseCompat() {
    }

    public abstract void backToSafety(boolean z);

    public abstract void proceed(boolean z);

    public abstract void showInterstitial(boolean z);
}
