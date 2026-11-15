package sl;

import android.content.Context;
import android.net.Uri;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import com.transsion.lib_web.LoadUrlData;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import pl.h;

public final class b implements com.transsion.lib_web.zip.loader.c {

    public static final a f72329d = new a(null);

    private final Context f72330b;

    private final LoadUrlData f72331c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public b(Context context, LoadUrlData loadUrlData) {
        Intrinsics.h(context, "context");
        Intrinsics.h(loadUrlData, "loadUrlData");
        this.f72330b = context;
        this.f72331c = loadUrlData;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x000e  */
    @Override
    public WebResourceResponse a(WebResourceRequest webResourceRequest) {
        String string;
        if (webResourceRequest != null) {
            try {
                Uri url = webResourceRequest.getUrl();
                if (url != null) {
                    string = url.toString();
                } else {
                    string = null;
                }
                if (string != null && !Intrinsics.c(string, "yy://__QUEUE_MESSAGE__") && Intrinsics.c(string, this.f72331c.getOriginUrl())) {
                    h.f69205a.a("DR_WebviewRenderHomePageFileLoader", "<interceptRequest> url:" + string + " is home page");
                    com.transsion.lib_web.download_render.utils.a aVar = com.transsion.lib_web.download_render.utils.a.f44818a;
                    aVar.n();
                    aVar.a(string, this.f72331c.getSource());
                }
            } catch (Throwable unused) {
            }
        } else {
            string = null;
            if (string != null) {
                h.f69205a.a("DR_WebviewRenderHomePageFileLoader", "<interceptRequest> url:" + string + " is home page");
                com.transsion.lib_web.download_render.utils.a aVar2 = com.transsion.lib_web.download_render.utils.a.f44818a;
                aVar2.n();
                aVar2.a(string, this.f72331c.getSource());
            }
        }
        return null;
    }
}
