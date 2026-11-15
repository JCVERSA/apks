package com.transsion.audio.data;

public class AudioOpStatus {
    public float mAudioVolume;
    public int mMusicMaxVolume;
    public int mMusicVolume;

    public String toString() {
        return "AudioOpStatus{mAudioVolume=" + this.mAudioVolume + ", mMusicVolume=" + this.mMusicVolume + ", mMusicMaxVolume='" + this.mMusicMaxVolume + '}';
    }
}
