package defpackage;

import android.content.Context;
import android.widget.ImageView;
import androidx.core.content.res.ResourcesCompat;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.bumptech.glide.load.resource.bitmap.RoundedCorners;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;

public abstract class ly4 {
    public static void a(Context context, ImageView imageView, String str, int i) {
        Glide.with(context).asBitmap().apply((BaseRequestOptions<?>) new RequestOptions().transform(new CenterCrop(), new RoundedCorners(oc2.a(context, 4.0f)))).load(str).placeholder(ResourcesCompat.getDrawable(context.getResources(), i, context.getTheme())).into(imageView);
    }
}
