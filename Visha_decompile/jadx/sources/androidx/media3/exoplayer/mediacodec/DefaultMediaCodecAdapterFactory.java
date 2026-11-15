package androidx.media3.exoplayer.mediacodec;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import defpackage.w6a;
import java.io.IOException;

@UnstableApi
public final class DefaultMediaCodecAdapterFactory implements MediaCodecAdapter.Factory {
    private static final int MODE_DEFAULT = 0;
    private static final int MODE_DISABLED = 2;
    private static final int MODE_ENABLED = 1;
    private static final String TAG = "DMCodecAdapterFactory";
    private boolean asyncCryptoFlagEnabled;
    private int asynchronousMode;

    @Nullable
    private final w6a callbackThreadSupplier;

    @Nullable
    private final Context context;

    @Nullable
    private final w6a queueingThreadSupplier;

    @Deprecated
    public DefaultMediaCodecAdapterFactory() {
        this.asynchronousMode = 0;
        this.asyncCryptoFlagEnabled = false;
        this.context = null;
        this.callbackThreadSupplier = null;
        this.queueingThreadSupplier = null;
    }

    private boolean shouldUseAsynchronousAdapterInDefaultMode() {
        int i = Util.SDK_INT;
        if (i >= 31) {
            return true;
        }
        Context context = this.context;
        return context != null && i >= 28 && context.getPackageManager().hasSystemFeature("com.amazon.hardware.tv_screen");
    }

    @Override
    public MediaCodecAdapter createAdapter(MediaCodecAdapter.Configuration configuration) throws IOException {
        int i;
        w6a w6aVar;
        if (Util.SDK_INT < 23 || !((i = this.asynchronousMode) == 1 || (i == 0 && shouldUseAsynchronousAdapterInDefaultMode()))) {
            return new SynchronousMediaCodecAdapter.Factory().createAdapter(configuration);
        }
        int trackType = MimeTypes.getTrackType(configuration.format.sampleMimeType);
        Log.i(TAG, "Creating an asynchronous MediaCodec adapter for track type " + Util.getTrackTypeString(trackType));
        w6a w6aVar2 = this.callbackThreadSupplier;
        AsynchronousMediaCodecAdapter.Factory factory = (w6aVar2 == null || (w6aVar = this.queueingThreadSupplier) == null) ? new AsynchronousMediaCodecAdapter.Factory(trackType) : new AsynchronousMediaCodecAdapter.Factory(w6aVar2, w6aVar);
        factory.experimentalSetAsyncCryptoFlagEnabled(this.asyncCryptoFlagEnabled);
        return factory.createAdapter(configuration);
    }

    public DefaultMediaCodecAdapterFactory experimentalSetAsyncCryptoFlagEnabled(boolean z) {
        this.asyncCryptoFlagEnabled = z;
        return this;
    }

    public DefaultMediaCodecAdapterFactory forceDisableAsynchronous() {
        this.asynchronousMode = 2;
        return this;
    }

    public DefaultMediaCodecAdapterFactory forceEnableAsynchronous() {
        this.asynchronousMode = 1;
        return this;
    }

    public DefaultMediaCodecAdapterFactory(Context context) {
        this(context, null, null);
    }

    public DefaultMediaCodecAdapterFactory(Context context, @Nullable w6a w6aVar, @Nullable w6a w6aVar2) {
        this.context = context;
        this.asynchronousMode = 0;
        this.asyncCryptoFlagEnabled = false;
        this.callbackThreadSupplier = w6aVar;
        this.queueingThreadSupplier = w6aVar2;
    }
}
