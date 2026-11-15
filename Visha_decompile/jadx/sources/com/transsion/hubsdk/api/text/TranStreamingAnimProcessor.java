package com.transsion.hubsdk.api.text;

import android.view.View;
import android.view.inputmethod.InputConnection;
import com.transsion.hubsdk.aosp.text.TranAospStreamingAnimProcessor;
import com.transsion.hubsdk.common.api.TranAdapter;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.text.TranThubStreamingAnimProcessor;
import com.transsion.hubsdk.interfaces.text.ITranStreamingAnimProcessorAdapter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.function.Supplier;

public class TranStreamingAnimProcessor {
    private static final TranAdapter<ITranStreamingAnimProcessorAdapter> ADAPTER = new TranAdapter<>(new Supplier() {
        @Override
        public final Object get() {
            return new TranAospStreamingAnimProcessor();
        }
    }, new Supplier() {
        @Override
        public final Object get() {
            return new TranThubStreamingAnimProcessor();
        }
    });
    public static final int STREAMING_STATE_CANCEL = 2;
    public static final int STREAMING_STATE_END = 3;
    public static final int STREAMING_STATE_START = 0;
    public static final int STREAMING_STATE_UPDATE = 1;

    @Retention(RetentionPolicy.SOURCE)
    public @interface STREAMING_STATE {
    }

    public void handleStreamingOutput(View view, int i, CharSequence charSequence) {
        ADAPTER.getImpl(TranVersion.Core.VERSION_37511).handleStreamingOutput(view, i, charSequence);
    }

    public void setAnimCallback(Runnable runnable, Runnable runnable2, Runnable runnable3) {
        ADAPTER.getImpl(TranVersion.Core.VERSION_37511).setAnimCallback(runnable, runnable2, runnable3);
    }

    public void setEndAnimParams(int i) {
        ADAPTER.getImpl(TranVersion.Core.VERSION_37511).setEndAnimParams(i);
    }

    public void setInputConnection(InputConnection inputConnection) {
        ADAPTER.getImpl(TranVersion.Core.VERSION_37511).setInputConnection(inputConnection);
    }

    public void setStartAnimParams(long j, long j2, int i, int i2) {
        ADAPTER.getImpl(TranVersion.Core.VERSION_37511).setStartAnimParams(j, j2, i, i2);
    }

    public void setUpdateAnimParams(int i, int i2, long j, long j2, int i3, float f, float f2, float f3) {
        ADAPTER.getImpl(TranVersion.Core.VERSION_37511).setUpdateAnimParams(i, i2, j, j2, i3, f, f2, f3);
    }
}
