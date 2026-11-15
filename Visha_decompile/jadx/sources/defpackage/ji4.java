package defpackage;

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

public class ji4 extends RequestManager {
    public ji4(Glide glide, Lifecycle lifecycle, RequestManagerTreeNode requestManagerTreeNode, Context context) {
        super(glide, lifecycle, requestManagerTreeNode, context);
    }

    @Override
    public ji4 addDefaultRequestListener(RequestListener requestListener) {
        return (ji4) super.addDefaultRequestListener(requestListener);
    }

    @Override
    public synchronized ji4 applyDefaultRequestOptions(RequestOptions requestOptions) {
        return (ji4) super.applyDefaultRequestOptions(requestOptions);
    }

    @Override
    public ii4 as(Class cls) {
        return new ii4(this.glide, this, cls, this.context);
    }

    @Override
    public ii4 asBitmap() {
        return (ii4) super.asBitmap();
    }

    @Override
    public ii4 asDrawable() {
        return (ii4) super.asDrawable();
    }

    @Override
    public ii4 asFile() {
        return (ii4) super.asFile();
    }

    @Override
    public ii4 asGif() {
        return (ii4) super.asGif();
    }

    @Override
    public ii4 download(Object obj) {
        return (ii4) super.download(obj);
    }

    @Override
    public ii4 downloadOnly() {
        return (ii4) super.downloadOnly();
    }

    @Override
    public ii4 load2(Bitmap bitmap) {
        return (ii4) super.load2(bitmap);
    }

    @Override
    public ii4 load2(Drawable drawable) {
        return (ii4) super.load2(drawable);
    }

    @Override
    public ii4 load2(Uri uri) {
        return (ii4) super.load2(uri);
    }

    @Override
    public ii4 load2(File file) {
        return (ii4) super.load2(file);
    }

    @Override
    public ii4 load2(Integer num) {
        return (ii4) super.load2(num);
    }

    @Override
    public ii4 load2(Object obj) {
        return (ii4) super.load2(obj);
    }

    @Override
    public ii4 load2(String str) {
        return (ii4) super.load2(str);
    }

    @Override
    public ii4 load2(URL url) {
        return (ii4) super.load2(url);
    }

    @Override
    public ii4 load2(byte[] bArr) {
        return (ii4) super.load2(bArr);
    }

    @Override
    public synchronized ji4 setDefaultRequestOptions(RequestOptions requestOptions) {
        return (ji4) super.setDefaultRequestOptions(requestOptions);
    }

    @Override
    public void setRequestOptions(RequestOptions requestOptions) {
        if (requestOptions instanceof gi4) {
            super.setRequestOptions(requestOptions);
        } else {
            super.setRequestOptions(new gi4().apply(requestOptions));
        }
    }
}
