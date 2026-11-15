package androidx.media3.exoplayer.rtsp;

import android.net.Uri;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.C;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UriUtil;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

final class RtspTrackTiming {
    public final long rtpTimestamp;
    public final int sequenceNumber;
    public final Uri uri;

    private RtspTrackTiming(long j, int i, Uri uri) {
        this.rtpTimestamp = j;
        this.sequenceNumber = i;
        this.uri = uri;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0069  */
    public static ImmutableList<RtspTrackTiming> parseTrackTiming(String str, Uri uri) throws ParserException {
        byte b;
        ImmutableList.a aVar = new ImmutableList.a();
        String[] strArrSplit = Util.split(str, StringUtils.COMMA);
        int length = strArrSplit.length;
        int i = 0;
        int i2 = 0;
        while (i2 < length) {
            String str2 = strArrSplit[i2];
            String[] strArrSplit2 = Util.split(str2, ProcessInfo.SPLIT_NEW_VERSION);
            int length2 = strArrSplit2.length;
            int i3 = i;
            Uri uriResolveUri = null;
            int i4 = -1;
            long j = C.TIME_UNSET;
            while (i3 < length2) {
                String str3 = strArrSplit2[i3];
                try {
                    String[] strArrSplitAtFirst = Util.splitAtFirst(str3, "=");
                    String str4 = strArrSplitAtFirst[i];
                    String str5 = strArrSplitAtFirst[1];
                    int iHashCode = str4.hashCode();
                    String[] strArr = strArrSplit;
                    if (iHashCode != 113759) {
                        if (iHashCode != 116079) {
                            if (iHashCode == 1524180539 && str4.equals("rtptime")) {
                                b = 2;
                            } else {
                                b = -1;
                            }
                        } else if (str4.equals("url")) {
                            b = 0;
                        } else {
                            b = -1;
                        }
                    } else if (str4.equals("seq")) {
                        b = 1;
                    } else {
                        b = -1;
                    }
                    if (b == 0) {
                        uriResolveUri = resolveUri(str5, uri);
                    } else if (b == 1) {
                        i4 = Integer.parseInt(str5);
                    } else {
                        if (b != 2) {
                            throw ParserException.createForMalformedManifest(str4, null);
                        }
                        j = Long.parseLong(str5);
                    }
                    i3++;
                    strArrSplit = strArr;
                    i = 0;
                } catch (Exception e) {
                    throw ParserException.createForMalformedManifest(str3, e);
                }
            }
            String[] strArr2 = strArrSplit;
            if (uriResolveUri != null && uriResolveUri.getScheme() != null) {
                long j2 = j;
                if (i4 != -1 || j2 != C.TIME_UNSET) {
                    aVar.a(new RtspTrackTiming(j2, i4, uriResolveUri));
                    i2++;
                    strArrSplit = strArr2;
                    i = 0;
                }
            }
            throw ParserException.createForMalformedManifest(str2, null);
        }
        return aVar.e();
    }

    @VisibleForTesting
    public static Uri resolveUri(String str, Uri uri) {
        Assertions.checkArgument(((String) Assertions.checkNotNull(uri.getScheme())).equals("rtsp"));
        Uri uri2 = Uri.parse(str);
        if (uri2.isAbsolute()) {
            return uri2;
        }
        Uri uri3 = Uri.parse("rtsp://" + str);
        String string = uri.toString();
        if (((String) Assertions.checkNotNull(uri3.getHost())).equals(uri.getHost())) {
            return uri3;
        }
        if (string.endsWith("/")) {
            return UriUtil.resolveToUri(string, str);
        }
        return UriUtil.resolveToUri(string + "/", str);
    }
}
