package defpackage;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;

public final class mlj implements llj {
    public mlj(plj pljVar) {
    }

    @Override
    public final boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return "secure-playback".equals(str) && "video/avc".equals(str2);
    }

    @Override
    public final boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return false;
    }

    @Override
    public final int zza() {
        return MediaCodecList.getCodecCount();
    }

    @Override
    public final MediaCodecInfo zzb(int i) {
        return MediaCodecList.getCodecInfoAt(i);
    }

    @Override
    public final boolean zze() {
        return false;
    }
}
