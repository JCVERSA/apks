package defpackage;

import android.graphics.drawable.PictureDrawable;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.ImageViewTarget;
import com.bumptech.glide.request.target.Target;

public class n7a implements RequestListener {
    @Override
    public boolean onResourceReady(PictureDrawable pictureDrawable, Object obj, Target target, DataSource dataSource, boolean z) {
        ((ImageViewTarget) target).getView().setLayerType(1, null);
        return false;
    }

    @Override
    public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z) {
        ((ImageViewTarget) target).getView().setLayerType(0, null);
        return false;
    }
}
