package defpackage;

import android.net.Uri;
import androidx.media3.extractor.ts.TsExtractor;
import com.google.android.gms.internal.ads.zzfww;
import com.transsion.videodownloader.model.Video;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class r8e implements h9e {
    public static final int[] c = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14, 17, 18, 19, 20, 21};
    public static final q8e d = new q8e(new p8e() {
        @Override
        public final Constructor zza() throws IllegalAccessException, InvocationTargetException {
            int[] iArr = r8e.c;
            if (Boolean.TRUE.equals(Class.forName("androidx.media3.decoder.flac.FlacLibrary").getMethod("isAvailable", null).invoke(null, null))) {
                return Class.forName("androidx.media3.decoder.flac.FlacExtractor").asSubclass(c9e.class).getConstructor(Integer.TYPE);
            }
            return null;
        }
    });
    public static final q8e e = new q8e(new p8e() {
        @Override
        public final Constructor zza() {
            int[] iArr = r8e.c;
            return Class.forName("androidx.media3.decoder.midi.MidiExtractor").asSubclass(c9e.class).getConstructor(null);
        }
    });
    public zzfww a;
    public final vge b = new rge();

    /* JADX WARN: Code duplicated, block: B:114:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:142:0x0204  */
    @Override
    public final synchronized c9e[] a(Uri uri, Map map) {
        ArrayList arrayList;
        int i;
        int i2;
        try {
            arrayList = new ArrayList(21);
            List list = (List) map.get("Content-Type");
            String str = (list == null || list.isEmpty()) ? null : (String) list.get(0);
            if (str != null) {
                switch (bue.e(str)) {
                    case "audio/ac3":
                    case "audio/eac3":
                    case "audio/eac3-joc":
                        i = 0;
                        break;
                    case "audio/ac4":
                        i = 1;
                        break;
                    case "audio/amr":
                    case "audio/3gpp":
                    case "audio/amr-wb":
                        i = 3;
                        break;
                    case "audio/flac":
                        i = 4;
                        break;
                    case "video/x-flv":
                        i = 5;
                        break;
                    case "audio/midi":
                        i = 15;
                        break;
                    case "video/x-matroska":
                    case "audio/x-matroska":
                    case "video/webm":
                    case "audio/webm":
                    case "application/webm":
                        i = 6;
                        break;
                    case "audio/mpeg":
                        i = 7;
                        break;
                    case "video/mp4":
                    case "audio/mp4":
                    case "application/mp4":
                        i = 8;
                        break;
                    case "audio/ogg":
                        i = 9;
                        break;
                    case "video/mp2p":
                        i = 10;
                        break;
                    case "video/mp2t":
                        i = 11;
                        break;
                    case "audio/wav":
                        i = 12;
                        break;
                    case "text/vtt":
                        i = 13;
                        break;
                    case "image/jpeg":
                        i = 14;
                        break;
                    case "video/x-msvideo":
                        i = 16;
                        break;
                    case "image/png":
                        i = 17;
                        break;
                    case "image/webp":
                        i = 18;
                        break;
                    case "image/bmp":
                        i = 19;
                        break;
                    case "image/heif":
                    case "image/heic":
                        i = 20;
                        break;
                    case "image/avif":
                        i = 21;
                        break;
                    default:
                        i = -1;
                        break;
                }
            } else {
                i = -1;
            }
            if (i != -1) {
                b(i, arrayList);
            }
            String lastPathSegment = uri.getLastPathSegment();
            if (lastPathSegment == null) {
                i2 = -1;
            } else if (lastPathSegment.endsWith(".ac3") || lastPathSegment.endsWith(".ec3")) {
                i2 = 0;
            } else if (lastPathSegment.endsWith(".ac4")) {
                i2 = 1;
            } else if (lastPathSegment.endsWith(".adts") || lastPathSegment.endsWith(".aac")) {
                i2 = 2;
            } else if (lastPathSegment.endsWith(".amr")) {
                i2 = 3;
            } else if (lastPathSegment.endsWith(".flac")) {
                i2 = 4;
            } else if (lastPathSegment.endsWith(".flv")) {
                i2 = 5;
            } else if (lastPathSegment.endsWith(".mid") || lastPathSegment.endsWith(".midi") || lastPathSegment.endsWith(".smf")) {
                i2 = 15;
            } else if (lastPathSegment.startsWith(".mk", lastPathSegment.length() - 4) || lastPathSegment.endsWith(Video.SUFFIX.SUFFIX_WEBM)) {
                i2 = 6;
            } else if (lastPathSegment.endsWith(".mp3")) {
                i2 = 7;
            } else if (lastPathSegment.endsWith(Video.SUFFIX.SUFFIX_MP4) || lastPathSegment.startsWith(".m4", lastPathSegment.length() - 4) || lastPathSegment.startsWith(Video.SUFFIX.SUFFIX_MP4, lastPathSegment.length() - 5) || lastPathSegment.startsWith(".cmf", lastPathSegment.length() - 5)) {
                i2 = 8;
            } else if (lastPathSegment.startsWith(".og", lastPathSegment.length() - 4) || lastPathSegment.endsWith(".opus")) {
                i2 = 9;
            } else if (lastPathSegment.endsWith(".ps") || lastPathSegment.endsWith(".mpeg") || lastPathSegment.endsWith(".mpg") || lastPathSegment.endsWith(".m2p")) {
                i2 = 10;
            } else if (lastPathSegment.endsWith(".ts") || lastPathSegment.startsWith(".ts", lastPathSegment.length() - 4)) {
                i2 = 11;
            } else if (lastPathSegment.endsWith(".wav") || lastPathSegment.endsWith(".wave")) {
                i2 = 12;
            } else if (lastPathSegment.endsWith(".vtt") || lastPathSegment.endsWith(".webvtt")) {
                i2 = 13;
            } else if (lastPathSegment.endsWith(".jpg") || lastPathSegment.endsWith(".jpeg")) {
                i2 = 14;
            } else if (lastPathSegment.endsWith(".avi")) {
                i2 = 16;
            } else if (lastPathSegment.endsWith(".png")) {
                i2 = 17;
            } else if (lastPathSegment.endsWith(".webp")) {
                i2 = 18;
            } else if (lastPathSegment.endsWith(".bmp") || lastPathSegment.endsWith(".dib")) {
                i2 = 19;
            } else if (lastPathSegment.endsWith(".heic") || lastPathSegment.endsWith(".heif")) {
                i2 = 20;
            } else if (lastPathSegment.endsWith(".avif")) {
                i2 = 21;
            } else {
                i2 = -1;
            }
            if (i2 != -1 && i2 != i) {
                b(i2, arrayList);
            }
            int[] iArr = c;
            for (int i3 = 0; i3 < 21; i3++) {
                int i4 = iArr[i3];
                if (i4 != i && i4 != i2) {
                    b(i4, arrayList);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return (c9e[]) arrayList.toArray(new c9e[arrayList.size()]);
    }

    public final void b(int i, List list) {
        switch (i) {
            case 0:
                list.add(new aje());
                break;
            case 1:
                list.add(new cje());
                break;
            case 2:
                list.add(new gje(0));
                break;
            case 3:
                list.add(new yae(0));
                break;
            case 4:
                c9e c9eVarA = d.a(0);
                if (c9eVarA == null) {
                    list.add(new tbe(0));
                } else {
                    list.add(c9eVarA);
                }
                break;
            case 5:
                list.add(new vbe());
                break;
            case 6:
                list.add(new xde(this.b, 0));
                break;
            case 7:
                list.add(new cee(0));
                break;
            case 8:
                vge vgeVar = this.b;
                list.add(new gfe(vgeVar, 0, null, null, zzfww.zzn(), null));
                list.add(new mfe(vgeVar, 0));
                break;
            case 9:
                list.add(new ege());
                break;
            case 10:
                list.add(new oke());
                break;
            case 11:
                if (this.a == null) {
                    this.a = zzfww.zzn();
                }
                list.add(new yke(1, 0, this.b, new fch(0L), new ije(0, this.a), TsExtractor.DEFAULT_TIMESTAMP_SEARCH_BYTES));
                break;
            case 12:
                list.add(new lle());
                break;
            case 14:
                list.add(new ace(0));
                break;
            case 15:
                c9e c9eVarA2 = e.a(new Object[0]);
                if (c9eVarA2 != null) {
                    list.add(c9eVarA2);
                }
                break;
            case 16:
                list.add(new dbe(0, this.b));
                break;
            case 17:
                list.add(new pge());
                break;
            case 18:
                list.add(new qle());
                break;
            case 19:
                list.add(new obe());
                break;
            case 20:
                list.add(new zbe());
                break;
            case 21:
                list.add(new nbe());
                break;
        }
    }
}
