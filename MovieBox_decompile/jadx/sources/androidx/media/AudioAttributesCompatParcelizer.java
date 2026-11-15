package androidx.media;

import androidx.versionedparcelable.VersionedParcel;

public class AudioAttributesCompatParcelizer {
    public static AudioAttributesCompat read(VersionedParcel versionedParcel) {
        AudioAttributesCompat audioAttributesCompat = new AudioAttributesCompat();
        audioAttributesCompat.f9391a = (AudioAttributesImpl) versionedParcel.v(audioAttributesCompat.f9391a, 1);
        return audioAttributesCompat;
    }

    public static void write(AudioAttributesCompat audioAttributesCompat, VersionedParcel versionedParcel) {
        versionedParcel.x(false, false);
        versionedParcel.M(audioAttributesCompat.f9391a, 1);
    }
}
