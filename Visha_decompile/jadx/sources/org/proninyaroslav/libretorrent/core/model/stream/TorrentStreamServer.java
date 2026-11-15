package org.proninyaroslav.libretorrent.core.model.stream;

import android.content.Context;
import android.util.Log;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import androidx.webkit.internal.AssetHelper;
import com.lzy.okgo.model.HttpHeaders;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import org.nanohttpd.NanoHTTPD;
import org.proninyaroslav.libretorrent.core.model.TorrentEngine;

public class TorrentStreamServer extends NanoHTTPD {
    public static final String o = "TorrentStreamServer";
    public static HashMap p;
    public TorrentEngine n;

    public static class DLNAFileType {
        public final String a;
        public final String b;
        public final String c;
        public final String d;

        public DLNAFileType(String str, String str2, String str3, String str4) {
            this.c = str;
            this.d = str2;
            this.a = str3;
            this.b = str4;
        }

        public void a(NanoHTTPD.Response response) {
            response.a("contentFeatures.dlna.org", this.a);
            response.a("TransferMode.DLNA.ORG", this.b);
            response.a("DAAP-Server", "iTunes/11.0.5 (OS X)");
            response.a(HttpHeaders.HEAD_KEY_LAST_MODIFIED, "2015-01-01T10:00:00Z");
            response.G(this.d);
        }
    }

    static {
        HashMap map = new HashMap();
        p = map;
        map.put("mp4", new DLNAFileType("mp4", MimeTypes.VIDEO_MP4, "DLNA.ORG_PN=AVC_MP4_BL_L3L_SD_AAC;DLNA.ORG_OP=01;DLNA.ORG_CI=0;DLNA.ORG_FLAGS=01700000000000000000000000000000", "Streaming"));
        p.put("avi", new DLNAFileType("avi", MimeTypes.VIDEO_AVI, "DLNA.ORG_PN=AVC_MP4_BL_L3L_SD_AAC;DLNA.ORG_OP=01;DLNA.ORG_CI=0;DLNA.ORG_FLAGS=01700000000000000000000000000000", "Streaming"));
        p.put("mkv", new DLNAFileType("mkv", MimeTypes.VIDEO_MATROSKA, "DLNA.ORG_PN=AVC_MKV_MP_HD_AC3;DLNA.ORG_OP=01;DLNA.ORG_CI=0;DLNA.ORG_FLAGS=01700000000000000000000000000000", "Streaming"));
    }

    public TorrentStreamServer(String str, int i) {
        super(str, i);
    }

    @Override
    public NanoHTTPD.Response n(NanoHTTPD.h hVar) {
        String uri = hVar.getUri();
        DLNAFileType dLNAFileType = (DLNAFileType) p.get(uri.substring(uri.lastIndexOf(46) + 1));
        NanoHTTPD.Response responseV = v(hVar);
        if (dLNAFileType != null) {
            dLNAFileType.a(responseV);
        }
        return responseV;
    }

    @Override
    public void t() {
        super.t();
        String str = o;
        Log.i(str, "Stop " + str);
    }

    public NanoHTTPD.Response v(NanoHTTPD.h hVar) {
        String str;
        long j;
        String str2;
        NanoHTTPD.Response responseK;
        int iIndexOf;
        TorrentStreamServer torrentStreamServer = this;
        if (torrentStreamServer.n == null) {
            return NanoHTTPD.l(NanoHTTPD.Response.Status.NOT_FOUND, "", "");
        }
        if (!hVar.getUri().equals("/stream")) {
            return NanoHTTPD.l(NanoHTTPD.Response.Status.BAD_REQUEST, "", "");
        }
        Map mapA = hVar.a();
        if (mapA.size() < 2) {
            return NanoHTTPD.l(NanoHTTPD.Response.Status.BAD_REQUEST, "", "");
        }
        String str3 = (String) mapA.get("torrent");
        Objects.requireNonNull(str3);
        try {
            String str4 = (String) mapA.get("file");
            Objects.requireNonNull(str4);
            TorrentStream torrentStreamU = torrentStreamServer.n.U(str3, Integer.parseInt(str4));
            if (torrentStreamU == null) {
                return NanoHTTPD.l(NanoHTTPD.Response.Status.NOT_FOUND, "", "");
            }
            Map headers = hVar.getHeaders();
            try {
                String str5 = torrentStreamU.id;
                String strSubstring = (String) headers.get(SessionDescription.ATTR_RANGE);
                long j2 = -1;
                if (strSubstring == null || !strSubstring.startsWith("bytes=") || (iIndexOf = (strSubstring = strSubstring.substring(6)).indexOf(45)) <= 0) {
                    j = 0;
                } else {
                    try {
                        j = Long.parseLong(strSubstring.substring(0, iIndexOf));
                        try {
                            j2 = Long.parseLong(strSubstring.substring(iIndexOf + 1));
                        } catch (NumberFormatException unused) {
                        }
                    } catch (NumberFormatException unused2) {
                        j = 0;
                    }
                }
                String str6 = (String) headers.get("if-range");
                boolean z = str6 == null || str5.equals(str6);
                String str7 = (String) headers.get("if-none-match");
                boolean z2 = str7 != null && ("*".equals(str7) || str7.equals(str5));
                str = "Content-Length";
                if (!z || strSubstring == null || j < 0) {
                    str2 = "bytes";
                } else {
                    try {
                        long j3 = torrentStreamU.fileSize;
                        if (j < j3) {
                            if (z2) {
                                NanoHTTPD.Response responseL = NanoHTTPD.l(NanoHTTPD.Response.Status.NOT_MODIFIED, "application/octet-stream", "");
                                responseL.a(HttpHeaders.HEAD_KEY_E_TAG, str5);
                                return responseL;
                            }
                            if (j2 < 0) {
                                j2 = j3 - 1;
                            }
                            long j4 = (j2 - j) + 1;
                            if (j4 < 0) {
                                j4 = 0;
                            }
                            TorrentInputStream torrentInputStreamW = this.n.W(torrentStreamU);
                            torrentInputStreamW.skip(j);
                            NanoHTTPD.Response responseK2 = NanoHTTPD.k(NanoHTTPD.Response.Status.PARTIAL_CONTENT, "application/octet-stream", torrentInputStreamW, j4);
                            responseK2.a("Accept-Ranges", "bytes");
                            responseK2.a("Content-Length", "" + j4);
                            responseK2.a(HttpHeaders.HEAD_KEY_CONTENT_RANGE, "bytes " + j + "-" + j2 + "/" + torrentStreamU.fileSize);
                            responseK2.a(HttpHeaders.HEAD_KEY_E_TAG, str5);
                            StringBuilder sb = new StringBuilder();
                            sb.append("inline; filename=");
                            sb.append(torrentStreamU.id);
                            responseK2.a(HttpHeaders.HEAD_KEY_CONTENT_DISPOSITION, sb.toString());
                            return responseK2;
                        }
                        torrentStreamServer = this;
                        str2 = "bytes";
                    } catch (Throwable th) {
                        th = th;
                        str = AssetHelper.DEFAULT_MIME_TYPE;
                        Log.e(o, Log.getStackTraceString(th));
                        return NanoHTTPD.l(NanoHTTPD.Response.Status.FORBIDDEN, str, "Forbidden");
                    }
                }
                try {
                    if (z && strSubstring != null) {
                        if (j >= torrentStreamU.fileSize) {
                            NanoHTTPD.Response.Status status = NanoHTTPD.Response.Status.RANGE_NOT_SATISFIABLE;
                            str = AssetHelper.DEFAULT_MIME_TYPE;
                            responseK = NanoHTTPD.l(status, str, "");
                            responseK.a(HttpHeaders.HEAD_KEY_CONTENT_RANGE, "bytes */" + torrentStreamU.fileSize);
                            responseK.a(HttpHeaders.HEAD_KEY_E_TAG, str5);
                        }
                        return responseK;
                    }
                    str = AssetHelper.DEFAULT_MIME_TYPE;
                    if (strSubstring == null && z2) {
                        responseK = NanoHTTPD.l(NanoHTTPD.Response.Status.NOT_MODIFIED, "application/octet-stream", "");
                        responseK.a(HttpHeaders.HEAD_KEY_E_TAG, str5);
                    } else if (z || !z2) {
                        responseK = NanoHTTPD.k(NanoHTTPD.Response.Status.OK, "application/octet-stream", torrentStreamServer.n.W(torrentStreamU), torrentStreamU.fileSize);
                        responseK.a("Accept-Ranges", str2);
                        responseK.a("Content-Length", "" + torrentStreamU.fileSize);
                        responseK.a(HttpHeaders.HEAD_KEY_E_TAG, str5);
                        responseK.a(HttpHeaders.HEAD_KEY_CONTENT_DISPOSITION, "inline; filename=" + torrentStreamU.id);
                    } else {
                        responseK = NanoHTTPD.l(NanoHTTPD.Response.Status.NOT_MODIFIED, "application/octet-stream", "");
                        responseK.a(HttpHeaders.HEAD_KEY_E_TAG, str5);
                    }
                    return responseK;
                } catch (Throwable th2) {
                    th = th2;
                    Log.e(o, Log.getStackTraceString(th));
                    return NanoHTTPD.l(NanoHTTPD.Response.Status.FORBIDDEN, str, "Forbidden");
                }
            } catch (Throwable th3) {
                th = th3;
                str = AssetHelper.DEFAULT_MIME_TYPE;
            }
        } catch (Exception unused3) {
            return NanoHTTPD.l(NanoHTTPD.Response.Status.NOT_FOUND, "", "");
        }
    }

    public void w(Context context) throws IOException {
        String str = o;
        Log.i(str, "Start " + str);
        this.n = TorrentEngine.T(context);
        super.q();
    }
}
