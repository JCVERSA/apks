package com.yandex.div.core.view2.divs;

import android.content.Context;
import android.graphics.ImageDecoder;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.DivPlaceholderLoader;
import com.yandex.div.core.view2.divs.widgets.DivGifImageView;
import com.yandex.div.internal.widget.AspectImageView;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div.logging.Severity;
import com.yandex.div2.DivAlignmentHorizontal;
import com.yandex.div2.DivAlignmentVertical;
import com.yandex.div2.DivGifImage;
import com.yandex.div2.DivImageScale;
import defpackage.by4;
import defpackage.dq0;
import defpackage.dv3;
import defpackage.e74;
import defpackage.jn5;
import defpackage.ne5;
import defpackage.oj3;
import defpackage.ok2;
import defpackage.wc3;
import defpackage.wk2;
import defpackage.wu2;
import defpackage.xc3;
import defpackage.y45;
import defpackage.zfb;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class DivGifImageBinder extends wu2 {
    public static final a e = new a(null);
    public final wk2 b;
    public final DivPlaceholderLoader c;
    public final xc3 d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public static final class b extends AsyncTask {
        public final WeakReference a;
        public final dq0 b;

        public b(WeakReference weakReference, dq0 dq0Var) {
            y45.j(weakReference, "view");
            y45.j(dq0Var, "cachedBitmap");
            this.a = weakReference;
            this.b = dq0Var;
        }

        public final Drawable a() throws IOException {
            byte[] bArrB = this.b.b();
            if (bArrB == null) {
                throw new IllegalStateException("no bytes stored in cached bitmap");
            }
            DivGifImageView divGifImageView = (DivGifImageView) this.a.get();
            Context context = divGifImageView != null ? divGifImageView.getContext() : null;
            if (context == null) {
                throw new IllegalStateException("failed retrieve context");
            }
            File fileCreateTempFile = File.createTempFile("if_u_see_me_in_file_system_plz_report", ".gif", context.getCacheDir());
            try {
                y45.i(fileCreateTempFile, "tempFile");
                dv3.e(fileCreateTempFile, bArrB);
                ImageDecoder.Source sourceCreateSource = ImageDecoder.createSource(fileCreateTempFile);
                y45.i(sourceCreateSource, "createSource(tempFile)");
                Drawable drawableDecodeDrawable = ImageDecoder.decodeDrawable(sourceCreateSource);
                y45.i(drawableDecodeDrawable, "{\n                tempFi…ble(source)\n            }");
                return drawableDecodeDrawable;
            } finally {
                fileCreateTempFile.delete();
            }
        }

        public final ImageDecoder.Source b() {
            Uri uriC = this.b.c();
            String path = uriC != null ? uriC.getPath() : null;
            if (path == null) {
                ne5 ne5Var = ne5.a;
                if (!ne5Var.a(Severity.ERROR)) {
                    return null;
                }
                ne5Var.b(6, "DivGifImageBinder", "No bytes or file in cache to decode gif drawable");
                return null;
            }
            try {
                return ImageDecoder.createSource(new File(path));
            } catch (IOException e) {
                if (!ne5.a.a(Severity.ERROR)) {
                    return null;
                }
                Log.e("DivGifImageBinder", "", e);
                return null;
            }
        }

        /* JADX WARN: Code duplicated, block: B:23:0x005a A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:27:? A[RETURN, SYNTHETIC] */
        @Override
        public Drawable doInBackground(Void... voidArr) {
            ImageDecoder.Source sourceB;
            y45.j(voidArr, "params");
            try {
                return a();
            } catch (IOException e) {
                ne5 ne5Var = ne5.a;
                if (ne5Var.a(Severity.ERROR)) {
                    ne5Var.b(6, "DivGifImageBinder", "Failed writing bytes to temp file, exception: " + e.getMessage());
                }
                sourceB = b();
                if (sourceB == null) {
                    return null;
                }
                try {
                    return ImageDecoder.decodeDrawable(sourceB);
                } catch (IOException e2) {
                    ne5 ne5Var2 = ne5.a;
                    if (!ne5Var2.a(Severity.ERROR)) {
                        return null;
                    }
                    ne5Var2.b(6, "DivGifImageBinder", "Decode drawable from uri exception " + e2.getMessage());
                    return null;
                }
            } catch (IllegalStateException e3) {
                ne5 ne5Var3 = ne5.a;
                if (ne5Var3.a(Severity.ERROR)) {
                    ne5Var3.b(6, "DivGifImageBinder", "Failed create drawable from bytes, exception: " + e3.getMessage());
                }
                sourceB = b();
                if (sourceB == null) {
                    return ImageDecoder.decodeDrawable(sourceB);
                }
                return null;
            }
        }

        @Override
        public void onPostExecute(Drawable drawable) {
            super.onPostExecute(drawable);
            if (drawable == null || !(drawable instanceof AnimatedImageDrawable)) {
                DivGifImageView divGifImageView = (DivGifImageView) this.a.get();
                if (divGifImageView != null) {
                    divGifImageView.setImage(this.b.a());
                }
            } else {
                DivGifImageView divGifImageView2 = (DivGifImageView) this.a.get();
                if (divGifImageView2 != null) {
                    divGifImageView2.setImage(drawable);
                }
            }
            DivGifImageView divGifImageView3 = (DivGifImageView) this.a.get();
            if (divGifImageView3 != null) {
                divGifImageView3.imageLoaded();
            }
        }
    }

    public static final class c extends ok2 {
        public final DivGifImageBinder b;
        public final DivGifImageView c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Div2View div2View, DivGifImageBinder divGifImageBinder, DivGifImageView divGifImageView) {
            super(div2View);
            this.b = divGifImageBinder;
            this.c = divGifImageView;
        }

        @Override
        public void a() {
            super.a();
            this.c.setGifUrl$div_release(null);
        }

        @Override
        public void b(dq0 dq0Var) {
            y45.j(dq0Var, "cachedBitmap");
            super.b(dq0Var);
            this.b.l(this.c, dq0Var);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivGifImageBinder(DivBaseBinder divBaseBinder, wk2 wk2Var, DivPlaceholderLoader divPlaceholderLoader, xc3 xc3Var) {
        super(divBaseBinder);
        y45.j(divBaseBinder, "baseBinder");
        y45.j(wk2Var, "imageLoader");
        y45.j(divPlaceholderLoader, "placeholderLoader");
        y45.j(xc3Var, "errorCollectors");
        this.b = wk2Var;
        this.c = divPlaceholderLoader;
        this.d = xc3Var;
    }

    public final void i(AspectImageView aspectImageView, oj3 oj3Var, Expression expression, Expression expression2) {
        aspectImageView.setGravity(BaseDivViewExtensionsKt.O((DivAlignmentHorizontal) expression.b(oj3Var), (DivAlignmentVertical) expression2.b(oj3Var)));
    }

    public final void j(final DivGifImageView divGifImageView, Div2View div2View, oj3 oj3Var, DivGifImage divGifImage, wc3 wc3Var) {
        Uri uri = (Uri) divGifImage.u.b(oj3Var);
        if (y45.e(uri, divGifImageView.getGifUrl())) {
            return;
        }
        divGifImageView.resetImageLoaded();
        jn5 loadReference = divGifImageView.getLoadReference();
        if (loadReference != null) {
            loadReference.cancel();
        }
        DivPlaceholderLoader divPlaceholderLoader = this.c;
        Expression expression = divGifImage.H;
        divPlaceholderLoader.b(divGifImageView, wc3Var, expression != null ? (String) expression.b(oj3Var) : null, ((Number) divGifImage.D.b(oj3Var)).intValue(), false, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((Drawable) obj);
                return zfb.a;
            }

            public final void invoke(Drawable drawable) {
                if (divGifImageView.isImageLoaded() || divGifImageView.isImagePreview()) {
                    return;
                }
                divGifImageView.setPlaceholder(drawable);
            }
        }, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((by4) obj);
                return zfb.a;
            }

            public final void invoke(by4 by4Var) {
                y45.j(by4Var, "it");
                if (divGifImageView.isImageLoaded()) {
                    return;
                }
                if (by4Var instanceof by4.a) {
                    divGifImageView.setPreview(((by4.a) by4Var).f());
                } else if (by4Var instanceof by4.b) {
                    divGifImageView.setPreview(((by4.b) by4Var).f());
                }
                divGifImageView.previewLoaded();
            }
        });
        divGifImageView.setGifUrl$div_release(uri);
        jn5 jn5VarLoadImageBytes = this.b.loadImageBytes(uri.toString(), new c(div2View, this, divGifImageView));
        y45.i(jn5VarLoadImageBytes, "private fun DivGifImageV…ference = reference\n    }");
        div2View.addLoadReference(jn5VarLoadImageBytes, divGifImageView);
        divGifImageView.setLoadReference$div_release(jn5VarLoadImageBytes);
    }

    @Override
    public void a(final DivGifImageView divGifImageView, com.yandex.div.core.view2.a aVar, final DivGifImage divGifImage, DivGifImage divGifImage2) {
        y45.j(divGifImageView, "<this>");
        y45.j(aVar, "bindingContext");
        y45.j(divGifImage, TtmlNode.TAG_DIV);
        final Div2View div2ViewA = aVar.a();
        final oj3 oj3VarB = aVar.b();
        final wc3 wc3VarA = this.d.a(div2ViewA.getDataTag(), div2ViewA.getDivData());
        BaseDivViewExtensionsKt.j(divGifImageView, aVar, divGifImage.b, divGifImage.d, divGifImage.A, divGifImage.q, divGifImage.x, divGifImage.w, divGifImage.G, divGifImage.F, divGifImage.c, divGifImage.r(), divGifImage.l);
        BaseDivViewExtensionsKt.A(divGifImageView, divGifImage.i, divGifImage2 != null ? divGifImage2.i : null, oj3VarB);
        divGifImageView.addSubscription(divGifImage.K.f(oj3VarB, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((DivImageScale) obj);
                return zfb.a;
            }

            public final void invoke(DivImageScale divImageScale) {
                y45.j(divImageScale, "scale");
                divGifImageView.setImageScale(BaseDivViewExtensionsKt.B0(divImageScale));
            }
        }));
        m(divGifImageView, oj3VarB, divGifImage.n, divGifImage.o);
        divGifImageView.addSubscription(divGifImage.u.f(oj3VarB, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((Uri) obj);
                return zfb.a;
            }

            public final void invoke(Uri uri) {
                y45.j(uri, "it");
                this.this$0.j(divGifImageView, div2ViewA, oj3VarB, divGifImage, wc3VarA);
            }
        }));
    }

    public final void l(DivGifImageView divGifImageView, dq0 dq0Var) {
        new b(new WeakReference(divGifImageView), dq0Var).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public final void m(final DivGifImageView divGifImageView, final oj3 oj3Var, final Expression expression, final Expression expression2) {
        i(divGifImageView, oj3Var, expression, expression2);
        e74 e74Var = new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m186invoke(obj);
                return zfb.a;
            }

            public final void m186invoke(Object obj) {
                y45.j(obj, "<anonymous parameter 0>");
                this.this$0.i(divGifImageView, oj3Var, expression, expression2);
            }
        };
        divGifImageView.addSubscription(expression.e(oj3Var, e74Var));
        divGifImageView.addSubscription(expression2.e(oj3Var, e74Var));
    }
}
