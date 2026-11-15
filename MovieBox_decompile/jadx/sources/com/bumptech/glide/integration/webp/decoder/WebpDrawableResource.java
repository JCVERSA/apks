package com.bumptech.glide.integration.webp.decoder;

import com.bumptech.glide.load.engine.Initializable;
import com.bumptech.glide.load.resource.drawable.DrawableResource;

public class WebpDrawableResource extends DrawableResource<WebpDrawable> implements Initializable {
    public WebpDrawableResource(WebpDrawable webpDrawable) {
        super(webpDrawable);
    }

    @Override
    public Class<WebpDrawable> getResourceClass() {
        return WebpDrawable.class;
    }

    @Override
    public int getSize() {
        return ((WebpDrawable) this.drawable).getSize();
    }

    @Override
    public void initialize() {
        ((WebpDrawable) this.drawable).getFirstFrame().prepareToDraw();
    }

    @Override
    public void recycle() {
        ((WebpDrawable) this.drawable).stop();
        ((WebpDrawable) this.drawable).recycle();
    }
}
