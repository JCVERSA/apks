package cp;

import android.content.Context;
import android.net.Uri;
import android.widget.ImageView;
import kotlin.jvm.internal.Intrinsics;
import ni.f;
import zg.h;

public abstract class a {
    public static final void a(ImageView imageView, Uri uri, float f10) {
        Intrinsics.h(imageView, "<this>");
        if (uri == null) {
            return;
        }
        f.a aVar = f.f67269a;
        Context context = imageView.getContext();
        Intrinsics.g(context, "getContext(...)");
        f.b bVarG = aVar.m(context).g(uri.toString());
        h hVar = h.f76787a;
        Context context2 = imageView.getContext();
        Intrinsics.g(context2, "getContext(...)");
        bVarG.j(hVar.a(context2, f10)).d(imageView);
    }

    public static final void b(ImageView imageView, String url, float f10) {
        Intrinsics.h(imageView, "<this>");
        Intrinsics.h(url, "url");
        f.a aVar = f.f67269a;
        Context context = imageView.getContext();
        Intrinsics.g(context, "getContext(...)");
        f.b bVarG = aVar.m(context).g(url);
        h hVar = h.f76787a;
        Context context2 = imageView.getContext();
        Intrinsics.g(context2, "getContext(...)");
        bVarG.j(hVar.a(context2, f10)).d(imageView);
    }

    public static void c(ImageView imageView, String str, float f10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f10 = 0.0f;
        }
        b(imageView, str, f10);
    }
}
