package com.transsion.liblan.util;

import android.net.Uri;
import androidx.annotation.MainThread;
import com.transsion.liblan.TranLibLAN;
import com.transsion.liblan.TranMedia;
import com.transsion.liblan.TranMediaPlayer;
import com.transsion.liblan.interfaces.ITranLibLAN;
import java.util.ArrayList;

public class Dumper {
    private final ITranLibLAN mITranLibLAN;
    private final Listener mListener;
    private final TranMediaPlayer mTranMediaPlayer;

    public interface Listener {
        void onFinish(boolean z);

        void onProgress(float f);
    }

    @MainThread
    public Dumper(Uri uri, String str, Listener listener) {
        if (uri == null || str == null || listener == null) {
            throw new IllegalArgumentException("arguments shouldn't be null");
        }
        this.mListener = listener;
        ArrayList arrayList = new ArrayList(8);
        arrayList.add("--demux");
        arrayList.add("dump2,none");
        arrayList.add("--demuxdump-file");
        arrayList.add(str);
        arrayList.add("--no-video");
        arrayList.add("--no-audio");
        arrayList.add("--no-spu");
        arrayList.add("-vv");
        TranLibLAN tranLibLAN = new TranLibLAN(null, arrayList);
        this.mITranLibLAN = tranLibLAN;
        TranMedia tranMedia = new TranMedia(tranLibLAN, uri);
        TranMediaPlayer tranMediaPlayer = new TranMediaPlayer(tranMedia);
        this.mTranMediaPlayer = tranMediaPlayer;
        tranMediaPlayer.setEventListener(new TranMediaPlayer.EventListener() {
            @Override
            public void onEvent(TranMediaPlayer.EventTran eventTran) {
                int i = eventTran.type;
                if (i == 259) {
                    Dumper.this.mListener.onProgress(eventTran.getBuffering());
                } else if (i == 265 || i == 266) {
                    Dumper.this.mListener.onFinish(eventTran.type == 265);
                    Dumper.this.cancel();
                }
            }
        });
        tranMedia.release();
    }

    @MainThread
    public void cancel() {
        this.mTranMediaPlayer.stop();
        this.mTranMediaPlayer.release();
        this.mITranLibLAN.release();
    }

    @MainThread
    public void start() {
        this.mTranMediaPlayer.play();
    }
}
