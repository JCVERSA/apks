package defpackage;

import android.text.TextUtils;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.videodownloader.VideoDownloadException;
import com.transsion.videodownloader.model.Video;
import com.transsion.videodownloader.model.VideoTaskItem;
import com.transsion.videodownloader.utils.WorkerThreadHandler;
import java.io.File;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.Map;

public class rrb {
    public static volatile rrb a;

    public static rrb d() {
        if (a == null) {
            synchronized (rrb.class) {
                try {
                    if (a == null) {
                        a = new rrb();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    public final void e(VideoTaskItem videoTaskItem, ex4 ex4Var, Map map) {
        try {
            try {
                try {
                    if (videoTaskItem == null) {
                        ex4Var.a(new VideoDownloadException("Video info is null"));
                        return;
                    }
                    if (!st4.f(videoTaskItem.getUrl())) {
                        ex4Var.a(new VideoDownloadException("Cannot parse the request resource's schema"));
                        return;
                    }
                    String url = videoTaskItem.getUrl();
                    eq5.c("VideoInfoParserManager", "doParseVideoInfoTask url=" + url);
                    try {
                        HttpURLConnection httpURLConnectionC = st4.c(url, map, frb.d().e());
                        if (httpURLConnectionC == null) {
                            ex4Var.a(new VideoDownloadException("Create connection failed"));
                            if (httpURLConnectionC != null) {
                                try {
                                    st4.b(httpURLConnectionC);
                                    return;
                                } catch (Exception e) {
                                    e.printStackTrace();
                                    return;
                                }
                            }
                            return;
                        }
                        String string = httpURLConnectionC.getURL().toString();
                        if (TextUtils.isEmpty(string)) {
                            ex4Var.a(new VideoDownloadException("FinalUrl is null"));
                            try {
                                st4.b(httpURLConnectionC);
                                return;
                            } catch (Exception e2) {
                                e2.printStackTrace();
                                return;
                            }
                        }
                        videoTaskItem.setFinalUrl(string);
                        String contentType = httpURLConnectionC.getContentType();
                        if (string.contains(Video.TypeInfo.M3U8) || frb.i(contentType)) {
                            videoTaskItem.setMimeType(Video.TypeInfo.M3U8);
                            g(videoTaskItem, map, ex4Var);
                        } else {
                            long jC = c(videoTaskItem, map, httpURLConnectionC, false);
                            if (jC == -1) {
                                ex4Var.a(new VideoDownloadException("File Length Cannot be fetched"));
                                try {
                                    st4.b(httpURLConnectionC);
                                    return;
                                } catch (Exception e3) {
                                    e3.printStackTrace();
                                    return;
                                }
                            }
                            videoTaskItem.setTotalSize(jC);
                            ex4Var.d(videoTaskItem);
                        }
                        st4.b(httpURLConnectionC);
                    } catch (Exception unused) {
                        ex4Var.a(new VideoDownloadException("Create connection failed"));
                    }
                } catch (Throwable th) {
                    if (0 != 0) {
                        try {
                            st4.b(null);
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Exception e5) {
                e5.printStackTrace();
            }
        } catch (Exception e6) {
            ex4Var.a(e6);
            if (0 == 0) {
            } else {
                st4.b(null);
            }
        }
    }

    public final long c(VideoTaskItem videoTaskItem, Map map, HttpURLConnection httpURLConnection, boolean z) {
        if (z) {
            try {
                httpURLConnection = st4.c(videoTaskItem.getFinalUrl(), map, frb.d().e());
                if (httpURLConnection == null) {
                    return -1L;
                }
            } catch (Exception unused) {
                st4.b(httpURLConnection);
                return -1L;
            }
        }
        String headerField = httpURLConnection.getHeaderField("content-length");
        if (!TextUtils.isEmpty(headerField)) {
            long j = Long.parseLong(headerField);
            if (j > 0) {
                return j;
            }
            st4.b(httpURLConnection);
            return -1L;
        }
        if (map == null) {
            map = new HashMap();
        } else if (map.containsKey("Range")) {
            st4.b(httpURLConnection);
            return -1L;
        }
        map.put("Range", "bytes=0-");
        st4.b(httpURLConnection);
        return c(videoTaskItem, map, httpURLConnection, true);
    }

    public void f(VideoTaskItem videoTaskItem, fx4 fx4Var) {
        File file = new File(videoTaskItem.getSaveDir(), "remote.m3u8");
        if (!file.exists()) {
            fx4Var.a(videoTaskItem, new VideoDownloadException("Cannot find remote.m3u8 file"));
            return;
        }
        LogUtils.j("VideoInfoParserManager", "parseLocalM3U8File:" + videoTaskItem.toString(), "remoteM3U8File:" + file);
        try {
            fx4Var.b(videoTaskItem, aw5.j(file));
        } catch (Exception e) {
            e.printStackTrace();
            fx4Var.a(videoTaskItem, e);
        }
    }

    public final void g(VideoTaskItem videoTaskItem, Map map, ex4 ex4Var) throws Throwable {
        try {
            LogUtils.w("VideoInfoParserManager", "parseNetworkM3U8Info:" + videoTaskItem.toString());
            pv5 pv5VarK = aw5.k(videoTaskItem.getUrl(), map, 0);
            if (!pv5VarK.h()) {
                videoTaskItem.setVideoType(2);
                ex4Var.b(videoTaskItem);
                return;
            }
            File file = new File(frb.d().a(), frb.c(videoTaskItem.getUrl()));
            if (!file.exists()) {
                file.mkdir();
            }
            aw5.b(file, pv5VarK);
            videoTaskItem.setSaveDir(file.getAbsolutePath());
            videoTaskItem.setVideoType(1);
            ex4Var.c(videoTaskItem, pv5VarK);
        } catch (Exception e) {
            e.printStackTrace();
            ex4Var.e(e);
        }
    }

    public synchronized void h(final VideoTaskItem videoTaskItem, final ex4 ex4Var, final Map map) {
        WorkerThreadHandler.a(new Runnable() {
            @Override
            public final void run() {
                this.b.e(videoTaskItem, ex4Var, map);
            }
        });
    }
}
