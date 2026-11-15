package ni;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.RequestManagerTreeNode;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import java.io.File;
import java.net.URL;

public class d extends RequestManager {
    public d(Glide glide, Lifecycle lifecycle, RequestManagerTreeNode requestManagerTreeNode, Context context) {
        super(glide, lifecycle, requestManagerTreeNode, context);
    }

    @Override
    public d addDefaultRequestListener(RequestListener requestListener) {
        return (d) super.addDefaultRequestListener(requestListener);
    }

    @Override
    public synchronized d applyDefaultRequestOptions(RequestOptions requestOptions) {
        return (d) super.applyDefaultRequestOptions(requestOptions);
    }

    @Override
    public c as(Class cls) {
        return new c(this.glide, this, cls, this.context);
    }

    @Override
    public c asBitmap() {
        return (c) super.asBitmap();
    }

    @Override
    public c asDrawable() {
        return (c) super.asDrawable();
    }

    @Override
    public c asFile() {
        return (c) super.asFile();
    }

    @Override
    public c asGif() {
        return (c) super.asGif();
    }

    @Override
    public synchronized d clearOnStop() {
        return (d) super.clearOnStop();
    }

    @Override
    public c download(Object obj) {
        return (c) super.download(obj);
    }

    @Override
    public c downloadOnly() {
        return (c) super.downloadOnly();
    }

    @Override
    public c load2(Bitmap bitmap) {
        return (c) super.load2(bitmap);
    }

    @Override
    public c load2(Drawable drawable) {
        return (c) super.load2(drawable);
    }

    @Override
    public c load2(Uri uri) {
        return (c) super.load2(uri);
    }

    @Override
    public c load2(File file) {
        return (c) super.load2(file);
    }

    @Override
    public c load2(Integer num) {
        return (c) super.load2(num);
    }

    @Override
    public c load2(Object obj) {
        return (c) super.load2(obj);
    }

    @Override
    public c load2(String str) {
        return (c) super.load2(str);
    }

    @Override
    public c load2(URL url) {
        return (c) super.load2(url);
    }

    @Override
    public c load2(byte[] bArr) {
        return (c) super.load2(bArr);
    }

    @Override
    protected void setRequestOptions(RequestOptions requestOptions) {
        if (requestOptions instanceof b) {
            super.setRequestOptions(requestOptions);
        } else {
            super.setRequestOptions(new b().apply(requestOptions));
        }
    }

    @Override
    public synchronized d setDefaultRequestOptions(RequestOptions requestOptions) {
        return (d) super.setDefaultRequestOptions(requestOptions);
    }
}
