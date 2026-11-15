package com.google.android.exoplayer2;

import android.media.AudioFocusRequest;

public abstract class b {
    public static AudioFocusRequest.Builder a(AudioFocusRequest audioFocusRequest) {
        return new AudioFocusRequest.Builder(audioFocusRequest);
    }
}
