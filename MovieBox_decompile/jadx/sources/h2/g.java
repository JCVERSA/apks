package h2;

import androidx.media3.common.r;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import h3.l;
import h3.s;
import java.util.Objects;

public interface g {

    public static final g f61226a = new a();

    class a implements g {

        private final h3.h f61227b = new h3.h();

        a() {
        }

        @Override
        public boolean a(r rVar) {
            String str = rVar.f9849o;
            return this.f61227b.a(rVar) || Objects.equals(str, MimeTypes.APPLICATION_CEA608) || Objects.equals(str, MimeTypes.APPLICATION_MP4CEA608) || Objects.equals(str, MimeTypes.APPLICATION_CEA708);
        }

        @Override
        public l b(r rVar) {
            String str = rVar.f9849o;
            if (str != null) {
                switch (str) {
                    case "application/x-mp4-cea-608":
                    case "application/cea-608":
                        return new i3.a(str, rVar.J, 16000L);
                    case "application/cea-708":
                        return new i3.c(rVar.J, rVar.f9852r);
                }
            }
            if (!this.f61227b.a(rVar)) {
                throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: " + str);
            }
            s sVarC = this.f61227b.c(rVar);
            return new b(sVarC.getClass().getSimpleName() + "Decoder", sVarC);
        }
    }

    boolean a(r rVar);

    l b(r rVar);
}
