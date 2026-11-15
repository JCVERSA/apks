package com.transsion.glide;

import android.content.Context;
import android.graphics.drawable.PictureDrawable;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Registry;
import com.bumptech.glide.module.AppGlideModule;
import com.caverock.androidsvg.SVG;
import defpackage.g7a;
import defpackage.k7a;
import java.io.InputStream;

public class SvgModule extends AppGlideModule {
    @Override
    public void registerComponents(Context context, Glide glide, Registry registry) {
        registry.register(SVG.class, PictureDrawable.class, new k7a()).append(InputStream.class, SVG.class, new g7a());
    }
}
