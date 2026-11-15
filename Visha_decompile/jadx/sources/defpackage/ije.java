package defpackage;

import android.util.SparseArray;
import androidx.media3.common.MimeTypes;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class ije implements ble {
    public final List a;

    public ije(int i, List list) {
        this.a = list;
    }

    @Override
    public final dle a(int i, ale aleVar) {
        if (i != 2) {
            if (i == 3 || i == 4) {
                return new ike(new xje(aleVar.b, aleVar.a(), MimeTypes.VIDEO_MP2T));
            }
            if (i == 21) {
                return new ike(new vje(MimeTypes.VIDEO_MP2T));
            }
            if (i == 27) {
                return new ike(new sje(b(aleVar), false, false, MimeTypes.VIDEO_MP2T));
            }
            if (i == 36) {
                return new ike(new uje(b(aleVar), MimeTypes.VIDEO_MP2T));
            }
            if (i == 45) {
                return new ike(new yje(MimeTypes.VIDEO_MP2T));
            }
            if (i == 89) {
                return new ike(new kje(aleVar.d, MimeTypes.VIDEO_MP2T));
            }
            if (i == 172) {
                return new ike(new fje(aleVar.b, aleVar.a(), MimeTypes.VIDEO_MP2T));
            }
            if (i == 257) {
                return new qke(new eke(MimeTypes.APPLICATION_AIT, MimeTypes.VIDEO_MP2T));
            }
            if (i != 128) {
                if (i != 129) {
                    if (i != 138) {
                        if (i == 139) {
                            return new ike(new jje(aleVar.b, aleVar.a(), 5408, MimeTypes.VIDEO_MP2T));
                        }
                        switch (i) {
                            case 15:
                                return new ike(new hje(false, aleVar.b, aleVar.a(), MimeTypes.VIDEO_MP2T));
                            case 16:
                                return new ike(new qje(c(aleVar), MimeTypes.VIDEO_MP2T));
                            case 17:
                                return new ike(new wje(aleVar.b, aleVar.a(), MimeTypes.VIDEO_MP2T));
                            default:
                                switch (i) {
                                    case 134:
                                        return new qke(new eke(MimeTypes.APPLICATION_SCTE35, MimeTypes.VIDEO_MP2T));
                                    case 135:
                                        break;
                                    case 136:
                                        break;
                                    default:
                                        return null;
                                }
                                break;
                        }
                    }
                    return new ike(new jje(aleVar.b, aleVar.a(), 4096, MimeTypes.VIDEO_MP2T));
                }
                return new ike(new bje(aleVar.b, aleVar.a(), MimeTypes.VIDEO_MP2T));
            }
        }
        return new ike(new nje(c(aleVar), MimeTypes.VIDEO_MP2T));
    }

    public final ske b(ale aleVar) {
        return new ske(d(aleVar), MimeTypes.VIDEO_MP2T);
    }

    public final fle c(ale aleVar) {
        return new fle(d(aleVar), MimeTypes.VIDEO_MP2T);
    }

    public final List d(ale aleVar) {
        String str;
        int i;
        List listSingletonList;
        u4h u4hVar = new u4h(aleVar.e);
        List arrayList = this.a;
        while (u4hVar.u() > 0) {
            int iG = u4hVar.G();
            int iW = u4hVar.w() + u4hVar.G();
            if (iG == 134) {
                arrayList = new ArrayList();
                int iG2 = u4hVar.G() & 31;
                for (int i2 = 0; i2 < iG2; i2++) {
                    String strB = u4hVar.b(3, StandardCharsets.UTF_8);
                    int iG3 = u4hVar.G();
                    boolean z = (iG3 & 128) != 0;
                    if (z) {
                        i = iG3 & 63;
                        str = MimeTypes.APPLICATION_CEA708;
                    } else {
                        str = MimeTypes.APPLICATION_CEA608;
                        i = 1;
                    }
                    byte bG = (byte) u4hVar.G();
                    u4hVar.m(1);
                    if (z) {
                        int i3 = bG & 64;
                        byte[] bArr = vcg.a;
                        listSingletonList = Collections.singletonList(i3 != 0 ? new byte[]{1} : new byte[]{0});
                    } else {
                        listSingletonList = null;
                    }
                    gpj gpjVar = new gpj();
                    gpjVar.E(str);
                    gpjVar.s(strB);
                    gpjVar.u0(i);
                    gpjVar.p(listSingletonList);
                    arrayList.add(gpjVar.K());
                }
            }
            u4hVar.l(iW);
        }
        return arrayList;
    }

    @Override
    public final SparseArray zza() {
        return new SparseArray();
    }
}
