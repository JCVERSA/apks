package com.snaptube.extractor.pluginlib;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.widget.Toast;
import com.snaptube.extractor.pluginlib.common.ExtractionException;
import com.snaptube.extractor.pluginlib.models.ExtractError;
import com.snaptube.extractor.pluginlib.models.ExtractResult;
import com.snaptube.extractor.pluginlib.models.Format;
import com.snaptube.extractor.pluginlib.models.PageContext;
import com.snaptube.extractor.pluginlib.models.VideoInfo;
import com.snaptube.extractor.pluginlib.piratical.OfficialWarningDialog;
import com.snaptube.extractor.pluginlib.youtube.YoutubeCodec;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import o.dc2;
import o.df3;
import o.fc3;
import o.gg7;
import o.if9;
import o.ma3;
import o.no5;
import o.pz5;
import o.qh3;
import o.rd2;
import o.sd2;
import o.tc2;
import o.uc2;
import o.xm3;
import o.yq8;
import o.zb2;
import org.json.JSONObject;

public class ExtractorWrapper implements fc3 {
    private static final Pattern PATTER_URL_FIX = Pattern.compile("^(\\S+).*", 32);
    public static final String TAG = "ExtractorWrapper";
    private final uc2 extractSourceTracker;
    private final List<qh3> mSites;
    private final Handler mainHandler;

    public class a implements df3 {
        public final no5 d;

        public a(no5 no5Var) {
            this.d = no5Var;
        }

        @Override
        public void a(ExtractResult extractResult) {
            this.d.a(extractResult);
        }
    }

    public ExtractorWrapper(List<qh3> list) {
        this.mSites = list == null ? new LinkedList<>() : list;
        this.mainHandler = new Handler(Looper.getMainLooper());
        this.extractSourceTracker = new uc2();
    }

    public static void a(uc2.b bVar, String str) {
        lambda$extract$0(bVar, str);
    }

    public static void b(PageContext pageContext, df3 df3Var, String str, String str2) {
        lambda$extract$1(pageContext, df3Var, str, str2);
    }

    private ExtractResult buildForbiddenResult(PageContext pageContext) {
        ExtractResult extractResult = new ExtractResult();
        VideoInfo videoInfo = new VideoInfo();
        String strJ = pageContext.j();
        videoInfo.setSource(strJ);
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(Format.fromSingleUrl("https://rr5---sn-i3b7kn6s.googlevideo.com/videoplayback", strJ, YoutubeCodec.M4A_128K.getAlias()));
        videoInfo.setFormats(arrayList);
        videoInfo.setExtractorType("forbidden_pirate_apk");
        extractResult.v(videoInfo);
        return extractResult;
    }

    private qh3 findSite(String str) {
        if (str != null && !str.isEmpty()) {
            for (qh3 qh3Var : this.mSites) {
                if (qh3Var.hostMatches(str)) {
                    return qh3Var;
                }
            }
        }
        return null;
    }

    public static String fixHiddenFile(String str) {
        return (!TextUtils.isEmpty(str) && str.startsWith(".")) ? str.replaceAll("^\\.", "_") : str;
    }

    private static String fixTabChar(String str) {
        return (pz5.b() <= 73400000 && !TextUtils.isEmpty(str)) ? str.replaceAll("\t", "_") : str;
    }

    private void fixTitle(ExtractResult extractResult) {
        if (extractResult == null || extractResult.j() == null) {
            return;
        }
        VideoInfo videoInfoJ = extractResult.j();
        String title = videoInfoJ.getTitle();
        if (TextUtils.isEmpty(title)) {
            return;
        }
        videoInfoJ.setTitle(fixHiddenFile(fixTabChar(title)));
    }

    private String fixUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        Matcher matcher = PATTER_URL_FIX.matcher(str);
        return matcher.matches() ? matcher.group(1) : str;
    }

    private static void lambda$extract$0(uc2.b bVar, String str) {
        Toast.makeText(bVar.b(), str, 0).show();
    }

    private static void lambda$extract$1(PageContext pageContext, df3 df3Var, String str, String str2) {
        pageContext.n("redirected_url", str2);
        ExtractResult extractResult = new ExtractResult();
        extractResult.s(pageContext);
        extractResult.r("url_redirect_success");
        df3Var.a(extractResult);
    }

    @Override
    public String extract(String str, Object obj) throws Exception {
        PageContext pageContextB = PageContext.b(new JSONObject(str));
        boolean zEquals = "player".equals(tc2.c(pageContextB.j()));
        pageContextB.s(tc2.e(pageContextB.j(), "extract_from"));
        if (zEquals) {
            pageContextB.n("from_player", Boolean.TRUE);
        }
        if (!zEquals && if9.D(pageContextB.j())) {
            ma3 ma3VarA = xm3.d().a();
            ma3VarA.checkAndWait(TimeUnit.SECONDS.toMillis(10L));
            if (!ma3VarA.isAvailable(true)) {
                uc2.b bVarH = this.extractSourceTracker.h(obj);
                if (bVarH.c()) {
                    String str2 = "Code:" + xm3.d().a().getLastHttpStatusCode() + " This website is not available in your country or region.";
                    if (bVarH.b() != null) {
                        this.mainHandler.post(new rd2(bVarH, str2));
                        Log.i(TAG, "from choose format fragment");
                    }
                    if (bVarH.a() != null) {
                        this.mainHandler.post(bVarH.a());
                    }
                    throw new ExtractionException(ExtractError.NOT_SUPPORTED, str2);
                }
            }
        }
        no5 no5VarI = no5.i(obj);
        a aVar = new a(no5VarI);
        String strJ = pageContextB.j();
        try {
            if (OfficialWarningDialog.h(pz5.a())) {
                String string = buildForbiddenResult(pageContextB).x().toString();
                pageContextB.s(strJ);
                yq8.j().p(null);
                zb2.d();
                return string;
            }
            pageContextB.s(fixUrl(strJ));
            yq8.j().p(new sd2(pageContextB, aVar));
            qh3 qh3VarFindSite = findSite(pageContextB.j());
            if (no5VarI == null) {
                aVar = null;
            }
            ExtractResult extractResultExtract = qh3VarFindSite.extract(pageContextB, aVar);
            pageContextB.s(strJ);
            yq8.j().p(null);
            zb2.d();
            fixTitle(extractResultExtract);
            if (extractResultExtract == null) {
                return null;
            }
            return extractResultExtract.x().toString();
        } catch (Throwable th) {
            try {
                dc2.c(th);
                throw th;
            } catch (Throwable th2) {
                pageContextB.s(strJ);
                yq8.j().p(null);
                zb2.d();
                throw th2;
            }
        }
    }

    public String getInjectionCode(String str) throws Exception {
        qh3 qh3VarFindSite = findSite(str);
        JSONObject injectionCode = qh3VarFindSite != null ? qh3VarFindSite.getInjectionCode(str) : null;
        if (injectionCode == null) {
            return null;
        }
        return injectionCode.toString();
    }

    public Boolean hostMatches(String str) {
        return Boolean.valueOf(findSite(str) != null);
    }

    public Boolean isJavaScriptControlled(String str) {
        qh3 qh3VarFindSite = findSite(str);
        return Boolean.valueOf(qh3VarFindSite != null && qh3VarFindSite.isJavaScriptControlled(str));
    }

    public Boolean isMetaSearch(String str) {
        qh3 qh3VarFindSite = findSite(str);
        return Boolean.valueOf(qh3VarFindSite != null && qh3VarFindSite.isMetaSearch(str));
    }

    @Override
    public Boolean isUrlSupported(String str) {
        qh3 qh3VarFindSite = findSite(str);
        return Boolean.valueOf(qh3VarFindSite != null && qh3VarFindSite.isUrlSupported(str));
    }

    public WebResourceResponse shouldInterceptRequest(WebResourceRequest webResourceRequest) {
        return gg7.d(webResourceRequest);
    }

    public Boolean test(String str) {
        qh3 qh3VarFindSite = findSite(str);
        return Boolean.valueOf(qh3VarFindSite != null && qh3VarFindSite.test(str));
    }
}
