package defpackage;

import android.graphics.drawable.PictureDrawable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.SimpleResource;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.caverock.androidsvg.SVG;

public class k7a implements ResourceTranscoder {
    @Override
    public Resource transcode(Resource resource, Options options) {
        return new SimpleResource(new PictureDrawable(((SVG) resource.get()).r()));
    }
}
