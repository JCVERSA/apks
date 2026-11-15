package androidx.browser.customtabs;

import android.os.Bundle;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import com.transsion.LongClickListener;

public interface EngagementSignalsCallback {
    default void onGreatestScrollPercentageIncreased(@IntRange(from = 1, to = LongClickListener.CALLBACK_INTERVAL) int i, @NonNull Bundle bundle) {
    }

    default void onSessionEnded(boolean z, @NonNull Bundle bundle) {
    }

    default void onVerticalScrollEvent(boolean z, @NonNull Bundle bundle) {
    }
}
