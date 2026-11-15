package c2;

import androidx.media3.common.r;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.g;

public interface c extends g {

    public interface a {

        public static final a f16385a = new c2.a.c();

        int a(r rVar);

        c b();
    }

    void b(DecoderInputBuffer decoderInputBuffer);

    @Override
    d dequeueOutputBuffer();
}
