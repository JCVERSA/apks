package androidx.browser.customtabs;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.customtabs.IEngagementSignalsCallback;
import android.util.Log;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import com.transsion.LongClickListener;

@RestrictTo({RestrictTo.Scope.LIBRARY})
final class EngagementSignalsCallbackRemote implements EngagementSignalsCallback {
    private static final String TAG = "EngagementSigsCallbkRmt";
    private final IEngagementSignalsCallback mCallbackBinder;

    private EngagementSignalsCallbackRemote(@NonNull IEngagementSignalsCallback iEngagementSignalsCallback) {
        this.mCallbackBinder = iEngagementSignalsCallback;
    }

    @NonNull
    public static EngagementSignalsCallbackRemote fromBinder(@NonNull IBinder iBinder) {
        return new EngagementSignalsCallbackRemote(IEngagementSignalsCallback.Stub.asInterface(iBinder));
    }

    @Override
    public void onGreatestScrollPercentageIncreased(@IntRange(from = 1, to = LongClickListener.CALLBACK_INTERVAL) int i, @NonNull Bundle bundle) {
        try {
            this.mCallbackBinder.onGreatestScrollPercentageIncreased(i, bundle);
        } catch (RemoteException unused) {
            Log.e(TAG, "RemoteException during IEngagementSignalsCallback transaction");
        }
    }

    @Override
    public void onSessionEnded(boolean z, @NonNull Bundle bundle) {
        try {
            this.mCallbackBinder.onSessionEnded(z, bundle);
        } catch (RemoteException unused) {
            Log.e(TAG, "RemoteException during IEngagementSignalsCallback transaction");
        }
    }

    @Override
    public void onVerticalScrollEvent(boolean z, @NonNull Bundle bundle) {
        try {
            this.mCallbackBinder.onVerticalScrollEvent(z, bundle);
        } catch (RemoteException unused) {
            Log.e(TAG, "RemoteException during IEngagementSignalsCallback transaction");
        }
    }
}
