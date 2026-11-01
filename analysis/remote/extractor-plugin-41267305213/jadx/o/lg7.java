package o;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import com.snaptube.extractor.pluginlib.PluginProvider;
import com.snaptube.extractor.pluginlib.models.ExtractResult;
import com.snaptube.extractor.pluginlib.models.Format;
import com.snaptube.extractor.pluginlib.models.PageContext;
import com.snaptube.extractor.pluginlib.models.VideoInfo;
import com.snaptube.premium.extractor.ExtractorException;
import com.snaptube.premium.extractor.TraceContext;
import com.snaptube.util.ProductionEnv;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import org.json.JSONObject;

public class lg7 implements dc3, vi3 {
    public static final String g = PluginProvider.class.getName();
    public volatile dc3[] d = {null, null};
    public volatile vi3[] e = {null, null};
    public final boolean f = false;

    public lg7(Context context) {
        g(context);
    }

    public static void a(df3 df3Var, ExtractResult extractResult) {
        f(df3Var, extractResult);
    }

    public static String b(int i) {
        if (i == 0) {
            return "plugin";
        }
        return i == 1 ? "native" : "unknow";
    }

    public static boolean e(PageContext pageContext, ExtractResult extractResult) {
        if (TextUtils.isEmpty(pageContext.j())) {
            return false;
        }
        VideoInfo videoInfoJ = extractResult != null ? extractResult.j() : null;
        if (videoInfoJ == null) {
            return false;
        }
        if (TextUtils.isEmpty(videoInfoJ.getSource())) {
            videoInfoJ.setSource(pageContext.j());
        }
        return VideoInfo.isVideoInfoValid(videoInfoJ);
    }

    public static void f(df3 df3Var, ExtractResult extractResult) {
        if (extractResult == null || !TextUtils.equals("url_redirect_success", extractResult.f())) {
            df3Var.a(extractResult);
            return;
        }
        PageContext pageContextG = extractResult.g();
        if (pageContextG != null) {
            String strI = pageContextG.i("redirected_url");
            if (TextUtils.isEmpty(strI)) {
                return;
            }
            sj8.a.b(pageContextG.j(), strI);
        }
    }

    public String c() {
        StringBuilder sb = new StringBuilder();
        sb.append("PluginExtractor: ");
        sb.append(this.d[0] == null);
        sb.append(" NativeExtractor: ");
        sb.append(this.d[1] == null);
        return sb.toString();
    }

    public final WebResourceResponse d(dc3 dc3Var, WebResourceRequest webResourceRequest) {
        try {
            WebResourceResponse webResourceResponseShouldInterceptRequest = dc3Var.shouldInterceptRequest(webResourceRequest);
            if (webResourceResponseShouldInterceptRequest != null) {
                return webResourceResponseShouldInterceptRequest;
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Override
    public ExtractResult extract(PageContext pageContext, df3 df3Var) throws Exception {
        sc2 sc2Var = new sc2();
        int i = this.d[0] == null ? 2 : 1;
        ExtractorException extractorException = null;
        for (int i2 = 0; i2 < i; i2++) {
            for (int i3 = 0; i3 < this.d.length; i3++) {
                dc3 dc3Var = this.d[i3];
                String strB = b(i3);
                if (dc3Var != null) {
                    try {
                        TraceContext.log("start extract form", strB);
                        ExtractResult extractResultExtract = df3Var == null ? dc3Var.extract(pageContext, null) : dc3Var.extract(pageContext, new kg7(df3Var));
                        sc2Var.z(extractResultExtract);
                        if (extractResultExtract != null && extractResultExtract.j() != null && !TextUtils.isEmpty(extractResultExtract.j().getExtractorType())) {
                            strB = strB + ";" + sc2Var.j().getExtractorType();
                        }
                        sc2Var.A(strB);
                        if (e(pageContext, sc2Var)) {
                            return sc2Var;
                        }
                    } catch (Throwable th) {
                        if (extractorException == null) {
                            extractorException = th instanceof InvocationTargetException ? new ExtractorException(th.getTargetException(), strB) : new ExtractorException(th, strB);
                            TraceContext.save();
                        } else {
                            TraceContext.restore();
                        }
                        th.printStackTrace();
                    }
                }
            }
        }
        if (extractorException == null) {
            return sc2Var;
        }
        throw extractorException;
    }

    public final void g(Context context) {
        y06 y06VarK = y06.k(context.getClassLoader(), g);
        if (y06VarK == null) {
            return;
        }
        try {
            od2 od2VarH = y06VarK.h();
            kp8 kp8VarJ = y06VarK.j();
            if (od2VarH != null && kp8VarJ != null) {
                this.d[1] = od2VarH;
                this.e[1] = kp8VarJ;
            }
        } catch (Throwable th) {
            ProductionEnv.throwExceptForDebugging("UnExpectedException", th);
        }
    }

    @Override
    public JSONObject getInjectionCode(String str) throws Exception {
        for (dc3 dc3Var : this.d) {
            if (dc3Var != null) {
                try {
                    JSONObject injectionCode = dc3Var.getInjectionCode(str);
                    if (injectionCode != null) {
                        return injectionCode;
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    @Override
    public Format getMuxAudioFormat(Format format, List<Format> list) {
        for (vi3 vi3Var : this.e) {
            if (vi3Var != null) {
                try {
                    return vi3Var.getMuxAudioFormat(format, list);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    public boolean h(ClassLoader classLoader) {
        od2 od2VarH;
        kp8 kp8VarJ;
        y06 y06VarK = y06.k(classLoader, g);
        if (y06VarK == null || (od2VarH = y06VarK.h()) == null || (kp8VarJ = y06VarK.j()) == null) {
            return false;
        }
        this.d[0] = od2VarH;
        this.e[0] = kp8VarJ;
        return true;
    }

    @Override
    public boolean hostMatches(String str) {
        for (dc3 dc3Var : this.d) {
            if (dc3Var != null) {
                try {
                    return dc3Var.hostMatches(str);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        return false;
    }

    @Override
    public boolean isFormatNeedMux(Format format) {
        for (vi3 vi3Var : this.e) {
            if (vi3Var != null) {
                try {
                    return vi3Var.isFormatNeedMux(format);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        return false;
    }

    @Override
    public boolean isJavaScriptControlled(String str) {
        for (dc3 dc3Var : this.d) {
            if (dc3Var != null) {
                try {
                    return dc3Var.isJavaScriptControlled(str);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        return false;
    }

    @Override
    public boolean isMetaSearch(String str) {
        for (dc3 dc3Var : this.d) {
            if (dc3Var != null) {
                try {
                    return dc3Var.isMetaSearch(str);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        return false;
    }

    @Override
    public boolean isUrlSupported(String str) {
        for (dc3 dc3Var : this.d) {
            if (dc3Var != null) {
                try {
                    return dc3Var.isUrlSupported(str);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        return false;
    }

    @Override
    public WebResourceResponse shouldInterceptRequest(WebResourceRequest webResourceRequest) {
        dc3 dc3Var = this.d[0];
        dc3 dc3Var2 = this.d[1];
        if (dc3Var != null) {
            return d(dc3Var, webResourceRequest);
        }
        if (dc3Var2 != null) {
            return d(dc3Var2, webResourceRequest);
        }
        return null;
    }

    @Override
    public boolean test(String str) {
        for (dc3 dc3Var : this.d) {
            if (dc3Var != null) {
                try {
                    if (dc3Var.test(str)) {
                        return true;
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        return false;
    }
}
