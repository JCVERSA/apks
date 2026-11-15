package com.yandex.div.core;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.PictureDrawable;
import android.util.Base64;
import androidx.annotation.WorkerThread;
import com.yandex.div.logging.Severity;
import defpackage.by4;
import defpackage.c74;
import defpackage.e74;
import defpackage.f7a;
import defpackage.g1a;
import defpackage.j1a;
import defpackage.ne5;
import defpackage.pfb;
import defpackage.y45;
import defpackage.zfb;
import java.io.ByteArrayInputStream;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0014\u0010\t\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u001c\u0010\u001c\u001a\u00020\u0019*\u00020\u000eH\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u001c\u0010\u001c\u001a\u00020\u001d*\u00020\u0014H\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\bH\u0017¢\u0006\u0004\b \u0010!R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\"R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010#R\"\u0010\t\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\b0\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010$\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006%"}, d2 = {"Lcom/yandex/div/core/DecodeBase64ImageTask;", "Ljava/lang/Runnable;", "", "rawBase64string", "", "synchronous", "Lkotlin/Function1;", "Lby4;", "Lzfb;", "onDecoded", MethodDecl.initName, "(Ljava/lang/String;ZLe74;)V", "", "bytes", "Landroid/graphics/Bitmap;", "decodeToBitmap", "([B)Landroid/graphics/Bitmap;", "base64string", "extractFromDataUrl", "(Ljava/lang/String;)Ljava/lang/String;", "Landroid/graphics/drawable/PictureDrawable;", "decodeToPictureDrawable", "([B)Landroid/graphics/drawable/PictureDrawable;", "isSvg", "(Ljava/lang/String;)Z", "Lby4$a;", "asImageRepresentation-Mlk_otY", "(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;", "asImageRepresentation", "Lby4$b;", "asImageRepresentation-9g2PFUk", "(Landroid/graphics/drawable/PictureDrawable;)Landroid/graphics/drawable/PictureDrawable;", "run", "()V", "Ljava/lang/String;", "Z", "Le74;", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DecodeBase64ImageTask implements Runnable {
    private final e74 onDecoded;
    private String rawBase64string;
    private final boolean synchronous;

    public DecodeBase64ImageTask(String str, boolean z, e74 e74Var) {
        y45.j(str, "rawBase64string");
        y45.j(e74Var, "onDecoded");
        this.rawBase64string = str;
        this.synchronous = z;
        this.onDecoded = e74Var;
    }

    private final PictureDrawable m133asImageRepresentation9g2PFUk(PictureDrawable pictureDrawable) {
        return by4.b.b(pictureDrawable);
    }

    private final Bitmap m134asImageRepresentationMlk_otY(Bitmap bitmap) {
        return by4.a.b(bitmap);
    }

    private final Bitmap decodeToBitmap(byte[] bytes) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        try {
            return BitmapFactory.decodeByteArray(bytes, 0, bytes.length, options);
        } catch (IllegalArgumentException unused) {
            ne5 ne5Var = ne5.a;
            if (!ne5Var.a(Severity.ERROR)) {
                return null;
            }
            ne5Var.b(6, "Div", "Problem with decoding base-64 preview image occurred");
            return null;
        }
    }

    private final PictureDrawable decodeToPictureDrawable(byte[] bytes) {
        return new f7a(false, 1, null).a(new ByteArrayInputStream(bytes));
    }

    private final String extractFromDataUrl(String base64string) {
        if (!g1a.R(base64string, "data:", false, 2, null)) {
            return base64string;
        }
        String strSubstring = base64string.substring(j1a.l0(base64string, ',', 0, false, 6, null) + 1);
        y45.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    private final boolean isSvg(String base64string) {
        return g1a.R(base64string, "data:image/svg", false, 2, null);
    }

    @Override
    @WorkerThread
    public void run() {
        try {
            byte[] bArrDecode = Base64.decode(extractFromDataUrl(this.rawBase64string), 0);
            final by4 by4VarA = null;
            if (isSvg(this.rawBase64string)) {
                y45.i(bArrDecode, "bytes");
                PictureDrawable pictureDrawableDecodeToPictureDrawable = decodeToPictureDrawable(bArrDecode);
                PictureDrawable pictureDrawableM133asImageRepresentation9g2PFUk = pictureDrawableDecodeToPictureDrawable != null ? m133asImageRepresentation9g2PFUk(pictureDrawableDecodeToPictureDrawable) : null;
                if (pictureDrawableM133asImageRepresentation9g2PFUk != null) {
                    by4VarA = by4.b.a(pictureDrawableM133asImageRepresentation9g2PFUk);
                }
            } else {
                y45.i(bArrDecode, "bytes");
                Bitmap bitmapDecodeToBitmap = decodeToBitmap(bArrDecode);
                Bitmap bitmapM134asImageRepresentationMlk_otY = bitmapDecodeToBitmap != null ? m134asImageRepresentationMlk_otY(bitmapDecodeToBitmap) : null;
                if (bitmapM134asImageRepresentationMlk_otY != null) {
                    by4VarA = by4.a.a(bitmapM134asImageRepresentationMlk_otY);
                }
            }
            if (this.synchronous) {
                this.onDecoded.invoke(by4VarA);
            } else {
                pfb.a.e(new c74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override
                    public Object invoke() {
                        m135invoke();
                        return zfb.a;
                    }

                    public final void m135invoke() {
                        DecodeBase64ImageTask.this.onDecoded.invoke(by4VarA);
                    }
                });
            }
        } catch (IllegalArgumentException unused) {
            ne5 ne5Var = ne5.a;
            if (ne5Var.a(Severity.ERROR)) {
                ne5Var.b(6, "Div", "Bad base-64 image preview");
            }
        }
    }
}
