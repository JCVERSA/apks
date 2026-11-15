package com.transsion.transsion_gdpr;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Dialog;
import android.app.FragmentManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.RequestConfiguration;
import com.hunantv.imgo.net.entity.AuthInfo;
import com.lzy.okgo.model.Progress;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.transsion_gdpr.PrivacyDialogFragment;
import com.transsion.widgetsgdpr.R;
import com.transsion.widgetslib.view.OSBigButton;
import com.transsion.widgetslib.view.OverBoundNestedScrollView;
import com.transsion.widgetslib.view.damping.OSScrollbarLayout;
import com.transsion.widgetslib.view.liquid.effect.OSLiquidContainerRootLayoutInner;
import com.transsion.widgetslib.view.liquid.vfx.drag.ElasticTypeConfig;
import com.transsion.widgetslib.view.liquid.vfx.light.LightTypeConfig;
import com.transsion.widgetslib.widget.autoadjust.OSMediumButton;
import com.transsion.widgetsliquid.view.OSLiqMediumButton;
import com.transsion.widgetsliquid.view.OSLiquidBigButton;
import com.transsion.widgetslistitemlayout.OSSmoothRoundCorner;
import defpackage.c74;
import defpackage.g1a;
import defpackage.hz9;
import defpackage.id4;
import defpackage.j1a;
import defpackage.o12;
import defpackage.olb;
import defpackage.wn8;
import defpackage.y45;
import defpackage.zfb;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.IllegalFormatException;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$ObjectRef;

@Metadata(d1 = {"\u0000Ü\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\r\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b.\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 22\u00020\u0001:\f\u0097\u0001Û\u0001\u009f\u0001¢\u0001¤\u0001§\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\tH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ\u001f\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u001f\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u001d\u0010\u001aJ\u0017\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u001e\u0010\u001aJ\u0017\u0010!\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\b!\u0010\"J\u0019\u0010$\u001a\u00020\u00062\b\u0010#\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b$\u0010\u001aJ\u0019\u0010%\u001a\u00020\u00062\b\u0010#\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b%\u0010\u001aJ\u001f\u0010)\u001a\u00020\u00062\u0006\u0010#\u001a\u00020&2\u0006\u0010(\u001a\u00020'H\u0002¢\u0006\u0004\b)\u0010*J\u001f\u0010,\u001a\u00020\u00062\u0006\u0010#\u001a\u00020+2\u0006\u0010(\u001a\u00020'H\u0002¢\u0006\u0004\b,\u0010-J\u001f\u00102\u001a\u00020\u00062\u0006\u0010/\u001a\u00020.2\u0006\u00101\u001a\u000200H\u0002¢\u0006\u0004\b2\u00103J3\u00107\u001a\u00020\u00062\u0006\u0010/\u001a\u0002042\u0006\u00101\u001a\u0002002\b\b\u0001\u00105\u001a\u0002002\b\b\u0001\u00106\u001a\u000200H\u0002¢\u0006\u0004\b7\u00108J!\u0010;\u001a\u00020\u00062\b\u0010/\u001a\u0004\u0018\u00010\u00102\u0006\u0010:\u001a\u000209H\u0002¢\u0006\u0004\b;\u0010<J\u001f\u0010=\u001a\u0002002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\tH\u0002¢\u0006\u0004\b=\u0010>J)\u0010C\u001a\u00020\u00062\b\u0010?\u001a\u0004\u0018\u00010\u00102\u0006\u0010A\u001a\u00020@2\u0006\u0010B\u001a\u000200H\u0002¢\u0006\u0004\bC\u0010DJ\u000f\u0010E\u001a\u000200H\u0002¢\u0006\u0004\bE\u0010FJ\u0017\u0010G\u001a\u00020\t2\u0006\u0010#\u001a\u00020\u0010H\u0002¢\u0006\u0004\bG\u0010HJ\u001f\u0010I\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\tH\u0002¢\u0006\u0004\bI\u0010\u001cJ'\u0010J\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\tH\u0002¢\u0006\u0004\bJ\u0010KJ\u001f\u0010M\u001a\u00020\u00062\u0006\u0010L\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\tH\u0002¢\u0006\u0004\bM\u0010\u001cJ+\u0010Q\u001a\u00020\u00062\b\u0010O\u001a\u0004\u0018\u00010N2\b\u0010P\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0012\u001a\u00020\tH\u0002¢\u0006\u0004\bQ\u0010RJ\u001f\u0010T\u001a\u00020S2\u0006\u0010L\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\tH\u0002¢\u0006\u0004\bT\u0010UJ'\u0010W\u001a\u00020\u00062\u0006\u0010V\u001a\u00020S2\u0006\u0010L\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\tH\u0003¢\u0006\u0004\bW\u0010XJ\u0017\u0010[\u001a\u00020\u00062\u0006\u0010Z\u001a\u00020YH\u0002¢\u0006\u0004\b[\u0010\\J!\u0010]\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010Z\u001a\u00020YH\u0002¢\u0006\u0004\b]\u0010^J\u0017\u0010_\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0010H\u0002¢\u0006\u0004\b_\u0010\u0017J\u001f\u0010b\u001a\u0002002\u0006\u0010`\u001a\u00020\u00102\u0006\u0010a\u001a\u00020\tH\u0002¢\u0006\u0004\bb\u0010cJ\u001f\u0010d\u001a\u0002002\u0006\u0010`\u001a\u00020\u00102\u0006\u0010a\u001a\u00020\tH\u0002¢\u0006\u0004\bd\u0010cJ\u001f\u0010f\u001a\u0002002\u0006\u0010`\u001a\u00020\u00102\u0006\u0010e\u001a\u00020\tH\u0002¢\u0006\u0004\bf\u0010cJ\u0017\u0010i\u001a\u0002092\u0006\u0010h\u001a\u00020gH\u0002¢\u0006\u0004\bi\u0010jJ\u0017\u0010l\u001a\u0002092\u0006\u0010k\u001a\u00020gH\u0002¢\u0006\u0004\bl\u0010jJ\u0017\u0010m\u001a\u00020g2\u0006\u0010h\u001a\u00020gH\u0002¢\u0006\u0004\bm\u0010nJ\u0017\u0010o\u001a\u00020\t2\u0006\u0010h\u001a\u00020gH\u0002¢\u0006\u0004\bo\u0010pJ\u0017\u0010q\u001a\u00020\t2\u0006\u0010h\u001a\u00020gH\u0002¢\u0006\u0004\bq\u0010pJ/\u0010w\u001a\u00020\u00062\u0006\u0010s\u001a\u00020r2\u0006\u0010t\u001a\u00020g2\u0006\u0010u\u001a\u00020g2\u0006\u0010v\u001a\u000200H\u0002¢\u0006\u0004\bw\u0010xJ\u000f\u0010y\u001a\u00020\tH\u0002¢\u0006\u0004\by\u0010\u000bJ\u000f\u0010z\u001a\u00020\u0006H\u0003¢\u0006\u0004\bz\u0010\u0003J\u0017\u0010{\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\tH\u0002¢\u0006\u0004\b{\u0010|J\u000f\u0010}\u001a\u000200H\u0002¢\u0006\u0004\b}\u0010FJ\u000f\u0010~\u001a\u00020\u0006H\u0002¢\u0006\u0004\b~\u0010\u0003J\u001b\u0010\u0081\u0001\u001a\u00020\u00002\t\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u007f¢\u0006\u0006\b\u0081\u0001\u0010\u0082\u0001J\u0019\u0010\u0083\u0001\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0005\b\u0083\u0001\u0010\bJ\u001c\u0010\u0083\u0001\u001a\u00020\u00062\b\u0010\u0085\u0001\u001a\u00030\u0084\u0001H\u0016¢\u0006\u0006\b\u0083\u0001\u0010\u0086\u0001J/\u0010\u008a\u0001\u001a\u00020\u00062\n\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0087\u00012\b\u0010v\u001a\u0004\u0018\u00010g2\u0007\u0010\u0089\u0001\u001a\u00020\t¢\u0006\u0006\b\u008a\u0001\u0010\u008b\u0001J\u001e\u0010\u008e\u0001\u001a\u00020\u00062\n\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008c\u0001H\u0016¢\u0006\u0006\b\u008e\u0001\u0010\u008f\u0001J\u001c\u0010\u0092\u0001\u001a\u00020\u00062\b\u0010\u0091\u0001\u001a\u00030\u0090\u0001H\u0017¢\u0006\u0006\b\u0092\u0001\u0010\u0093\u0001J'\u0010\u0095\u0001\u001a\u00020\u00062\u0007\u0010\u0094\u0001\u001a\u00020\t2\n\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u0090\u0001H\u0017¢\u0006\u0006\b\u0095\u0001\u0010\u0096\u0001J\u001b\u0010\u0097\u0001\u001a\u00020S2\u0007\u0010\u0094\u0001\u001a\u00020\tH\u0015¢\u0006\u0006\b\u0097\u0001\u0010\u0098\u0001J\u001b\u0010\u009a\u0001\u001a\u00020\u00062\u0007\u0010V\u001a\u00030\u0099\u0001H\u0016¢\u0006\u0006\b\u009a\u0001\u0010\u009b\u0001J\u0011\u0010\u009c\u0001\u001a\u00020\u0006H\u0016¢\u0006\u0005\b\u009c\u0001\u0010\u0003J\u0011\u0010\u009d\u0001\u001a\u00020\u0006H\u0016¢\u0006\u0005\b\u009d\u0001\u0010\u0003J\u0011\u0010\u009e\u0001\u001a\u00020\u0006H\u0016¢\u0006\u0005\b\u009e\u0001\u0010\u0003R\u001b\u0010¡\u0001\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009f\u0001\u0010 \u0001R\u0018\u0010£\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¢\u0001\u0010yR\u001c\u0010¦\u0001\u001a\u0005\u0018\u00010\u0087\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¤\u0001\u0010¥\u0001R\u001b\u0010©\u0001\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b§\u0001\u0010¨\u0001R\u0018\u0010«\u0001\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bª\u0001\u0010WR\u001b\u0010®\u0001\u001a\u0004\u0018\u00010\u007f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¬\u0001\u0010\u00ad\u0001R\u001c\u0010±\u0001\u001a\u0005\u0018\u00010\u0084\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¯\u0001\u0010°\u0001R\u001b\u0010´\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b²\u0001\u0010³\u0001R\u001b\u0010¶\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bµ\u0001\u0010³\u0001R\u001b\u0010¸\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b·\u0001\u0010³\u0001R\u0019\u0010»\u0001\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¹\u0001\u0010º\u0001R\u0019\u0010½\u0001\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¼\u0001\u0010º\u0001R\u0019\u0010¿\u0001\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¾\u0001\u0010º\u0001R\u0019\u0010Á\u0001\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÀ\u0001\u0010º\u0001R\u0019\u0010Ã\u0001\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÂ\u0001\u0010º\u0001R\u0019\u0010Å\u0001\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÄ\u0001\u0010º\u0001R\u001b\u0010Ç\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÆ\u0001\u0010³\u0001R\u001b\u0010Ê\u0001\u001a\u0005\u0018\u00010È\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bJ\u0010É\u0001R\u001a\u0010Ì\u0001\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b%\u0010Ë\u0001R\u0019\u0010Ï\u0001\u001a\u00030Í\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b[\u0010Î\u0001R\u001b\u0010Ò\u0001\u001a\u0005\u0018\u00010Ð\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b7\u0010Ñ\u0001R\u001b\u0010Ô\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÓ\u0001\u0010³\u0001R\u0016\u0010Ö\u0001\u001a\u0002008BX\u0082\u0004¢\u0006\u0007\u001a\u0005\bÕ\u0001\u0010FR\u0016\u0010Ø\u0001\u001a\u0002008BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b×\u0001\u0010FR\u0016\u0010Ú\u0001\u001a\u0002008BX\u0082\u0004¢\u0006\u0007\u001a\u0005\bÙ\u0001\u0010F¨\u0006Ü\u0001"}, d2 = {"Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;", "Lcom/transsion/transsion_gdpr/BaseDialogFragment;", MethodDecl.initName, "()V", "Landroid/content/Context;", "context", "Lzfb;", "c0", "(Landroid/content/Context;)V", "", "Y", "()Z", "isKeyBack", "R", "(Z)V", "b0", "Landroid/view/View;", "view", "isPageStyle", "q0", "(Landroid/view/View;Z)Landroid/view/View;", "rootView", "d0", "(Landroid/view/View;)Landroid/view/View;", "contentView", "u0", "(Landroid/view/View;)V", "x0", "(Landroid/view/View;Z)V", "y0", "t0", "Landroid/view/ViewGroup;", "parent", "J", "(Landroid/view/ViewGroup;)V", "buttonView", "B", "u", "Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;", "Landroid/content/res/TypedArray;", "ta", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "(Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;Landroid/content/res/TypedArray;)V", "Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;", "z", "(Lcom/transsion/widgetsliquid/view/OSLiqMediumButton;Landroid/content/res/TypedArray;)V", "Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;", AuthInfo.Component.CODE_BUTTON, "", "fillColor", "y", "(Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;I)V", "Lcom/transsion/widgetslib/view/OSBigButton;", "radiusRes", "pressOverlayRes", "w", "(Lcom/transsion/widgetslib/view/OSBigButton;III)V", "", "text", "l0", "(Landroid/view/View;Ljava/lang/CharSequence;)V", "j0", "(Landroid/content/Context;Z)I", TtmlNode.RUBY_CONTAINER, "Landroid/widget/TextView;", ICode.CALL.CALL_KEY_CONTENT, "maxHeight", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "(Landroid/view/View;Landroid/widget/TextView;I)V", "k0", "()I", "X", "(Landroid/view/View;)Z", "v0", "t", "(Landroid/view/View;Landroid/view/View;Z)V", "dialogContentView", ExifInterface.LONGITUDE_WEST, "Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;", "titleScrollView", "maskView", "C", "(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;Landroid/view/View;Z)V", "Landroid/app/Dialog;", "H", "(Landroid/view/View;Z)Landroid/app/Dialog;", "dialog", "I", "(Landroid/app/Dialog;Landroid/view/View;Z)V", "Landroid/view/Window;", "window", "v", "(Landroid/view/Window;)V", "n0", "(Landroid/view/View;Landroid/view/Window;)V", "z0", "targetView", "isLandscape", "i0", "(Landroid/view/View;Z)I", "f0", "isTop", "g0", "", "html", "M", "(Ljava/lang/String;)Ljava/lang/CharSequence;", "htmlStr", "N", "K", "(Ljava/lang/String;)Ljava/lang/String;", "T", "(Ljava/lang/String;)Z", ExifInterface.LATITUDE_SOUTH, "Landroid/text/Spannable;", "spannable", "originStr", "handleString", Progress.TAG, "p0", "(Landroid/text/Spannable;Ljava/lang/String;Ljava/lang/String;I)V", "Z", "e0", "r0", "(Z)Z", "h0", "U", "Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;", "gdprConfig", "o0", "(Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;)Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;", "onAttach", "Landroid/app/Activity;", "activity", "(Landroid/app/Activity;)V", "Landroid/app/FragmentManager;", "manager", "pinCancelDismissEnable", "s0", "(Landroid/app/FragmentManager;Ljava/lang/String;Z)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "isInMultiWindowMode", "onMultiWindowModeChanged", "(ZLandroid/content/res/Configuration;)V", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Z)Landroid/app/Dialog;", "Landroid/content/DialogInterface;", "onDismiss", "(Landroid/content/DialogInterface;)V", "onStart", "onDestroyView", "onDetach", "c", "Landroid/content/Context;", "mContext", "d", "mPinCancelDismissEnable", "e", "Landroid/app/FragmentManager;", "mFragmentManager", "f", "Ljava/lang/String;", "mTag", GslbInterceptor.HEADER_KEY_GSLB, "mCustomThemeResId", CmcdData.STREAMING_FORMAT_HLS, "Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;", "mGdprConfig", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "Landroid/app/Activity;", "mAttachedActivity", "j", "Landroid/view/View;", "mButtonView", "k", "mCancelButton", CmcdData.STREAM_TYPE_LIVE, "mAgreeButton", CmcdData.OBJECT_TYPE_MANIFEST, "Ljava/lang/CharSequence;", "mTitleText", "n", "mSloganText", "o", "mContentText", TtmlNode.TAG_P, "mAnnouncementText", "q", "mAgreeText", "r", "mCancelText", "s", "mDialogContentView", "Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;", "Lcom/transsion/widgetslib/view/liquid/effect/OSLiquidContainerRootLayoutInner;", "mRoot", "Ljava/lang/Integer;", "mOriginalOrientation", "Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;", "Lcom/transsion/widgetslib/view/liquid/vfx/light/LightTypeConfig;", "mLightTypeConfig", "Landroid/view/View$OnLayoutChangeListener;", "Landroid/view/View$OnLayoutChangeListener;", "mDoubleButtonMarginLayoutListener", "x", "mDoubleButtonMarginTarget", "P", "dialogHorizontalInset", "Q", "dialogVerticalInset", "O", "dialogEdgeInset28", "b", "widgetsgdpr_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class PrivacyDialogFragment extends BaseDialogFragment {

    public static final Companion INSTANCE = new Companion(null);
    public static id4 z;

    public Context mContext;

    public boolean mPinCancelDismissEnable;

    public FragmentManager mFragmentManager;

    public String mTag;

    public int mCustomThemeResId;

    public GdprUtil.GDPRConfig mGdprConfig;

    public Activity mAttachedActivity;

    public View mButtonView;

    public View mCancelButton;

    public View mAgreeButton;

    public View mDialogContentView;

    public OSLiquidContainerRootLayoutInner mRoot;

    public Integer mOriginalOrientation;

    public View.OnLayoutChangeListener mDoubleButtonMarginLayoutListener;

    public View mDoubleButtonMarginTarget;

    public CharSequence mTitleText = "";

    public CharSequence mSloganText = "";

    public CharSequence mContentText = "";

    public CharSequence mAnnouncementText = "";

    public CharSequence mAgreeText = "";

    public CharSequence mCancelText = "";

    public LightTypeConfig mLightTypeConfig = LightTypeConfig.PRIVACY_DIALOG_FRAGMENT_AUTO;

    public static final class a extends LinkMovementMethod {
        public f a;

        public final int a(TextView textView, MotionEvent motionEvent) {
            int x = (int) ((motionEvent.getX() - textView.getTotalPaddingLeft()) + textView.getScrollX());
            int y = (int) ((motionEvent.getY() - textView.getTotalPaddingTop()) + textView.getScrollY());
            Layout layout = textView.getLayout();
            return layout.getOffsetForHorizontal(layout.getLineForVertical(y), x);
        }

        /* JADX WARN: Code duplicated, block: B:34:0x0069  */
        /* JADX WARN: Code duplicated, block: B:36:0x006d  */
        /* JADX WARN: Code duplicated, block: B:40:0x0077  */
        /* JADX WARN: Code duplicated, block: B:44:0x007d  */
        @Override
        public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
            f fVar;
            boolean z;
            f fVar2;
            y45.j(textView, "widget");
            y45.j(spannable, "buffer");
            y45.j(motionEvent, NotificationCompat.CATEGORY_EVENT);
            int actionMasked = motionEvent.getActionMasked();
            int iA = a(textView, motionEvent);
            f[] fVarArr = (f[]) spannable.getSpans(iA, iA, f.class);
            y45.i(fVarArr, "spans");
            boolean z2 = false;
            f fVar3 = !(fVarArr.length == 0) ? fVarArr[0] : null;
            if (actionMasked != 0) {
                if (actionMasked == 1) {
                    fVar = this.a;
                    if (fVar != null) {
                        if (actionMasked == 1 || !y45.e(fVar, fVar3)) {
                            z = false;
                        } else {
                            z = true;
                        }
                        fVar2 = this.a;
                        if (fVar2 != null) {
                            fVar2.b(false);
                        }
                        textView.invalidate();
                        this.a = null;
                        Selection.removeSelection(spannable);
                        if (z && fVar != null) {
                            fVar.onClick(textView);
                        }
                        return true;
                    }
                } else if (actionMasked == 2) {
                    Object obj = this.a;
                    if (obj != null) {
                        int spanStart = spannable.getSpanStart(obj);
                        int spanEnd = spannable.getSpanEnd(this.a);
                        if (spanStart <= iA && iA <= spanEnd) {
                            z2 = true;
                        }
                        f fVar4 = this.a;
                        if (fVar4 == null || fVar4.a() != z2) {
                            f fVar5 = this.a;
                            if (fVar5 != null) {
                                fVar5.b(z2);
                            }
                            textView.invalidate();
                        }
                        return true;
                    }
                } else if (actionMasked == 3) {
                    fVar = this.a;
                    if (fVar != null) {
                        if (actionMasked == 1) {
                            z = false;
                        } else {
                            z = false;
                        }
                        fVar2 = this.a;
                        if (fVar2 != null) {
                            fVar2.b(false);
                        }
                        textView.invalidate();
                        this.a = null;
                        Selection.removeSelection(spannable);
                        if (z) {
                            fVar.onClick(textView);
                        }
                        return true;
                    }
                }
            } else if (fVar3 != null) {
                this.a = fVar3;
                fVar3.b(true);
                Selection.setSelection(spannable, spannable.getSpanStart(fVar3), spannable.getSpanEnd(fVar3));
                textView.invalidate();
                return true;
            }
            return super.onTouchEvent(textView, spannable, motionEvent);
        }
    }

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final id4 a() {
            if (PrivacyDialogFragment.z == null) {
                PrivacyDialogFragment.z = new d();
            }
            return PrivacyDialogFragment.z;
        }

        public final boolean b(Context context) {
            return context != null && Settings.Secure.getInt(context.getContentResolver(), "navigation_mode", 0) == 2;
        }

        public final PrivacyDialogFragment c() {
            return new PrivacyDialogFragment();
        }

        public final void d(id4 id4Var) {
            if (id4Var != null) {
                PrivacyDialogFragment.z = id4Var;
            }
            if (PrivacyDialogFragment.z == null) {
                PrivacyDialogFragment.z = new d();
            }
        }

        public Companion() {
        }
    }

    public static final class c implements DialogInterface.OnKeyListener {
        public final WeakReference b;

        public c(PrivacyDialogFragment privacyDialogFragment) {
            y45.j(privacyDialogFragment, "fragment");
            this.b = new WeakReference(privacyDialogFragment);
        }

        @Override
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            y45.j(dialogInterface, "dialog");
            y45.j(keyEvent, NotificationCompat.CATEGORY_EVENT);
            PrivacyDialogFragment privacyDialogFragment = (PrivacyDialogFragment) this.b.get();
            if (privacyDialogFragment != null && i == 4 && keyEvent.getAction() == 1 && keyEvent.getRepeatCount() == 0) {
                if (!privacyDialogFragment.mPinCancelDismissEnable && privacyDialogFragment.Z()) {
                    return true;
                }
                privacyDialogFragment.R(true);
            }
            return false;
        }
    }

    public static final class d extends o12 {
        @Override
        public void c(Activity activity) {
        }

        @Override
        public void e(Activity activity) {
        }
    }

    public final class e implements View.OnClickListener {
        public e() {
        }

        @Override
        public void onClick(View view) {
            y45.j(view, "v");
            if (view == PrivacyDialogFragment.this.mCancelButton) {
                if (PrivacyDialogFragment.this.mPinCancelDismissEnable || !PrivacyDialogFragment.this.Z()) {
                    PrivacyDialogFragment.this.R(false);
                    return;
                }
                return;
            }
            if (view == PrivacyDialogFragment.this.mAgreeButton) {
                PrivacyDialogFragment.this.dismissAllowingStateLoss();
                id4 id4Var = PrivacyDialogFragment.z;
                if (id4Var != null) {
                    id4Var.c(PrivacyDialogFragment.this.mAttachedActivity);
                }
            }
        }
    }

    public static final class f extends ClickableSpan {
        public final int b;
        public final WeakReference c;
        public boolean d;

        public f(PrivacyDialogFragment privacyDialogFragment, int i) {
            y45.j(privacyDialogFragment, "fragment");
            this.b = i;
            this.c = new WeakReference(privacyDialogFragment);
        }

        public final boolean a() {
            return this.d;
        }

        public final void b(boolean z) {
            this.d = z;
        }

        @Override
        public void onClick(View view) {
            y45.j(view, "widget");
            id4 id4VarA = PrivacyDialogFragment.INSTANCE.a();
            int i = this.b;
            if (i == 0) {
                if (id4VarA != null) {
                    id4VarA.a(view);
                }
            } else if (i == 1 && id4VarA != null) {
                id4VarA.b(view);
            }
        }

        @Override
        public void updateDrawState(TextPaint textPaint) {
            Context context;
            y45.j(textPaint, "ds");
            super.updateDrawState(textPaint);
            PrivacyDialogFragment privacyDialogFragment = (PrivacyDialogFragment) this.c.get();
            if (privacyDialogFragment == null || (context = privacyDialogFragment.mContext) == null) {
                return;
            }
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(privacyDialogFragment.mCustomThemeResId, new int[]{R.attr.contentLinkTextColor, R.attr.contentLinkTextFont, R.attr.contentLinkTextWeight});
            y45.i(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…mCustomThemeResId, attrs)");
            int color = typedArrayObtainStyledAttributes.getColor(0, context.getResources().getColor(R.color.os_gdpr_blue));
            int iArgb = Color.argb((int) (Color.alpha(color) * 0.2f), Color.red(color), Color.green(color), Color.blue(color));
            textPaint.setTypeface(Typeface.create(Typeface.create(typedArrayObtainStyledAttributes.getString(1), 0), typedArrayObtainStyledAttributes.getInt(2, 550), false));
            if (this.d) {
                color = iArgb;
            }
            textPaint.setColor(color);
            textPaint.setUnderlineText(false);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static final class g implements ViewTreeObserver.OnGlobalLayoutListener {
        public final TextView b;
        public final View c;
        public final int d;

        public g(TextView textView, View view, int i) {
            this.b = textView;
            this.c = view;
            this.d = i;
        }

        @Override
        public void onGlobalLayout() {
            int width = this.b.getWidth();
            if (width <= 0) {
                return;
            }
            this.b.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            this.b.measure(View.MeasureSpec.makeMeasureSpec(width, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
            int measuredHeight = this.b.getMeasuredHeight();
            ViewGroup.LayoutParams layoutParams = this.c.getLayoutParams();
            int i = this.d;
            if (measuredHeight <= i) {
                i = -2;
            }
            layoutParams.height = i;
            this.c.setLayoutParams(layoutParams);
        }
    }

    public static final void D(c74 c74Var, View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        y45.j(c74Var, "$updateMaskVisibility");
        c74Var.invoke();
    }

    public static final void E(c74 c74Var, View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        y45.j(c74Var, "$updateMaskVisibility");
        c74Var.invoke();
    }

    public static final void F(c74 c74Var) {
        y45.j(c74Var, "$updateMaskVisibility");
        c74Var.invoke();
    }

    public static final id4 L() {
        return INSTANCE.a();
    }

    public static final CharSequence V(CharSequence charSequence, CharSequence charSequence2) {
        if (TextUtils.isEmpty(charSequence)) {
            return charSequence2;
        }
        y45.g(charSequence);
        return charSequence;
    }

    public static final PrivacyDialogFragment a0() {
        return INSTANCE.c();
    }

    public static final void m0(id4 id4Var) {
        INSTANCE.d(id4Var);
    }

    public static final void w0(PrivacyDialogFragment privacyDialogFragment, View view, View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        y45.j(privacyDialogFragment, "this$0");
        y45.j(view, "$contentView");
        boolean zY = privacyDialogFragment.Y();
        y45.i(view2, "v");
        privacyDialogFragment.t(view, view2, zY);
    }

    public static final GradientDrawable x(float f2, int i) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(f2);
        gradientDrawable.setColor(i);
        return gradientDrawable;
    }

    public final void A(OSMediumButton buttonView, TypedArray ta) {
        OSBigButton firstButton = buttonView.getFirstButton();
        OSBigButton secondButton = buttonView.getSecondButton();
        if (ta.hasValue(0)) {
            y45.i(firstButton, "cancelButton");
            w(firstButton, ta.getColor(0, 0), com.transsion.widgetslib.R.dimen.os_btn_corners_radius, com.transsion.widgetslib.R.color.os_press_primary_color);
        }
        if (ta.hasValue(1)) {
            firstButton.setTextColor(ta.getColor(1, 0));
        }
        if (ta.hasValue(2)) {
            y45.i(secondButton, "agreeButton");
            w(secondButton, ta.getColor(2, 0), com.transsion.widgetslib.R.dimen.os_dimen_two_line_btn_radius, com.transsion.widgetslib.R.color.os_press_secondary_color);
        }
        if (ta.hasValue(3)) {
            secondButton.setTextColor(ta.getColor(3, 0));
        }
    }

    public final void B(View buttonView) {
        if (buttonView instanceof OSLiqMediumButton) {
            OSLiqMediumButton oSLiqMediumButton = (OSLiqMediumButton) buttonView;
            this.mCancelButton = oSLiqMediumButton.getFirstButton();
            this.mAgreeButton = oSLiqMediumButton.getSecondButton();
        } else if (!(buttonView instanceof OSMediumButton)) {
            this.mCancelButton = null;
            this.mAgreeButton = null;
        } else {
            OSMediumButton oSMediumButton = (OSMediumButton) buttonView;
            this.mCancelButton = oSMediumButton.getFirstButton();
            this.mAgreeButton = oSMediumButton.getSecondButton();
        }
    }

    public final void C(final OverBoundNestedScrollView titleScrollView, final View maskView, boolean isPageStyle) {
        if (!isPageStyle || titleScrollView == null || maskView == null) {
            if (maskView == null) {
                return;
            }
            maskView.setVisibility(8);
        } else {
            final c74 c74Var = new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m126invoke();
                    return zfb.a;
                }

                public final void m126invoke() {
                    View childAt = titleScrollView.getChildAt(0);
                    maskView.setVisibility(childAt != null && childAt.getHeight() > (titleScrollView.getHeight() - titleScrollView.getPaddingTop()) - titleScrollView.getPaddingBottom() ? 0 : 8);
                }
            };
            titleScrollView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
                @Override
                public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    PrivacyDialogFragment.D(c74Var, view, i, i2, i3, i4, i5, i6, i7, i8);
                }
            });
            View childAt = titleScrollView.getChildAt(0);
            if (childAt != null) {
                childAt.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
                    @Override
                    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                        PrivacyDialogFragment.E(c74Var, view, i, i2, i3, i4, i5, i6, i7, i8);
                    }
                });
            }
            titleScrollView.post(new Runnable() {
                @Override
                public final void run() {
                    PrivacyDialogFragment.F(c74Var);
                }
            });
        }
    }

    public final void G(View container, TextView content, int maxHeight) {
        if (container == null || maxHeight <= 0) {
            return;
        }
        content.getViewTreeObserver().addOnGlobalLayoutListener(new g(content, container, maxHeight));
    }

    public final Dialog H(View dialogContentView, boolean isPageStyle) {
        com.transsion.transsion_gdpr.a.C0256a c0256aF = com.transsion.transsion_gdpr.a.a(this.mContext).d(dialogContentView).c(Boolean.FALSE).f();
        c0256aF.g(Integer.valueOf(isPageStyle ? R.style.host_dialog_page : R.style.host_dialog));
        Dialog dialogB = c0256aF.b();
        y45.i(dialogB, "dialogBuilder.build()");
        return dialogB;
    }

    public final void I(Dialog dialog, View dialogContentView, boolean isPageStyle) {
        Context context;
        Window window = dialog.getWindow();
        if (window != null) {
            WindowCompat.setDecorFitsSystemWindows(window, true);
            window.clearFlags(1024);
            if (isPageStyle) {
                window.addFlags(65792);
            } else {
                window.clearFlags(65792);
                v(window);
            }
            if (isPageStyle) {
                Context context2 = this.mContext;
                y45.g(context2);
                int iM = olb.m(context2, com.transsion.widgetslib.R.attr.os_bg_secondary, com.transsion.widgetslib.R.color.os_bg_secondary_hios);
                window.getDecorView().setPadding(0, 0, 0, 0);
                window.setStatusBarColor(iM);
                window.setNavigationBarColor(iM);
                WindowInsetsControllerCompat insetsController = WindowCompat.getInsetsController(window, window.getDecorView());
                if (insetsController != null) {
                    Context context3 = this.mContext;
                    y45.g(context3);
                    boolean z2 = (context3.getResources().getConfiguration().uiMode & 48) == 32;
                    insetsController.setAppearanceLightStatusBars(!z2);
                    insetsController.setAppearanceLightNavigationBars(!z2);
                }
            }
            window.setGravity((isPageStyle || (!olb.W() && ((context = this.mContext) == null || !olb.q0(context)))) ? 80 : 17);
            if (olb.W()) {
                Context context4 = this.mContext;
                y45.g(context4);
                String string = context4.getString(com.transsion.widgetsliquid.R.string.os_string_fold_dialog_title_verify);
                y45.i(string, "mContext!!.getString(com…fold_dialog_title_verify)");
                window.setTitle(string);
                WindowManager.LayoutParams attributes = window.getAttributes();
                if (attributes != null) {
                    attributes.setTitle(string);
                }
            }
            dialog.setOnKeyListener(new c(this));
            WindowManager.LayoutParams attributes2 = window.getAttributes();
            if (attributes2 != null) {
                y45.i(attributes2, "attributes");
                attributes2.width = -1;
                if (isPageStyle) {
                    attributes2.height = -1;
                }
                attributes2.layoutInDisplayCutoutMode = 1;
                window.setAttributes(attributes2);
            }
            if (r0(isPageStyle)) {
                olb.setDialogWidth(dialog);
            }
            if (!isPageStyle) {
                Context context5 = this.mContext;
                y45.g(context5);
                olb.d(context5, dialog);
            }
            if (!isPageStyle && olb.W()) {
                u0(dialogContentView);
            }
            n0(dialogContentView, window);
        }
    }

    public final void J(ViewGroup parent) {
        int i = R.id.double_button;
        View viewFindViewById = parent.findViewById(i);
        if (viewFindViewById == null || (viewFindViewById instanceof OSLiqMediumButton)) {
            return;
        }
        int iIndexOfChild = parent.indexOfChild(viewFindViewById);
        OSLiqMediumButton oSLiqMediumButton = new OSLiqMediumButton(parent.getContext());
        oSLiqMediumButton.setId(i);
        oSLiqMediumButton.setClipChildren(false);
        oSLiqMediumButton.setClipToPadding(false);
        oSLiqMediumButton.setLayoutParams(viewFindViewById.getLayoutParams());
        parent.removeViewAt(iIndexOfChild);
        parent.addView(oSLiqMediumButton, iIndexOfChild);
    }

    public final String K(String html) {
        GdprUtil.GDPRConfig gDPRConfig = this.mGdprConfig;
        if (gDPRConfig == null) {
            return html;
        }
        String clickUserAgreementText = gDPRConfig.getClickUserAgreementText();
        String clickPrivacyPolicyText = gDPRConfig.getClickPrivacyPolicyText();
        if (TextUtils.isEmpty(clickUserAgreementText) || TextUtils.isEmpty(clickPrivacyPolicyText) || !j1a.X(html, "%", false, 2, null)) {
            return html;
        }
        try {
            hz9 hz9Var = hz9.a;
            String str = String.format(html, Arrays.copyOf(new Object[]{clickUserAgreementText, clickPrivacyPolicyText}, 2));
            y45.i(str, "format(format, *args)");
            return str;
        } catch (IllegalFormatException unused) {
            return html;
        }
    }

    public final CharSequence M(String html) {
        SpannableString spannableString = new SpannableString(html);
        String string = getString(R.string.os_gdpr_user_agreement);
        y45.i(string, "getString(R.string.os_gdpr_user_agreement)");
        p0(spannableString, html, string, 0);
        String string2 = getString(R.string.os_gdpr_privacy_policy);
        y45.i(string2, "getString(R.string.os_gdpr_privacy_policy)");
        p0(spannableString, html, string2, 1);
        return spannableString;
    }

    public final CharSequence N(String htmlStr) {
        boolean zIsEmpty = TextUtils.isEmpty(htmlStr);
        CharSequence charSequence = htmlStr;
        if (!zIsEmpty && this.mGdprConfig != null) {
            String strK = K(htmlStr);
            if (S(strK)) {
                charSequence = htmlStr;
                GdprUtil.GDPRConfig gDPRConfig = this.mGdprConfig;
                y45.g(gDPRConfig);
                String clickUserAgreementText = gDPRConfig.getClickUserAgreementText();
                y45.i(clickUserAgreementText, "mGdprConfig!!.clickUserAgreementText");
                GdprUtil.GDPRConfig gDPRConfig2 = this.mGdprConfig;
                y45.g(gDPRConfig2);
                strK = g1a.N(strK, clickUserAgreementText, gDPRConfig2.getClickUserAgreementText() + "\u200b", false, 4, null);
            }
            charSequence = htmlStr;
            String strN = strK;
            if (T(strN)) {
                GdprUtil.GDPRConfig gDPRConfig3 = this.mGdprConfig;
                y45.g(gDPRConfig3);
                String clickPrivacyPolicyText = gDPRConfig3.getClickPrivacyPolicyText();
                y45.i(clickPrivacyPolicyText, "mGdprConfig!!.clickPrivacyPolicyText");
                GdprUtil.GDPRConfig gDPRConfig4 = this.mGdprConfig;
                y45.g(gDPRConfig4);
                strN = g1a.N(strN, clickPrivacyPolicyText, gDPRConfig4.getClickPrivacyPolicyText() + "\u200b", false, 4, null);
            }
            SpannableString spannableString = new SpannableString(strN);
            if (S(strN)) {
                GdprUtil.GDPRConfig gDPRConfig5 = this.mGdprConfig;
                y45.g(gDPRConfig5);
                String clickUserAgreementText2 = gDPRConfig5.getClickUserAgreementText();
                y45.i(clickUserAgreementText2, "mGdprConfig!!.clickUserAgreementText");
                p0(spannableString, strN, clickUserAgreementText2, 0);
            }
            charSequence = spannableString;
            if (T(strN)) {
                GdprUtil.GDPRConfig gDPRConfig6 = this.mGdprConfig;
                y45.g(gDPRConfig6);
                String clickPrivacyPolicyText2 = gDPRConfig6.getClickPrivacyPolicyText();
                y45.i(clickPrivacyPolicyText2, "mGdprConfig!!.clickPrivacyPolicyText");
                p0(spannableString, strN, clickPrivacyPolicyText2, 1);
                charSequence = spannableString;
            }
        }
        charSequence = htmlStr;
        return charSequence;
    }

    public final int O() {
        Context context = this.mContext;
        y45.g(context);
        return context.getResources().getDimensionPixelSize(R.dimen.os_space350);
    }

    public final int P() {
        Context context = this.mContext;
        y45.g(context);
        return context.getResources().getDimensionPixelSize(R.dimen.os_space200);
    }

    public final int Q() {
        Context context = this.mContext;
        y45.g(context);
        return context.getResources().getDimensionPixelSize(R.dimen.os_space200);
    }

    public final void R(boolean isKeyBack) {
        if (!Y()) {
            dismissAllowingStateLoss();
            b0(isKeyBack);
            return;
        }
        b0(isKeyBack);
        Activity activity = this.mAttachedActivity;
        if (activity == null) {
            activity = getActivity();
        }
        if (activity == null || !(activity.isFinishing() || activity.isDestroyed())) {
            dismissAllowingStateLoss();
        }
    }

    public final boolean S(String html) {
        GdprUtil.GDPRConfig gDPRConfig = this.mGdprConfig;
        if (TextUtils.isEmpty(gDPRConfig != null ? gDPRConfig.getClickUserAgreementText() : null)) {
            return false;
        }
        GdprUtil.GDPRConfig gDPRConfig2 = this.mGdprConfig;
        y45.g(gDPRConfig2);
        String clickUserAgreementText = gDPRConfig2.getClickUserAgreementText();
        y45.i(clickUserAgreementText, "mGdprConfig!!.clickUserAgreementText");
        return j1a.X(html, clickUserAgreementText, false, 2, null);
    }

    public final boolean T(String html) {
        GdprUtil.GDPRConfig gDPRConfig = this.mGdprConfig;
        if (TextUtils.isEmpty(gDPRConfig != null ? gDPRConfig.getClickPrivacyPolicyText() : null)) {
            return false;
        }
        GdprUtil.GDPRConfig gDPRConfig2 = this.mGdprConfig;
        y45.g(gDPRConfig2);
        String clickPrivacyPolicyText = gDPRConfig2.getClickPrivacyPolicyText();
        y45.i(clickPrivacyPolicyText, "mGdprConfig!!.clickPrivacyPolicyText");
        return j1a.X(html, clickPrivacyPolicyText, false, 2, null);
    }

    public final void U() {
        GdprUtil.GDPRConfig gDPRConfig = this.mGdprConfig;
        String titleText = gDPRConfig != null ? gDPRConfig.getTitleText() : null;
        String string = getString(R.string.os_gdpr_privacy_title);
        y45.i(string, "getString(R.string.os_gdpr_privacy_title)");
        this.mTitleText = V(titleText, string);
        this.mSloganText = V(gDPRConfig != null ? gDPRConfig.getSloganText() : null, "");
        String contentText = gDPRConfig != null ? gDPRConfig.getContentText() : null;
        String string2 = getString(R.string.os_gdpr_privacy_content);
        y45.i(string2, "getString(R.string.os_gdpr_privacy_content)");
        this.mContentText = V(contentText, string2);
        String positiveButtonText = gDPRConfig != null ? gDPRConfig.getPositiveButtonText() : null;
        String string3 = getString(R.string.os_gdpr_accept_btn);
        y45.i(string3, "getString(R.string.os_gdpr_accept_btn)");
        this.mAgreeText = V(positiveButtonText, string3);
        String negativeButtonText = gDPRConfig != null ? gDPRConfig.getNegativeButtonText() : null;
        String string4 = getString(R.string.os_gdpr_cancel_btn);
        y45.i(string4, "getString(R.string.os_gdpr_cancel_btn)");
        this.mCancelText = V(negativeButtonText, string4);
        if (TextUtils.isEmpty(gDPRConfig != null ? gDPRConfig.getAnnouncementText() : null)) {
            String string5 = getString(R.string.os_gdpr_privacy_announcement, getString(R.string.os_gdpr_user_agreement) + "\u200b", getString(R.string.os_gdpr_privacy_policy) + "\u200b");
            y45.i(string5, "getString(\n             …CE_CODE\n                )");
            this.mAnnouncementText = M(string5);
        } else {
            y45.g(gDPRConfig);
            String announcementText = gDPRConfig.getAnnouncementText();
            y45.i(announcementText, "config!!.announcementText");
            this.mAnnouncementText = N(announcementText);
        }
        String strH0 = olb.H0(this.mTitleText.toString());
        y45.i(strH0, "removeEndPunctuation(mTitleText.toString())");
        this.mTitleText = strH0;
        String strH1 = olb.H0(this.mAgreeText.toString());
        y45.i(strH1, "removeEndPunctuation(mAgreeText.toString())");
        this.mAgreeText = strH1;
        String strH2 = olb.H0(this.mCancelText.toString());
        y45.i(strH2, "removeEndPunctuation(mCancelText.toString())");
        this.mCancelText = strH2;
        if (gDPRConfig != null) {
            if (!gDPRConfig.getDelSpaceFromTitle()) {
                String strB = olb.b(this.mTitleText.toString());
                y45.i(strB, "addSpaceBetweenChineseAn…rs(mTitleText.toString())");
                this.mTitleText = strB;
            }
            if (!gDPRConfig.getDelSpaceFromContent()) {
                String strB2 = olb.b(this.mContentText.toString());
                y45.i(strB2, "addSpaceBetweenChineseAn…(mContentText.toString())");
                this.mContentText = strB2;
            }
            if (!gDPRConfig.getDelSpaceFromAgree()) {
                String strB3 = olb.b(this.mAgreeText.toString());
                y45.i(strB3, "addSpaceBetweenChineseAn…rs(mAgreeText.toString())");
                this.mAgreeText = strB3;
            }
            if (!gDPRConfig.getDelSpaceFromCancel()) {
                String strB4 = olb.b(this.mCancelText.toString());
                y45.i(strB4, "addSpaceBetweenChineseAn…s(mCancelText.toString())");
                this.mCancelText = strB4;
            }
        }
        CharSequence charSequenceA = GdprUtil.a(this.mAnnouncementText);
        y45.i(charSequenceA, "avoidLeadingPunctuationL…eBreak(mAnnouncementText)");
        this.mAnnouncementText = charSequenceA;
    }

    /* JADX WARN: Code duplicated, block: B:139:0x024f  */
    /* JADX WARN: Code duplicated, block: B:141:0x0257  */
    /* JADX WARN: Code duplicated, block: B:142:0x0262  */
    /* JADX WARN: Code duplicated, block: B:144:0x026b  */
    /* JADX WARN: Code duplicated, block: B:146:0x0273  */
    /* JADX WARN: Code duplicated, block: B:147:0x0277  */
    /* JADX WARN: Code duplicated, block: B:149:0x027a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:150:0x027c  */
    /* JADX WARN: Code duplicated, block: B:151:0x027f  */
    /* JADX WARN: Code duplicated, block: B:153:0x028d  */
    /* JADX WARN: Code duplicated, block: B:156:0x0292  */
    /* JADX WARN: Code duplicated, block: B:159:0x029d  */
    /* JADX WARN: Code duplicated, block: B:162:0x02a4  */
    /* JADX WARN: Code duplicated, block: B:164:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:166:0x02b2  */
    /* JADX WARN: Code duplicated, block: B:168:0x02b7  */
    /* JADX WARN: Code duplicated, block: B:171:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:174:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:175:0x02eb  */
    /* JADX WARN: Code duplicated, block: B:177:0x02ef A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:178:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:179:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:182:0x02fd  */
    /* JADX WARN: Code duplicated, block: B:183:0x0303  */
    /* JADX WARN: Code duplicated, block: B:185:0x0307  */
    /* JADX WARN: Code duplicated, block: B:188:0x0313  */
    /* JADX WARN: Code duplicated, block: B:191:0x031a  */
    /* JADX WARN: Code duplicated, block: B:193:? A[RETURN, SYNTHETIC] */
    public final void W(View dialogContentView, boolean isPageStyle) {
        int i;
        int i2;
        TextView textView;
        int iJ0;
        int dimensionPixelSize;
        e eVar;
        View view;
        View view2;
        int i3;
        float dimension;
        ViewGroup.LayoutParams layoutParams;
        ViewGroup.MarginLayoutParams marginLayoutParams;
        int i4;
        Bitmap appIconBitmap;
        Context context = this.mContext;
        if (context == null) {
            return;
        }
        Resources resources = context.getResources();
        int dimensionPixelSize2 = isPageStyle ? resources.getDimensionPixelSize(R.dimen.os_space900) : 0;
        int iH = isPageStyle ? olb.h(context, 36) : resources.getDimensionPixelSize(R.dimen.os_space300);
        if (isPageStyle) {
            i = olb.b0(context) ? R.dimen.os_space900 : R.dimen.os_space400;
        } else {
            i = R.dimen.os_space200;
        }
        int dimensionPixelSize3 = resources.getDimensionPixelSize(i);
        int dimensionPixelSize4 = resources.getDimensionPixelSize(isPageStyle ? R.dimen.os_gdpr_content_min_height_page : R.dimen.os_gdpr_content_min_height_dialog);
        int dimensionPixelSize5 = resources.getDimensionPixelSize(isPageStyle ? R.dimen.os_gdpr_announcement_max_height_page : R.dimen.os_gdpr_announcement_max_height_dialog);
        OSSmoothRoundCorner oSSmoothRoundCorner = (OSSmoothRoundCorner) dialogContentView.findViewById(R.id.iv_app_icon);
        ImageView imageView = (ImageView) dialogContentView.findViewById(R.id.iv_privacy_icon);
        LinearLayout linearLayout = (LinearLayout) dialogContentView.findViewById(R.id.ll_title_content);
        OSScrollbarLayout oSScrollbarLayout = (OSScrollbarLayout) dialogContentView.findViewById(R.id.gdpr_title_scrollbar);
        OverBoundNestedScrollView overBoundNestedScrollView = (OverBoundNestedScrollView) dialogContentView.findViewById(R.id.rl_title_content);
        View viewFindViewById = dialogContentView.findViewById(R.id.ll_mask);
        ViewGroup viewGroup = (LinearLayout) dialogContentView.findViewById(R.id.ll_bottom);
        TextView textView2 = (TextView) dialogContentView.findViewById(R.id.tv_title);
        TextView textView3 = (TextView) dialogContentView.findViewById(R.id.tv_slogan);
        TextView textView4 = (TextView) dialogContentView.findViewById(R.id.tv_dialog_title);
        TextView textView5 = (TextView) dialogContentView.findViewById(R.id.tv_instruction);
        TextView textView6 = (TextView) dialogContentView.findViewById(R.id.tv_announcement);
        View view3 = (OSScrollbarLayout) dialogContentView.findViewById(R.id.gdpr_announcement_scrollbar);
        OverBoundNestedScrollView overBoundNestedScrollView2 = (OverBoundNestedScrollView) dialogContentView.findViewById(R.id.announcement_scrollview);
        if (isPageStyle) {
            y45.i(viewGroup, "llBottom");
            J(viewGroup);
        }
        View viewFindViewById2 = dialogContentView.findViewById(R.id.double_button);
        this.mButtonView = viewFindViewById2;
        B(viewFindViewById2);
        u(this.mButtonView);
        x0(dialogContentView, isPageStyle);
        y0(dialogContentView);
        t0(dialogContentView);
        v0(dialogContentView, isPageStyle);
        if (oSSmoothRoundCorner != null) {
            oSSmoothRoundCorner.setVisibility(isPageStyle ? 0 : 8);
            GdprUtil.GDPRConfig gDPRConfig = this.mGdprConfig;
            if (gDPRConfig == null || (appIconBitmap = gDPRConfig.getAppIconBitmap()) == null) {
                GdprUtil.GDPRConfig gDPRConfig2 = this.mGdprConfig;
                if (gDPRConfig2 != null) {
                    Integer numValueOf = Integer.valueOf(gDPRConfig2.getAppIconResId());
                    if (numValueOf.intValue() == 0) {
                        numValueOf = null;
                    }
                    if (numValueOf != null) {
                        oSSmoothRoundCorner.setImageResource(numValueOf.intValue());
                    }
                }
            } else {
                y45.i(appIconBitmap, "appIconBitmap");
                oSSmoothRoundCorner.setImageBitmap(appIconBitmap);
            }
            ViewGroup.LayoutParams layoutParams2 = oSSmoothRoundCorner.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
            if (marginLayoutParams2 != null) {
                marginLayoutParams2.topMargin = (isPageStyle && olb.q0(context)) ? 0 : olb.h(context, 84);
                oSSmoothRoundCorner.setLayoutParams(marginLayoutParams2);
            }
        }
        if (imageView != null) {
            int iK0 = k0();
            if (iK0 == 0) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                imageView.setImageResource(iK0);
                ViewGroup.LayoutParams layoutParams3 = imageView.getLayoutParams();
                ViewGroup.MarginLayoutParams marginLayoutParams3 = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : null;
                if (marginLayoutParams3 != null) {
                    marginLayoutParams3.topMargin = dimensionPixelSize2;
                    if (!isPageStyle) {
                        marginLayoutParams3.width = resources.getDimensionPixelSize(R.dimen.os_gdpr_dialog_privacy_icon_width);
                        marginLayoutParams3.height = resources.getDimensionPixelSize(R.dimen.os_gdpr_dialog_privacy_icon_height);
                    }
                    imageView.setLayoutParams(marginLayoutParams3);
                }
            }
        }
        if (oSScrollbarLayout != null) {
            oSScrollbarLayout.setScrollbarStyleMode(isPageStyle ? 1 : 2);
            ViewGroup.LayoutParams layoutParams4 = oSScrollbarLayout.getLayoutParams();
            ConstraintLayout.LayoutParams layoutParams5 = layoutParams4 instanceof ConstraintLayout.LayoutParams ? (ConstraintLayout.LayoutParams) layoutParams4 : null;
            if (layoutParams5 != null) {
                ((ViewGroup.MarginLayoutParams) layoutParams5).topMargin = iH;
                ((ViewGroup.MarginLayoutParams) layoutParams5).height = isPageStyle ? -1 : -2;
                if (isPageStyle) {
                    layoutParams5.verticalBias = 0.0f;
                    layoutParams5.constrainedHeight = false;
                }
                oSScrollbarLayout.setLayoutParams(layoutParams5);
            }
        }
        if (overBoundNestedScrollView != null && oSScrollbarLayout != null) {
            oSScrollbarLayout.setOverScrollView(overBoundNestedScrollView);
        }
        if (overBoundNestedScrollView != null) {
            ViewGroup.LayoutParams layoutParams6 = overBoundNestedScrollView.getLayoutParams();
            if (layoutParams6 == null) {
                layoutParams6 = null;
            }
            if (layoutParams6 != null) {
                layoutParams6.height = isPageStyle ? -1 : -2;
                overBoundNestedScrollView.setLayoutParams(layoutParams6);
            }
        }
        if (linearLayout != null) {
            ViewGroup.LayoutParams layoutParams7 = linearLayout.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams4 = layoutParams7 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams7 : null;
            if (marginLayoutParams4 != null) {
                marginLayoutParams4.height = isPageStyle ? -1 : -2;
                linearLayout.setLayoutParams(marginLayoutParams4);
            }
        }
        if (viewGroup != null) {
            ViewGroup.LayoutParams layoutParams8 = viewGroup.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams5 = layoutParams8 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams8 : null;
            if (marginLayoutParams5 != null) {
                marginLayoutParams5.bottomMargin = dimensionPixelSize3;
                viewGroup.setLayoutParams(marginLayoutParams5);
            }
        }
        if (overBoundNestedScrollView != null) {
            overBoundNestedScrollView.setMinimumHeight(dimensionPixelSize4);
        }
        U();
        C(overBoundNestedScrollView, viewFindViewById, isPageStyle);
        if (isPageStyle || textView4 == null) {
            if (textView2 != null) {
                textView2.setText(this.mTitleText);
            }
            if (textView4 != null) {
                textView4.setVisibility(8);
            }
            if (textView2 != null) {
                i2 = 0;
                textView2.setVisibility(0);
            }
            if (textView3 != null) {
                if (TextUtils.isEmpty(this.mSloganText)) {
                    textView3.setVisibility(8);
                } else {
                    textView3.setText(this.mSloganText);
                    textView3.setVisibility(i2);
                }
            }
            if (textView5 != null) {
                layoutParams = textView5.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                } else {
                    marginLayoutParams = null;
                }
                if (marginLayoutParams != null) {
                    if (isPageStyle) {
                        i4 = R.dimen.os_space150;
                    } else {
                        i4 = R.dimen.os_space200;
                    }
                    marginLayoutParams.topMargin = resources.getDimensionPixelSize(i4);
                    textView = textView5;
                    textView.setLayoutParams(marginLayoutParams);
                } else {
                    textView = textView5;
                }
            } else {
                textView = textView5;
            }
            if (textView != null) {
                textView.setText(this.mContentText);
            }
            iJ0 = j0(context, isPageStyle);
            if (textView != null) {
                textView.setTextColor(iJ0);
            }
            if (textView6 != null) {
                textView6.setTextColor(iJ0);
            }
            if (isPageStyle) {
                dimension = resources.getDimension(R.dimen.os_gdpr_page_message_text_size);
                if (textView != null) {
                    textView.setTextSize(0, dimension);
                }
                if (textView6 != null) {
                    textView6.setTextSize(0, dimension);
                }
            }
            l0(this.mAgreeButton, this.mAgreeText);
            l0(this.mCancelButton, this.mCancelText);
            if (textView6 != null) {
                textView6.setText(this.mAnnouncementText);
                textView6.setClickable(true);
                textView6.setMovementMethod(new a());
                textView6.setHighlightColor(0);
            }
            if (olb.q0(context)) {
                dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.os_gdpr_tv_announcement_max_height);
            }
            if (view3 != null) {
                if (isPageStyle) {
                    i3 = 1;
                } else {
                    i3 = 2;
                }
                view3.setScrollbarStyleMode(i3);
                if (overBoundNestedScrollView2 != null) {
                    view3.setOverScrollView(overBoundNestedScrollView2);
                }
            } else {
                dimensionPixelSize = dimensionPixelSize5;
                view3 = view3;
            }
            if (textView6 != null) {
                G(view3, textView6, dimensionPixelSize);
            }
            eVar = new e();
            view = this.mCancelButton;
            if (view != null) {
                view.setOnClickListener(eVar);
            }
            view2 = this.mAgreeButton;
            if (view2 != null) {
                view2.setOnClickListener(eVar);
            }
        }
        textView4.setText(this.mTitleText);
        textView4.setVisibility(0);
        if (textView2 != null) {
            textView2.setVisibility(8);
        }
        i2 = 0;
        if (textView3 != null) {
            if (TextUtils.isEmpty(this.mSloganText)) {
                textView3.setText(this.mSloganText);
                textView3.setVisibility(i2);
            } else {
                textView3.setVisibility(8);
            }
        }
        if (textView5 != null) {
            layoutParams = textView5.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            } else {
                marginLayoutParams = null;
            }
            if (marginLayoutParams != null) {
                if (isPageStyle) {
                    i4 = R.dimen.os_space150;
                } else {
                    i4 = R.dimen.os_space200;
                }
                marginLayoutParams.topMargin = resources.getDimensionPixelSize(i4);
                textView = textView5;
                textView.setLayoutParams(marginLayoutParams);
            } else {
                textView = textView5;
            }
        } else {
            textView = textView5;
        }
        if (textView != null) {
            textView.setText(this.mContentText);
        }
        iJ0 = j0(context, isPageStyle);
        if (textView != null) {
            textView.setTextColor(iJ0);
        }
        if (textView6 != null) {
            textView6.setTextColor(iJ0);
        }
        if (isPageStyle) {
            dimension = resources.getDimension(R.dimen.os_gdpr_page_message_text_size);
            if (textView != null) {
                textView.setTextSize(0, dimension);
            }
            if (textView6 != null) {
                textView6.setTextSize(0, dimension);
            }
        }
        l0(this.mAgreeButton, this.mAgreeText);
        l0(this.mCancelButton, this.mCancelText);
        if (textView6 != null) {
            textView6.setText(this.mAnnouncementText);
            textView6.setClickable(true);
            textView6.setMovementMethod(new a());
            textView6.setHighlightColor(0);
        }
        if (olb.q0(context)) {
            dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.os_gdpr_tv_announcement_max_height);
        }
        if (view3 != null) {
            if (isPageStyle) {
                i3 = 1;
            } else {
                i3 = 2;
            }
            view3.setScrollbarStyleMode(i3);
            if (overBoundNestedScrollView2 != null) {
                view3.setOverScrollView(overBoundNestedScrollView2);
            }
        } else {
            dimensionPixelSize = dimensionPixelSize5;
            view3 = view3;
        }
        if (textView6 != null) {
            G(view3, textView6, dimensionPixelSize);
        }
        eVar = new e();
        view = this.mCancelButton;
        if (view != null) {
            view.setOnClickListener(eVar);
        }
        view2 = this.mAgreeButton;
        if (view2 != null) {
            view2.setOnClickListener(eVar);
        }
    }

    public final boolean X(View buttonView) {
        View firstButton;
        if (buttonView instanceof OSLiqMediumButton) {
            firstButton = ((OSLiqMediumButton) buttonView).getFirstButton();
        } else {
            if (!(buttonView instanceof OSMediumButton)) {
                return false;
            }
            firstButton = ((OSMediumButton) buttonView).getFirstButton();
        }
        ViewGroup.LayoutParams layoutParams = firstButton.getLayoutParams();
        return layoutParams != null && layoutParams.width == -1;
    }

    public final boolean Y() {
        GdprUtil.GDPRConfig gDPRConfig = this.mGdprConfig;
        return gDPRConfig != null && gDPRConfig.getGdprStyle() == 1;
    }

    public final boolean Z() {
        Context context = this.mContext;
        Object systemService = context != null ? context.getSystemService("activity") : null;
        ActivityManager activityManager = systemService instanceof ActivityManager ? (ActivityManager) systemService : null;
        if (activityManager == null || activityManager.getLockTaskModeState() == 0) {
            return false;
        }
        if (INSTANCE.b(this.mContext)) {
            Toast.makeText(this.mContext, R.string.os_gdpr_tip_screen_pin_gesture, 0).show();
            return true;
        }
        Toast.makeText(this.mContext, R.string.os_gdpr_tip_screen_pin, 0).show();
        return true;
    }

    @Override
    public Dialog a(boolean isInMultiWindowMode) {
        Log.d("onCreateDialog", "onCreateDialog: isInMultiWindowMode == " + isInMultiWindowMode);
        GdprUtil.GDPRConfig gDPRConfig = this.mGdprConfig;
        boolean z2 = (gDPRConfig == null || gDPRConfig == null || gDPRConfig.getGdprStyle() != 1) ? false : true;
        if (z2 && !olb.b0(this.mContext)) {
            Activity activity = getActivity();
            this.mOriginalOrientation = activity != null ? Integer.valueOf(activity.getRequestedOrientation()) : null;
            Activity activity2 = getActivity();
            if (activity2 != null) {
                activity2.setRequestedOrientation(1);
            }
        }
        View viewInflate = View.inflate(new ContextThemeWrapper(this.mContext, this.mCustomThemeResId), R.layout.os_gdpr_dialog_fragment_privacy, null);
        OSLiquidContainerRootLayoutInner oSLiquidContainerRootLayoutInner = (OSLiquidContainerRootLayoutInner) viewInflate.findViewById(R.id.gdpr_root);
        this.mRoot = oSLiquidContainerRootLayoutInner;
        if (!z2) {
            if (oSLiquidContainerRootLayoutInner != null) {
                oSLiquidContainerRootLayoutInner.setOnUnionRenderFrameAvailableListener();
            }
            OSLiquidContainerRootLayoutInner oSLiquidContainerRootLayoutInner2 = this.mRoot;
            if (oSLiquidContainerRootLayoutInner2 != null) {
                oSLiquidContainerRootLayoutInner2.setElasticTypeConfig(ElasticTypeConfig.DIALOG);
            }
            OSLiquidContainerRootLayoutInner oSLiquidContainerRootLayoutInner3 = this.mRoot;
            if (oSLiquidContainerRootLayoutInner3 != null) {
                oSLiquidContainerRootLayoutInner3.setLightTypeConfig(this.mLightTypeConfig);
            }
            OSLiquidContainerRootLayoutInner oSLiquidContainerRootLayoutInner4 = this.mRoot;
            if (oSLiquidContainerRootLayoutInner4 != null) {
                oSLiquidContainerRootLayoutInner4.setShowShadow(false);
            }
        }
        y45.i(viewInflate, "view");
        View viewQ0 = q0(viewInflate, z2);
        W(viewQ0, z2);
        this.mDialogContentView = viewQ0;
        Dialog dialogH = H(viewQ0, z2);
        I(dialogH, viewQ0, z2);
        return dialogH;
    }

    public final void b0(boolean isKeyBack) {
        id4 id4Var = z;
        if (id4Var != null) {
            id4Var.d(this.mAttachedActivity, Boolean.valueOf(isKeyBack));
            id4Var.e(this.mAttachedActivity);
        }
    }

    public final void c0(Context context) {
        this.mContext = context;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{R.attr.gdprTheme});
        y45.i(typedArrayObtainStyledAttributes, "context.obtainStyledAttributes(attrs)");
        this.mCustomThemeResId = typedArrayObtainStyledAttributes.getResourceId(0, R.style.gdprDialogContent);
        typedArrayObtainStyledAttributes.recycle();
    }

    public final View d0(View rootView) {
        ViewGroup viewGroup;
        OSLiquidContainerRootLayoutInner oSLiquidContainerRootLayoutInner = (OSLiquidContainerRootLayoutInner) rootView.findViewById(R.id.gdpr_root);
        if (oSLiquidContainerRootLayoutInner == null || (viewGroup = (ViewGroup) rootView.findViewById(R.id.main_container)) == null) {
            return rootView;
        }
        ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = -2;
            layoutParams.width = -1;
            viewGroup.setLayoutParams(layoutParams);
        }
        oSLiquidContainerRootLayoutInner.setClipChildren(false);
        oSLiquidContainerRootLayoutInner.setClipToPadding(false);
        oSLiquidContainerRootLayoutInner.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
        FrameLayout frameLayout = new FrameLayout(new ContextThemeWrapper(this.mContext, this.mCustomThemeResId));
        frameLayout.setClipChildren(false);
        frameLayout.setClipToPadding(false);
        new ViewGroup.LayoutParams(-1, -2);
        u0(frameLayout);
        frameLayout.addView(oSLiquidContainerRootLayoutInner, new FrameLayout.LayoutParams(-1, -2));
        return frameLayout;
    }

    public final void e0() {
        View view;
        View decorView;
        Dialog dialog = getDialog();
        if (dialog == null || (view = this.mDialogContentView) == null) {
            return;
        }
        GdprUtil.GDPRConfig gDPRConfig = this.mGdprConfig;
        boolean z2 = false;
        if (gDPRConfig != null && gDPRConfig.getGdprStyle() == 1) {
            z2 = true;
        }
        x0(view, z2);
        y0(view);
        t0(view);
        v0(view, z2);
        if (!dialog.isShowing()) {
            dialog.show();
        }
        I(dialog, view, z2);
        Window window = dialog.getWindow();
        if (window != null && (decorView = window.getDecorView()) != null) {
            decorView.requestLayout();
        }
        view.requestLayout();
    }

    public final int f0(View targetView, boolean isLandscape) {
        if (INSTANCE.b(this.mContext)) {
            return g0(targetView, false);
        }
        return isLandscape ? O() : Q();
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0031  */
    public final int g0(View targetView, boolean isTop) {
        int iM;
        int iO = O();
        Context context = this.mContext;
        if (context == null) {
            return iO;
        }
        boolean z2 = getResources().getConfiguration().orientation == 2;
        WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(targetView);
        Insets insets = rootWindowInsets != null ? rootWindowInsets.getInsets(WindowInsetsCompat.Type.systemBars()) : null;
        if (isTop) {
            if (insets != null) {
                iM = insets.top;
            } else {
                iM = 0;
            }
        } else if (insets != null) {
            iM = insets.bottom;
        } else {
            iM = 0;
        }
        if (iM <= 0) {
            iM = olb.M(context, isTop, z2);
        }
        return wn8.d(iO - iM, 0);
    }

    public final int h0() {
        Context context = this.mContext;
        if (context == null) {
            return 0;
        }
        if (!olb.W() && !olb.b0(context)) {
            return P();
        }
        int iE = olb.E(context);
        return wn8.d((iE - wn8.g(olb.p(context), iE)) / 2, 0);
    }

    public final int i0(View targetView, boolean isLandscape) {
        return isLandscape ? g0(targetView, true) : Q();
    }

    public final int j0(Context context, boolean isPageStyle) {
        return isPageStyle ? olb.m(context, com.transsion.widgetslib.R.attr.os_text_info, com.transsion.widgetslib.R.color.os_text_info_hios) : olb.m(context, com.transsion.widgetslib.R.attr.os_text_secondary, com.transsion.widgetslib.R.color.os_text_secondary_hios);
    }

    public final int k0() {
        if (olb.e) {
            return R.drawable.icon_privacy_itel;
        }
        if (olb.d) {
            return R.drawable.icon_privacy_infinix;
        }
        if (olb.c) {
            return R.drawable.icon_privacy_tecno;
        }
        return 0;
    }

    public final void l0(View button, CharSequence text) {
        if (button instanceof OSLiquidBigButton) {
            ((OSLiquidBigButton) button).setText(text);
        } else if (button instanceof OSBigButton) {
            ((OSBigButton) button).setText(text);
        }
    }

    public final void n0(View view, Window window) {
        if (view != null && olb.P) {
            ViewParent parent = view.getParent();
            View decorView = window.getDecorView();
            y45.i(decorView, "window.decorView");
            while (parent instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) parent;
                viewGroup.setClipChildren(false);
                viewGroup.setClipToPadding(false);
                viewGroup.setClipToOutline(false);
                if (parent == decorView) {
                    return;
                } else {
                    parent = viewGroup.getParent();
                }
            }
        }
    }

    public final PrivacyDialogFragment o0(GdprUtil.GDPRConfig gdprConfig) {
        this.mGdprConfig = gdprConfig;
        Bundle arguments = getArguments();
        if (arguments == null) {
            arguments = new Bundle();
        }
        arguments.putSerializable("arg_gdpr_config", gdprConfig);
        setArguments(arguments);
        return this;
    }

    @Override
    public void onAttach(Context context) {
        y45.j(context, "context");
        super.onAttach(context);
        c0(context);
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        y45.j(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        e0();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            Serializable serializable = arguments.getSerializable("arg_gdpr_config");
            this.mGdprConfig = serializable instanceof GdprUtil.GDPRConfig ? (GdprUtil.GDPRConfig) serializable : null;
            this.mPinCancelDismissEnable = arguments.getBoolean("arg_pin_cancel_dismiss_enable", this.mPinCancelDismissEnable);
        }
    }

    @Override
    public void onDestroyView() {
        View view;
        View.OnLayoutChangeListener onLayoutChangeListener = this.mDoubleButtonMarginLayoutListener;
        if (onLayoutChangeListener != null && (view = this.mDoubleButtonMarginTarget) != null) {
            view.removeOnLayoutChangeListener(onLayoutChangeListener);
        }
        this.mDoubleButtonMarginLayoutListener = null;
        this.mDoubleButtonMarginTarget = null;
        View view2 = this.mCancelButton;
        if (view2 != null) {
            view2.setOnClickListener(null);
        }
        View view3 = this.mAgreeButton;
        if (view3 != null) {
            view3.setOnClickListener(null);
        }
        this.mButtonView = null;
        this.mCancelButton = null;
        this.mAgreeButton = null;
        this.mDialogContentView = null;
        this.mRoot = null;
        super.onDestroyView();
    }

    @Override
    public void onDetach() {
        this.mAttachedActivity = null;
        this.mContext = null;
        super.onDetach();
    }

    @Override
    public void onDismiss(DialogInterface dialog) {
        y45.j(dialog, "dialog");
        super.onDismiss(dialog);
        Integer num = this.mOriginalOrientation;
        if (num != null) {
            int iIntValue = num.intValue();
            Activity activity = getActivity();
            if (activity != null) {
                activity.setRequestedOrientation(iIntValue);
            }
            this.mOriginalOrientation = null;
        }
    }

    @Override
    public void onMultiWindowModeChanged(boolean isInMultiWindowMode, Configuration newConfig) {
        super.onMultiWindowModeChanged(isInMultiWindowMode, newConfig);
        e0();
    }

    @Override
    public void onStart() {
        super.onStart();
        GdprUtil.GDPRConfig gDPRConfig = this.mGdprConfig;
        if (gDPRConfig == null || gDPRConfig == null) {
            return;
        }
        gDPRConfig.getGdprStyle();
    }

    public final void p0(Spannable spannable, String originStr, String handleString, int tag) {
        int iM0 = j1a.m0(originStr, handleString, 0, false, 6, null);
        spannable.setSpan(new f(this, tag), iM0, handleString.length() + iM0, 33);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [T, android.view.View, android.view.ViewGroup, android.widget.FrameLayout] */
    public final View q0(View view, boolean isPageStyle) {
        if (!isPageStyle) {
            return olb.W() ? d0(view) : z0(view);
        }
        ViewGroup viewGroup = (ViewGroup) view.findViewById(R.id.main_container);
        ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(R.id.content_ll);
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ref$ObjectRef.element = view;
        if (viewGroup != null) {
            ViewParent parent = viewGroup.getParent();
            ViewGroup viewGroup2 = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup2 != null) {
                viewGroup2.removeView(viewGroup);
            }
            ?? frameLayout = new FrameLayout(new ContextThemeWrapper(this.mContext, this.mCustomThemeResId));
            frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            frameLayout.addView(viewGroup, new FrameLayout.LayoutParams(-1, -1));
            ref$ObjectRef.element = frameLayout;
            ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
            if (layoutParams != null && layoutParams.height != -1) {
                layoutParams.height = -1;
                viewGroup.setLayoutParams(layoutParams);
            }
        }
        if (constraintLayout != null) {
            ViewGroup.LayoutParams layoutParams2 = constraintLayout.getLayoutParams();
            if (layoutParams2 instanceof LinearLayout.LayoutParams) {
                layoutParams2.height = 0;
                ((LinearLayout.LayoutParams) layoutParams2).weight = 1.0f;
                constraintLayout.setLayoutParams(layoutParams2);
            } else if (layoutParams2 != null && layoutParams2.height != -1) {
                layoutParams2.height = -1;
                constraintLayout.setLayoutParams(layoutParams2);
            }
        }
        return (View) ref$ObjectRef.element;
    }

    public final boolean r0(boolean isPageStyle) {
        Context context;
        return (isPageStyle || olb.W() || ((context = this.mContext) != null && olb.q0(context))) ? false : true;
    }

    public final void s0(FragmentManager manager, String tag, boolean pinCancelDismissEnable) {
        this.mPinCancelDismissEnable = pinCancelDismissEnable;
        this.mFragmentManager = manager;
        this.mTag = tag;
        Bundle arguments = getArguments();
        if (arguments == null) {
            arguments = new Bundle();
        }
        arguments.putBoolean("arg_pin_cancel_dismiss_enable", pinCancelDismissEnable);
        setArguments(arguments);
        show(manager, tag);
    }

    public final void t(View contentView, View buttonView, boolean isPageStyle) {
        int dimensionPixelSize;
        if (isPageStyle && olb.W() && olb.b0(this.mContext)) {
            dimensionPixelSize = olb.h(this.mContext, getResources().getConfiguration().orientation == 2 ? 72 : 36);
        } else if (!isPageStyle || olb.b0(this.mContext) || X(buttonView)) {
            dimensionPixelSize = 0;
        } else {
            ViewGroup viewGroup = (ViewGroup) contentView.findViewById(R.id.main_container);
            dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.os_space300) - (viewGroup != null ? viewGroup.getPaddingStart() : getResources().getDimensionPixelSize(R.dimen.os_space400));
        }
        ViewGroup.LayoutParams layoutParams = buttonView.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            if (marginLayoutParams.getMarginStart() == dimensionPixelSize && marginLayoutParams.getMarginEnd() == dimensionPixelSize) {
                return;
            }
            marginLayoutParams.setMarginStart(dimensionPixelSize);
            marginLayoutParams.setMarginEnd(dimensionPixelSize);
            buttonView.setLayoutParams(marginLayoutParams);
        }
    }

    public final void t0(View contentView) {
        OSScrollbarLayout oSScrollbarLayout;
        OverBoundNestedScrollView overBoundNestedScrollView;
        int i;
        ViewGroup viewGroup = (ViewGroup) contentView.findViewById(R.id.main_container);
        if (viewGroup == null || (oSScrollbarLayout = (OSScrollbarLayout) contentView.findViewById(R.id.gdpr_announcement_scrollbar)) == null || (overBoundNestedScrollView = (OverBoundNestedScrollView) contentView.findViewById(R.id.announcement_scrollview)) == null) {
            return;
        }
        int paddingStart = viewGroup.getPaddingStart();
        ViewGroup.LayoutParams layoutParams = oSScrollbarLayout.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null && (marginLayoutParams.getMarginStart() != (i = -paddingStart) || marginLayoutParams.getMarginEnd() != i)) {
            marginLayoutParams.setMarginStart(i);
            marginLayoutParams.setMarginEnd(i);
            oSScrollbarLayout.setLayoutParams(marginLayoutParams);
        }
        if (overBoundNestedScrollView.getPaddingStart() == paddingStart && overBoundNestedScrollView.getPaddingEnd() == paddingStart) {
            return;
        }
        overBoundNestedScrollView.setPaddingRelative(paddingStart, overBoundNestedScrollView.getPaddingTop(), paddingStart, overBoundNestedScrollView.getPaddingBottom());
    }

    public final void u(View buttonView) {
        Context context;
        int i = this.mCustomThemeResId;
        if (i == 0 || (context = this.mContext) == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, new int[]{R.attr.negativeBtnBgColor, R.attr.negativeBtnTextColor, R.attr.positiveBtnBgColor, R.attr.positiveBtnTextColor});
        y45.i(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…mCustomThemeResId, attrs)");
        try {
            if (buttonView instanceof OSMediumButton) {
                A((OSMediumButton) buttonView, typedArrayObtainStyledAttributes);
            } else if (buttonView instanceof OSLiqMediumButton) {
                z((OSLiqMediumButton) buttonView, typedArrayObtainStyledAttributes);
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public final void u0(View contentView) {
        if (olb.W()) {
            int iH0 = h0();
            if (contentView.getPaddingLeft() == iH0 && contentView.getPaddingTop() == Q() && contentView.getPaddingRight() == iH0 && contentView.getPaddingBottom() == 0) {
                return;
            }
            contentView.setPadding(iH0, Q(), iH0, 0);
        }
    }

    public final void v(Window window) {
        Drawable drawable;
        Context context = this.mContext;
        if (context == null || !olb.O || (drawable = ContextCompat.getDrawable(context, com.transsion.widgetslib.R.drawable.os_dialog_bg)) == null) {
            return;
        }
        InsetDrawable insetDrawable = new InsetDrawable(drawable, 0, 0, 0, 0);
        insetDrawable.setTint(0);
        window.setBackgroundDrawable(insetDrawable);
    }

    public final void v0(final View contentView, boolean isPageStyle) {
        View viewFindViewById = contentView.findViewById(R.id.double_button);
        if (viewFindViewById == null) {
            return;
        }
        t(contentView, viewFindViewById, isPageStyle);
        if (this.mDoubleButtonMarginLayoutListener == null) {
            this.mDoubleButtonMarginLayoutListener = new View.OnLayoutChangeListener() {
                @Override
                public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    PrivacyDialogFragment.w0(this.b, contentView, view, i, i2, i3, i4, i5, i6, i7, i8);
                }
            };
        }
        View view = this.mDoubleButtonMarginTarget;
        if (view != viewFindViewById) {
            View.OnLayoutChangeListener onLayoutChangeListener = this.mDoubleButtonMarginLayoutListener;
            if (onLayoutChangeListener != null) {
                if (view != null) {
                    view.removeOnLayoutChangeListener(onLayoutChangeListener);
                }
                viewFindViewById.addOnLayoutChangeListener(onLayoutChangeListener);
            }
            this.mDoubleButtonMarginTarget = viewFindViewById;
        }
    }

    public final void w(OSBigButton button, int fillColor, int radiusRes, int pressOverlayRes) {
        float dimension = button.getResources().getDimension(radiusRes);
        LayerDrawable layerDrawable = new LayerDrawable(new GradientDrawable[]{x(dimension, fillColor), x(dimension, ContextCompat.getColor(button.getContext(), pressOverlayRes))});
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, layerDrawable);
        stateListDrawable.addState(new int[0], x(dimension, fillColor));
        button.setBackground(stateListDrawable);
    }

    public final void x0(View contentView, boolean isPageStyle) {
        int dimensionPixelSize;
        ViewGroup viewGroup = (ViewGroup) contentView.findViewById(R.id.main_container);
        if (viewGroup == null) {
            return;
        }
        if (!isPageStyle) {
            Context context = this.mContext;
            y45.g(context);
            dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.os_space300);
        } else if (olb.b0(this.mContext)) {
            dimensionPixelSize = olb.h(this.mContext, getResources().getConfiguration().orientation == 2 ? 107 : 93);
        } else {
            Context context2 = this.mContext;
            y45.g(context2);
            dimensionPixelSize = context2.getResources().getDimensionPixelSize(R.dimen.os_space400);
        }
        if (viewGroup.getPaddingStart() == dimensionPixelSize && viewGroup.getPaddingEnd() == dimensionPixelSize) {
            return;
        }
        viewGroup.setPaddingRelative(dimensionPixelSize, viewGroup.getPaddingTop(), dimensionPixelSize, viewGroup.getPaddingBottom());
    }

    public final void y(OSLiquidBigButton button, int fillColor) {
        if (Build.VERSION.SDK_INT < 31) {
            return;
        }
        float fAlpha = Color.alpha(fillColor) / 255.0f;
        button.setBrandColor(fillColor | (-16777216));
        if (fAlpha <= 0.0f) {
            fAlpha = 1.0f;
        }
        button.setBrandAlpha(fAlpha);
        button.setMixLevel(5);
    }

    public final void y0(View contentView) {
        ViewGroup viewGroup;
        OverBoundNestedScrollView overBoundNestedScrollView;
        int i;
        ViewGroup viewGroup2 = (ViewGroup) contentView.findViewById(R.id.main_container);
        if (viewGroup2 == null || (viewGroup = (ViewGroup) contentView.findViewById(R.id.content_ll)) == null || (overBoundNestedScrollView = (OverBoundNestedScrollView) contentView.findViewById(R.id.rl_title_content)) == null) {
            return;
        }
        int paddingStart = viewGroup2.getPaddingStart();
        ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null && (marginLayoutParams.getMarginStart() != (i = -paddingStart) || marginLayoutParams.getMarginEnd() != i)) {
            marginLayoutParams.setMarginStart(i);
            marginLayoutParams.setMarginEnd(i);
            viewGroup.setLayoutParams(marginLayoutParams);
        }
        if (overBoundNestedScrollView.getPaddingStart() == paddingStart && overBoundNestedScrollView.getPaddingEnd() == paddingStart) {
            return;
        }
        overBoundNestedScrollView.setPaddingRelative(paddingStart, overBoundNestedScrollView.getPaddingTop(), paddingStart, overBoundNestedScrollView.getPaddingBottom());
    }

    public final void z(OSLiqMediumButton buttonView, TypedArray ta) {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        OSLiquidBigButton firstButton = buttonView.getFirstButton();
        OSLiquidBigButton secondButton = buttonView.getSecondButton();
        if (ta.hasValue(0)) {
            y45.i(firstButton, "cancelButton");
            y(firstButton, ta.getColor(0, 0));
        }
        if (ta.hasValue(1) && (colorStateList2 = ta.getColorStateList(1)) != null) {
            firstButton.getOsBigButton().setTextColor(colorStateList2);
        }
        if (ta.hasValue(2)) {
            y45.i(secondButton, "agreeButton");
            y(secondButton, ta.getColor(2, 0));
        }
        if (!ta.hasValue(3) || (colorStateList = ta.getColorStateList(3)) == null) {
            return;
        }
        secondButton.getOsBigButton().setTextColor(colorStateList);
    }

    public final View z0(View contentView) {
        final ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(this.mContext, this.mCustomThemeResId);
        FrameLayout frameLayout = new FrameLayout(contextThemeWrapper) {
            @Override
            public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
                int iH;
                int iD = olb.D(this.b.mContext);
                Context context = this.b.mContext;
                boolean z2 = context != null && olb.q0(context);
                boolean z3 = getResources().getConfiguration().orientation == 2;
                int iH0 = this.b.h0();
                int iI0 = this.b.i0(this, z3);
                int iF0 = this.b.f0(this, z3);
                if (getPaddingLeft() != iH0 || getPaddingTop() != iI0 || getPaddingRight() != iH0 || getPaddingBottom() != iF0) {
                    setPadding(iH0, iI0, iH0, iF0);
                }
                if (z2 || !z3) {
                    iH = iD - olb.h(this.b.mContext, z2 ? 16 : 180);
                } else {
                    iH = (iD - (this.b.O() * 2)) + iI0 + iF0;
                }
                int size = View.MeasureSpec.getSize(heightMeasureSpec);
                int mode = View.MeasureSpec.getMode(heightMeasureSpec);
                if (iH > 0 && (mode == 0 || size > iH)) {
                    heightMeasureSpec = View.MeasureSpec.makeMeasureSpec(iH, Integer.MIN_VALUE);
                }
                super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            }
        };
        frameLayout.setClipChildren(false);
        frameLayout.setClipToPadding(false);
        int iH0 = h0();
        boolean z2 = getResources().getConfiguration().orientation == 2;
        int iI0 = i0(frameLayout, z2);
        int iF0 = f0(frameLayout, z2);
        if (frameLayout.getPaddingLeft() != iH0 || frameLayout.getPaddingTop() != iI0 || frameLayout.getPaddingRight() != iH0 || frameLayout.getPaddingBottom() != iF0) {
            frameLayout.setPadding(iH0, iI0, iH0, iF0);
        }
        frameLayout.addView(contentView, new FrameLayout.LayoutParams(-1, -2));
        return frameLayout;
    }

    @Override
    public void onAttach(Activity activity) {
        y45.j(activity, "activity");
        super.onAttach(activity);
        this.mAttachedActivity = activity;
    }
}
