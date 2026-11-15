package com.yandex.mobile.ads.impl;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.MimeTypes;
import com.transsion.videodownloader.model.Video;
import com.yandex.mobile.ads.impl.xz;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

public final class xz implements d80 {
    private static final int[] a = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14};
    private static final a b = new a(new a.InterfaceC0334a() {
        @Override
        public final Constructor a() {
            return xz.b();
        }
    });
    private static final a c = new a(new a.InterfaceC0334a() {
        @Override
        public final Constructor a() {
            return xz.c();
        }
    });

    public static final class a {
        private final InterfaceC0334a a;
        private final AtomicBoolean b = new AtomicBoolean(false);

        public interface InterfaceC0334a {
            @Nullable
            Constructor<? extends z70> a() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException;
        }

        public a(InterfaceC0334a interfaceC0334a) {
            this.a = interfaceC0334a;
        }

        @Nullable
        public final z70 a(Object... objArr) {
            Constructor<? extends z70> constructorA;
            synchronized (this.b) {
                try {
                    if (!this.b.get()) {
                        try {
                            constructorA = this.a.a();
                        } catch (ClassNotFoundException unused) {
                            this.b.set(true);
                            constructorA = null;
                        } catch (Exception e) {
                            throw new RuntimeException("Error instantiating extension", e);
                        }
                    }
                    constructorA = null;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (constructorA == null) {
                return null;
            }
            try {
                return constructorA.newInstance(objArr);
            } catch (Exception e2) {
                throw new IllegalStateException("Unexpected error creating extractor", e2);
            }
        }
    }

    private static void a(int i, ArrayList arrayList) {
        switch (i) {
            case 0:
                arrayList.add(new r());
                break;
            case 1:
                arrayList.add(new u());
                break;
            case 2:
                arrayList.add(new hb());
                break;
            case 3:
                arrayList.add(new dd());
                break;
            case 4:
                z70 z70VarA = b.a(0);
                if (z70VarA == null) {
                    arrayList.add(new vb0());
                } else {
                    arrayList.add(z70VarA);
                }
                break;
            case 5:
                arrayList.add(new dc0());
                break;
            case 6:
                arrayList.add(new lu0());
                break;
            case 7:
                arrayList.add(new a21((Object) null));
                break;
            case 8:
                arrayList.add(new pc0(Collections.emptyList()));
                arrayList.add(new b21(0));
                break;
            case 9:
                arrayList.add(new ae1());
                break;
            case 10:
                arrayList.add(new ym1(new p52(0L)));
                break;
            case 11:
                arrayList.add(new o72(0));
                break;
            case 12:
                arrayList.add(new lj2());
                break;
            case 14:
                arrayList.add(new sq0());
                break;
            case 15:
                z70 z70VarA2 = c.a(new Object[0]);
                if (z70VarA2 != null) {
                    arrayList.add(z70VarA2);
                }
                break;
            case 16:
                arrayList.add(new pi());
                break;
        }
    }

    @Nullable
    public static Constructor<? extends z70> b() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        if (Boolean.TRUE.equals(Class.forName("com.monetization.ads.exo.ext.flac.FlacLibrary").getMethod("isAvailable", null).invoke(null, null))) {
            return Class.forName("com.monetization.ads.exo.ext.flac.FlacExtractor").asSubclass(z70.class).getConstructor(Integer.TYPE);
        }
        return null;
    }

    public static Constructor<? extends z70> c() throws NoSuchMethodException, ClassNotFoundException {
        return Class.forName("com.monetization.ads.exo.decoder.midi.MidiExtractor").asSubclass(z70.class).getConstructor(null);
    }

    @Override
    public final synchronized z70[] a() {
        return a(Uri.EMPTY, new HashMap());
    }

    /* JADX WARN: Code duplicated, block: B:168:0x020a A[Catch: all -> 0x0026, TryCatch #0 {all -> 0x0026, blocks: (B:4:0x0002, B:6:0x0018, B:9:0x001f, B:168:0x020a, B:169:0x020d, B:268:0x0380, B:271:0x0386, B:274:0x038c, B:275:0x038f, B:276:0x0391, B:172:0x0215, B:174:0x021d, B:177:0x0227, B:180:0x0232, B:182:0x023a, B:185:0x0244, B:188:0x024f, B:191:0x025b, B:194:0x0267, B:196:0x026f, B:198:0x0277, B:201:0x0281, B:203:0x028f, B:206:0x0299, B:209:0x02a4, B:211:0x02ac, B:213:0x02ba, B:215:0x02c8, B:218:0x02d8, B:220:0x02e6, B:223:0x02f0, B:225:0x02f8, B:227:0x0300, B:229:0x0308, B:232:0x0312, B:234:0x031a, B:237:0x0329, B:239:0x0331, B:242:0x033a, B:244:0x0342, B:247:0x034b, B:249:0x0353, B:252:0x035c, B:16:0x0044, B:42:0x008a, B:43:0x008e, B:149:0x01e1, B:45:0x0093, B:49:0x00a1, B:53:0x00af, B:57:0x00bd, B:61:0x00cb, B:65:0x00d9, B:69:0x00e7, B:73:0x00f5, B:77:0x0103, B:81:0x0111, B:85:0x011e, B:89:0x012c, B:93:0x0139, B:97:0x0146, B:101:0x0153, B:105:0x0160, B:109:0x016d, B:113:0x017a, B:117:0x0187, B:121:0x0192, B:125:0x019d, B:129:0x01a9, B:133:0x01b5, B:137:0x01c0, B:141:0x01cb, B:145:0x01d6, B:23:0x005a, B:27:0x0065, B:31:0x0070), top: B:281:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:171:0x0213  */
    /* JADX WARN: Code duplicated, block: B:172:0x0215 A[Catch: all -> 0x0026, TryCatch #0 {all -> 0x0026, blocks: (B:4:0x0002, B:6:0x0018, B:9:0x001f, B:168:0x020a, B:169:0x020d, B:268:0x0380, B:271:0x0386, B:274:0x038c, B:275:0x038f, B:276:0x0391, B:172:0x0215, B:174:0x021d, B:177:0x0227, B:180:0x0232, B:182:0x023a, B:185:0x0244, B:188:0x024f, B:191:0x025b, B:194:0x0267, B:196:0x026f, B:198:0x0277, B:201:0x0281, B:203:0x028f, B:206:0x0299, B:209:0x02a4, B:211:0x02ac, B:213:0x02ba, B:215:0x02c8, B:218:0x02d8, B:220:0x02e6, B:223:0x02f0, B:225:0x02f8, B:227:0x0300, B:229:0x0308, B:232:0x0312, B:234:0x031a, B:237:0x0329, B:239:0x0331, B:242:0x033a, B:244:0x0342, B:247:0x034b, B:249:0x0353, B:252:0x035c, B:16:0x0044, B:42:0x008a, B:43:0x008e, B:149:0x01e1, B:45:0x0093, B:49:0x00a1, B:53:0x00af, B:57:0x00bd, B:61:0x00cb, B:65:0x00d9, B:69:0x00e7, B:73:0x00f5, B:77:0x0103, B:81:0x0111, B:85:0x011e, B:89:0x012c, B:93:0x0139, B:97:0x0146, B:101:0x0153, B:105:0x0160, B:109:0x016d, B:113:0x017a, B:117:0x0187, B:121:0x0192, B:125:0x019d, B:129:0x01a9, B:133:0x01b5, B:137:0x01c0, B:141:0x01cb, B:145:0x01d6, B:23:0x005a, B:27:0x0065, B:31:0x0070), top: B:281:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:265:0x037b  */
    /* JADX WARN: Code duplicated, block: B:267:0x037e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:271:0x0386 A[Catch: all -> 0x0026, TryCatch #0 {all -> 0x0026, blocks: (B:4:0x0002, B:6:0x0018, B:9:0x001f, B:168:0x020a, B:169:0x020d, B:268:0x0380, B:271:0x0386, B:274:0x038c, B:275:0x038f, B:276:0x0391, B:172:0x0215, B:174:0x021d, B:177:0x0227, B:180:0x0232, B:182:0x023a, B:185:0x0244, B:188:0x024f, B:191:0x025b, B:194:0x0267, B:196:0x026f, B:198:0x0277, B:201:0x0281, B:203:0x028f, B:206:0x0299, B:209:0x02a4, B:211:0x02ac, B:213:0x02ba, B:215:0x02c8, B:218:0x02d8, B:220:0x02e6, B:223:0x02f0, B:225:0x02f8, B:227:0x0300, B:229:0x0308, B:232:0x0312, B:234:0x031a, B:237:0x0329, B:239:0x0331, B:242:0x033a, B:244:0x0342, B:247:0x034b, B:249:0x0353, B:252:0x035c, B:16:0x0044, B:42:0x008a, B:43:0x008e, B:149:0x01e1, B:45:0x0093, B:49:0x00a1, B:53:0x00af, B:57:0x00bd, B:61:0x00cb, B:65:0x00d9, B:69:0x00e7, B:73:0x00f5, B:77:0x0103, B:81:0x0111, B:85:0x011e, B:89:0x012c, B:93:0x0139, B:97:0x0146, B:101:0x0153, B:105:0x0160, B:109:0x016d, B:113:0x017a, B:117:0x0187, B:121:0x0192, B:125:0x019d, B:129:0x01a9, B:133:0x01b5, B:137:0x01c0, B:141:0x01cb, B:145:0x01d6, B:23:0x005a, B:27:0x0065, B:31:0x0070), top: B:281:0x0002 }] */
    /* JADX WARN: Code duplicated, block: B:273:0x038a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:285:0x038f A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    @Override
    public final synchronized z70[] a(Uri uri, Map<String, List<String>> map) {
        ArrayList arrayList;
        byte b2;
        int i;
        String lastPathSegment;
        int i2;
        int i3;
        try {
            int[] iArr = a;
            arrayList = new ArrayList(16);
            List<String> list = map.get("Content-Type");
            String str = (list == null || list.isEmpty()) ? null : list.get(0);
            int i4 = 2;
            if (str != null) {
                int i5 = w01.c;
                int iHashCode = str.hashCode();
                if (iHashCode != -1007807498) {
                    if (iHashCode != -586683234) {
                        b2 = (iHashCode == 187090231 && str.equals("audio/mp3")) ? (byte) 2 : (byte) -1;
                    } else if (str.equals("audio/x-wav")) {
                        b2 = 1;
                    }
                } else if (str.equals("audio/x-flac")) {
                    b2 = 0;
                }
                if (b2 == 0) {
                    str = "audio/flac";
                } else if (b2 == 1) {
                    str = MimeTypes.AUDIO_WAV;
                } else if (b2 == 2) {
                    str = "audio/mpeg";
                }
                switch (str) {
                    case "audio/eac3-joc":
                    case "audio/ac3":
                    case "audio/eac3":
                        i = 0;
                        break;
                    case "video/mp2p":
                        i = 10;
                        break;
                    case "video/mp2t":
                        i = 11;
                        break;
                    case "video/webm":
                    case "audio/x-matroska":
                    case "application/webm":
                    case "audio/webm":
                    case "video/x-matroska":
                        i = 6;
                        break;
                    case "audio/amr-wb":
                    case "audio/amr":
                    case "audio/3gpp":
                        i = 3;
                        break;
                    case "image/jpeg":
                        i = 14;
                        break;
                    case "application/mp4":
                    case "audio/mp4":
                    case "video/mp4":
                        i = 8;
                        break;
                    case "video/x-msvideo":
                        i = 16;
                        break;
                    case "text/vtt":
                        i = 13;
                        break;
                    case "video/x-flv":
                        i = 5;
                        break;
                    case "audio/ac4":
                        i = 1;
                        break;
                    case "audio/ogg":
                        i = 9;
                        break;
                    case "audio/wav":
                        i = 12;
                        break;
                    case "audio/flac":
                        i = 4;
                        break;
                    case "audio/midi":
                        i = 15;
                        break;
                    case "audio/mpeg":
                        i = 7;
                        break;
                }
                if (i != -1) {
                    a(i, arrayList);
                }
                lastPathSegment = uri.getLastPathSegment();
                if (lastPathSegment != null) {
                    if (!lastPathSegment.endsWith(".ac3") || lastPathSegment.endsWith(".ec3")) {
                        i4 = 0;
                    } else if (lastPathSegment.endsWith(".ac4")) {
                        i4 = 1;
                    } else if (!lastPathSegment.endsWith(".adts") && !lastPathSegment.endsWith(".aac")) {
                        if (lastPathSegment.endsWith(".amr")) {
                            i4 = 3;
                        } else if (lastPathSegment.endsWith(".flac")) {
                            i4 = 4;
                        } else if (lastPathSegment.endsWith(".flv")) {
                            i4 = 5;
                        } else if (lastPathSegment.endsWith(".mid") || lastPathSegment.endsWith(".midi") || lastPathSegment.endsWith(".smf")) {
                            i4 = 15;
                        } else if (lastPathSegment.startsWith(".mk", lastPathSegment.length() - 4) || lastPathSegment.endsWith(Video.SUFFIX.SUFFIX_WEBM)) {
                            i4 = 6;
                        } else if (lastPathSegment.endsWith(".mp3")) {
                            i4 = 7;
                        } else if (lastPathSegment.endsWith(Video.SUFFIX.SUFFIX_MP4) || lastPathSegment.startsWith(".m4", lastPathSegment.length() - 4) || lastPathSegment.startsWith(Video.SUFFIX.SUFFIX_MP4, lastPathSegment.length() - 5) || lastPathSegment.startsWith(".cmf", lastPathSegment.length() - 5)) {
                            i4 = 8;
                        } else if (lastPathSegment.startsWith(".og", lastPathSegment.length() - 4) || lastPathSegment.endsWith(".opus")) {
                            i4 = 9;
                        } else if (lastPathSegment.endsWith(".ps") || lastPathSegment.endsWith(".mpeg") || lastPathSegment.endsWith(".mpg") || lastPathSegment.endsWith(".m2p")) {
                            i4 = 10;
                        } else if (lastPathSegment.endsWith(".ts") || lastPathSegment.startsWith(".ts", lastPathSegment.length() - 4)) {
                            i4 = 11;
                        } else if (lastPathSegment.endsWith(".wav") || lastPathSegment.endsWith(".wave")) {
                            i4 = 12;
                        } else if (lastPathSegment.endsWith(".vtt") || lastPathSegment.endsWith(".webvtt")) {
                            i4 = 13;
                        } else if (lastPathSegment.endsWith(".jpg") || lastPathSegment.endsWith(".jpeg")) {
                            i4 = 14;
                        } else if (lastPathSegment.endsWith(".avi")) {
                            i4 = 16;
                        }
                    }
                    if (i4 != -1 && i4 != i) {
                        a(i4, arrayList);
                    }
                    for (i2 = 0; i2 < 16; i2++) {
                        i3 = iArr[i2];
                        if (i3 == i && i3 != i4) {
                            a(i3, arrayList);
                        }
                    }
                }
                i4 = -1;
                if (i4 != -1) {
                    a(i4, arrayList);
                }
                while (i2 < 16) {
                    i3 = iArr[i2];
                    if (i3 == i) {
                    }
                }
            }
            i = -1;
            if (i != -1) {
                a(i, arrayList);
            }
            lastPathSegment = uri.getLastPathSegment();
            if (lastPathSegment != null) {
                if (lastPathSegment.endsWith(".ac3")) {
                    i4 = 0;
                } else {
                    i4 = 0;
                }
                if (i4 != -1) {
                    a(i4, arrayList);
                }
                while (i2 < 16) {
                    i3 = iArr[i2];
                    if (i3 == i) {
                    }
                }
            }
            i4 = -1;
            if (i4 != -1) {
                a(i4, arrayList);
            }
            while (i2 < 16) {
                i3 = iArr[i2];
                if (i3 == i) {
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return (z70[]) arrayList.toArray(new z70[arrayList.size()]);
    }
}
