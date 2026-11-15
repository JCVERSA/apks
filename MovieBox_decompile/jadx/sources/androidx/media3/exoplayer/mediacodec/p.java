package androidx.media3.exoplayer.mediacodec;

import android.media.LoudnessCodecController;
import android.media.LoudnessCodecController$OnLoudnessCodecUpdateListener;
import android.media.MediaCodec;
import android.os.Bundle;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.HashSet;
import java.util.Iterator;

public final class p {

    private final HashSet f11926a;

    private final b f11927b;

    private LoudnessCodecController f11928c;

    class a implements LoudnessCodecController$OnLoudnessCodecUpdateListener {
        a() {
        }

        public Bundle onLoudnessCodecUpdate(MediaCodec mediaCodec, Bundle bundle) {
            return p.this.f11927b.a(bundle);
        }
    }

    public interface b {

        public static final b f11930a = new b() {
            @Override
            public final Bundle a(Bundle bundle) {
                return r.a(bundle);
            }
        };

        Bundle a(Bundle bundle);
    }

    public p() {
        this(b.f11930a);
    }

    public void b(MediaCodec mediaCodec) {
        LoudnessCodecController loudnessCodecController = this.f11928c;
        if (loudnessCodecController == null || loudnessCodecController.addMediaCodec(mediaCodec)) {
            androidx.media3.common.util.a.g(this.f11926a.add(mediaCodec));
        }
    }

    public void c() {
        this.f11926a.clear();
        LoudnessCodecController loudnessCodecController = this.f11928c;
        if (loudnessCodecController != null) {
            loudnessCodecController.close();
        }
    }

    public void d(MediaCodec mediaCodec) {
        LoudnessCodecController loudnessCodecController;
        if (!this.f11926a.remove(mediaCodec) || (loudnessCodecController = this.f11928c) == null) {
            return;
        }
        loudnessCodecController.removeMediaCodec(mediaCodec);
    }

    public void e(int i10) {
        LoudnessCodecController loudnessCodecController = this.f11928c;
        if (loudnessCodecController != null) {
            loudnessCodecController.close();
            this.f11928c = null;
        }
        LoudnessCodecController loudnessCodecControllerCreate = LoudnessCodecController.create(i10, MoreExecutors.a(), new a());
        this.f11928c = loudnessCodecControllerCreate;
        Iterator it = this.f11926a.iterator();
        while (it.hasNext()) {
            if (!loudnessCodecControllerCreate.addMediaCodec((MediaCodec) it.next())) {
                it.remove();
            }
        }
    }

    public p(b bVar) {
        this.f11926a = new HashSet();
        this.f11927b = bVar;
    }
}
