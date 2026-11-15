package id;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.AudioAttributes;
import android.media.MediaPlayer;
import android.os.Vibrator;
import android.util.Log;
import com.google.zxing.client.android.R$raw;
import java.io.IOException;

public final class e {

    private static final String f62051d = "e";

    private final Context f62052a;

    private boolean f62053b = true;

    private boolean f62054c = false;

    public e(Activity activity) {
        activity.setVolumeControlStream(3);
        this.f62052a = activity.getApplicationContext();
    }

    public static void c(MediaPlayer mediaPlayer) {
        mediaPlayer.stop();
        mediaPlayer.reset();
        mediaPlayer.release();
    }

    public static boolean d(MediaPlayer mediaPlayer, int i10, int i11) {
        Log.w(f62051d, "Failed to beep " + i10 + ", " + i11);
        mediaPlayer.stop();
        mediaPlayer.reset();
        mediaPlayer.release();
        return true;
    }

    public MediaPlayer e() {
        MediaPlayer mediaPlayer = new MediaPlayer();
        mediaPlayer.setAudioAttributes(new AudioAttributes.Builder().setContentType(2).build());
        mediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() {
            @Override
            public final void onCompletion(MediaPlayer mediaPlayer2) {
                e.c(mediaPlayer2);
            }
        });
        mediaPlayer.setOnErrorListener(new MediaPlayer.OnErrorListener() {
            @Override
            public final boolean onError(MediaPlayer mediaPlayer2, int i10, int i11) {
                return e.d(mediaPlayer2, i10, i11);
            }
        });
        try {
            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = this.f62052a.getResources().openRawResourceFd(R$raw.zxing_beep);
            try {
                mediaPlayer.setDataSource(assetFileDescriptorOpenRawResourceFd.getFileDescriptor(), assetFileDescriptorOpenRawResourceFd.getStartOffset(), assetFileDescriptorOpenRawResourceFd.getLength());
                assetFileDescriptorOpenRawResourceFd.close();
                mediaPlayer.setVolume(0.1f, 0.1f);
                mediaPlayer.prepare();
                mediaPlayer.start();
                return mediaPlayer;
            } catch (Throwable th2) {
                assetFileDescriptorOpenRawResourceFd.close();
                throw th2;
            }
        } catch (IOException e10) {
            Log.w(f62051d, e10);
            mediaPlayer.reset();
            mediaPlayer.release();
            return null;
        }
    }

    public synchronized void f() {
        Vibrator vibrator;
        try {
            if (this.f62053b) {
                e();
            }
            if (this.f62054c && (vibrator = (Vibrator) this.f62052a.getSystemService("vibrator")) != null) {
                vibrator.vibrate(200L);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void g(boolean z10) {
        this.f62053b = z10;
    }
}
