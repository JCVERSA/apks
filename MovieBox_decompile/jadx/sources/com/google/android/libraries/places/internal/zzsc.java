package com.google.android.libraries.places.internal;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Iterator;

public final class zzsc {
    public static final int zza = 0;
    private static final zzob zzb = zzob.zzn("http", "https", "mailto", "ftp");
    private static final zzob zzc = zzob.zzp("audio/3gpp2", MimeTypes.AUDIO_AMR_NB, "audio/aac", "audio/midi", "audio/mp3", MimeTypes.AUDIO_MP4, MimeTypes.AUDIO_MPEG, "audio/oga", "audio/ogg", MimeTypes.AUDIO_OPUS, "audio/x-m4a", "audio/x-matroska", "audio/x-wav", "audio/wav", MimeTypes.AUDIO_WEBM, "image/bmp", "image/gif", "image/jpeg", "image/jpg", "image/png", "image/svg+xml", "image/tiff", "image/webp", "image/x-icon", MimeTypes.VIDEO_MPEG, MimeTypes.VIDEO_MP4, "video/ogg", MimeTypes.VIDEO_WEBM, "video/x-matroska", "font/ttf");
    private static final zzob zzd = zzob.zzk();

    public static zzsb zza(String str, zzsb zzsbVar) {
        char cCharAt;
        int i10;
        char cCharAt2;
        char cCharAt3;
        zzob zzobVar = zzd;
        String strZza = zzlu.zza(str);
        zzox it = zzb.iterator();
        while (it.hasNext()) {
            if (strZza.startsWith(String.valueOf((String) it.next()).concat(":"))) {
                return new zzsb(str);
            }
        }
        if (!strZza.startsWith("data:")) {
            Iterator it2 = zzobVar.iterator();
            while (it2.hasNext()) {
                if (strZza.startsWith(String.valueOf(zzlu.zza(((zzry) it2.next()).name()).replace('_', '-')).concat(":"))) {
                    return new zzsb(str);
                }
            }
            for (int i11 = 0; i11 < str.length() && (cCharAt = str.charAt(i11)) != '#' && cCharAt != '/'; i11++) {
                if (cCharAt == ':') {
                    return zzsbVar;
                }
                if (cCharAt == '?') {
                    break;
                }
            }
            return new zzsb(str);
        }
        String strZza2 = zzlu.zza(str);
        if (strZza2.startsWith("data:") && strZza2.length() > 5) {
            int i12 = 5;
            while (i12 < strZza2.length() && (cCharAt3 = strZza2.charAt(i12)) != ';' && cCharAt3 != ',') {
                i12++;
            }
            if (zzc.contains(strZza2.substring(5, i12)) && strZza2.startsWith(";base64,", i12) && (i10 = i12 + 8) < strZza2.length()) {
                while (i10 < strZza2.length() && (cCharAt2 = strZza2.charAt(i10)) != '=') {
                    if ((cCharAt2 >= 'a' && cCharAt2 <= 'z') || ((cCharAt2 >= '0' && cCharAt2 <= '9') || cCharAt2 == '+' || cCharAt2 == '/')) {
                        i10++;
                    }
                }
                while (i10 < strZza2.length()) {
                    if (strZza2.charAt(i10) == '=') {
                        i10++;
                    }
                }
                return new zzsb(str);
            }
        }
        return zzsbVar;
    }
}
