package androidx.media;

import android.media.AudioAttributes;

public class AudioAttributesImplApi21 implements AudioAttributesImpl {

    public AudioAttributes f9392a;

    public int f9393b;

    public AudioAttributesImplApi21() {
        this.f9393b = -1;
    }

    public boolean equals(Object obj) {
        if (obj instanceof AudioAttributesImplApi21) {
            return this.f9392a.equals(((AudioAttributesImplApi21) obj).f9392a);
        }
        return false;
    }

    public int hashCode() {
        return this.f9392a.hashCode();
    }

    public String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.f9392a;
    }

    AudioAttributesImplApi21(AudioAttributes audioAttributes) {
        this(audioAttributes, -1);
    }

    AudioAttributesImplApi21(AudioAttributes audioAttributes, int i10) {
        this.f9392a = audioAttributes;
        this.f9393b = i10;
    }
}
