package androidx.media;

import android.media.AudioAttributes;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;

@RequiresApi(26)
@RestrictTo({RestrictTo.Scope.LIBRARY})
public class AudioAttributesImplApi26 extends AudioAttributesImplApi21 {

    @RequiresApi(26)
    public static class Builder extends AudioAttributesImplApi21.Builder {
        public Builder() {
        }

        @Override
        @NonNull
        public AudioAttributesImpl build() {
            return new AudioAttributesImplApi26(this.mFwkBuilder.build());
        }

        public Builder(Object obj) {
            super(obj);
        }

        @Override
        @NonNull
        public Builder setUsage(int i) {
            this.mFwkBuilder.setUsage(i);
            return this;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public AudioAttributesImplApi26() {
    }

    @Override
    public int getVolumeControlStream() {
        return this.mAudioAttributes.getVolumeControlStream();
    }

    public AudioAttributesImplApi26(AudioAttributes audioAttributes) {
        super(audioAttributes, -1);
    }
}
