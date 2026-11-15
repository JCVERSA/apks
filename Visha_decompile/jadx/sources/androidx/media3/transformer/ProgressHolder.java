package androidx.media3.transformer;

import androidx.annotation.IntRange;
import androidx.media3.common.util.UnstableApi;
import com.transsion.LongClickListener;

@UnstableApi
public final class ProgressHolder {

    @IntRange(from = 0, to = LongClickListener.CALLBACK_INTERVAL)
    public int progress;
}
