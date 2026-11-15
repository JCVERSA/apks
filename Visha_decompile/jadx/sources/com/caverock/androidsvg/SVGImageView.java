package com.caverock.androidsvg;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Picture;
import android.graphics.drawable.PictureDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;

public class SVGImageView extends ImageView {
    public static Method d;
    public SVG b;
    public com.caverock.androidsvg.a c;

    public class b extends AsyncTask {
        public Context a;
        public int b;

        public b(Context context, int i) {
            this.a = context;
            this.b = i;
        }

        @Override
        public SVG doInBackground(Integer... numArr) {
            try {
                return SVG.m(this.a, this.b);
            } catch (SVGParseException e) {
                Log.e("SVGImageView", String.format("Error loading resource 0x%x: %s", Integer.valueOf(this.b), e.getMessage()));
                return null;
            }
        }

        @Override
        public void onPostExecute(SVG svg) {
            SVGImageView.this.b = svg;
            SVGImageView.this.c();
        }
    }

    public class c extends AsyncTask {
        public c() {
        }

        @Override
        public SVG doInBackground(InputStream... inputStreamArr) {
            try {
                return SVG.l(inputStreamArr[0]);
            } catch (SVGParseException e) {
                Log.e("SVGImageView", "Parse error loading URI: " + e.getMessage());
                try {
                    return null;
                } catch (IOException unused) {
                    return null;
                }
            } finally {
                try {
                    inputStreamArr[0].close();
                } catch (IOException unused2) {
                }
            }
        }

        @Override
        public void onPostExecute(SVG svg) {
            SVGImageView.this.b = svg;
            SVGImageView.this.c();
        }
    }

    static {
        try {
            d = View.class.getMethod("setLayerType", Integer.TYPE, Paint.class);
        } catch (NoSuchMethodException unused) {
        }
    }

    public SVGImageView(Context context) {
        super(context);
        this.b = null;
        this.c = new com.caverock.androidsvg.a();
    }

    private void setFromString(String str) {
        try {
            this.b = SVG.o(str);
            c();
        } catch (SVGParseException unused) {
            Log.e("SVGImageView", "Could not find SVG at: " + str);
        }
    }

    public final void c() {
        SVG svg = this.b;
        if (svg == null) {
            return;
        }
        Picture pictureT = svg.t(this.c);
        g();
        setImageDrawable(new PictureDrawable(pictureT));
    }

    public final void d(AttributeSet attributeSet, int i) {
        if (isInEditMode()) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, R.styleable.SVGImageView, i, 0);
        try {
            String string = typedArrayObtainStyledAttributes.getString(R.styleable.SVGImageView_css);
            if (string != null) {
                this.c.a(string);
            }
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.SVGImageView_svg, -1);
            if (resourceId != -1) {
                setImageResource(resourceId);
                return;
            }
            String string2 = typedArrayObtainStyledAttributes.getString(R.styleable.SVGImageView_svg);
            if (string2 != null) {
                if (f(Uri.parse(string2))) {
                    return;
                }
                if (e(string2)) {
                } else {
                    setFromString(string2);
                }
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public final boolean e(String str) {
        try {
            new c().execute(getContext().getAssets().open(str));
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public final boolean f(Uri uri) {
        try {
            new c().execute(getContext().getContentResolver().openInputStream(uri));
            return true;
        } catch (FileNotFoundException unused) {
            return false;
        }
    }

    public final void g() {
        if (d == null) {
            return;
        }
        try {
            d.invoke(this, Integer.valueOf(View.class.getField("LAYER_TYPE_SOFTWARE").getInt(new View(getContext()))), null);
        } catch (Exception e) {
            Log.w("SVGImageView", "Unexpected failure calling setLayerType", e);
        }
    }

    public void setCSS(String str) {
        this.c.a(str);
        c();
    }

    public void setImageAsset(String str) {
        if (e(str)) {
            return;
        }
        Log.e("SVGImageView", "File not found: " + str);
    }

    @Override
    public void setImageResource(int i) {
        new b(getContext(), i).execute(new Integer[0]);
    }

    @Override
    public void setImageURI(Uri uri) {
        if (f(uri)) {
            return;
        }
        Log.e("SVGImageView", "File not found: " + uri);
    }

    public void setSVG(SVG svg) {
        if (svg == null) {
            throw new IllegalArgumentException("Null value passed to setSVG()");
        }
        this.b = svg;
        c();
    }

    public SVGImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.b = null;
        this.c = new com.caverock.androidsvg.a();
        d(attributeSet, 0);
    }

    public void setSVG(SVG svg, String str) {
        if (svg != null) {
            this.b = svg;
            this.c.a(str);
            c();
            return;
        }
        throw new IllegalArgumentException("Null value passed to setSVG()");
    }

    public SVGImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = null;
        this.c = new com.caverock.androidsvg.a();
        d(attributeSet, i);
    }
}
