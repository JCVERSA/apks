package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.transsion.dbdata.beans.media.MediaItem;

public abstract class ig6 {
    public static void a(Context context, MediaItem mediaItem, long j, Drawable drawable, ImageView imageView) {
        z7c.b(context, mediaItem.getUri(), j, drawable, imageView, true);
    }
}
