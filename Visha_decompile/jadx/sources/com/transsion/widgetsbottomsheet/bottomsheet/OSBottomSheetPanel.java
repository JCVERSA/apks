package com.transsion.widgetsbottomsheet.bottomsheet;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Insets;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.ColorInt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p004lifecycle.MutableLiveData;
import com.google.android.gms.ads.RequestConfiguration;
import com.transsion.hubsdk.api.graphics.TranCanvas;
import com.transsion.hubsdk.api.graphics.TranOutline;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.widgetsbottomsheet.R;
import com.transsion.widgetsbottomsheet.bottomsheet.OSBottomSheetPanel;
import defpackage.bq5;
import defpackage.c74;
import defpackage.f43;
import defpackage.gs6;
import defpackage.jv9;
import defpackage.kv9;
import defpackage.l97;
import defpackage.n97;
import defpackage.nb7;
import defpackage.olb;
import defpackage.wn8;
import defpackage.ws7;
import defpackage.y45;
import defpackage.yi5;
import defpackage.yj1;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$IntRef;

@Metadata(d1 = {"\u0000Â\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0015\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\bB\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n*\u0002÷\u0001\u0018\u0000 \u0083\u00022\u00020\u0001:\u0002\u0084\u0002B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000f\u0010\rJ\u000f\u0010\u0010\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0010\u0010\rJ\u000f\u0010\u0011\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0011\u0010\rJ\u000f\u0010\u0012\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0012\u0010\rJ\u000f\u0010\u0013\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0015\u0010\rJ\u000f\u0010\u0016\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0016\u0010\rJ\u0017\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ!\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u001b2\b\b\u0002\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\"\u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u000bH\u0002¢\u0006\u0004\b$\u0010\rJ\u000f\u0010%\u001a\u00020\u000bH\u0014¢\u0006\u0004\b%\u0010\rJ\u000f\u0010&\u001a\u00020\u000bH\u0014¢\u0006\u0004\b&\u0010\rJ7\u0010)\u001a\u00020\u000b2\u0006\u0010'\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u0006H\u0014¢\u0006\u0004\b)\u0010*J\u0019\u0010-\u001a\u00020\u000b2\b\u0010,\u001a\u0004\u0018\u00010+H\u0014¢\u0006\u0004\b-\u0010.J\u001f\u00101\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020\u00062\u0006\u00100\u001a\u00020\u0006H\u0014¢\u0006\u0004\b1\u00102J\u0017\u00105\u001a\u00020\u000b2\u0006\u00104\u001a\u000203H\u0014¢\u0006\u0004\b5\u00106J\u0017\u00108\u001a\u00020\u000b2\u0006\u00107\u001a\u00020\u001dH\u0016¢\u0006\u0004\b8\u00109J\u0017\u0010<\u001a\u00020\u001d2\u0006\u0010;\u001a\u00020:H\u0016¢\u0006\u0004\b<\u0010=J\u0017\u0010?\u001a\u00020\u001d2\u0006\u0010>\u001a\u00020:H\u0016¢\u0006\u0004\b?\u0010=J'\u0010D\u001a\u00020\u001d2\u0006\u0010A\u001a\u00020@2\u0006\u0010B\u001a\u00020@2\u0006\u0010C\u001a\u00020\u0006H\u0016¢\u0006\u0004\bD\u0010EJ'\u0010G\u001a\u00020\u000b2\u0006\u0010A\u001a\u00020@2\u0006\u0010B\u001a\u00020@2\u0006\u0010F\u001a\u00020\u0006H\u0016¢\u0006\u0004\bG\u0010HJ\u0017\u0010I\u001a\u00020\u000b2\u0006\u0010A\u001a\u00020@H\u0016¢\u0006\u0004\bI\u0010JJ7\u0010O\u001a\u00020\u000b2\u0006\u0010B\u001a\u00020@2\u0006\u0010K\u001a\u00020\u00062\u0006\u0010L\u001a\u00020\u00062\u0006\u0010M\u001a\u00020\u00062\u0006\u0010N\u001a\u00020\u0006H\u0016¢\u0006\u0004\bO\u0010PJ/\u0010U\u001a\u00020\u000b2\u0006\u0010B\u001a\u00020@2\u0006\u0010Q\u001a\u00020\u00062\u0006\u0010R\u001a\u00020\u00062\u0006\u0010T\u001a\u00020SH\u0016¢\u0006\u0004\bU\u0010VJ/\u0010Y\u001a\u00020\u001d2\u0006\u0010B\u001a\u00020@2\u0006\u0010W\u001a\u00020\u001b2\u0006\u0010X\u001a\u00020\u001b2\u0006\u0010T\u001a\u00020\u001dH\u0016¢\u0006\u0004\bY\u0010ZJ'\u0010[\u001a\u00020\u001d2\u0006\u0010B\u001a\u00020@2\u0006\u0010W\u001a\u00020\u001b2\u0006\u0010X\u001a\u00020\u001bH\u0016¢\u0006\u0004\b[\u0010\\J\u0015\u0010^\u001a\u00020\u000b2\u0006\u0010]\u001a\u00020@¢\u0006\u0004\b^\u0010JJ\u0015\u0010_\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u001b¢\u0006\u0004\b_\u0010`J\r\u0010a\u001a\u00020\u000b¢\u0006\u0004\ba\u0010\rJ\u000f\u0010d\u001a\u00020\u001dH\u0000¢\u0006\u0004\bb\u0010cJ\u0015\u0010g\u001a\u00020\u000b2\u0006\u0010f\u001a\u00020e¢\u0006\u0004\bg\u0010hJ\u0015\u0010j\u001a\u00020\u000b2\u0006\u0010i\u001a\u00020\u001b¢\u0006\u0004\bj\u0010`J\u001d\u0010l\u001a\u00020\u000b2\u0006\u0010i\u001a\u00020\u001b2\u0006\u0010k\u001a\u00020\u001b¢\u0006\u0004\bl\u0010mJ\r\u0010n\u001a\u00020\u000b¢\u0006\u0004\bn\u0010\rJ\u0017\u0010p\u001a\u00020\u000b2\u0006\u0010o\u001a\u00020\u001dH\u0016¢\u0006\u0004\bp\u00109J\u0015\u0010r\u001a\u00020\u000b2\u0006\u0010q\u001a\u00020\u001d¢\u0006\u0004\br\u00109J\r\u0010s\u001a\u00020\u001d¢\u0006\u0004\bs\u0010cJ\r\u0010t\u001a\u00020\u000b¢\u0006\u0004\bt\u0010\rJ\r\u0010u\u001a\u00020\u000b¢\u0006\u0004\bu\u0010\rJ\u000f\u0010v\u001a\u0004\u0018\u00010e¢\u0006\u0004\bv\u0010wJ\r\u0010x\u001a\u00020\u000b¢\u0006\u0004\bx\u0010\rJ\u0017\u0010z\u001a\u00020\u000b2\b\b\u0001\u0010y\u001a\u00020\u0006¢\u0006\u0004\bz\u0010{J\u000f\u0010|\u001a\u00020\u0006H\u0007¢\u0006\u0004\b|\u0010\u0014J\r\u0010}\u001a\u00020\u0006¢\u0006\u0004\b}\u0010\u0014J\u0015\u0010\u007f\u001a\u00020\u000b2\u0006\u0010~\u001a\u00020\u001d¢\u0006\u0004\b\u007f\u00109J\u000f\u0010\u0080\u0001\u001a\u00020\u001d¢\u0006\u0005\b\u0080\u0001\u0010cR\u001b\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0081\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b(\u0010\u0082\u0001R\u001c\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0084\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0086\u0001R\u001c\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u0084\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0088\u0001\u0010\u0086\u0001R\u0018\u0010\u008d\u0001\u001a\u00030\u008a\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u008c\u0001R&\u0010\u0017\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0006\b\u008e\u0001\u0010\u008f\u0001\u001a\u0005\b\u0090\u0001\u0010\u0014\"\u0005\b\u0091\u0001\u0010{R\u001a\u0010\u0093\u0001\u001a\u0004\u0018\u00010e8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0016\u0010\u0092\u0001R.\u0010\u0099\u0001\u001a\u0004\u0018\u00010@2\t\u0010\u0094\u0001\u001a\u0004\u0018\u00010@8\u0006@BX\u0086\u000e¢\u0006\u0010\n\u0006\b\u0095\u0001\u0010\u0096\u0001\u001a\u0006\b\u0097\u0001\u0010\u0098\u0001R\u0016\u0010\u009a\u0001\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u001f\u0010\u008f\u0001R\u0019\u0010\u009d\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009b\u0001\u0010\u009c\u0001R\u0018\u0010\u009e\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0013\u0010\u009c\u0001R\u0018\u0010\u009f\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\"\u0010\u009c\u0001R\u0018\u0010 \u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0019\u0010\u009c\u0001R\u0019\u0010£\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¡\u0001\u0010¢\u0001R\u0018\u0010¤\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0012\u0010\u009c\u0001R\u0018\u0010¥\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\f\u0010\u009c\u0001R\u0019\u0010§\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¦\u0001\u0010\u009c\u0001R\u0018\u0010¨\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0015\u0010\u009c\u0001R\u0019\u0010ª\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b©\u0001\u0010¢\u0001R(\u0010°\u0001\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u000e\u0010«\u0001\u001a\u0006\b¬\u0001\u0010\u00ad\u0001\"\u0006\b®\u0001\u0010¯\u0001R&\u0010³\u0001\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u000f\u0010\u008f\u0001\u001a\u0005\b±\u0001\u0010\u0014\"\u0005\b²\u0001\u0010{R&\u0010¶\u0001\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0010\u0010\u008f\u0001\u001a\u0005\b´\u0001\u0010\u0014\"\u0005\bµ\u0001\u0010{R&\u0010¹\u0001\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b$\u0010¢\u0001\u001a\u0005\b·\u0001\u0010c\"\u0005\b¸\u0001\u00109R&\u0010¼\u0001\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0011\u0010¢\u0001\u001a\u0005\bº\u0001\u0010c\"\u0005\b»\u0001\u00109R\u0019\u0010¾\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b½\u0001\u0010¢\u0001R\u001b\u0010À\u0001\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¿\u0001\u0010\u0096\u0001R\u0019\u0010Â\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÁ\u0001\u0010\u009c\u0001R'\u0010Æ\u0001\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0006\bÃ\u0001\u0010¢\u0001\u001a\u0005\bÄ\u0001\u0010c\"\u0005\bÅ\u0001\u00109R \u0010Ê\u0001\u001a\u00020@8BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÇ\u0001\u0010È\u0001\u001a\u0006\bÉ\u0001\u0010\u0098\u0001R\u0019\u0010Ì\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bË\u0001\u0010¢\u0001R!\u0010Ñ\u0001\u001a\u00030Í\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÎ\u0001\u0010È\u0001\u001a\u0006\bÏ\u0001\u0010Ð\u0001R\u0019\u0010Ò\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009c\u0001\u0010¢\u0001R'\u0010Ö\u0001\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0006\bÓ\u0001\u0010\u008f\u0001\u001a\u0005\bÔ\u0001\u0010\u0014\"\u0005\bÕ\u0001\u0010{R\u0019\u0010Ø\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b×\u0001\u0010\u008f\u0001R\u001c\u0010Û\u0001\u001a\u0005\u0018\u00010Ù\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010Ú\u0001R\u0019\u0010Ü\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b«\u0001\u0010¢\u0001R\u001c\u0010à\u0001\u001a\u0005\u0018\u00010Ý\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÞ\u0001\u0010ß\u0001R\u0019\u0010â\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bá\u0001\u0010¢\u0001R\u001c\u0010æ\u0001\u001a\u0005\u0018\u00010ã\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bä\u0001\u0010å\u0001R\u0019\u0010è\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bç\u0001\u0010\u008f\u0001R\u0019\u0010ê\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bé\u0001\u0010¢\u0001R\u0019\u0010ì\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bë\u0001\u0010¢\u0001R\u0018\u0010ð\u0001\u001a\u00030í\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bî\u0001\u0010ï\u0001R\u0018\u0010ô\u0001\u001a\u00030ñ\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bò\u0001\u0010ó\u0001R\u0017\u0010ö\u0001\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\b\n\u0006\bõ\u0001\u0010\u009c\u0001R\u0018\u0010ú\u0001\u001a\u00030÷\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bø\u0001\u0010ù\u0001R0\u0010\u0082\u0002\u001a\t\u0012\u0004\u0012\u00020\u00060û\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\bü\u0001\u0010ý\u0001\u001a\u0006\bþ\u0001\u0010ÿ\u0001\"\u0006\b\u0080\u0002\u0010\u0081\u0002¨\u0006\u0085\u0002"}, d2 = {"Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;", "Landroid/widget/LinearLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "defStyleRes", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "Lzfb;", TtmlNode.TAG_P, "()V", "t", "u", "v", "x", "o", "k", "()I", "r", GslbInterceptor.HEADER_KEY_GSLB, "mPanelVisibleHeight", "", CmcdData.OBJECT_TYPE_MANIFEST, "(I)J", "", "animatorEnd", "", "useActualDistance", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "(FZ)V", "transY", CmcdData.STREAM_TYPE_LIVE, "(F)F", "w", "onAttachedToWindow", "onDetachedFromWindow", "changed", "b", "onLayout", "(ZIIII)V", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "disallowIntercept", "requestDisallowInterceptTouchEvent", "(Z)V", "Landroid/view/MotionEvent;", "ev", "onInterceptTouchEvent", "(Landroid/view/MotionEvent;)Z", NotificationCompat.CATEGORY_EVENT, "onTouchEvent", "Landroid/view/View;", "child", TypedValues.AttributesType.S_TARGET, "nestedScrollAxes", "onStartNestedScroll", "(Landroid/view/View;Landroid/view/View;I)Z", "axes", "onNestedScrollAccepted", "(Landroid/view/View;Landroid/view/View;I)V", "onStopNestedScroll", "(Landroid/view/View;)V", "dxConsumed", "dyConsumed", "dxUnconsumed", "dyUnconsumed", "onNestedScroll", "(Landroid/view/View;IIII)V", "dx", "dy", "", "consumed", "onNestedPreScroll", "(Landroid/view/View;II[I)V", "velocityX", "velocityY", "onNestedFling", "(Landroid/view/View;FFZ)Z", "onNestedPreFling", "(Landroid/view/View;FF)Z", "outsideView", "setOutsideView", "updateOutsideViewAlpha", "(F)V", "animateExit", "animateImeExit$widgetsbottomsheet_release", "()Z", "animateImeExit", "Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;", "dialog", "enableTouchFollow", "(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)V", "velocity", "gotoFinalPosAcc", "pos", "gotoFinalPosSpring", "(FF)V", "cancelSpring", "visible", "setDragHandleVisibility", "supportGesture", "setSupportGesture", "isInGotoFinalPositionAnimation", "cancelGotoFinalPositionAnimation", "animateDismiss", "getDialog", "()Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;", "disableDim", "color", "setBackgroundFillColor", "(I)V", "getBackgroundFillColor", "getRealContentWidth", "isUseBoundsWith", "setUseBoundsWidth", "isInEnterAnimator", "Lnb7;", "Lnb7;", "mOSTouchFollowHelper", "Landroid/animation/ValueAnimator;", "c", "Landroid/animation/ValueAnimator;", "mExitAnimator", "d", "mEnterAnimator", "Ljv9;", "e", "Ljv9;", "mTransYSpringAnimation", "f", "I", "getMPanelVisibleHeight", "setMPanelVisibleHeight", "Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;", "mDialog", "<set-?>", CmcdData.STREAMING_FORMAT_HLS, "Landroid/view/View;", "getMOutsideView", "()Landroid/view/View;", "mOutsideView", "mTouchSlop", "j", "F", "mDownY", "mDownX", "mMoveY", "mMoveX", "n", "Z", "mLockedMoveDirection", "mDirectionX", "mAbsDirectionX", "q", "mDirectionY", "mAbsDirectionY", "s", "mDirectionVertical", "J", "getMCustomEnterDuration", "()J", "setMCustomEnterDuration", "(J)V", "mCustomEnterDuration", "getMCustomContentMaxHeight", "setMCustomContentMaxHeight", "mCustomContentMaxHeight", "getMCustomTopMargin", "setMCustomTopMargin", "mCustomTopMargin", "getMCanDown", "setMCanDown", "mCanDown", "getMCanUp", "setMCanUp", "mCanUp", "y", "mHasNestedScrollableView", "z", "mTargetScrollableView", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "mMaskMaxAlpha", "B", "getMFixedHeight", "setMFixedHeight", "mFixedHeight", "C", "Lyi5;", "getMDragRect", "mDragRect", "D", "mSupportGesture", "Landroid/view/ViewGroup;", ExifInterface.LONGITUDE_EAST, "getMPanelContent", "()Landroid/view/ViewGroup;", "mPanelContent", "mIsSecondHome", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "getSoftKeyboardHeight", "setSoftKeyboardHeight", "softKeyboardHeight", "H", "mFillColor", "Lws7;", "Lws7;", "mOsSmoothCornerDrawable", "adaptLargeScreen", "Ljava/lang/Runnable;", "K", "Ljava/lang/Runnable;", "mEnterScheduleRunnable", "L", "mIsUseBoundsWidth", "Landroid/view/WindowManager;", "M", "Landroid/view/WindowManager;", "mWindowManager", "N", "mCachedContentWidth", "O", "mIsThunderbackWindowMode", "P", "mIsInMultiWindowMode", "Lcom/transsion/hubsdk/api/graphics/TranOutline;", "Q", "Lcom/transsion/hubsdk/api/graphics/TranOutline;", "mTranOutLine", "Lcom/transsion/hubsdk/api/graphics/TranCanvas;", "R", "Lcom/transsion/hubsdk/api/graphics/TranCanvas;", "mCanvas", ExifInterface.LATITUDE_SOUTH, "mCornerRadius", "com/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel$e", "T", "Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel$e;", "mSmoothOutlineProvider", "Landroidx/lifecycle/MutableLiveData;", "U", "Landroidx/lifecycle/MutableLiveData;", "getLivePanelWidth", "()Landroidx/lifecycle/MutableLiveData;", "setLivePanelWidth", "(Landroidx/lifecycle/MutableLiveData;)V", "livePanelWidth", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "widgetsbottomsheet_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class OSBottomSheetPanel extends LinearLayout {
    public static final float ALPHA_OUTSIDE_VIEW_MAX = 0.2f;
    public static final float ALPHA_OUTSIDE_VIEW_MAX_NIGHT = 0.6f;
    public static final float OS_OTHER_MAX_WIDTH = 0.72f;
    public static final float OS_PAD_MAX_LANDSCAPE_HEIGHT = 0.8f;
    public static final float OS_PAD_MAX_PORTRAIT_HEIGHT = 0.75f;
    public static final float OS_PAD_MAX_WIDTH = 0.7f;
    public static final Interpolator V;
    public static final Interpolator W;
    public static final Interpolator a0;
    public static final Interpolator b0;
    public static final Interpolator c0;

    public float mMaskMaxAlpha;

    public boolean mFixedHeight;

    public final yi5 mDragRect;

    public boolean mSupportGesture;

    public final yi5 mPanelContent;

    public boolean mIsSecondHome;

    public int softKeyboardHeight;

    public int mFillColor;

    public ws7 mOsSmoothCornerDrawable;

    public boolean adaptLargeScreen;

    public Runnable mEnterScheduleRunnable;

    public boolean mIsUseBoundsWidth;

    public WindowManager mWindowManager;

    public int mCachedContentWidth;

    public boolean mIsThunderbackWindowMode;

    public boolean mIsInMultiWindowMode;

    public final TranOutline mTranOutLine;

    public final TranCanvas mCanvas;

    public final float mCornerRadius;

    public final e mSmoothOutlineProvider;

    public MutableLiveData livePanelWidth;

    public nb7 mOSTouchFollowHelper;

    public ValueAnimator mExitAnimator;

    public ValueAnimator mEnterAnimator;

    public final jv9 mTransYSpringAnimation;

    public int mPanelVisibleHeight;

    public OSBaseBottomSheetDialog mDialog;

    public View mOutsideView;

    public final int mTouchSlop;

    public float mDownY;

    public float mDownX;

    public float mMoveY;

    public float mMoveX;

    public boolean mLockedMoveDirection;

    public float mDirectionX;

    public float mAbsDirectionX;

    public float mDirectionY;

    public float mAbsDirectionY;

    public boolean mDirectionVertical;

    public long mCustomEnterDuration;

    public int mCustomContentMaxHeight;

    public int mCustomTopMargin;

    public boolean mCanDown;

    public boolean mCanUp;

    public boolean mHasNestedScrollableView;

    public View mTargetScrollableView;

    public static final class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animation");
            OSBottomSheetPanel.this.mEnterAnimator = null;
        }
    }

    public static final class c extends AnimatorListenerAdapter {
        public c() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animation");
            OSBottomSheetPanel.this.mExitAnimator = null;
            OSBaseBottomSheetDialog oSBaseBottomSheetDialog = OSBottomSheetPanel.this.mDialog;
            if (oSBaseBottomSheetDialog == null || oSBaseBottomSheetDialog.isFinishing()) {
                return;
            }
            oSBaseBottomSheetDialog.finish();
        }
    }

    public static final class d extends AnimatorListenerAdapter {
        public d() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animation");
            OSBaseBottomSheetDialog oSBaseBottomSheetDialog = OSBottomSheetPanel.this.mDialog;
            y45.g(oSBaseBottomSheetDialog);
            oSBaseBottomSheetDialog.dismissWithoutAnim();
        }
    }

    public static final class e extends ViewOutlineProvider {
        public e() {
        }

        @Override
        public void getOutline(View view, Outline outline) {
            y45.j(view, "view");
            y45.j(outline, "outline");
            OSBottomSheetPanel.this.mTranOutLine.setSmoothRoundRect(outline, 0, 0, view.getWidth(), view.getHeight(), OSBottomSheetPanel.this.mCornerRadius, TranOutline.CornerFlag.ALL);
        }
    }

    static {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(0.09f, 0.15f, 0.1f, 0.43f, 0.2f, 0.64f);
        path.cubicTo(0.31f, 0.87f, 0.4f, 1.0f, 1.0f, 1.0f);
        V = new PathInterpolator(path);
        Path path2 = new Path();
        path2.moveTo(0.0f, 0.0f);
        path2.cubicTo(0.09f, 0.15f, 0.1f, 0.43f, 0.2f, 0.64f);
        path2.cubicTo(0.31f, 0.87f, 0.4f, 1.0f, 1.0f, 1.0f);
        W = new PathInterpolator(path2);
        a0 = new n97();
        b0 = new l97();
        c0 = new l97();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSBottomSheetPanel(Context context) {
        this(context, null, 0, 0, 14, null);
        y45.j(context, "context");
    }

    public static final void f(OSBottomSheetPanel oSBottomSheetPanel, f43 f43Var, float f, float f2) {
        y45.j(oSBottomSheetPanel, "this$0");
        View view = oSBottomSheetPanel.mOutsideView;
        if (view == null) {
            return;
        }
        view.setAlpha(oSBottomSheetPanel.l(f));
    }

    private final View getMDragRect() {
        Object value = this.mDragRect.getValue();
        y45.i(value, "<get-mDragRect>(...)");
        return (View) value;
    }

    private final ViewGroup getMPanelContent() {
        Object value = this.mPanelContent.getValue();
        y45.i(value, "<get-mPanelContent>(...)");
        return (ViewGroup) value;
    }

    public static final void h(ValueAnimator valueAnimator) {
        y45.j(valueAnimator, "it");
    }

    public static void j(OSBottomSheetPanel oSBottomSheetPanel, float f, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        oSBottomSheetPanel.i(f, z);
    }

    public static final void n(float f, float f2, OSBottomSheetPanel oSBottomSheetPanel, ValueAnimator valueAnimator) {
        y45.j(oSBottomSheetPanel, "this$0");
        y45.j(valueAnimator, "animation");
        Object animatedValue = valueAnimator.getAnimatedValue();
        y45.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float fFloatValue = f + (f2 * ((Float) animatedValue).floatValue());
        View view = oSBottomSheetPanel.mOutsideView;
        if (view != null) {
            view.setAlpha(oSBottomSheetPanel.l(fFloatValue));
        }
        oSBottomSheetPanel.setTranslationY(fFloatValue);
    }

    public static final void q(OSBottomSheetPanel oSBottomSheetPanel) {
        int dimensionPixelOffset;
        y45.j(oSBottomSheetPanel, "this$0");
        ViewGroup.LayoutParams layoutParams = oSBottomSheetPanel.getLayoutParams();
        FrameLayout.LayoutParams layoutParams2 = layoutParams instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams : null;
        if (layoutParams2 != null) {
            layoutParams2.gravity = 17;
            if (olb.g0(oSBottomSheetPanel.getContext())) {
                dimensionPixelOffset = (int) ((((!olb.j0(oSBottomSheetPanel.getContext()) || olb.Y(oSBottomSheetPanel.getContext()) || olb.Z(oSBottomSheetPanel.getContext()) || olb.u0(oSBottomSheetPanel.getContext())) && (olb.Y(oSBottomSheetPanel.getContext()) || olb.u0(oSBottomSheetPanel.getContext()))) ? olb.G(oSBottomSheetPanel.getContext()) : olb.D(oSBottomSheetPanel.getContext())) * (olb.n0(oSBottomSheetPanel.getContext()) ? 0.8f : 0.75f));
            } else {
                dimensionPixelOffset = oSBottomSheetPanel.getResources().getDimensionPixelOffset(R.dimen.os_model_panel_pad_max_height);
            }
            bq5.c("OSBottomSheetPanel", "before, maxHeight: " + dimensionPixelOffset + ", height: " + oSBottomSheetPanel.getHeight() + ", lp.height: " + layoutParams2.height);
            if (oSBottomSheetPanel.getHeight() > dimensionPixelOffset) {
                layoutParams2.height = dimensionPixelOffset;
            }
            bq5.j("OSBottomSheetPanel", "after, lp.height: " + layoutParams2.height + ", width: " + oSBottomSheetPanel.getWidth());
            oSBottomSheetPanel.setLayoutParams(layoutParams2);
        }
    }

    public static final void s(OSBottomSheetPanel oSBottomSheetPanel) {
        y45.j(oSBottomSheetPanel, "this$0");
        oSBottomSheetPanel.p();
    }

    public final void animateDismiss() {
        OSBaseBottomSheetDialog oSBaseBottomSheetDialog = this.mDialog;
        if (oSBaseBottomSheetDialog != null) {
            oSBaseBottomSheetDialog.animateDismiss();
        }
    }

    public final void animateExit() {
        float fG;
        if (this.mExitAnimator != null) {
            return;
        }
        if (olb.g0(getContext())) {
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            fG = olb.G(getContext()) - iArr[1];
        } else {
            fG = this.mPanelVisibleHeight;
        }
        j(this, fG, false, 2, null);
    }

    public final boolean animateImeExit$widgetsbottomsheet_release() {
        if (olb.g0(getContext()) || this.mExitAnimator != null || this.softKeyboardHeight <= 0) {
            return false;
        }
        cancelGotoFinalPositionAnimation();
        i(this.mPanelVisibleHeight + this.softKeyboardHeight, true);
        return true;
    }

    public final void cancelGotoFinalPositionAnimation() {
        jv9 jv9Var = this.mTransYSpringAnimation;
        if (jv9Var.h()) {
            jv9Var.c();
        }
        ValueAnimator valueAnimator = this.mEnterAnimator;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        valueAnimator.cancel();
    }

    public final void cancelSpring() {
        this.mTransYSpringAnimation.c();
    }

    public final void disableDim() {
        this.mMaskMaxAlpha = 0.0f;
    }

    public final void enableTouchFollow(OSBaseBottomSheetDialog dialog) {
        y45.j(dialog, "dialog");
        this.mDialog = dialog;
        this.mOSTouchFollowHelper = new nb7(dialog, this);
    }

    public final void g() {
        ValueAnimator valueAnimatorA;
        setVisibility(0);
        if (this.mEnterAnimator == null) {
            setTranslationY(this.mPanelVisibleHeight);
            long jM = this.mCustomEnterDuration;
            if (jM <= 0) {
                jM = m(this.mPanelVisibleHeight);
            }
            long j = jM;
            bq5.p("OSBottomSheetPanel", "animateEnter: asyncDuration = " + j);
            Property property = LinearLayout.TRANSLATION_Y;
            y45.i(property, "TRANSLATION_Y");
            gs6.a aVar = new gs6.a(this, property, (float) this.mPanelVisibleHeight, 0.0f, 0.0f, (float) j, V);
            View view = this.mOutsideView;
            if (view == null) {
                valueAnimatorA = gs6.a.a(j, aVar);
            } else {
                gs6 gs6Var = gs6.a;
                Property property2 = LinearLayout.ALPHA;
                y45.i(property2, "ALPHA");
                valueAnimatorA = gs6Var.a(j, aVar, new gs6.a(view, property2, view.getAlpha(), this.mMaskMaxAlpha, 0.0f, 350.0f, a0));
            }
            this.mEnterAnimator = valueAnimatorA;
            if (valueAnimatorA != null) {
                valueAnimatorA.addListener(new b());
                valueAnimatorA.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                    @Override
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        OSBottomSheetPanel.h(valueAnimator);
                    }
                });
                valueAnimatorA.start();
            }
        }
    }

    @ColorInt
    public final int getMFillColor() {
        return this.mFillColor;
    }

    public final OSBaseBottomSheetDialog getMDialog() {
        return this.mDialog;
    }

    public final MutableLiveData<Integer> getLivePanelWidth() {
        return this.livePanelWidth;
    }

    public final boolean getMCanDown() {
        return this.mCanDown;
    }

    public final boolean getMCanUp() {
        return this.mCanUp;
    }

    public final int getMCustomContentMaxHeight() {
        return this.mCustomContentMaxHeight;
    }

    public final long getMCustomEnterDuration() {
        return this.mCustomEnterDuration;
    }

    public final int getMCustomTopMargin() {
        return this.mCustomTopMargin;
    }

    public final boolean getMFixedHeight() {
        return this.mFixedHeight;
    }

    public final View getMOutsideView() {
        return this.mOutsideView;
    }

    public final int getMPanelVisibleHeight() {
        return this.mPanelVisibleHeight;
    }

    public final int getRealContentWidth() {
        if (this.mCachedContentWidth == -1) {
            w();
        }
        return this.mCachedContentWidth;
    }

    public final int getSoftKeyboardHeight() {
        return this.softKeyboardHeight;
    }

    public final void gotoFinalPosAcc(float velocity) {
        final float translationY = getTranslationY();
        int i = this.mPanelVisibleHeight;
        final float f = i - translationY;
        float fMax = Math.max(100.0f, ((m(i) * 1.0f) / this.mPanelVisibleHeight) * f);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(Math.round(fMax));
        valueAnimatorOfFloat.setInterpolator(c0);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                OSBottomSheetPanel.n(translationY, f, this, valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new d());
        valueAnimatorOfFloat.start();
    }

    public final void gotoFinalPosSpring(float velocity, float pos) {
        this.mTransYSpringAnimation.n(velocity);
        this.mTransYSpringAnimation.s(pos);
    }

    public final void i(float animatorEnd, boolean useActualDistance) {
        ValueAnimator valueAnimatorA;
        OSBaseBottomSheetDialog oSBaseBottomSheetDialog = this.mDialog;
        if (oSBaseBottomSheetDialog != null) {
            oSBaseBottomSheetDialog.setMDispatchTouchEvent(false);
        }
        float translationY = getTranslationY();
        long jM = m(Math.round(useActualDistance ? animatorEnd - translationY : this.mPanelVisibleHeight));
        Property property = LinearLayout.TRANSLATION_Y;
        y45.i(property, "TRANSLATION_Y");
        float f = jM;
        gs6.a aVar = new gs6.a(this, property, translationY, animatorEnd, 0.0f, f, W);
        View view = this.mOutsideView;
        if (view == null) {
            valueAnimatorA = gs6.a.a(jM, aVar);
        } else {
            gs6 gs6Var = gs6.a;
            Property property2 = LinearLayout.ALPHA;
            y45.i(property2, "ALPHA");
            valueAnimatorA = gs6Var.a(jM, aVar, new gs6.a(view, property2, this.mMaskMaxAlpha, 0.0f, 0.0f, f, b0));
        }
        this.mExitAnimator = valueAnimatorA;
        if (valueAnimatorA != null) {
            valueAnimatorA.addListener(new c());
            valueAnimatorA.start();
        }
    }

    public final boolean isInEnterAnimator() {
        return this.mEnterAnimator != null;
    }

    public final boolean isInGotoFinalPositionAnimation() {
        return this.mTransYSpringAnimation.h();
    }

    public final int k() {
        int dimensionPixelOffset;
        int i;
        ViewGroup.MarginLayoutParams marginLayoutParams;
        int iG = ((!olb.j0(getContext()) || olb.d0(getContext()) || olb.i0(getContext(), this.mWindowManager) || olb.Z(getContext())) && (olb.Y(getContext()) || olb.u0(getContext()))) ? olb.G(getContext()) : olb.D(getContext());
        if (olb.j0(getContext()) && !olb.Z(getContext())) {
            dimensionPixelOffset = olb.L(getContext()) + getContext().getResources().getDimensionPixelOffset(R.dimen.os_bottom_sheet_large_margin_bottom_normal);
        } else if (olb.n0(getContext())) {
            dimensionPixelOffset = olb.L(getContext()) - olb.h(getContext(), 4);
        } else {
            dimensionPixelOffset = this.mCustomTopMargin;
            if (dimensionPixelOffset <= 0) {
                dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.os_bottom_sheet_margin_top_normal);
            }
        }
        int i2 = iG - dimensionPixelOffset;
        int i3 = 0;
        if (!olb.g0(getContext())) {
            i = i2 - this.softKeyboardHeight;
            ViewGroup.LayoutParams layoutParams = getMPanelContent().getLayoutParams();
            marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
            if (marginLayoutParams != null) {
                i3 = marginLayoutParams.topMargin;
            }
        } else {
            if (this.softKeyboardHeight > 0) {
                r();
                return getMPanelContent().getHeight();
            }
            if (getMPanelContent().getPaddingBottom() > 0) {
                ViewGroup mPanelContent = getMPanelContent();
                mPanelContent.setPadding(mPanelContent.getPaddingLeft(), mPanelContent.getPaddingTop(), mPanelContent.getPaddingRight(), 0);
                return getMPanelContent().getHeight();
            }
            i = i2 - this.softKeyboardHeight;
            ViewGroup.LayoutParams layoutParams2 = getMPanelContent().getLayoutParams();
            marginLayoutParams = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
            if (marginLayoutParams != null) {
                i3 = marginLayoutParams.topMargin;
            }
        }
        return i - i3;
    }

    public final float l(float transY) {
        float f = this.mMaskMaxAlpha;
        return wn8.f(wn8.c(0.0f, f - (transY * (f / this.mPanelVisibleHeight))), 1.0f);
    }

    public final long m(int mPanelVisibleHeight) {
        int iH = mPanelVisibleHeight - olb.h(getContext(), 100);
        if (iH <= 0) {
            return 350L;
        }
        int iK = k();
        if (iK - olb.h(getContext(), 100) <= 0) {
            return 350L;
        }
        return (((long) (iH / (iK - olb.h(getContext(), 100)))) * 200) + 350;
    }

    public final void o() {
        int iK = this.mCustomContentMaxHeight;
        if (iK <= 0) {
            iK = k();
        }
        if (getMPanelContent().getMeasuredHeight() >= iK || this.mCustomTopMargin > 0) {
            if (getMPanelContent().getLayoutParams().height != iK) {
                ViewGroup mPanelContent = getMPanelContent();
                ViewGroup.LayoutParams layoutParams = getMPanelContent().getLayoutParams();
                layoutParams.height = iK;
                mPanelContent.setLayoutParams(layoutParams);
                return;
            }
            return;
        }
        if (this.mFixedHeight) {
            ViewGroup.LayoutParams layoutParams2 = getMPanelContent().getLayoutParams();
            if (layoutParams2.height != getMPanelContent().getMeasuredHeight()) {
                layoutParams2.height = getMPanelContent().getMeasuredHeight();
                getMPanelContent().setLayoutParams(layoutParams2);
            }
        }
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        w();
        p();
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        w();
        if (this.adaptLargeScreen != olb.a(getContext())) {
            this.mOsSmoothCornerDrawable = null;
            this.adaptLargeScreen = !this.adaptLargeScreen;
        }
        if (olb.g0(getContext())) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            FrameLayout.LayoutParams layoutParams2 = layoutParams instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams : null;
            if (layoutParams2 != null) {
                layoutParams2.gravity = olb.c0(getContext()) ? 17 : 81;
                layoutParams2.height = -2;
                setLayoutParams(layoutParams2);
            }
            post(new Runnable() {
                @Override
                public final void run() {
                    OSBottomSheetPanel.s(this.b);
                }
            });
        }
    }

    @Override
    public void onDetachedFromWindow() {
        Runnable runnable = this.mEnterScheduleRunnable;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.mEnterScheduleRunnable = null;
        }
        super.onDetachedFromWindow();
    }

    @Override
    public void onDraw(Canvas canvas) {
        y45.j(canvas, "canvas");
        super.onDraw(canvas);
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        y45.j(ev, "ev");
        if (!this.mSupportGesture) {
            return false;
        }
        boolean zOnInterceptTouchEvent = super.onInterceptTouchEvent(ev);
        int action = ev.getAction();
        if (action == 0) {
            float rawY = ev.getRawY();
            this.mDownY = rawY;
            this.mMoveY = rawY;
            float rawX = ev.getRawX();
            this.mDownX = rawX;
            this.mMoveX = rawX;
            this.mLockedMoveDirection = false;
            this.mHasNestedScrollableView = false;
            if (!this.mTransYSpringAnimation.h()) {
                return zOnInterceptTouchEvent;
            }
            this.mTransYSpringAnimation.c();
            return zOnInterceptTouchEvent;
        }
        if (action != 1) {
            if (action == 2) {
                this.mMoveY = ev.getRawY();
                float rawX2 = ev.getRawX();
                this.mMoveX = rawX2;
                if (!this.mLockedMoveDirection) {
                    float f = rawX2 - this.mDownX;
                    this.mDirectionX = f;
                    this.mAbsDirectionX = Math.abs(f);
                    float f2 = this.mMoveY - this.mDownY;
                    this.mDirectionY = f2;
                    float fAbs = Math.abs(f2);
                    this.mAbsDirectionY = fAbs;
                    if (this.mDirectionX != 0.0f || this.mDirectionY != 0.0f) {
                        float f3 = this.mAbsDirectionX;
                        int i = this.mTouchSlop;
                        if (f3 >= i || fAbs >= i) {
                            this.mLockedMoveDirection = true;
                            this.mDirectionVertical = fAbs > f3;
                            View view = this.mTargetScrollableView;
                            if (view != null) {
                                y45.g(view);
                                this.mCanUp = view.canScrollVertically(1);
                                View view2 = this.mTargetScrollableView;
                                y45.g(view2);
                                this.mCanDown = view2.canScrollVertically(-1);
                            }
                        }
                    }
                    return zOnInterceptTouchEvent;
                }
                if (this.mHasNestedScrollableView) {
                    if (this.mTargetScrollableView == null || !this.mDirectionVertical) {
                        return zOnInterceptTouchEvent;
                    }
                    boolean z = this.mCanDown;
                    if (z || this.mCanUp) {
                        if (z && this.mCanUp) {
                            return zOnInterceptTouchEvent;
                        }
                        if (z) {
                            if (this.mDirectionY >= 0.0f) {
                                return zOnInterceptTouchEvent;
                            }
                        } else if (this.mDirectionY <= 0.0f) {
                            return zOnInterceptTouchEvent;
                        }
                    }
                } else if (!this.mDirectionVertical) {
                    return zOnInterceptTouchEvent;
                }
                return true;
            }
            if (action != 3) {
                return zOnInterceptTouchEvent;
            }
        }
        if (this.mLockedMoveDirection || getTranslationY() == 0.0f) {
            return zOnInterceptTouchEvent;
        }
        this.mTransYSpringAnimation.s(0.0f);
        return zOnInterceptTouchEvent;
    }

    @Override
    public void onLayout(boolean changed, int l, int t, int r, int b2) {
        super.onLayout(changed, l, t, r, b2);
        if (this.mPanelVisibleHeight == -1) {
            x();
            t();
            v();
        } else {
            x();
            if (this.mEnterScheduleRunnable != null) {
                setTranslationY(this.mPanelVisibleHeight);
            }
            v();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int i;
        int dimensionPixelSize;
        View viewFindViewById = findViewById(R.id.pull_rect);
        if (viewFindViewById != null) {
            if (olb.Z(getContext())) {
                dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.os_ultra_small_bottom_sheet_pull_rect);
            } else {
                dimensionPixelSize = (olb.i0(getContext(), this.mWindowManager) || (olb.g0(getContext()) && (olb.k0(getContext()) || olb.Q(getContext())))) ? 0 : getResources().getDimensionPixelSize(R.dimen.os_bottom_sheet_pull_rect);
            }
            ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
            if (layoutParams != null) {
                y45.i(layoutParams, "layoutParams");
                if (layoutParams.height != dimensionPixelSize) {
                    layoutParams.height = dimensionPixelSize;
                    viewFindViewById.setLayoutParams(layoutParams);
                }
            }
        }
        int realContentWidth = getRealContentWidth();
        OSBaseBottomSheetDialog oSBaseBottomSheetDialog = this.mDialog;
        y45.g(oSBaseBottomSheetDialog);
        if ((olb.p0(oSBaseBottomSheetDialog.getWindow()) || olb.Y(getContext()) || olb.u0(getContext()) || olb.q0(getContext())) && (!olb.j0(getContext()) || (!(!olb.Y(getContext()) || olb.Q(getContext()) || olb.d0(getContext()) || ((olb.g0(getContext()) && olb.k0(getContext())) || olb.i0(getContext(), this.mWindowManager))) || olb.Z(getContext())))) {
            i = realContentWidth;
        } else {
            float f = olb.g0(getContext()) ? 0.7f : 0.72f;
            if (olb.n0(getContext()) && olb.k0(getContext())) {
                realContentWidth = !olb.Z(getContext()) ? olb.D(getContext()) : olb.D(getContext()) * 2;
            }
            int i2 = (int) (realContentWidth * f);
            int i3 = realContentWidth;
            int iMin = i2;
            if (olb.g0(getContext())) {
                iMin = Math.min(iMin, getResources().getDimensionPixelSize(R.dimen.os_bottom_sheet_panel_max_width));
            }
            i = iMin;
            realContentWidth = i3;
        }
        bq5.j("OSBottomSheetPanel", "onMeasure, screenWidth: " + realContentWidth + ", widthPixels: " + i);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i, 1073741824);
        if (!this.mFixedHeight && getMPanelContent().getLayoutParams().height != -2) {
            ViewGroup mPanelContent = getMPanelContent();
            ViewGroup.LayoutParams layoutParams2 = getMPanelContent().getLayoutParams();
            layoutParams2.height = -2;
            mPanelContent.setLayoutParams(layoutParams2);
        }
        measureChild(getMPanelContent(), iMakeMeasureSpec, heightMeasureSpec);
        o();
        super.onMeasure(iMakeMeasureSpec, heightMeasureSpec);
        Integer num = (Integer) this.livePanelWidth.getValue();
        if (num != null && num.intValue() == i) {
            return;
        }
        this.livePanelWidth.setValue(Integer.valueOf(i));
    }

    @Override
    public boolean onNestedFling(View target, float velocityX, float velocityY, boolean consumed) {
        y45.j(target, TypedValues.AttributesType.S_TARGET);
        return super.onNestedFling(target, velocityX, velocityY, consumed);
    }

    @Override
    public boolean onNestedPreFling(View target, float velocityX, float velocityY) {
        y45.j(target, TypedValues.AttributesType.S_TARGET);
        return super.onNestedPreFling(target, velocityX, velocityY);
    }

    @Override
    public void onNestedPreScroll(View target, int dx, int dy, int[] consumed) {
        y45.j(target, TypedValues.AttributesType.S_TARGET);
        y45.j(consumed, "consumed");
        super.onNestedPreScroll(target, dx, dy, consumed);
    }

    @Override
    public void onNestedScroll(View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed) {
        y45.j(target, TypedValues.AttributesType.S_TARGET);
        super.onNestedScroll(target, dxConsumed, dyConsumed, dxUnconsumed, dyUnconsumed);
    }

    @Override
    public void onNestedScrollAccepted(View child, View target, int axes) {
        y45.j(child, "child");
        y45.j(target, TypedValues.AttributesType.S_TARGET);
        super.onNestedScrollAccepted(child, target, axes);
    }

    @Override
    public boolean onStartNestedScroll(View child, View target, int nestedScrollAxes) {
        y45.j(child, "child");
        y45.j(target, TypedValues.AttributesType.S_TARGET);
        this.mHasNestedScrollableView = true;
        this.mTargetScrollableView = target;
        return true;
    }

    @Override
    public void onStopNestedScroll(View child) {
        y45.j(child, "child");
        super.onStopNestedScroll(child);
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        nb7 nb7Var = this.mOSTouchFollowHelper;
        if (nb7Var == null) {
            return true;
        }
        nb7Var.f(event);
        return true;
    }

    public final void p() {
        if ((olb.j0(getContext()) && olb.k0(getContext()) && !olb.Z(getContext())) || olb.i0(getContext(), this.mWindowManager) || (olb.g0(getContext()) && olb.Q(getContext()))) {
            post(new Runnable() {
                @Override
                public final void run() {
                    OSBottomSheetPanel.q(this.b);
                }
            });
        }
    }

    public final void r() {
        View view;
        int iD = olb.D(getContext());
        int height = this.softKeyboardHeight - ((iD - getMPanelContent().getHeight()) - olb.x(getContext().getResources()));
        OSBaseBottomSheetDialog oSBaseBottomSheetDialog = this.mDialog;
        if (oSBaseBottomSheetDialog != null && oSBaseBottomSheetDialog.isInOOBE()) {
            height -= olb.L(getContext());
        }
        ViewGroup mPanelContent = getMPanelContent();
        if (height > 0) {
            ViewGroup mPanelContent2 = getMPanelContent();
            ViewGroup.LayoutParams layoutParams = getMPanelContent().getLayoutParams();
            layoutParams.height = getMPanelContent().getHeight();
            mPanelContent2.setLayoutParams(layoutParams);
            mPanelContent.setPadding(mPanelContent.getPaddingLeft(), mPanelContent.getPaddingTop(), mPanelContent.getPaddingRight(), height);
        } else {
            mPanelContent.setPadding(mPanelContent.getPaddingLeft(), mPanelContent.getPaddingTop(), mPanelContent.getPaddingRight(), 0);
        }
        if (this.softKeyboardHeight > 0) {
            View view2 = this.mTargetScrollableView;
            View viewFindFocus = view2 != null ? view2.findFocus() : null;
            if (viewFindFocus != null) {
                int[] iArr = new int[2];
                viewFindFocus.getLocationOnScreen(iArr);
                int height2 = (iArr[1] - (iD - this.softKeyboardHeight)) + viewFindFocus.getHeight();
                if (height2 <= 0 || (view = this.mTargetScrollableView) == null) {
                    return;
                }
                view.setScrollY((view != null ? view.getScrollY() : 0) + height2);
            }
        }
    }

    @Override
    public void requestDisallowInterceptTouchEvent(boolean disallowIntercept) {
        super.requestDisallowInterceptTouchEvent(disallowIntercept);
        if (getTranslationY() == 0.0f) {
            return;
        }
        this.mTransYSpringAnimation.s(0.0f);
    }

    public final void setBackgroundFillColor(@ColorInt int color) {
        this.mFillColor = color;
        if (olb.g0(getContext())) {
            OSSmoothCornerLinearLayout oSSmoothCornerLinearLayout = (OSSmoothCornerLinearLayout) findViewById(R.id.content_visible);
            if (oSSmoothCornerLinearLayout != null) {
                oSSmoothCornerLinearLayout.setFillColor(color);
            }
        } else {
            ws7 ws7Var = this.mOsSmoothCornerDrawable;
            if (ws7Var != null) {
                ws7Var.setFillColor(color);
            }
        }
        OSBaseBottomSheetDialog oSBaseBottomSheetDialog = this.mDialog;
        if (oSBaseBottomSheetDialog != null) {
            oSBaseBottomSheetDialog.onPanelFillColorChanged$widgetsbottomsheet_release(color);
        }
    }

    public void setDragHandleVisibility(boolean visible) {
        if (visible) {
            getMDragRect().setVisibility(0);
            ViewGroup.LayoutParams layoutParams = getMPanelContent().getLayoutParams();
            y45.h(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = (int) getContext().getResources().getDimension(R.dimen.os_bottom_sheet_handle_height);
        } else {
            getMDragRect().setVisibility(8);
            ViewGroup.LayoutParams layoutParams2 = getMPanelContent().getLayoutParams();
            y45.h(layoutParams2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = (int) getContext().getResources().getDimension(R.dimen.os_space100);
        }
        OSBaseBottomSheetDialog oSBaseBottomSheetDialog = this.mDialog;
        if (oSBaseBottomSheetDialog != null) {
            oSBaseBottomSheetDialog.onPanelContentTopMarginChanged$widgetsbottomsheet_release();
        }
    }

    public final void setLivePanelWidth(MutableLiveData<Integer> mutableLiveData) {
        y45.j(mutableLiveData, "<set-?>");
        this.livePanelWidth = mutableLiveData;
    }

    public final void setMCanDown(boolean z) {
        this.mCanDown = z;
    }

    public final void setMCanUp(boolean z) {
        this.mCanUp = z;
    }

    public final void setMCustomContentMaxHeight(int i) {
        this.mCustomContentMaxHeight = i;
    }

    public final void setMCustomEnterDuration(long j) {
        this.mCustomEnterDuration = j;
    }

    public final void setMCustomTopMargin(int i) {
        this.mCustomTopMargin = i;
    }

    public final void setMFixedHeight(boolean z) {
        this.mFixedHeight = z;
    }

    public final void setMPanelVisibleHeight(int i) {
        this.mPanelVisibleHeight = i;
    }

    public final void setOutsideView(View outsideView) {
        y45.j(outsideView, "outsideView");
        this.mOutsideView = outsideView;
    }

    public final void setSoftKeyboardHeight(int i) {
        this.softKeyboardHeight = i;
    }

    public final void setSupportGesture(boolean supportGesture) {
        this.mSupportGesture = supportGesture;
        nb7 nb7Var = this.mOSTouchFollowHelper;
        if (nb7Var == null) {
            return;
        }
        nb7Var.h(supportGesture);
    }

    public final void setUseBoundsWidth(boolean isUseBoundsWith) {
        if (this.mIsUseBoundsWidth == isUseBoundsWith) {
            return;
        }
        this.mIsUseBoundsWidth = isUseBoundsWith;
        w();
    }

    public final void t() {
        setTranslationY(this.mPanelVisibleHeight);
        View view = this.mOutsideView;
        if (view != null) {
            view.setAlpha(0.0f);
        }
        u();
    }

    public final void u() {
        if (this.mEnterAnimator != null) {
            return;
        }
        Runnable runnable = this.mEnterScheduleRunnable;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        Runnable runnable2 = new Runnable() {
            @Override
            public void run() {
                Ref$IntRef ref$IntRef2;
                int i;
                if (!this.this$0.isAttachedToWindow() || this.this$0.mEnterAnimator != null) {
                    if (this.this$0.mEnterScheduleRunnable == this) {
                        this.this$0.mEnterScheduleRunnable = null;
                    }
                } else {
                    if (this.this$0.isLayoutRequested() && (i = (ref$IntRef2 = ref$IntRef).element) < 2) {
                        ref$IntRef2.element = i + 1;
                        this.this$0.post(this);
                        return;
                    }
                    if (this.this$0.mEnterScheduleRunnable == this) {
                        this.this$0.mEnterScheduleRunnable = null;
                    }
                    this.this$0.x();
                    this.this$0.v();
                    this.this$0.g();
                }
            }
        };
        this.mEnterScheduleRunnable = runnable2;
        post(runnable2);
    }

    public final void updateOutsideViewAlpha(float transY) {
        View view = this.mOutsideView;
        if (view == null) {
            return;
        }
        view.setAlpha(l(transY));
    }

    public final void v() {
        if (this.adaptLargeScreen) {
            return;
        }
        ws7 ws7Var = new ws7(getContext(), new RectF(0.0f, 0.0f, getWidth(), getHeight()), this.mFillColor, this.mCornerRadius, true);
        this.mOsSmoothCornerDrawable = ws7Var;
        setBackground(ws7Var);
        if (this.mCanvas.smoothcornerCubicEdgeEnabled()) {
            setClipToOutline(true);
            setOutlineProvider(this.mSmoothOutlineProvider);
        }
    }

    public final void w() {
        int iWidth;
        if (Build.VERSION.SDK_INT >= 30) {
            WindowManager windowManager = this.mWindowManager;
            if (windowManager == null) {
                Object systemService = getContext().getSystemService("window");
                y45.h(systemService, "null cannot be cast to non-null type android.view.WindowManager");
                windowManager = (WindowManager) systemService;
            }
            WindowMetrics currentWindowMetrics = windowManager.getCurrentWindowMetrics();
            y45.i(currentWindowMetrics, "windowManager.currentWindowMetrics");
            Rect bounds = currentWindowMetrics.getBounds();
            y45.i(bounds, "metrics.bounds");
            Insets insets = currentWindowMetrics.getWindowInsets().getInsets(WindowInsets.Type.systemBars() | WindowInsets.Type.displayCutout());
            y45.i(insets, "metrics.windowInsets.getInsets(typeMask)");
            iWidth = (bounds.width() - insets.left) - insets.right;
            if (this.mIsUseBoundsWidth) {
                iWidth = bounds.width();
            }
            bq5.j("OSBottomSheetPanel", "isUseBoundsWidth:" + this.mIsUseBoundsWidth + ",contentWidth:" + iWidth + ", bounds.width():" + bounds.width() + ", insets.left:" + insets.left + ", insets.right:" + insets.right);
        } else {
            iWidth = getResources().getDisplayMetrics().widthPixels;
        }
        this.mCachedContentWidth = iWidth;
    }

    public final void x() {
        int dimensionPixelSize;
        if (olb.Z(getContext())) {
            dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.os_ultra_small_bottom_sheet_pull_rect);
        } else {
            dimensionPixelSize = (olb.i0(getContext(), this.mWindowManager) || (olb.g0(getContext()) && (olb.k0(getContext()) || olb.Q(getContext())))) ? 0 : getResources().getDimensionPixelSize(R.dimen.os_bottom_sheet_pull_rect);
        }
        this.mPanelVisibleHeight = getHeight() - dimensionPixelSize;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSBottomSheetPanel(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        y45.j(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSBottomSheetPanel(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0, 8, null);
        y45.j(context, "context");
    }

    public OSBottomSheetPanel(Context context, AttributeSet attributeSet, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i, (i3 & 8) != 0 ? 0 : i2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSBottomSheetPanel(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        y45.j(context, "context");
        this.mPanelVisibleHeight = -1;
        this.mMaskMaxAlpha = 0.2f;
        this.mDragRect = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final View invoke() {
                return this.this$0.findViewById(R.id.drag_rect);
            }
        });
        boolean z = true;
        this.mSupportGesture = true;
        this.mPanelContent = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final ViewGroup invoke() {
                return (ViewGroup) this.this$0.findViewById(R.id.panel_content);
            }
        });
        this.mCachedContentWidth = -1;
        this.mTranOutLine = new TranOutline();
        this.mCanvas = new TranCanvas();
        this.mCornerRadius = context.getResources().getDimension(R.dimen.os_radius_xxxl);
        this.mSmoothOutlineProvider = new e();
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        jv9 jv9Var = new jv9(this, f43.o);
        this.mTransYSpringAnimation = jv9Var;
        jv9Var.z(new kv9().i(400.0f).g(1.2f));
        jv9Var.b(new f43.r() {
            @Override
            public final void a(f43 f43Var, float f, float f2) {
                OSBottomSheetPanel.f(this.a, f43Var, f, f2);
            }
        });
        setOrientation(1);
        this.mMaskMaxAlpha = yj1.p(context) ? 0.6f : 0.2f;
        setWillNotDraw(false);
        this.mIsSecondHome = olb.q0(context);
        this.mFillColor = olb.m(context, R.attr.os_open_bg, R.color.os_open_bg_hios);
        if (!olb.j0(context) || olb.Z(context) || (olb.Y(context) && !olb.Q(context) && !olb.d0(context))) {
            z = false;
        }
        this.adaptLargeScreen = z;
        Object systemService = context.getSystemService("window");
        this.mWindowManager = systemService instanceof WindowManager ? (WindowManager) systemService : null;
        this.mIsThunderbackWindowMode = olb.u0(context);
        this.mIsInMultiWindowMode = olb.Y(context);
        this.livePanelWidth = new MutableLiveData();
    }
}
