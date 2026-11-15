package defpackage;

import android.content.Context;
import com.bumptech.glide.Glide;
import com.bumptech.glide.ListPreloader;
import com.bumptech.glide.RequestBuilder;
import com.transsion.video_edit.b;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;

public class xia implements ListPreloader.PreloadModelProvider {
    public List a;
    public WeakReference b;

    public xia(Context context) {
        this.b = new WeakReference(context);
    }

    @Override
    public RequestBuilder getPreloadRequestBuilder(wia wiaVar) {
        return Glide.with((Context) this.b.get()).load2(wiaVar.e()).frame(wiaVar.d()).signature(wiaVar).override(wiaVar.f(), wiaVar.a()).centerCrop().diskCacheStrategy(b.a);
    }

    public void b(List list) {
        this.a = list;
    }

    @Override
    public List getPreloadItems(int i) {
        return Collections.singletonList((wia) this.a.get(i));
    }
}
