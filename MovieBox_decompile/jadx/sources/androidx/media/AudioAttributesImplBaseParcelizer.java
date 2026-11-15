package androidx.media;

import androidx.versionedparcelable.VersionedParcel;

public class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(VersionedParcel versionedParcel) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.f9394a = versionedParcel.p(audioAttributesImplBase.f9394a, 1);
        audioAttributesImplBase.f9395b = versionedParcel.p(audioAttributesImplBase.f9395b, 2);
        audioAttributesImplBase.f9396c = versionedParcel.p(audioAttributesImplBase.f9396c, 3);
        audioAttributesImplBase.f9397d = versionedParcel.p(audioAttributesImplBase.f9397d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, VersionedParcel versionedParcel) {
        versionedParcel.x(false, false);
        versionedParcel.F(audioAttributesImplBase.f9394a, 1);
        versionedParcel.F(audioAttributesImplBase.f9395b, 2);
        versionedParcel.F(audioAttributesImplBase.f9396c, 3);
        versionedParcel.F(audioAttributesImplBase.f9397d, 4);
    }
}
