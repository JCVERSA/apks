package com.transsion.widgetslib.view.liquid.effect;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.annotation.RequiresApi;
import androidx.core.app.NotificationCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.alibaba.android.arouter.utils.Consts;
import com.google.android.gms.ads.RequestConfiguration;
import com.hunantv.media.player.subtitle.MediaFormat;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.hubsdk.api.graphics.TranCanvas;
import com.transsion.hubsdk.api.graphics.TranOutline;
import com.transsion.hubsdk.api.graphics.TranPath;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.anim.OSSpringPressSealAnimation;
import com.transsion.widgetslib.view.liquid.effect.OSLiquidContainerRootLayoutInner;
import com.transsion.widgetslib.view.liquid.vfx.drag.ElasticTypeConfig;
import com.transsion.widgetslib.view.liquid.vfx.light.LightTypeConfig;
import com.transsion.widgetslib.view.liquid.vfx.light.b;
import com.transsion.widgetslib.widget.OsPressSmoothCornerDrawable;
import defpackage.bq5;
import defpackage.c74;
import defpackage.fz3;
import defpackage.i57;
import defpackage.nl5;
import defpackage.olb;
import defpackage.omb;
import defpackage.wn8;
import defpackage.y45;
import defpackage.yi5;
import java.lang.ref.WeakReference;
import java.util.function.Consumer;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000ò\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0014\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\b+\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b1\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\b\u0016\u0018\u0000 ©\u00022\u00020\u0001:\u0006ª\u0002«\u0002Â\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\fJ\u0011\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0013\u0010\fJ\u000f\u0010\u0014\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0014\u0010\fJ\u000f\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u001a\u001a\u00020\n2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\nH\u0002¢\u0006\u0004\b\u001f\u0010\fJ\u0017\u0010!\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u0015H\u0002¢\u0006\u0004\b!\u0010\"J'\u0010%\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u0006H\u0002¢\u0006\u0004\b%\u0010&J\u0011\u0010'\u001a\u0004\u0018\u00010\u0018H\u0002¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u0010H\u0002¢\u0006\u0004\b)\u0010\u0012J\u0015\u0010,\u001a\u00020\n2\u0006\u0010+\u001a\u00020*¢\u0006\u0004\b,\u0010-J\u0015\u0010/\u001a\u00020\n2\u0006\u0010+\u001a\u00020.¢\u0006\u0004\b/\u00100J\u001f\u00102\u001a\u00020\n2\u0006\u00101\u001a\u00020\u00102\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b2\u00103J\u0017\u00104\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u0018H\u0016¢\u0006\u0004\b4\u0010\u001bJ\u0015\u00106\u001a\u00020\n2\u0006\u00105\u001a\u00020\u0015¢\u0006\u0004\b6\u0010\"J\u0015\u00107\u001a\u00020\n2\u0006\u00105\u001a\u00020\u0015¢\u0006\u0004\b7\u0010\"J\u0015\u00109\u001a\u00020\n2\u0006\u00108\u001a\u00020\u0015¢\u0006\u0004\b9\u0010\"J\u0017\u0010<\u001a\u00020\n2\u0006\u0010;\u001a\u00020:H\u0007¢\u0006\u0004\b<\u0010=J\u001d\u0010B\u001a\u00020\n2\u0006\u0010?\u001a\u00020>2\u0006\u0010A\u001a\u00020@¢\u0006\u0004\bB\u0010CJ\r\u0010D\u001a\u00020\u0006¢\u0006\u0004\bD\u0010EJ\u0017\u0010G\u001a\u00020\n2\u0006\u0010F\u001a\u00020\u0006H\u0007¢\u0006\u0004\bG\u0010HJ\r\u0010I\u001a\u00020\n¢\u0006\u0004\bI\u0010\fJ\r\u0010J\u001a\u00020\u0015¢\u0006\u0004\bJ\u0010\u0017J\u0015\u0010L\u001a\u00020\n2\u0006\u0010K\u001a\u00020\u0006¢\u0006\u0004\bL\u0010HJ\u001f\u0010O\u001a\u00020\n2\u0006\u0010M\u001a\u00020@2\u0006\u0010N\u001a\u00020@H\u0007¢\u0006\u0004\bO\u0010PJM\u0010W\u001a\u00020\n2\u0006\u0010Q\u001a\u00020\u00062\b\u0010R\u001a\u0004\u0018\u00010@2\b\b\u0002\u0010S\u001a\u00020\u00062\n\b\u0002\u0010T\u001a\u0004\u0018\u00010@2\b\b\u0002\u0010U\u001a\u00020\u00062\n\b\u0002\u0010V\u001a\u0004\u0018\u00010@H\u0007¢\u0006\u0004\bW\u0010XJ7\u0010^\u001a\u00020\n2\u0006\u0010Y\u001a\u00020\u00102\u0006\u0010Z\u001a\u00020\u00062\u0006\u0010[\u001a\u00020\u00062\u0006\u0010\\\u001a\u00020\u00062\u0006\u0010]\u001a\u00020\u0006H\u0014¢\u0006\u0004\b^\u0010_J\u0015\u0010a\u001a\u00020\n2\u0006\u0010`\u001a\u00020\u0015¢\u0006\u0004\ba\u0010\"J\u0017\u0010c\u001a\u00020\n2\b\b\u0001\u0010b\u001a\u00020\u0006¢\u0006\u0004\bc\u0010HJ\u0015\u0010e\u001a\u00020\n2\u0006\u0010d\u001a\u00020\u0015¢\u0006\u0004\be\u0010\"J\u0015\u0010g\u001a\u00020\n2\u0006\u0010f\u001a\u00020\u0015¢\u0006\u0004\bg\u0010\"J\u0015\u0010i\u001a\u00020\n2\u0006\u0010h\u001a\u00020\u0015¢\u0006\u0004\bi\u0010\"J\u0015\u0010k\u001a\u00020\n2\u0006\u0010j\u001a\u00020\u0015¢\u0006\u0004\bk\u0010\"J\u001b\u0010n\u001a\u00020\n2\f\u0010m\u001a\b\u0012\u0004\u0012\u00020\n0l¢\u0006\u0004\bn\u0010oJ\u0015\u0010q\u001a\u00020\n2\u0006\u0010p\u001a\u00020\u0015¢\u0006\u0004\bq\u0010\"J\r\u0010r\u001a\u00020\n¢\u0006\u0004\br\u0010\fJ\r\u0010s\u001a\u00020\n¢\u0006\u0004\bs\u0010\fJ\u0017\u0010v\u001a\u00020\n2\u0006\u0010u\u001a\u00020tH\u0014¢\u0006\u0004\bv\u0010wJ\u000f\u0010x\u001a\u00020\nH\u0014¢\u0006\u0004\bx\u0010\fJ/\u0010|\u001a\u00020\n2\u0006\u0010y\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u00062\u0006\u0010z\u001a\u00020\u00062\u0006\u0010{\u001a\u00020\u0006H\u0014¢\u0006\u0004\b|\u0010}J\u001a\u0010\u0080\u0001\u001a\u00020\n2\u0006\u0010\u007f\u001a\u00020~H\u0014¢\u0006\u0006\b\u0080\u0001\u0010\u0081\u0001J\u001a\u0010\u0083\u0001\u001a\u00020\n2\u0007\u0010\u0082\u0001\u001a\u00020\u0006H\u0016¢\u0006\u0005\b\u0083\u0001\u0010HJ\u0017\u0010\u0084\u0001\u001a\u00020\n2\u0006\u0010#\u001a\u00020\u0006¢\u0006\u0005\b\u0084\u0001\u0010HJ\u0017\u0010\u0085\u0001\u001a\u00020\n2\u0006\u0010$\u001a\u00020\u0006¢\u0006\u0005\b\u0085\u0001\u0010HJ \u0010\u0086\u0001\u001a\u00020\n2\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0006¢\u0006\u0006\b\u0086\u0001\u0010\u0087\u0001J\u0019\u0010\u0089\u0001\u001a\u00020\n2\u0007\u0010\u0088\u0001\u001a\u00020\u0010¢\u0006\u0006\b\u0089\u0001\u0010\u008a\u0001J$\u0010\u008d\u0001\u001a\u00020\n2\u0007\u0010\u008b\u0001\u001a\u00020\u00062\u0007\u0010\u008c\u0001\u001a\u00020\u0006H\u0014¢\u0006\u0006\b\u008d\u0001\u0010\u0087\u0001J\u001a\u0010\u008f\u0001\u001a\u00020\n2\u0007\u0010\u008e\u0001\u001a\u00020\u0006H\u0007¢\u0006\u0005\b\u008f\u0001\u0010HJ\u0018\u0010\u0091\u0001\u001a\u00020\n2\u0007\u0010\u0090\u0001\u001a\u00020\u0006¢\u0006\u0005\b\u0091\u0001\u0010HJ\u001b\u0010\u0093\u0001\u001a\u00020\n2\u0007\u0010\u0092\u0001\u001a\u00020\u0010H\u0007¢\u0006\u0006\b\u0093\u0001\u0010\u008a\u0001J\u0019\u0010\u0095\u0001\u001a\u00020\n2\u0007\u0010\u0094\u0001\u001a\u00020\u0010¢\u0006\u0006\b\u0095\u0001\u0010\u008a\u0001J\u001b\u0010\u0097\u0001\u001a\u00020\n2\u0007\u0010\u0096\u0001\u001a\u00020\u0010H\u0007¢\u0006\u0006\b\u0097\u0001\u0010\u008a\u0001J\u0019\u0010\u0099\u0001\u001a\u00020\n2\u0007\u0010\u0098\u0001\u001a\u00020\u0010¢\u0006\u0006\b\u0099\u0001\u0010\u008a\u0001J\u001b\u0010\u009a\u0001\u001a\u00020\n2\u0007\u0010\u0092\u0001\u001a\u00020\u0010H\u0007¢\u0006\u0006\b\u009a\u0001\u0010\u008a\u0001J\u0012\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u0015¢\u0006\u0006\b\u009b\u0001\u0010\u009c\u0001J\u0017\u0010\u009d\u0001\u001a\u00020\n2\u0006\u0010j\u001a\u00020\u0015¢\u0006\u0005\b\u009d\u0001\u0010\"J\u001a\u0010\u009f\u0001\u001a\u00020\n2\u0007\u0010\u009e\u0001\u001a\u00020\u0006H\u0007¢\u0006\u0005\b\u009f\u0001\u0010HJ\u001a\u0010¡\u0001\u001a\u00020\n2\u0007\u0010 \u0001\u001a\u00020\u0015H\u0007¢\u0006\u0005\b¡\u0001\u0010\"J\u001a\u0010£\u0001\u001a\u00020\n2\u0007\u0010¢\u0001\u001a\u00020\u0006H\u0007¢\u0006\u0005\b£\u0001\u0010HJ&\u0010¦\u0001\u001a\u00020\n2\t\b\u0001\u0010¤\u0001\u001a\u00020\u00062\t\b\u0001\u0010¥\u0001\u001a\u00020\u0006¢\u0006\u0006\b¦\u0001\u0010\u0087\u0001J+\u0010ª\u0001\u001a\u00020\n2\u0007\u0010§\u0001\u001a\u00020\u00152\u0007\u0010¨\u0001\u001a\u00020\u00152\u0007\u0010©\u0001\u001a\u00020\u0015¢\u0006\u0006\bª\u0001\u0010«\u0001J\u000f\u0010¬\u0001\u001a\u00020\n¢\u0006\u0005\b¬\u0001\u0010\fJ\u0019\u0010\u00ad\u0001\u001a\u00020:2\u0007\u0010\u0092\u0001\u001a\u00020\u0010¢\u0006\u0006\b\u00ad\u0001\u0010®\u0001J\u0011\u0010¯\u0001\u001a\u00020\nH\u0014¢\u0006\u0005\b¯\u0001\u0010\fJ\u001c\u0010²\u0001\u001a\u00020\u00102\b\u0010±\u0001\u001a\u00030°\u0001H\u0016¢\u0006\u0006\b²\u0001\u0010³\u0001J\u0019\u0010´\u0001\u001a\u00020\n2\u0007\u0010\u0094\u0001\u001a\u00020\u0010¢\u0006\u0006\b´\u0001\u0010\u008a\u0001J\u0011\u0010¶\u0001\u001a\u00030µ\u0001¢\u0006\u0006\b¶\u0001\u0010·\u0001J\u000f\u0010¸\u0001\u001a\u00020\u0010¢\u0006\u0005\b¸\u0001\u0010\u0012J\u0019\u0010¹\u0001\u001a\u00020\n2\u0007\u0010\u0094\u0001\u001a\u00020\u0010¢\u0006\u0006\b¹\u0001\u0010\u008a\u0001J\u001b\u0010»\u0001\u001a\u00020\n2\u0007\u0010º\u0001\u001a\u00020\u0010H\u0007¢\u0006\u0006\b»\u0001\u0010\u008a\u0001J\u0011\u0010¼\u0001\u001a\u00020\nH\u0007¢\u0006\u0005\b¼\u0001\u0010\fJ\u000f\u0010½\u0001\u001a\u00020\n¢\u0006\u0005\b½\u0001\u0010\fJ\u001a\u0010¾\u0001\u001a\u00020\n2\t\b\u0001\u0010¢\u0001\u001a\u00020\u0006¢\u0006\u0005\b¾\u0001\u0010HJ\u0019\u0010À\u0001\u001a\u00020\n2\u0007\u0010¿\u0001\u001a\u00020\u0010¢\u0006\u0006\bÀ\u0001\u0010\u008a\u0001R\u0018\u0010Ä\u0001\u001a\u00030Á\u00018\u0002X\u0082D¢\u0006\b\n\u0006\bÂ\u0001\u0010Ã\u0001R\u0017\u0010Ç\u0001\u001a\u00030Å\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0014\u0010Æ\u0001R\u0018\u0010É\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0011\u0010È\u0001R\u0018\u0010Ë\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u000e\u0010Ê\u0001R\u0018\u0010Ì\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0013\u0010Ê\u0001R\u0017\u0010Ï\u0001\u001a\u00030Í\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\r\u0010Î\u0001R\u0018\u0010Ð\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u001d\u0010Ê\u0001R\u0018\u0010Ò\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b)\u0010Ñ\u0001R\u0018\u0010Ó\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b!\u0010Ê\u0001R\u0018\u0010Ô\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u001f\u0010Ê\u0001R\u0017\u0010×\u0001\u001a\u00030Õ\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u000b\u0010Ö\u0001R\u0018\u0010Ù\u0001\u001a\u00030Õ\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bØ\u0001\u0010Ö\u0001R\u0018\u0010Û\u0001\u001a\u00030Õ\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÚ\u0001\u0010Ö\u0001R\u0017\u0010Þ\u0001\u001a\u00030Ü\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b%\u0010Ý\u0001R\u001b\u0010á\u0001\u001a\u0005\u0018\u00010ß\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u001a\u0010à\u0001R\u0019\u0010â\u0001\u001a\u00030Å\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0016\u0010Æ\u0001R\u001a\u0010æ\u0001\u001a\u00030ã\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bä\u0001\u0010å\u0001R\u0017\u0010è\u0001\u001a\u00020\u00068\u0002X\u0082D¢\u0006\b\n\u0006\bç\u0001\u0010È\u0001R\u0019\u0010ê\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bé\u0001\u0010Ñ\u0001R!\u0010í\u0001\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010l8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bë\u0001\u0010ì\u0001R,\u0010õ\u0001\u001a\u0005\u0018\u00010î\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\bï\u0001\u0010ð\u0001\u001a\u0006\bñ\u0001\u0010ò\u0001\"\u0006\bó\u0001\u0010ô\u0001R\u001b\u0010ö\u0001\u001a\u0005\u0018\u00010î\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\by\u0010ð\u0001R)\u0010û\u0001\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0006\b÷\u0001\u0010ø\u0001\u001a\u0005\bù\u0001\u0010(\"\u0005\bú\u0001\u0010\u001bR\u0019\u0010ý\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bü\u0001\u0010Ñ\u0001R\u0019\u0010ÿ\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bþ\u0001\u0010Ñ\u0001R\u0019\u0010\u0081\u0002\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0080\u0002\u0010Ñ\u0001R\u0017\u0010\u0083\u0002\u001a\u00020\u00068\u0002X\u0082D¢\u0006\b\n\u0006\b\u0082\u0002\u0010È\u0001R\u001a\u0010\u0087\u0002\u001a\u00030\u0084\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0002\u0010\u0086\u0002R\u0019\u0010\u0089\u0002\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0088\u0002\u0010Ñ\u0001R\u0019\u0010\u008b\u0002\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008a\u0002\u0010Ê\u0001R\u0019\u0010\u008c\u0002\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÊ\u0001\u0010Ñ\u0001R\u0019\u0010\u008e\u0002\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008d\u0002\u0010Ñ\u0001R!\u0010\u0094\u0002\u001a\u00030\u008f\u00028BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0090\u0002\u0010\u0091\u0002\u001a\u0006\b\u0092\u0002\u0010\u0093\u0002R!\u0010\u0098\u0002\u001a\u00030\u0095\u00028BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÈ\u0001\u0010\u0091\u0002\u001a\u0006\b\u0096\u0002\u0010\u0097\u0002R!\u0010\u009b\u0002\u001a\u00030µ\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0099\u0002\u0010\u0091\u0002\u001a\u0006\b\u009a\u0002\u0010·\u0001R+\u0010¡\u0002\u001a\r \u009d\u0002*\u0005\u0018\u00010\u009c\u00020\u009c\u00028BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u009e\u0002\u0010\u0091\u0002\u001a\u0006\b\u009f\u0002\u0010 \u0002R\u0019\u0010£\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¢\u0002\u0010È\u0001R!\u0010¨\u0002\u001a\u00030¤\u00028BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¥\u0002\u0010\u0091\u0002\u001a\u0006\b¦\u0002\u0010§\u0002¨\u0006¬\u0002"}, d2 = {"Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lzfb;", CmcdData.STREAM_TYPE_LIVE, "()V", GslbInterceptor.HEADER_KEY_GSLB, "e", "()Ljava/lang/Integer;", "", "d", "()Z", "f", "c", "", "q", "()F", "Landroid/view/View;", "forChild", TtmlNode.TAG_P, "(Landroid/view/View;)V", "child", CmcdData.STREAMING_FORMAT_HLS, "(Landroid/view/View;)Z", "k", "shadowSize", "j", "(F)V", "width", "height", "o", "(III)Z", "getPressNextView", "()Landroid/view/View;", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;", "config", "setLightTypeConfig", "(Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;)V", "Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;", "setElasticTypeConfig", "(Lcom/transsion/widgetslib/view/liquid/vfx/drag/ElasticTypeConfig;)V", "addMoreViews", "addOsLiquidEffectViews", "(ZLandroid/util/AttributeSet;)V", "onViewAdded", "brightness", "setStrokeBrightness", "setGapBrightness", "degrees", "setGapRotationDegrees", "", "floatArray", "setGradientStrokePosition", "([F)V", "", "color", "Landroid/graphics/BlendMode;", "strokeBlendMode", "setGradientStroke", "([ILandroid/graphics/BlendMode;)V", "getMixLevel", "()I", "mixLevel", "setMixLevel", "(I)V", "resetCustomLiquidStyle", "getRoundRadius", "bgColor", "setFillBasicColor", "basicBlendMode", "maskBlendMode", "setBgBlendMode", "(Landroid/graphics/BlendMode;Landroid/graphics/BlendMode;)V", "color1", "blendMode1", "color2", "blendMode2", "color3", "blendMode3", "setCustomMix", "(ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;ILandroid/graphics/BlendMode;)V", "changed", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "onLayout", "(ZIIII)V", "corner", "setShadowCorner", "shadowColor", "setShadowColor", "progress", "updShadowColor", "dy", "setShadowDy", "elevation", "setShadowElevation", "alpha", "setShadowAlpha", "Lkotlin/Function0;", "listener", "setOnLiquidClickListener", "(Lc74;)V", "scaleRatio", "setScaleRatio", "detachPressAnim", "attachPressAnim", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "onAttachedToWindow", "w", "oldw", "oldh", "onSizeChanged", "(IIII)V", "Landroid/graphics/Canvas;", "canvas", "dispatchDraw", "(Landroid/graphics/Canvas;)V", "visibility", "setVisibility", "setActualWidth", "setActualHeight", "setActualSize", "(II)V", "showShadow", "setShowShadow", "(Z)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "blendColor", "setBlendColor", "defaultBgColor", "setDefaultBgColor", "nightMode", "setNightMode", "enable", "enableUnionBlur", "showBlenderColor", "setShowBlenderColor", "showOutline", "setShowOutline", "setBlurNightMode", "getBrandAlpha", "()Ljava/lang/Float;", "setBrandAlpha", "brandColor", "setBrandColor", "blurRadius", "setBlurRadius", MediaFormat.KEY_LEVEL, "setDialogMixLevel", "nightColor", "lightColor", "setDialogMiddleBlendColor", "alpha1", "alpha2", "alpha3", "setBackDropInnerColorsAlpha", "(FFF)V", "clearBackDropInnerColorsAlpha", "getBackDropDefaultAlphas", "(Z)[F", "onDetachedFromWindow", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "dispatchTouchEvent", "(Landroid/view/MotionEvent;)Z", "enableAlpha", "Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;", "getOsPressView", "()Lcom/transsion/widgetslib/widget/OsPressSmoothCornerDrawable;", "isNightMode", "enabledPressView", "forceBCEffect", "setForceBCEffect", "setOnUnionRenderFrameAvailableListener", "executeFadeAnimation", "applyShadowLevel", "useBitmap", "setUseBitmapShadow", "", "b", "Ljava/lang/String;", AbstractID3v1Tag.TAG, "Landroid/graphics/RectF;", "Landroid/graphics/RectF;", "mRectF", "I", "mShadowColor", "F", "mShadowAlphaProgress", "mShadowDy", "Landroid/graphics/Path;", "Landroid/graphics/Path;", "mRoundPath", "cornerRadius", "Z", "mShowShadow", "mShadowRadius", "mShadowRadiusBC", "Landroid/graphics/Paint;", "Landroid/graphics/Paint;", "shadowPaint", CmcdData.OBJECT_TYPE_MANIFEST, "bitmapPaint", "n", "clearPaint", "Landroid/graphics/PorterDuffXfermode;", "Landroid/graphics/PorterDuffXfermode;", "clearPorterDuffXfermode", "Landroid/graphics/Bitmap;", "Landroid/graphics/Bitmap;", "mCachedShadowBitmap", "mShadowRect", "Lcom/transsion/hubsdk/api/graphics/TranCanvas;", "r", "Lcom/transsion/hubsdk/api/graphics/TranCanvas;", "mTranCanvas", "s", "maxBitmapSize", "t", "mUseBitmapShadow", "u", "Lc74;", "onClickListener", "Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;", "v", "Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;", "getMLiquidEffectView", "()Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;", "setMLiquidEffectView", "(Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainer;)V", "mLiquidEffectView", "mLiquidEffectView2", "x", "Landroid/view/View;", "getMLiquidEffectViewBgTransition", "setMLiquidEffectViewBgTransition", "mLiquidEffectViewBgTransition", "y", "mAddMoreViews", "z", "isDialog", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "mShowTransitionView", "B", "mBrandShadowColor", "Lcom/transsion/hubsdk/api/graphics/TranOutline;", "C", "Lcom/transsion/hubsdk/api/graphics/TranOutline;", "mTranOutline", "D", "mEnableAlpha", ExifInterface.LONGITUDE_EAST, "mCustomElevation", "mPreferShadowDyForElevation", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "mEnableDragAndLight", "Lcom/transsion/widgetslib/view/liquid/vfx/light/b;", "H", "Lyi5;", "getMVFXTouchLightHelper", "()Lcom/transsion/widgetslib/view/liquid/vfx/light/b;", "mVFXTouchLightHelper", "Lomb;", "getMVFXElasticDragHelper", "()Lomb;", "mVFXElasticDragHelper", "J", "getMOsPressSmoothCornerDrawable", "mOsPressSmoothCornerDrawable", "Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;", "kotlin.jvm.PlatformType", "K", "getMOSSpringPressSealAnimation", "()Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;", "mOSSpringPressSealAnimation", "L", "mShadowLevel", "Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$AnimatorRunnable;", "M", "getMAnimatorRunnable", "()Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$AnimatorRunnable;", "mAnimatorRunnable", "Companion", "AnimatorRunnable", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "widgetsLib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class OSLiquidContainerRootLayoutInner extends FrameLayout {
    public static final float CONTENT_ABOVE_LIQUID_Z_OFFSET = 1.0f;
    public static final int DEFAULT_SHADOW_COLOR = -16777216;
    public static final int LEGACY_DEFAULT_SHADOW_COLOR = 335544320;
    public static final float LIQUID_SCALE_RATIO_BUTTON = 1.25f;
    public static final float LIQUID_SCALE_RATIO_CONTAINER = 1.05f;
    public static final int LIQUID_SHADOW_RADIUS_BC = 8;
    public static final long LIQUID_TRANSITION_VIEW_DURATION = 300;

    public boolean mShowTransitionView;

    public final int mBrandShadowColor;

    public TranOutline mTranOutline;

    public boolean mEnableAlpha;

    public float mCustomElevation;

    public boolean mPreferShadowDyForElevation;

    public boolean mEnableDragAndLight;

    public final yi5 mVFXTouchLightHelper;

    public final yi5 mVFXElasticDragHelper;

    public final yi5 mOsPressSmoothCornerDrawable;

    public final yi5 mOSSpringPressSealAnimation;

    public int mShadowLevel;

    public final yi5 mAnimatorRunnable;

    public final String TAG;

    public final RectF mRectF;

    public int mShadowColor;

    public float mShadowAlphaProgress;

    public float mShadowDy;

    public final Path mRoundPath;

    public float cornerRadius;

    public boolean mShowShadow;

    public float mShadowRadius;

    public float mShadowRadiusBC;

    public final Paint shadowPaint;

    public final Paint bitmapPaint;

    public final Paint clearPaint;

    public final PorterDuffXfermode clearPorterDuffXfermode;

    public Bitmap mCachedShadowBitmap;

    public RectF mShadowRect;

    public TranCanvas mTranCanvas;

    public final int maxBitmapSize;

    public boolean mUseBitmapShadow;

    public c74 onClickListener;

    public OSLiquidContainer mLiquidEffectView;

    public OSLiquidContainer mLiquidEffectView2;

    public View mLiquidEffectViewBgTransition;

    public boolean mAddMoreViews;

    public boolean isDialog;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bR\u001f\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner$AnimatorRunnable;", "Ljava/lang/Runnable;", "Landroid/view/View;", "hostView", MethodDecl.initName, "(Landroid/view/View;)V", "Lzfb;", "run", "()V", "Ljava/lang/ref/WeakReference;", "mHostViewWR", "Ljava/lang/ref/WeakReference;", "getMHostViewWR", "()Ljava/lang/ref/WeakReference;", "widgetsLib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class AnimatorRunnable implements Runnable {
        private final WeakReference<View> mHostViewWR;

        public AnimatorRunnable(View view) {
            this.mHostViewWR = new WeakReference<>(view);
        }

        public final WeakReference<View> getMHostViewWR() {
            return this.mHostViewWR;
        }

        @Override
        public void run() {
            View view = this.mHostViewWR.get();
            if (view != null) {
                view.animate().cancel();
                view.animate().setInterpolator(new i57()).alpha(0.0f).setDuration(300L).start();
            }
        }
    }

    public static final class b implements OSSpringPressSealAnimation.h {
        public final WeakReference a;

        public b(c74 c74Var) {
            this.a = new WeakReference(c74Var);
        }

        @Override
        public void onClick(View view, boolean z) {
            c74 c74Var;
            if (z || (c74Var = (c74) this.a.get()) == null) {
                return;
            }
            c74Var.invoke();
        }
    }

    public static final class c extends ViewOutlineProvider {
        public final View b;

        public c(View view) {
            this.b = view;
        }

        @Override
        public void getOutline(View view, Outline outline) {
            y45.j(view, "view");
            y45.j(outline, "outline");
            if (!nl5.a.d(OSLiquidContainerRootLayoutInner.this.mShadowRect, OSLiquidContainerRootLayoutInner.this.cornerRadius)) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), OSLiquidContainerRootLayoutInner.this.cornerRadius);
                return;
            }
            Path smoothCapsule = TranPath.getInstance().getSmoothCapsule(this.b.getLeft(), this.b.getTop(), this.b.getRight(), this.b.getBottom(), OSLiquidContainerRootLayoutInner.this.cornerRadius);
            if (Build.VERSION.SDK_INT >= 30) {
                outline.setPath(smoothCapsule);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSLiquidContainerRootLayoutInner(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    private final AnimatorRunnable getMAnimatorRunnable() {
        return (AnimatorRunnable) this.mAnimatorRunnable.getValue();
    }

    private final OSSpringPressSealAnimation getMOSSpringPressSealAnimation() {
        return (OSSpringPressSealAnimation) this.mOSSpringPressSealAnimation.getValue();
    }

    private final OsPressSmoothCornerDrawable getMOsPressSmoothCornerDrawable() {
        return (OsPressSmoothCornerDrawable) this.mOsPressSmoothCornerDrawable.getValue();
    }

    private final omb getMVFXElasticDragHelper() {
        return (omb) this.mVFXElasticDragHelper.getValue();
    }

    private final com.transsion.widgetslib.view.liquid.vfx.light.b getMVFXTouchLightHelper() {
        return (com.transsion.widgetslib.view.liquid.vfx.light.b) this.mVFXTouchLightHelper.getValue();
    }

    private final View getPressNextView() {
        int childCount = getChildCount();
        View childAt = null;
        for (int i = 0; i < childCount; i++) {
            if ((getChildAt(i) instanceof OsPressSmoothCornerDrawable) && i < getChildCount() - 1) {
                childAt = getChildAt(i + 1);
            }
        }
        return childAt;
    }

    public static final void m(c74 c74Var, View view) {
        y45.j(c74Var, "$listener");
        c74Var.invoke();
    }

    public static final void n(OSLiquidContainer oSLiquidContainer, OSLiquidContainerRootLayoutInner oSLiquidContainerRootLayoutInner, View view) {
        y45.j(oSLiquidContainer, "$this_apply");
        y45.j(oSLiquidContainerRootLayoutInner, "this$0");
        y45.j(view, "it");
        if (oSLiquidContainer.getTranView().getRecordingFrameCount(oSLiquidContainerRootLayoutInner) == 2) {
            bq5.c(oSLiquidContainerRootLayoutInner.TAG, "setOnUnionRenderFrameAvailableListener: recordingFrameCount == 2");
            oSLiquidContainerRootLayoutInner.executeFadeAnimation();
            oSLiquidContainer.clearOnUnionRenderFrameAvailableListener();
        }
    }

    public static void setCustomMix$default(OSLiquidContainerRootLayoutInner oSLiquidContainerRootLayoutInner, int i, BlendMode blendMode, int i2, BlendMode blendMode2, int i3, BlendMode blendMode3, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setCustomMix");
        }
        oSLiquidContainerRootLayoutInner.setCustomMix(i, blendMode, (i4 & 4) != 0 ? 0 : i2, (i4 & 8) != 0 ? null : blendMode2, (i4 & 16) != 0 ? 0 : i3, (i4 & 32) != 0 ? null : blendMode3);
    }

    public final void addOsLiquidEffectViews(boolean addMoreViews, AttributeSet attrs) {
        removeAllViews();
        this.mAddMoreViews = addMoreViews;
        if (addMoreViews) {
            Context context = getContext();
            y45.i(context, "context");
            OSLiquidContainer oSLiquidContainer = new OSLiquidContainer(context, attrs, 0, 4, null);
            new ViewGroup.LayoutParams(-1, -1);
            oSLiquidContainer.setBackground(null);
            oSLiquidContainer.setElevation(0.0f);
            oSLiquidContainer.enableShadow(false);
            this.mLiquidEffectView2 = oSLiquidContainer;
            y45.g(oSLiquidContainer);
            if (indexOfChild(oSLiquidContainer) == -1) {
                addView(this.mLiquidEffectView2);
            }
        }
        Context context2 = getContext();
        y45.i(context2, "context");
        OSLiquidContainer oSLiquidContainer2 = new OSLiquidContainer(context2, attrs, 0, 4, null);
        oSLiquidContainer2.setId(R.id.os_liquid_auto_fill_id);
        oSLiquidContainer2.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        oSLiquidContainer2.setBackground(null);
        oSLiquidContainer2.setElevation(0.0f);
        this.mLiquidEffectView = oSLiquidContainer2;
        y45.g(oSLiquidContainer2);
        if (indexOfChild(oSLiquidContainer2) == -1) {
            addView(this.mLiquidEffectView);
        }
        if (d()) {
            g();
        }
        getMOsPressSmoothCornerDrawable().setCornerRadius(getCornerRadius());
        getMOsPressSmoothCornerDrawable().setVisibility(8);
        c();
    }

    public final void applyShadowLevel(@IntRange(from = 1, to = 4) int level) {
        float[] fArrI;
        if (this.mUseBitmapShadow || (fArrI = olb.I(getContext(), level)) == null) {
            return;
        }
        this.mShadowLevel = level;
        this.mCustomElevation = fArrI[0];
        this.mPreferShadowDyForElevation = false;
        this.mShadowAlphaProgress = fArrI[1];
        this.mShadowColor = (int) fArrI[2];
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.applyShadowLevel(level);
            if (!this.mShowShadow) {
                oSLiquidContainer.enableShadow(false);
            }
        }
        p(null);
    }

    public final void attachPressAnim() {
        if (this.mEnableDragAndLight) {
            return;
        }
        getMOSSpringPressSealAnimation().u(false);
    }

    public final void c() {
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer == null) {
            return;
        }
        if (this.mUseBitmapShadow) {
            oSLiquidContainer.enableShadow(false);
            return;
        }
        if (!this.mShowShadow) {
            oSLiquidContainer.enableShadow(false);
            p(null);
            return;
        }
        oSLiquidContainer.enableShadow(true);
        int i = this.mShadowLevel;
        if (i <= 0) {
            i = 2;
        }
        oSLiquidContainer.applyShadowLevel(i);
        int i2 = this.mShadowColor;
        if (i2 != 335544320) {
            oSLiquidContainer.setShadowColor(i2);
        }
        float f = this.mCustomElevation;
        if (f >= 0.0f) {
            OSLiquidContainer.setShadowElevation$default(oSLiquidContainer, f, 0, 2, null);
        } else if (this.mPreferShadowDyForElevation) {
            OSLiquidContainer.setShadowElevation$default(oSLiquidContainer, this.mShadowDy, 0, 2, null);
        }
        p(null);
    }

    public final void clearBackDropInnerColorsAlpha() {
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.clearBackDropInnerColors();
        }
    }

    public final boolean d() {
        return olb.O && olb.X && this.isDialog && olb.K && this.mShowTransitionView;
    }

    public final void detachPressAnim() {
        if (this.mEnableDragAndLight) {
            return;
        }
        getMOSSpringPressSealAnimation().u(true);
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        y45.j(canvas, "canvas");
        super.dispatchDraw(canvas);
        if (!isInEditMode()) {
            getMVFXTouchLightHelper().b(canvas, getWidth(), getHeight(), this.cornerRadius);
        }
        if (this.mUseBitmapShadow && olb.W && this.mShowShadow) {
            if (!olb.V) {
                this.mShadowRadius = this.mShadowRadiusBC;
            }
            float fAbs = Math.abs(this.mShadowDy) + this.mShadowRadius;
            if (o(getWidth(), getHeight(), (int) fAbs)) {
                j(fAbs);
            }
            Bitmap bitmap = this.mCachedShadowBitmap;
            if (bitmap != null) {
                if (bitmap.isRecycled()) {
                    bitmap = null;
                }
                if (bitmap != null) {
                    float f = -fAbs;
                    canvas.drawBitmap(bitmap, f, f, this.bitmapPaint);
                }
            }
        }
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent event) {
        View pressNextView;
        View pressNextView2;
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        if (!isClickable()) {
            return super.dispatchTouchEvent(event);
        }
        if (!isInEditMode()) {
            getMVFXTouchLightHelper().c(event);
            getMVFXElasticDragHelper().b(event);
        }
        if (event.getAction() == 0) {
            getMOsPressSmoothCornerDrawable().showWithFadeAnimation();
            if (this.mEnableAlpha && (pressNextView2 = getPressNextView()) != null) {
                pressNextView2.setAlpha(0.2f);
            }
        } else if (event.getAction() == 1 || event.getAction() == 3) {
            getMOsPressSmoothCornerDrawable().hideWithFadeAnimation();
            if (this.mEnableAlpha && (pressNextView = getPressNextView()) != null) {
                pressNextView.setAlpha(1.0f);
            }
        }
        return super.dispatchTouchEvent(event);
    }

    public final Integer e() {
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        Integer numValueOf = oSLiquidContainer != null ? Integer.valueOf(oSLiquidContainer.getMDefaultBgColor() | (-16777216)) : null;
        String str = this.TAG;
        bq5.c(str, "excludeAlphaColor: " + Integer.toHexString(numValueOf != null ? numValueOf.intValue() : 0));
        return numValueOf;
    }

    public final void enableAlpha(boolean enable) {
        this.mEnableAlpha = enable;
    }

    public final void enableUnionBlur(boolean enable) {
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer == null) {
            return;
        }
        oSLiquidContainer.setUseUnionBlur(enable);
    }

    public final void enabledPressView(boolean enable) {
        if (this.mEnableDragAndLight) {
            return;
        }
        if (!enable) {
            if (indexOfChild(getMOsPressSmoothCornerDrawable()) != -1) {
                removeView(getMOsPressSmoothCornerDrawable());
            }
        } else {
            if (indexOfChild(getMOsPressSmoothCornerDrawable()) == -1) {
                if (this.mAddMoreViews) {
                    addView(getMOsPressSmoothCornerDrawable(), 2);
                } else {
                    addView(getMOsPressSmoothCornerDrawable(), 1);
                }
            }
            getMOsPressSmoothCornerDrawable().setVisibility(0);
        }
    }

    public final void executeFadeAnimation() {
        View view = this.mLiquidEffectViewBgTransition;
        if (view == null || !view.isAttachedToWindow()) {
            return;
        }
        if (i()) {
            ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
            viewPropertyAnimatorAnimate.cancel();
            viewPropertyAnimatorAnimate.setInterpolator(new i57()).alpha(0.0f).setDuration(300L).start();
        } else {
            Handler handler = view.getHandler();
            if (handler != null) {
                handler.post(getMAnimatorRunnable());
            }
        }
    }

    public final void f() {
        this.mShadowColor = 335544320;
        this.mShadowDy = getContext().getResources().getDimensionPixelSize(R.dimen.os_liquid_shadow_dy);
        this.mShadowRadius = getContext().getResources().getDimensionPixelSize(R.dimen.os_liquid_shadow_radius);
        this.mShadowRadiusBC = olb.h(getContext(), 8);
    }

    public final void g() {
        if (this.mLiquidEffectViewBgTransition == null) {
            View view = new View(getContext());
            view.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            this.mLiquidEffectViewBgTransition = view;
        }
        View view2 = this.mLiquidEffectViewBgTransition;
        if (view2 != null) {
            if (indexOfChild(view2) == -1) {
                addView(this.mLiquidEffectViewBgTransition);
            }
            view2.setOutlineProvider(new c(view2));
            view2.setClipToOutline(true);
            Integer numE = e();
            view2.setBackgroundColor(numE != null ? numE.intValue() : 0);
        }
    }

    public final float[] getBackDropDefaultAlphas(boolean nightMode) {
        float[] backDropDefaultAlphas;
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        return (oSLiquidContainer == null || (backDropDefaultAlphas = oSLiquidContainer.getBackDropDefaultAlphas(nightMode)) == null) ? new float[]{1.0f, 1.0f, 1.0f} : backDropDefaultAlphas;
    }

    public final Float getBrandAlpha() {
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            return Float.valueOf(oSLiquidContainer.getMBrandAlpha());
        }
        return null;
    }

    public final OSLiquidContainer getMLiquidEffectView() {
        return this.mLiquidEffectView;
    }

    public final View getMLiquidEffectViewBgTransition() {
        return this.mLiquidEffectViewBgTransition;
    }

    public final int getMixLevel() {
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            return oSLiquidContainer.getMMixLevel();
        }
        return 0;
    }

    public final OsPressSmoothCornerDrawable getOsPressView() {
        return getMOsPressSmoothCornerDrawable();
    }

    public final float getCornerRadius() {
        return this.cornerRadius;
    }

    public final boolean h(View child) {
        return (child instanceof OSLiquidContainer) || (child instanceof OsPressSmoothCornerDrawable) || y45.e(child, this.mLiquidEffectViewBgTransition);
    }

    public final boolean i() {
        return y45.e(Looper.myLooper(), Looper.getMainLooper());
    }

    public final boolean isNightMode() {
        return (getContext().getResources().getConfiguration().uiMode & 48) == 32;
    }

    public final void j(float shadowSize) {
        Bitmap bitmap = this.mCachedShadowBitmap;
        if (bitmap != null) {
            bitmap.recycle();
        }
        int i = ((int) shadowSize) * 2;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(getWidth() + i, getHeight() + i, Bitmap.Config.ARGB_8888);
        y45.i(bitmapCreateBitmap, "createBitmap(width, height, config)");
        this.mCachedShadowBitmap = bitmapCreateBitmap;
        if (bitmapCreateBitmap != null) {
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            this.shadowPaint.setColor(0);
            this.shadowPaint.setShadowLayer(this.mShadowRadius, 0.0f, this.mShadowDy, this.mShadowColor);
            this.mShadowRect.set(shadowSize, shadowSize, bitmapCreateBitmap.getWidth() - shadowSize, bitmapCreateBitmap.getHeight() - shadowSize);
            nl5 nl5Var = nl5.a;
            if (nl5Var.d(this.mShadowRect, this.cornerRadius)) {
                TranPath tranPath = TranPath.getInstance();
                RectF rectF = this.mShadowRect;
                canvas.drawPath(tranPath.getSmoothCapsule(rectF.left, rectF.top, rectF.right, rectF.bottom, this.cornerRadius), this.shadowPaint);
            } else {
                RectF rectF2 = this.mShadowRect;
                float f = this.cornerRadius;
                canvas.drawRoundRect(rectF2, f, f, this.shadowPaint);
            }
            this.clearPaint.setXfermode(this.clearPorterDuffXfermode);
            if (nl5Var.d(this.mShadowRect, this.cornerRadius)) {
                TranPath tranPath2 = TranPath.getInstance();
                RectF rectF3 = this.mShadowRect;
                canvas.drawPath(tranPath2.getSmoothCapsule(rectF3.left, rectF3.top, rectF3.right, rectF3.bottom, this.cornerRadius), this.clearPaint);
            } else {
                RectF rectF4 = this.mShadowRect;
                float f2 = this.cornerRadius;
                canvas.drawRoundRect(rectF4, f2, f2, this.clearPaint);
            }
        }
    }

    public final void k() {
        if (d()) {
            View view = this.mLiquidEffectViewBgTransition;
            if (view != null) {
                view.animate().cancel();
                view.setAlpha(1.0f);
            }
            setOnUnionRenderFrameAvailableListener();
        }
    }

    public final void l() {
        if (isInEditMode()) {
            return;
        }
        getMVFXTouchLightHelper().a(this);
        getMVFXTouchLightHelper().f(isNightMode());
        getMVFXElasticDragHelper().a(this);
        if (getWidth() <= 0 || getHeight() <= 0) {
            return;
        }
        getMVFXTouchLightHelper().e(getWidth(), getHeight());
        getMVFXElasticDragHelper().d(getWidth(), getHeight());
    }

    public final boolean o(int width, int height, int shadowSize) {
        int i;
        if (this.mCachedShadowBitmap == null) {
            return true;
        }
        int i2 = shadowSize * 2;
        int iG = wn8.g(width + i2, this.maxBitmapSize);
        int iG2 = wn8.g(height + i2, this.maxBitmapSize);
        if (iG <= 0 || iG2 <= 0 || iG > (i = this.maxBitmapSize) || iG2 > i) {
            return false;
        }
        Bitmap bitmap = this.mCachedShadowBitmap;
        y45.g(bitmap);
        if (bitmap.getWidth() != iG) {
            return true;
        }
        Bitmap bitmap2 = this.mCachedShadowBitmap;
        y45.g(bitmap2);
        return bitmap2.getHeight() != iG2;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        l();
        k();
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        y45.j(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        if (isInEditMode()) {
            return;
        }
        getMVFXTouchLightHelper().f(isNightMode());
    }

    @Override
    public void onDetachedFromWindow() {
        ViewPropertyAnimator viewPropertyAnimatorAnimate;
        super.onDetachedFromWindow();
        Bitmap bitmap = this.mCachedShadowBitmap;
        if (bitmap != null) {
            bitmap.recycle();
        }
        this.mCachedShadowBitmap = null;
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(getMAnimatorRunnable());
        }
        if (d()) {
            View view = this.mLiquidEffectViewBgTransition;
            if (view != null && (viewPropertyAnimatorAnimate = view.animate()) != null) {
                viewPropertyAnimatorAnimate.cancel();
            }
            OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
            if (oSLiquidContainer != null) {
                oSLiquidContainer.clearOnUnionRenderFrameAvailableListener();
            }
        }
        if (isInEditMode()) {
            return;
        }
        getMVFXTouchLightHelper().d();
        getMVFXElasticDragHelper().c();
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        this.mRectF.set(0.0f, 0.0f, getWidth(), getHeight());
        this.mRoundPath.reset();
        if (this.mUseBitmapShadow) {
            Path path = this.mRoundPath;
            RectF rectF = this.mRectF;
            float f = this.mShadowRadius;
            path.addRoundRect(rectF, f, f, Path.Direction.CW);
            return;
        }
        Path path2 = this.mRoundPath;
        RectF rectF2 = this.mRectF;
        float f2 = this.cornerRadius;
        path2.addRoundRect(rectF2, f2, f2, Path.Direction.CW);
        if (changed) {
            invalidateOutline();
        }
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        ViewGroup.LayoutParams layoutParams;
        ViewGroup.LayoutParams layoutParams2;
        if (getChildCount() <= 0) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            return;
        }
        int childCount = getChildCount();
        int marginEnd = 0;
        int i = 0;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (!(childAt instanceof OSLiquidContainer) && !(childAt instanceof OsPressSmoothCornerDrawable) && !y45.e(childAt, this.mLiquidEffectViewBgTransition)) {
                measureChild(childAt, widthMeasureSpec, heightMeasureSpec);
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int iD = wn8.d(marginEnd, measuredWidth);
                y45.i(childAt, "child");
                ViewGroup.LayoutParams layoutParams3 = childAt.getLayoutParams();
                int marginStart = iD + (layoutParams3 instanceof ViewGroup.MarginLayoutParams ? MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) layoutParams3) : 0);
                ViewGroup.LayoutParams layoutParams4 = childAt.getLayoutParams();
                marginEnd = marginStart + (layoutParams4 instanceof ViewGroup.MarginLayoutParams ? MarginLayoutParamsCompat.getMarginEnd((ViewGroup.MarginLayoutParams) layoutParams4) : 0);
                int iD2 = wn8.d(i, measuredHeight);
                ViewGroup.LayoutParams layoutParams5 = childAt.getLayoutParams();
                ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams5 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams5 : null;
                int i3 = iD2 + (marginLayoutParams != null ? marginLayoutParams.topMargin : 0);
                ViewGroup.LayoutParams layoutParams6 = childAt.getLayoutParams();
                ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams6 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams6 : null;
                i = i3 + (marginLayoutParams2 != null ? marginLayoutParams2.bottomMargin : 0);
            }
        }
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
        if (mode == Integer.MIN_VALUE) {
            widthMeasureSpec = View.MeasureSpec.makeMeasureSpec(marginEnd, 1073741824);
        }
        if (mode2 == Integer.MIN_VALUE) {
            heightMeasureSpec = View.MeasureSpec.makeMeasureSpec(i, 1073741824);
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer == null || (layoutParams = oSLiquidContainer.getLayoutParams()) == null) {
            return;
        }
        y45.i(layoutParams, "layoutParams");
        if (layoutParams.width == getMeasuredWidth() && layoutParams.height == getMeasuredHeight()) {
            return;
        }
        layoutParams.width = getMeasuredWidth();
        layoutParams.height = getMeasuredHeight();
        View view = this.mLiquidEffectViewBgTransition;
        if (view != null && (layoutParams2 = view.getLayoutParams()) != null) {
            y45.i(layoutParams2, "layoutParams");
            if (layoutParams2.width != getMeasuredWidth() || layoutParams2.height != getMeasuredHeight()) {
                layoutParams2.width = getMeasuredWidth();
                layoutParams2.height = getMeasuredHeight();
            }
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    @Override
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        if (isInEditMode()) {
            return;
        }
        getMVFXElasticDragHelper().d(w, h);
        getMVFXTouchLightHelper().e(w, h);
    }

    @Override
    public void onViewAdded(View child) {
        y45.j(child, "child");
        super.onViewAdded(child);
        if (h(child)) {
            return;
        }
        p(child);
    }

    public final void p(View forChild) {
        float fQ = q();
        if (forChild != null) {
            if (h(forChild)) {
                return;
            }
            forChild.setTranslationZ(fQ);
            return;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            y45.i(childAt, "child");
            if (!h(childAt)) {
                childAt.setTranslationZ(fQ);
            }
        }
    }

    public final float q() {
        OSLiquidContainer oSLiquidContainer;
        if (!this.mShowShadow || (oSLiquidContainer = this.mLiquidEffectView) == null) {
            return 0.0f;
        }
        float elevation = oSLiquidContainer.getElevation();
        if (elevation <= 0.0f) {
            return 0.0f;
        }
        return elevation + 1.0f;
    }

    public final void resetCustomLiquidStyle() {
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.resetCustomLiquidStyle();
        }
    }

    public final void setActualHeight(int height) {
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setActualHeight(height);
        }
    }

    public final void setActualSize(int width, int height) {
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setActualSize(width, height);
        }
    }

    public final void setActualWidth(int width) {
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setActualWidth(width);
        }
    }

    public final void setBackDropInnerColorsAlpha(float alpha1, float alpha2, float alpha3) {
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setBackDropInnerColorsAlpha(alpha1, alpha2, alpha3);
        }
    }

    @RequiresApi(29)
    public final void setBgBlendMode(BlendMode basicBlendMode, BlendMode maskBlendMode) {
        y45.j(basicBlendMode, "basicBlendMode");
        y45.j(maskBlendMode, "maskBlendMode");
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setBgBlendMode(basicBlendMode, maskBlendMode);
        }
        invalidate();
    }

    @RequiresApi(31)
    public final void setBlendColor(int blendColor) {
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setBackdrop(blendColor);
        }
    }

    @RequiresApi(31)
    public final void setBlurNightMode(boolean nightMode) {
        bq5.b(getContext().getPackageName() + " setBlurNightMode = " + nightMode + Consts.DOT);
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setBlurNightMode(nightMode);
        }
    }

    @RequiresApi(31)
    public final void setBlurRadius(float blurRadius) {
        bq5.b(getContext().getPackageName() + " setBlurRadius = " + blurRadius + Consts.DOT);
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setBlurRadius(blurRadius);
        }
    }

    public final void setBrandAlpha(float alpha) {
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setBrandAlpha(alpha);
        }
    }

    @RequiresApi(31)
    public final void setBrandColor(int brandColor) {
        bq5.b(getContext().getPackageName() + " setBrandColor = " + brandColor + Consts.DOT);
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setBrandColor(brandColor);
        }
    }

    @RequiresApi(31)
    public final void setCustomMix(int color1, BlendMode blendMode1, int color2, BlendMode blendMode2, int color3, BlendMode blendMode3) {
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setCustomMix(color1, blendMode1, color2, blendMode2, color3, blendMode3);
        }
    }

    public final void setDefaultBgColor(int defaultBgColor) {
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setDefaultBgColor(defaultBgColor);
        }
        View view = this.mLiquidEffectViewBgTransition;
        if (view != null) {
            view.setBackgroundColor(defaultBgColor);
        }
    }

    public final void setDialogMiddleBlendColor(@ColorInt int nightColor, @ColorInt int lightColor) {
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setDialogMiddleBlendColor(nightColor, lightColor);
        }
    }

    @RequiresApi(31)
    public final void setDialogMixLevel(int level) {
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setLiquidLevel(level);
        }
    }

    public final void setElasticTypeConfig(ElasticTypeConfig config) {
        y45.j(config, "config");
        if (!olb.P || isInEditMode()) {
            return;
        }
        this.mEnableDragAndLight = true;
        getMVFXElasticDragHelper().setElasticTypeConfig(config);
    }

    public final void setFillBasicColor(int bgColor) {
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setFillColor(bgColor);
        }
        invalidate();
    }

    @RequiresApi(31)
    public final void setForceBCEffect(boolean forceBCEffect) {
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setForceBCEffect(forceBCEffect);
        }
    }

    public final void setGapBrightness(float brightness) {
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setGapBrightness(brightness);
        }
        invalidate();
    }

    public final void setGapRotationDegrees(float degrees) {
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setGapRotationDegrees(degrees);
        }
        invalidate();
    }

    public final void setGradientStroke(int[] color, BlendMode strokeBlendMode) {
        y45.j(color, "color");
        y45.j(strokeBlendMode, "strokeBlendMode");
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setGradientStrokeColor(color);
        }
        OSLiquidContainer oSLiquidContainer2 = this.mLiquidEffectView;
        if (oSLiquidContainer2 != null) {
            oSLiquidContainer2.setStrokeBlendMode(strokeBlendMode);
        }
        invalidate();
    }

    public final void setGradientStrokePosition(float[] floatArray) {
        y45.j(floatArray, "floatArray");
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setGradientStrokePosition(floatArray);
        }
        invalidate();
    }

    public final void setLightTypeConfig(LightTypeConfig config) {
        y45.j(config, "config");
        if (!olb.P || isInEditMode()) {
            return;
        }
        this.mEnableDragAndLight = true;
        getMVFXTouchLightHelper().setLightTypeConfig(config);
    }

    public final void setMLiquidEffectView(OSLiquidContainer oSLiquidContainer) {
        this.mLiquidEffectView = oSLiquidContainer;
    }

    public final void setMLiquidEffectViewBgTransition(View view) {
        this.mLiquidEffectViewBgTransition = view;
    }

    @RequiresApi(31)
    public final void setMixLevel(int mixLevel) {
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setMixLevel(mixLevel);
        }
    }

    @RequiresApi(31)
    public final void setNightMode(boolean nightMode) {
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setNightMode(nightMode);
        }
        invalidate();
    }

    public final void setOnLiquidClickListener(final c74 listener) {
        y45.j(listener, "listener");
        if (this.mEnableDragAndLight) {
            setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    OSLiquidContainerRootLayoutInner.m(listener, view);
                }
            });
        } else {
            this.onClickListener = listener;
            getMOSSpringPressSealAnimation().setOnSpringClickListener(new b(this.onClickListener));
        }
    }

    @RequiresApi(24)
    public final void setOnUnionRenderFrameAvailableListener() {
        final OSLiquidContainer oSLiquidContainer;
        if (!d() || (oSLiquidContainer = this.mLiquidEffectView) == null) {
            return;
        }
        oSLiquidContainer.setOnUnionRenderFrameAvailableListener(new Consumer() {
            @Override
            public final void accept(Object obj) {
                OSLiquidContainerRootLayoutInner.n(oSLiquidContainer, this, (View) obj);
            }
        });
    }

    public final void setScaleRatio(float scaleRatio) {
        if (this.mEnableDragAndLight) {
            return;
        }
        getMOSSpringPressSealAnimation().setEndValue(scaleRatio);
    }

    public final void setShadowAlpha(float alpha) {
        float fJ = wn8.j(alpha, 0.0f, 1.0f);
        this.mShadowAlphaProgress = fJ;
        if (this.mUseBitmapShadow) {
            invalidate();
            return;
        }
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setShadowAlpha(fJ);
        }
    }

    public final void setShadowColor(@ColorInt int shadowColor) {
        if (this.mShadowColor == shadowColor) {
            return;
        }
        this.mShadowColor = shadowColor;
        if (this.mUseBitmapShadow) {
            invalidate();
            return;
        }
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setShadowColor(shadowColor);
        }
    }

    public final void setShadowCorner(float corner) {
        if (this.cornerRadius == corner) {
            return;
        }
        this.cornerRadius = corner;
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setRadius(corner);
        }
        if (!this.mUseBitmapShadow) {
            invalidateOutline();
        }
        invalidate();
    }

    public final void setShadowDy(float dy) {
        this.mShadowDy = dy;
        if (this.mUseBitmapShadow) {
            invalidate();
            return;
        }
        this.mPreferShadowDyForElevation = true;
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            OSLiquidContainer.setShadowElevation$default(oSLiquidContainer, dy, 0, 2, null);
        }
        p(null);
    }

    public final void setShadowElevation(float elevation) {
        this.mCustomElevation = elevation;
        if (this.mUseBitmapShadow) {
            invalidate();
            return;
        }
        this.mPreferShadowDyForElevation = false;
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            OSLiquidContainer.setShadowElevation$default(oSLiquidContainer, elevation, 0, 2, null);
        }
        p(null);
    }

    @RequiresApi(31)
    public final void setShowBlenderColor(boolean showBlenderColor) {
        bq5.b(getContext().getPackageName() + " showBlenderColor = " + showBlenderColor + Consts.DOT);
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setShowBlenderColor(showBlenderColor);
        }
    }

    public final void setShowOutline(boolean showOutline) {
        bq5.b(getContext().getPackageName() + " setShowOutline = " + showOutline + Consts.DOT);
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setShowOutline(showOutline);
        }
    }

    public final void setShowShadow(boolean showShadow) {
        this.mShowShadow = showShadow;
        bq5.b(getContext().getPackageName() + " showShadow = " + this.mShowShadow + Consts.DOT);
        if (this.mUseBitmapShadow) {
            invalidate();
            return;
        }
        if (showShadow) {
            c();
            return;
        }
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.enableShadow(false);
        }
        p(null);
    }

    public final void setStrokeBrightness(float brightness) {
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setStrokeBrightness(brightness);
        }
        invalidate();
    }

    public final void setUseBitmapShadow(boolean useBitmap) {
        if (this.mUseBitmapShadow == useBitmap) {
            return;
        }
        this.mUseBitmapShadow = useBitmap;
        if (useBitmap) {
            OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
            if (oSLiquidContainer != null) {
                oSLiquidContainer.enableShadow(false);
            }
        } else {
            Bitmap bitmap = this.mCachedShadowBitmap;
            if (bitmap != null) {
                bitmap.recycle();
            }
            this.mCachedShadowBitmap = null;
            c();
        }
        invalidate();
    }

    @Override
    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer == null) {
            return;
        }
        oSLiquidContainer.setVisibility(visibility);
    }

    public final void updShadowColor(float progress) {
        this.mShadowAlphaProgress = progress;
        if (this.mUseBitmapShadow) {
            invalidate();
            return;
        }
        OSLiquidContainer oSLiquidContainer = this.mLiquidEffectView;
        if (oSLiquidContainer != null) {
            oSLiquidContainer.setShadowAlpha(progress);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSLiquidContainerRootLayoutInner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public OSLiquidContainerRootLayoutInner(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSLiquidContainerRootLayoutInner(final Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.TAG = "OSLiquidContainerRootLa";
        this.mRectF = new RectF();
        this.mShadowColor = 335544320;
        this.mShadowAlphaProgress = 1.0f;
        this.mRoundPath = new Path();
        this.cornerRadius = 90.0f;
        this.mShowShadow = true;
        this.shadowPaint = new Paint();
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setDither(true);
        this.bitmapPaint = paint;
        this.clearPaint = new Paint();
        this.clearPorterDuffXfermode = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
        this.mShadowRect = new RectF();
        this.mTranCanvas = new TranCanvas();
        this.maxBitmapSize = 4096;
        this.mUseBitmapShadow = true;
        this.mShowTransitionView = true;
        this.mBrandShadowColor = 855638016;
        this.mTranOutline = new TranOutline();
        this.mCustomElevation = -1.0f;
        this.mVFXTouchLightHelper = kotlin.b.a(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final b invoke() {
                b bVar = new b(context);
                OSLiquidContainerRootLayoutInner oSLiquidContainerRootLayoutInner = this;
                bVar.a(oSLiquidContainerRootLayoutInner);
                bVar.f(oSLiquidContainerRootLayoutInner.isNightMode());
                return bVar;
            }
        });
        this.mVFXElasticDragHelper = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final omb invoke() {
                omb ombVar = new omb();
                ombVar.a(this.this$0);
                return ombVar;
            }
        });
        this.mOsPressSmoothCornerDrawable = kotlin.b.a(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final OsPressSmoothCornerDrawable invoke() {
                OsPressSmoothCornerDrawable osPressSmoothCornerDrawable = new OsPressSmoothCornerDrawable(context);
                osPressSmoothCornerDrawable.setClickable(false);
                return osPressSmoothCornerDrawable;
            }
        });
        this.mOSSpringPressSealAnimation = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final OSSpringPressSealAnimation invoke() {
                return new OSSpringPressSealAnimation.e().D(1.05f).E(new fz3()).J(this.this$0).F(true).z();
            }
        });
        f();
        int[] iArr = R.styleable.OSLiquidContainer;
        y45.i(iArr, "OSLiquidContainer");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, 0, 0);
        y45.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(s…efStyleAttr, defStyleRes)");
        this.cornerRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.OSLiquidContainer_os_liquid_radius, (int) (typedArrayObtainStyledAttributes.getResources().getDimensionPixelSize(R.dimen.os_liquid_fob_default_height) / 2.0f));
        this.mShowShadow = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSLiquidContainer_os_liquid_show_shadow, true);
        this.mShadowColor = typedArrayObtainStyledAttributes.getColor(R.styleable.OSLiquidContainer_os_liquid_shadow_color, this.mShadowColor);
        this.isDialog = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSLiquidContainer_os_liquid_dailog, this.isDialog);
        this.mShowTransitionView = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSLiquidContainer_os_liquid_show_transition_view, this.mShowTransitionView);
        this.mCustomElevation = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.OSLiquidContainer_os_liquid_shadow_elevation, -1);
        float f = typedArrayObtainStyledAttributes.getFloat(R.styleable.OSLiquidContainer_os_liquid_shadow_alpha, -1.0f);
        if (f >= 0.0f) {
            this.mShadowAlphaProgress = wn8.j(f, 0.0f, 1.0f);
        }
        this.mShadowLevel = typedArrayObtainStyledAttributes.getInt(R.styleable.OSLiquidContainer_os_liquid_shadow_level, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.mUseBitmapShadow = !olb.L;
        addOsLiquidEffectViews(false, attributeSet);
        setClipChildren(false);
        setClickable(true);
        setBackground(null);
        this.mAnimatorRunnable = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final OSLiquidContainerRootLayoutInner.AnimatorRunnable invoke() {
                return new OSLiquidContainerRootLayoutInner.AnimatorRunnable(this.this$0.getMLiquidEffectViewBgTransition());
            }
        });
    }
}
