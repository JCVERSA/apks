package com.transsion.video_edit;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import com.bumptech.glide.Glide;
import defpackage.wia;

public class ThumbnailsImageView extends AppCompatImageView {
    public ThumbnailsImageView(Context context) {
        super(context);
        init();
    }

    private void init() {
    }

    public void setImage(wia wiaVar) {
        Glide.with(getContext()).load(wiaVar.e()).frame(wiaVar.d()).signature(wiaVar).override(wiaVar.f(), wiaVar.a()).centerCrop().diskCacheStrategy(b.a).into(this);
    }

    public ThumbnailsImageView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public ThumbnailsImageView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }
}
