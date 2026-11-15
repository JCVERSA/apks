package com.transsion.vishaplayersdk.audiofocus;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.util.Log;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;

public class AudioFocusManager {
    private static final String TAG = "AudioFocusManager";
    private final AudioManager.OnAudioFocusChangeListener mAudioFocusChangeListener;
    private final AudioManager mAudioManager;
    private final Map<Integer, AudioFocusRequest> mAudioFocusRequests = new HashMap();
    private final AudioAttributes mAudioAttributes = new AudioAttributes.Builder().setUsage(1).setContentType(3).build();

    public AudioFocusManager(Context context, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener) {
        this.mAudioManager = (AudioManager) context.getSystemService("audio");
        this.mAudioFocusChangeListener = onAudioFocusChangeListener;
    }

    private AudioFocusRequest getAudioFocusRequest(final int i) {
        return this.mAudioFocusRequests.computeIfAbsent(Integer.valueOf(i), new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.a.lambda$getAudioFocusRequest$0(i, (Integer) obj);
            }
        });
    }

    public AudioFocusRequest lambda$getAudioFocusRequest$0(int i, Integer num) {
        return new AudioFocusRequest.Builder(i).setAudioAttributes(this.mAudioAttributes).setAcceptsDelayedFocusGain(true).setOnAudioFocusChangeListener(this.mAudioFocusChangeListener).build();
    }

    public int requestAudioFocus() {
        AudioManager audioManager = this.mAudioManager;
        int iRequestAudioFocus = audioManager != null ? audioManager.requestAudioFocus(getAudioFocusRequest(1)) : 0;
        Log.i(TAG, "requestAudioFocus state= " + iRequestAudioFocus + StringUtils.COMMA + this.mAudioFocusChangeListener);
        return iRequestAudioFocus;
    }
}
