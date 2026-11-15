package com.transsion.tranplayer.util;

import android.net.Uri;
import androidx.annotation.MainThread;
import com.transsion.tranplayer.LibVLC;
import com.transsion.tranplayer.Media;
import com.transsion.tranplayer.MediaPlayer;
import java.util.ArrayList;

public class Dumper {
    private final LibVLC mLibVLC;
    private final Listener mListener;
    private final MediaPlayer mMediaPlayer;

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
        LibVLC libVLC = new LibVLC(null, arrayList);
        this.mLibVLC = libVLC;
        Media media = new Media(libVLC, uri);
        MediaPlayer mediaPlayer = new MediaPlayer(media);
        this.mMediaPlayer = mediaPlayer;
        mediaPlayer.setEventListener(new MediaPlayer.EventListener() {
            @Override
            public void onEvent(MediaPlayer.Event event) {
                int i = event.type;
                if (i == 259) {
                    Dumper.this.mListener.onProgress(event.getBuffering());
                } else if (i == 265 || i == 266) {
                    Dumper.this.mListener.onFinish(event.type == 265);
                    Dumper.this.cancel();
                }
            }
        });
        media.release();
    }

    @MainThread
    public void cancel() {
        this.mMediaPlayer.stop();
        this.mMediaPlayer.release();
        this.mLibVLC.release();
    }

    @MainThread
    public void start() {
        this.mMediaPlayer.play();
    }
}
