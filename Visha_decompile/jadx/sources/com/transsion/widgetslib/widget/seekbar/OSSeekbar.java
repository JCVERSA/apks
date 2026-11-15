package com.transsion.widgetslib.widget.seekbar;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.core.graphics.ColorUtils;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.RequestConfiguration;
import com.lzy.okgo.model.Progress;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.widget.seekbar.OSSeekbar;
import defpackage.a67;
import defpackage.bq5;
import defpackage.f43;
import defpackage.fz3;
import defpackage.jv9;
import defpackage.kv9;
import defpackage.olb;
import defpackage.s53;
import defpackage.uua;
import defpackage.vob;
import defpackage.wn8;
import defpackage.y45;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000Ô\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0014\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b6\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\bO\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0016\u0018\u0000 \u0091\u00032\u00020\u0001:\u0006\u0092\u0003É\u0001Ì\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\r\u0010\u000eJ7\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u0017H\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ/\u0010\u001f\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u000fH\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010%\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b%\u0010&J\u0015\u0010)\u001a\u00020\f2\u0006\u0010(\u001a\u00020'¢\u0006\u0004\b)\u0010*J\u0015\u0010,\u001a\u00020\f2\u0006\u0010+\u001a\u00020\u000f¢\u0006\u0004\b,\u0010-J\u0011\u0010/\u001a\u0004\u0018\u00010.H\u0016¢\u0006\u0004\b/\u00100J\u0019\u00102\u001a\u00020\f2\b\u00101\u001a\u0004\u0018\u00010.H\u0016¢\u0006\u0004\b2\u00103J\u0015\u00105\u001a\u00020\f2\u0006\u00104\u001a\u00020\u0006¢\u0006\u0004\b5\u00106J\u0015\u00108\u001a\u00020\f2\u0006\u00107\u001a\u00020\u0006¢\u0006\u0004\b8\u00106J\u0015\u0010;\u001a\u00020\f2\u0006\u0010:\u001a\u000209¢\u0006\u0004\b;\u0010<J\u0015\u0010?\u001a\u00020\f2\u0006\u0010>\u001a\u00020=¢\u0006\u0004\b?\u0010@J\u0015\u0010B\u001a\u00020\f2\u0006\u0010A\u001a\u00020=¢\u0006\u0004\bB\u0010@J\u0015\u0010D\u001a\u00020\f2\u0006\u0010C\u001a\u00020\u0006¢\u0006\u0004\bD\u00106J\u0011\u0010F\u001a\u0004\u0018\u00010EH\u0014¢\u0006\u0004\bF\u0010GJ\u0017\u0010I\u001a\u00020\f2\u0006\u0010H\u001a\u00020EH\u0014¢\u0006\u0004\bI\u0010JJ\u0015\u0010L\u001a\u00020\f2\u0006\u0010K\u001a\u00020\u0006¢\u0006\u0004\bL\u00106J\u0015\u0010M\u001a\u00020\f2\u0006\u0010K\u001a\u00020\u0006¢\u0006\u0004\bM\u00106J\u0015\u0010P\u001a\u00020\f2\u0006\u0010O\u001a\u00020N¢\u0006\u0004\bP\u0010QJ\u000f\u0010S\u001a\u0004\u0018\u00010R¢\u0006\u0004\bS\u0010TJ\u000f\u0010U\u001a\u0004\u0018\u00010R¢\u0006\u0004\bU\u0010TJ\u0011\u0010W\u001a\u0004\u0018\u00010VH\u0007¢\u0006\u0004\bW\u0010XJ\u0019\u0010Z\u001a\u00020\f2\b\u0010Y\u001a\u0004\u0018\u00010VH\u0007¢\u0006\u0004\bZ\u0010[J\r\u0010\\\u001a\u00020\u000f¢\u0006\u0004\b\\\u0010\"J\u0015\u0010^\u001a\u00020\f2\u0006\u0010]\u001a\u00020\u000f¢\u0006\u0004\b^\u0010-J\u000f\u0010_\u001a\u00020\fH\u0014¢\u0006\u0004\b_\u0010`J\u000f\u0010a\u001a\u00020\fH\u0014¢\u0006\u0004\ba\u0010`J\u000f\u0010b\u001a\u00020\fH\u0002¢\u0006\u0004\bb\u0010`J\u0017\u0010d\u001a\u00020\u00062\u0006\u0010c\u001a\u00020\u0006H\u0002¢\u0006\u0004\bd\u0010eJ\u000f\u0010f\u001a\u00020\fH\u0002¢\u0006\u0004\bf\u0010`J\u0017\u0010g\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\bg\u0010\u001aJ'\u0010j\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010h\u001a\u00020'2\u0006\u0010i\u001a\u00020'H\u0002¢\u0006\u0004\bj\u0010kJ'\u0010\u001b\u001a\u00020\f2\u0006\u0010l\u001a\u00020'2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010m\u001a\u00020'H\u0002¢\u0006\u0004\b\u001b\u0010nJ\u000f\u0010o\u001a\u00020\u0006H\u0002¢\u0006\u0004\bo\u0010pJ\u0017\u0010r\u001a\u00020\u00062\u0006\u0010q\u001a\u00020\u0006H\u0002¢\u0006\u0004\br\u0010eJ\u0017\u0010s\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\bs\u0010\u001aJ'\u0010t\u001a\u00020\f2\u0006\u0010l\u001a\u00020'2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010m\u001a\u00020'H\u0002¢\u0006\u0004\bt\u0010nJ\u000f\u0010u\u001a\u00020\u0006H\u0002¢\u0006\u0004\bu\u0010pJ\u000f\u0010v\u001a\u00020\u0006H\u0002¢\u0006\u0004\bv\u0010pJ\u000f\u0010w\u001a\u00020\u0006H\u0002¢\u0006\u0004\bw\u0010pJ\u0017\u0010x\u001a\u00020\f2\u0006\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\bx\u0010yJ\u0017\u0010z\u001a\u00020\f2\u0006\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\bz\u0010yJ\u0017\u0010|\u001a\u00020\f2\u0006\u0010{\u001a\u00020'H\u0002¢\u0006\u0004\b|\u0010*J\u0017\u0010}\u001a\u00020\f2\u0006\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\b}\u0010yJ\u0017\u0010~\u001a\u00020\f2\u0006\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\b~\u0010yJ#\u0010\u0081\u0001\u001a\u00020\f2\u0006\u0010\u007f\u001a\u00020'2\u0007\u0010\u0080\u0001\u001a\u00020'H\u0002¢\u0006\u0006\b\u0081\u0001\u0010\u0082\u0001J#\u0010\u0083\u0001\u001a\u00020\f2\u0006\u0010\u007f\u001a\u00020'2\u0007\u0010\u0080\u0001\u001a\u00020'H\u0002¢\u0006\u0006\b\u0083\u0001\u0010\u0082\u0001J\u0011\u0010\u0084\u0001\u001a\u00020\u000fH\u0002¢\u0006\u0005\b\u0084\u0001\u0010\"J$\u0010\u0087\u0001\u001a\u00020\f2\u0007\u0010\u0085\u0001\u001a\u00020'2\u0007\u0010\u0086\u0001\u001a\u00020'H\u0002¢\u0006\u0006\b\u0087\u0001\u0010\u0082\u0001J$\u0010\u008a\u0001\u001a\u00020\f2\u0007\u0010\u0088\u0001\u001a\u00020'2\u0007\u0010\u0089\u0001\u001a\u00020'H\u0002¢\u0006\u0006\b\u008a\u0001\u0010\u0082\u0001J.\u0010\u008f\u0001\u001a\u00020\f2\u0007\u0010\u008b\u0001\u001a\u00020'2\u0007\u0010\u008c\u0001\u001a\u00020'2\b\u0010\u008e\u0001\u001a\u00030\u008d\u0001H\u0002¢\u0006\u0006\b\u008f\u0001\u0010\u0090\u0001J9\u0010\u0092\u0001\u001a\u00020\f2\u0007\u0010\u008b\u0001\u001a\u00020'2\u0007\u0010\u008c\u0001\u001a\u00020'2\b\u0010\u008e\u0001\u001a\u00030\u008d\u00012\t\b\u0002\u0010\u0091\u0001\u001a\u00020\u000fH\u0002¢\u0006\u0006\b\u0092\u0001\u0010\u0093\u0001J\u001a\u0010\u0094\u0001\u001a\u00020\u00062\u0006\u0010{\u001a\u00020'H\u0002¢\u0006\u0006\b\u0094\u0001\u0010\u0095\u0001J%\u0010\u0097\u0001\u001a\u00030\u0096\u00012\u0007\u0010\u0088\u0001\u001a\u00020'2\u0007\u0010\u0089\u0001\u001a\u00020'H\u0002¢\u0006\u0006\b\u0097\u0001\u0010\u0098\u0001J%\u0010\u0099\u0001\u001a\u00030\u0096\u00012\u0007\u0010\u0085\u0001\u001a\u00020'2\u0007\u0010\u0086\u0001\u001a\u00020'H\u0002¢\u0006\u0006\b\u0099\u0001\u0010\u0098\u0001J\u001a\u0010\u009b\u0001\u001a\u00020\f2\u0007\u0010\u009a\u0001\u001a\u00020'H\u0002¢\u0006\u0005\b\u009b\u0001\u0010*J\u001a\u0010\u009d\u0001\u001a\u00020\f2\u0007\u0010\u009c\u0001\u001a\u00020'H\u0002¢\u0006\u0005\b\u009d\u0001\u0010*J\u0013\u0010\u009e\u0001\u001a\u00030\u0096\u0001H\u0002¢\u0006\u0006\b\u009e\u0001\u0010\u009f\u0001J\u0013\u0010 \u0001\u001a\u00030\u0096\u0001H\u0002¢\u0006\u0006\b \u0001\u0010\u009f\u0001J\u001b\u0010¢\u0001\u001a\u00020'2\u0007\u0010¡\u0001\u001a\u00020'H\u0002¢\u0006\u0006\b¢\u0001\u0010£\u0001J%\u0010¥\u0001\u001a\u00020'2\u0006\u0010(\u001a\u00020'2\t\b\u0002\u0010¤\u0001\u001a\u00020'H\u0002¢\u0006\u0006\b¥\u0001\u0010¦\u0001J\u001b\u0010¨\u0001\u001a\u00020'2\u0007\u0010§\u0001\u001a\u00020'H\u0002¢\u0006\u0006\b¨\u0001\u0010£\u0001J\u001a\u0010©\u0001\u001a\u00020'2\u0006\u0010(\u001a\u00020'H\u0002¢\u0006\u0006\b©\u0001\u0010£\u0001J\u0012\u0010ª\u0001\u001a\u00020'H\u0002¢\u0006\u0006\bª\u0001\u0010«\u0001J\u0012\u0010¬\u0001\u001a\u00020'H\u0002¢\u0006\u0006\b¬\u0001\u0010«\u0001J\u0019\u0010\u00ad\u0001\u001a\u00020\f2\u0006\u0010{\u001a\u00020'H\u0002¢\u0006\u0005\b\u00ad\u0001\u0010*J\u0011\u0010®\u0001\u001a\u00020\u000fH\u0002¢\u0006\u0005\b®\u0001\u0010\"J\u001a\u0010°\u0001\u001a\u00020\f2\u0007\u0010¯\u0001\u001a\u00020\u000fH\u0002¢\u0006\u0005\b°\u0001\u0010-J\u0011\u0010±\u0001\u001a\u00020\fH\u0002¢\u0006\u0005\b±\u0001\u0010`J-\u0010µ\u0001\u001a\u00020\u00062\u0007\u0010²\u0001\u001a\u00020\u00062\u0007\u0010³\u0001\u001a\u00020\u00062\u0007\u0010´\u0001\u001a\u00020'H\u0002¢\u0006\u0006\bµ\u0001\u0010¶\u0001J\u001b\u0010¸\u0001\u001a\u00020\u00062\u0007\u0010·\u0001\u001a\u00020'H\u0002¢\u0006\u0006\b¸\u0001\u0010\u0095\u0001J#\u0010¹\u0001\u001a\u00020\u00062\u0006\u0010>\u001a\u00020=2\u0007\u0010·\u0001\u001a\u00020'H\u0002¢\u0006\u0006\b¹\u0001\u0010º\u0001J%\u0010¼\u0001\u001a\u00020\f2\u0007\u0010»\u0001\u001a\u00020\u00062\b\u0010\u008e\u0001\u001a\u00030\u008d\u0001H\u0002¢\u0006\u0006\b¼\u0001\u0010½\u0001J\u0011\u0010¾\u0001\u001a\u00020\fH\u0002¢\u0006\u0005\b¾\u0001\u0010`J\u0019\u0010¿\u0001\u001a\u00020\f2\u0006\u0010O\u001a\u00020NH\u0002¢\u0006\u0005\b¿\u0001\u0010QJ\u0011\u0010À\u0001\u001a\u00020\u0006H\u0002¢\u0006\u0005\bÀ\u0001\u0010pJ\u001d\u0010Â\u0001\u001a\u00020R2\t\b\u0001\u0010Á\u0001\u001a\u00020\u0006H\u0002¢\u0006\u0006\bÂ\u0001\u0010Ã\u0001J\u0013\u0010Å\u0001\u001a\u00030Ä\u0001H\u0002¢\u0006\u0006\bÅ\u0001\u0010Æ\u0001J\u0013\u0010Ç\u0001\u001a\u00030Ä\u0001H\u0002¢\u0006\u0006\bÇ\u0001\u0010Æ\u0001J\u0011\u0010È\u0001\u001a\u00020\fH\u0002¢\u0006\u0005\bÈ\u0001\u0010`R\u0016\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÉ\u0001\u0010Ê\u0001R)\u0010Î\u0001\u001a\u00020'2\u0007\u0010Ë\u0001\u001a\u00020'8\u0006@BX\u0086\u000e¢\u0006\u000f\n\u0005\bÌ\u0001\u0010b\u001a\u0006\bÍ\u0001\u0010«\u0001R)\u0010Ñ\u0001\u001a\u00020'2\u0007\u0010Ë\u0001\u001a\u00020'8\u0006@BX\u0086\u000e¢\u0006\u000f\n\u0005\bÏ\u0001\u0010b\u001a\u0006\bÐ\u0001\u0010«\u0001R\u0018\u0010Ó\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bÒ\u0001\u0010bR\u0018\u0010Õ\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bÔ\u0001\u0010bR\u0018\u0010×\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bÖ\u0001\u0010bR\u0017\u0010Ø\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010bR\u0018\u0010Ú\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bÙ\u0001\u0010bR\u0018\u0010Û\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bµ\u0001\u0010bR\u0018\u0010Ü\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¢\u0001\u0010bR\u0018\u0010Ý\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¨\u0001\u0010bR\u0018\u0010Þ\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b®\u0001\u0010bR\u0018\u0010ß\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0099\u0001\u0010bR\u0018\u0010á\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bà\u0001\u0010bR\u0018\u0010â\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u009e\u0001\u0010bR\u0018\u0010ã\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b \u0001\u0010bR\u0018\u0010å\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bä\u0001\u0010bR\u0018\u0010æ\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0097\u0001\u0010bR\u0018\u0010è\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bç\u0001\u0010bR\u0019\u0010é\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bª\u0001\u0010\u009d\u0001R\u0017\u0010ê\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010bR\u0017\u0010ë\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010bR\u0017\u0010ì\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bj\u0010bR\u0017\u0010í\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010bR\u0018\u0010î\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¾\u0001\u0010bR\u0018\u0010ï\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bÅ\u0001\u0010bR\u0018\u0010ð\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bÂ\u0001\u0010bR\u0018\u0010ñ\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bÇ\u0001\u0010bR\u0017\u0010ò\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010bR\u0017\u0010ó\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010bR\u0017\u0010ô\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010bR\u0018\u0010ö\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bõ\u0001\u0010bR\u0018\u0010ø\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b÷\u0001\u0010bR\u0018\u0010ù\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b°\u0001\u0010bR\u0017\u0010ú\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010bR\u0017\u0010û\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b}\u0010bR\u0017\u0010ü\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010bR\u0018\u0010þ\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bý\u0001\u0010bR\u0017\u0010ÿ\u0001\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010bR\u0018\u0010\u0080\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bx\u0010\u009d\u0001R\u0018\u0010\u0081\u0002\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bÈ\u0001\u0010bR\u0019\u0010\u0082\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¥\u0001\u0010°\u0001R\u0019\u0010\u0083\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b±\u0001\u0010°\u0001R\u0019\u0010\u0084\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0094\u0001\u0010°\u0001R\u0019\u0010\u0085\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¸\u0001\u0010°\u0001R\u0019\u0010\u0086\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¹\u0001\u0010°\u0001R\u0018\u0010\u0087\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bf\u0010°\u0001R\u0018\u0010\u0088\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bt\u0010°\u0001R\u0019\u0010\u008a\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0089\u0002\u0010\u009d\u0001R\u0019\u0010\u008b\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0083\u0001\u0010°\u0001R\u0019\u0010\u008c\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¼\u0001\u0010°\u0001R\u0019\u0010\u008e\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008d\u0002\u0010°\u0001R\u0019\u0010\u008f\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u009d\u0001R\u0019\u0010\u0090\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0092\u0001\u0010\u009d\u0001R\u0019\u0010\u0092\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0091\u0002\u0010\u009d\u0001R\u0019\u0010\u0093\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u009d\u0001R\u0018\u0010\u0096\u0002\u001a\u00030\u0094\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008a\u0001\u0010\u0095\u0002R\u0018\u0010\u0097\u0002\u001a\u00030\u0094\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0081\u0001\u0010\u0095\u0002R\u001c\u0010\u009a\u0002\u001a\u0005\u0018\u00010\u0096\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0098\u0002\u0010\u0099\u0002R\u001c\u0010\u009b\u0002\u001a\u0005\u0018\u00010\u0096\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¬\u0001\u0010\u0099\u0002R\u001c\u0010\u009c\u0002\u001a\u0005\u0018\u00010\u0096\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÀ\u0001\u0010\u0099\u0002R\u001b\u0010\u009e\u0002\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b©\u0001\u0010\u009d\u0002R\u0018\u0010\u009f\u0002\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u00ad\u0001\u0010bR\u0018\u0010¢\u0002\u001a\u00030 \u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0084\u0001\u0010¡\u0002R\u0018\u0010£\u0002\u001a\u00030 \u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¿\u0001\u0010¡\u0002R\u001b\u0010¦\u0002\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¤\u0002\u0010¥\u0002R\u001b\u0010©\u0002\u001a\u0004\u0018\u00010R8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b§\u0002\u0010¨\u0002R\u001b\u0010«\u0002\u001a\u0004\u0018\u00010R8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bª\u0002\u0010¨\u0002R)\u0010°\u0002\u001a\u0004\u0018\u00010V8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0006\b¬\u0002\u0010\u00ad\u0002\u001a\u0005\b®\u0002\u0010X\"\u0005\b¯\u0002\u0010[R\u001c\u0010´\u0002\u001a\u0005\u0018\u00010±\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b²\u0002\u0010³\u0002R\u0019\u0010¶\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bµ\u0002\u0010°\u0001R\u0019\u0010¸\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b·\u0002\u0010°\u0001R\u0019\u0010º\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¹\u0002\u0010°\u0001R\u0018\u0010¾\u0002\u001a\u00030»\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¼\u0002\u0010½\u0002R'\u0010Â\u0002\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0006\b¿\u0002\u0010\u009d\u0001\u001a\u0005\bÀ\u0002\u0010\"\"\u0005\bÁ\u0002\u0010-R'\u0010Ä\u0002\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0006\bÃ\u0002\u0010\u009d\u0001\u001a\u0005\bÄ\u0002\u0010\"\"\u0005\bÅ\u0002\u0010-R\u0019\u0010Ç\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÆ\u0002\u0010°\u0001R\u0019\u0010É\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÈ\u0002\u0010°\u0001R\u0019\u0010Ë\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÊ\u0002\u0010°\u0001R\u0019\u0010Í\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÌ\u0002\u0010°\u0001R\u0018\u0010Ñ\u0002\u001a\u00030Î\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÏ\u0002\u0010Ð\u0002R\u0019\u0010Ó\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÒ\u0002\u0010\u009d\u0001R\u0019\u0010Õ\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÔ\u0002\u0010\u009d\u0001R\u0019\u0010×\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÖ\u0002\u0010°\u0001R\u0019\u0010Ù\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bØ\u0002\u0010°\u0001R\u001c\u0010Ý\u0002\u001a\u0005\u0018\u00010Ú\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÛ\u0002\u0010Ü\u0002R\u001b\u0010à\u0002\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÞ\u0002\u0010ß\u0002R\u001b\u0010â\u0002\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bá\u0002\u0010ß\u0002R\u0018\u0010æ\u0002\u001a\u00030ã\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\bä\u0002\u0010å\u0002R\u0019\u0010è\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bç\u0002\u0010\u009d\u0001R\u0019\u0010ê\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bé\u0002\u0010°\u0001R\u001c\u0010ì\u0002\u001a\u0005\u0018\u00010\u0096\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bë\u0002\u0010\u0099\u0002R\u001c\u0010î\u0002\u001a\u0005\u0018\u00010\u0096\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bí\u0002\u0010\u0099\u0002R\u001b\u0010ð\u0002\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bï\u0002\u0010ß\u0002R\u001b\u0010ò\u0002\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bñ\u0002\u0010ß\u0002R\u0017\u0010ô\u0002\u001a\u00020=8\u0002X\u0082\u0004¢\u0006\b\n\u0006\bó\u0002\u0010ß\u0002R\u001b\u0010ö\u0002\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bõ\u0002\u0010ß\u0002R\u0019\u0010ù\u0002\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b÷\u0002\u0010ø\u0002R\u0019\u0010û\u0002\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bú\u0002\u0010\u009d\u0001R\u0019\u0010ý\u0002\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bü\u0002\u0010°\u0001R\u001c\u0010ÿ\u0002\u001a\u0005\u0018\u00010\u0096\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bþ\u0002\u0010\u0099\u0002R\u0018\u0010\u0081\u0003\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0080\u0003\u0010bR\u001c\u0010\u0085\u0003\u001a\u0005\u0018\u00010\u0082\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0083\u0003\u0010\u0084\u0003R\u0012\u0010(\u001a\u00020\u00068F¢\u0006\u0007\u001a\u0005\b\u0086\u0003\u0010pR\u0014\u0010\u0088\u0003\u001a\u00020'8F¢\u0006\b\u001a\u0006\b\u0087\u0003\u0010«\u0001R\u0014\u0010\u008b\u0003\u001a\u00020N8F¢\u0006\b\u001a\u0006\b\u0089\u0003\u0010\u008a\u0003R\u0016\u0010\u008d\u0003\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u008c\u0003\u0010pR\u0017\u0010\u008f\u0003\u001a\u00020'8BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u008e\u0003\u0010«\u0001R\u0016\u0010\u0090\u0003\u001a\u00020\u000f8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\bõ\u0001\u0010\"¨\u0006\u0093\u0003"}, d2 = {"Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;", "Landroid/view/View;", "Landroid/content/Context;", "mContext", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "widthMeasureSpec", "heightMeasureSpec", "Lzfb;", "onMeasure", "(II)V", "", "changed", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "onLayout", "(ZIIII)V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "w", CmcdData.STREAMING_FORMAT_HLS, "oldw", "oldh", "onSizeChanged", "(IIII)V", "performClick", "()Z", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "onTouchEvent", "(Landroid/view/MotionEvent;)Z", "", "progress", "setProgress", "(F)V", "isForceProgress", "setForceProgress", "(Z)V", "Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;", "getOnProgressChangedListener", "()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;", "listener", "setOnProgressChangedListener", "(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;)V", "trackColor", "setTrackColor", "(I)V", "secondTrackColor", "setSecondTrackColor", "", "positions", "setGradientPositions", "([F)V", "", "colors", "setTrackGradient", "([I)V", "targetColors", "startTrackGradientAnimation", "thumbInsideUnAbleColorHios", "setThumbInsideUnAbleColorHios", "Landroid/os/Parcelable;", "onSaveInstanceState", "()Landroid/os/Parcelable;", ICode.CALL.CALL_KEY_STATE, "onRestoreInstanceState", "(Landroid/os/Parcelable;)V", "thumbColor", "setThumbOutColor", "setThumbInsideColor", "Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;", "builder", "config", "(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;)V", "Landroid/widget/ImageView;", "getLeftIcon", "()Landroid/widget/ImageView;", "getRightIcon", "Landroid/graphics/drawable/Drawable;", "getThumb", "()Landroid/graphics/drawable/Drawable;", "drawable", "setThumb", "(Landroid/graphics/drawable/Drawable;)V", "isHiOSStyle", "vibrateAble", "setVibrateAble", "onDetachedFromWindow", "()V", "onAttachedToWindow", "F", "height", ExifInterface.LONGITUDE_EAST, "(I)I", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "v", "centerX", "centerY", "x", "(Landroid/graphics/Canvas;FF)V", "xRight", "yTop", "(FLandroid/graphics/Canvas;F)V", "getDotColor", "()I", "thumbInsideColor", "D", "y", ExifInterface.LONGITUDE_WEST, "getSecondTrackColor", "getThumbOutColor", "getThumbInSideColor", "O", "(Landroid/view/MotionEvent;)V", "N", "thumbCenterX", "L", "K", "J", "fromValue", "toValue", "j0", "(FF)V", "b0", "p0", "fromScal", "toScal", "h0", "fromThumbHalfLen", "toThumbHalfLen", "i0", "fromCenterx", "toCenterX", "", "duration", "e0", "(FFJ)V", "fromUpEvent", "f0", "(FFJZ)V", ExifInterface.LATITUDE_SOUTH, "(F)I", "Landroid/animation/ValueAnimator;", "s", "(FF)Landroid/animation/ValueAnimator;", "n", "toAlpha", "X", "toScale", "Z", TtmlNode.TAG_P, "()Landroid/animation/ValueAnimator;", "q", "touchedX", "k", "(F)F", "leftBase", "Q", "(FF)F", "thumbcenterX", CmcdData.STREAM_TYPE_LIVE, "n0", "u", "()F", "l0", "o0", CmcdData.OBJECT_TYPE_MANIFEST, "fromUser", "I", "R", "startColor", "endColor", Progress.FRACTION, "j", "(IIF)I", "progress01", "T", "U", "([IF)I", "targetColor", "c0", "(IJ)V", "z", "q0", "m0", "icon", "B", "(I)Landroid/widget/ImageView;", "Landroid/view/ViewGroup$LayoutParams;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "()Landroid/view/ViewGroup$LayoutParams;", "C", "P", "b", "Landroid/content/Context;", "<set-?>", "c", "getMin", "min", "d", "getMax", "max", "e", "mProgress", "f", "mSourceTrackWidth", GslbInterceptor.HEADER_KEY_GSLB, "mSourceSecondTTrackWidth", "mCurrentSourceTrackWidth", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "mCurrentSourceSecondTTrackWidth", "mTrackWidthMax", "mDelta", "mThumbCenterX", "mThumbCenterY", "mTrackLength", "o", "mPreThumbCenterX", "mLeft", "mRight", "r", "mTouchXDown", "mTouchXMove", "t", TypedValues.CycleType.S_WAVE_OFFSET, "mIsForceStopCalculate", "mThumbStokeWidth", "mSourceThumbInHalfWidth", "mMaxThumbInHalfWidth", "mSourceThumbInHalfHeight", "mCurrentThumbInHalfWidth", "mCurrentThumbInScal", "mCurrentThumbOutScal", "mMaxThumbInScal", "mThumbHalfWidth", "mCurrentThumbHalfWidth", "mCurrentScaleFactor", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "mFromScaleFactor", "H", "mMaxThumbStokeScal", "mFromThumbCenterX", "mToThumbCenterX", "mFromThumbHalfLen", "mCenterThumbHalfLen", "M", "mToThumbHalfLen", "mFromTrackWidth", "mFromUpEvent", "mTouchThumbX", "mTrackColor", "mSecondTrackColor", "mThumbInsideUnAbleColorHios", "mThumbOutColor", "mThumbInsideColor", "mThumbInsideColorAlpha", "mThumbScalType", "a0", "isThumbOnDragging", "mSecondTrackColorDisable", "mThumbOutColorDisable", "d0", "mThumbInsideColorDisable", "isTouchOnThumb", "isCenterXAnimation", "g0", "isEnterActionMove", "isTouchMove", "Luua;", "Luua;", "mThumbWidthTrackAnimator", "mThumbCenterXTrackAnimator", "k0", "Landroid/animation/ValueAnimator;", "mThumbWidthAnimator", "mThumbInScalAnimator", "mThumbIntervalAnimator", "Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;", "onProgressChangedListener", "mLastCallbackProgress", "Landroid/graphics/Paint;", "Landroid/graphics/Paint;", "mPaint", "mThumbPaint", "r0", "Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;", "mOSSeekBarBuilder", "s0", "Landroid/widget/ImageView;", "mLeftIcon", "t0", "mRightIcon", "u0", "Landroid/graphics/drawable/Drawable;", "getThumbDrawable", "setThumbDrawable", "thumbDrawable", "La67;", "v0", "La67;", "mLiquidDrawable", "w0", "mLiquidWidth", "x0", "mLiquidHeight", "y0", "mLiquidRadius", "Landroid/graphics/drawable/GradientDrawable;", "z0", "Landroid/graphics/drawable/GradientDrawable;", "mWhiteBackDrawable", "A0", "getOnlyHiOSStyle", "setOnlyHiOSStyle", "onlyHiOSStyle", "B0", "isNoThumb", "setNoThumb", "C0", "mDotsSize", "D0", "mDotsColor", "E0", "mDotsSelectedColor", "F0", "mDotsSelectedColorDisable", "Ljava/lang/Runnable;", "G0", "Ljava/lang/Runnable;", "mVibrateRunnable", "H0", "mVibrateAble", "I0", "mShowMiddlePoint", "J0", "mShowMiddlePointPercent", "K0", "mCalculateVibrateProgress", "Landroid/graphics/LinearGradient;", "L0", "Landroid/graphics/LinearGradient;", "mSecondTrackGradient", "M0", "[I", "mSecondTrackGradientColors", "N0", "mSecondTrackCacheColors", "Landroid/graphics/Matrix;", "O0", "Landroid/graphics/Matrix;", "mSecondTrackMatrix", "P0", "mThumbOutColorExplicit", "Q0", "mThumbOutColorBeforeGradient", "R0", "mTrackGradientAnimator", "S0", "mThumbColorAnimator", "T0", "mAnimStartColors", "U0", "mAnimTargetColors", "V0", "mAnimInterpolatedColors", "W0", "mThumbTargetColors", "X0", "[F", "mGradientPositions", "Y0", "mTrackGradientActive", "Z0", "mGradientAnimToken", "a1", "mAlphaAnimator", "b1", "mCurrentAlpha", "Ljv9;", "c1", "Ljv9;", "mSpringAnimation", "getProgress", "getProgressFloat", "progressFloat", "getConfigBuilder", "()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$b;", "configBuilder", "getContentHeight", "contentHeight", "getThumbHalfSizeOnTouchDown", "thumbHalfSizeOnTouchDown", "isThumbIntervalAnimationRun", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "widgetsLib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class OSSeekbar extends View {

    public static final Companion INSTANCE = new Companion(null);
    public static final String d1 = OSSeekbar.class.getSimpleName();
    public static final int e1 = 250;
    public static final int f1 = 200;
    public static final int g1 = 250;

    public float mCurrentThumbInScal;

    public boolean onlyHiOSStyle;

    public float mCurrentThumbOutScal;

    public boolean isNoThumb;

    public float mMaxThumbInScal;

    public int mDotsSize;

    public float mThumbHalfWidth;

    public int mDotsColor;

    public float mCurrentThumbHalfWidth;

    public int mDotsSelectedColor;

    public float mCurrentScaleFactor;

    public int mDotsSelectedColorDisable;

    public float mFromScaleFactor;

    public final Runnable mVibrateRunnable;

    public float mMaxThumbStokeScal;

    public boolean mVibrateAble;

    public float mFromThumbCenterX;

    public boolean mShowMiddlePoint;

    public float mToThumbCenterX;

    public int mShowMiddlePointPercent;

    public float mFromThumbHalfLen;

    public int mCalculateVibrateProgress;

    public float mCenterThumbHalfLen;

    public LinearGradient mSecondTrackGradient;

    public float mToThumbHalfLen;

    public int[] mSecondTrackGradientColors;

    public float mFromTrackWidth;

    public int[] mSecondTrackCacheColors;

    public boolean mFromUpEvent;

    public final Matrix mSecondTrackMatrix;

    public float mTouchThumbX;

    public boolean mThumbOutColorExplicit;

    public int mTrackColor;

    public int mThumbOutColorBeforeGradient;

    public int mSecondTrackColor;

    public ValueAnimator mTrackGradientAnimator;

    public int mThumbInsideUnAbleColorHios;

    public ValueAnimator mThumbColorAnimator;

    public int mThumbOutColor;

    public int[] mAnimStartColors;

    public int mThumbInsideColor;

    public int[] mAnimTargetColors;

    public int mThumbInsideColorAlpha;

    public final int[] mAnimInterpolatedColors;

    public int mThumbScalType;

    public int[] mThumbTargetColors;

    public float[] mGradientPositions;

    public boolean mTrackGradientActive;

    public int mGradientAnimToken;

    public boolean isThumbOnDragging;

    public ValueAnimator mAlphaAnimator;

    public final Context mContext;

    public int mSecondTrackColorDisable;

    public float mCurrentAlpha;

    public float min;

    public int mThumbOutColorDisable;

    public jv9 mSpringAnimation;

    public float max;

    public int mThumbInsideColorDisable;

    public float mProgress;

    public boolean isTouchOnThumb;

    public float mSourceTrackWidth;

    public boolean isCenterXAnimation;

    public float mSourceSecondTTrackWidth;

    public boolean isEnterActionMove;

    public float mCurrentSourceTrackWidth;

    public boolean isTouchMove;

    public float mCurrentSourceSecondTTrackWidth;

    public final uua mThumbWidthTrackAnimator;

    public float mTrackWidthMax;

    public final uua mThumbCenterXTrackAnimator;

    public float mDelta;

    public ValueAnimator mThumbWidthAnimator;

    public float mThumbCenterX;

    public ValueAnimator mThumbInScalAnimator;

    public float mThumbCenterY;

    public ValueAnimator mThumbIntervalAnimator;

    public float mTrackLength;

    public c onProgressChangedListener;

    public float mPreThumbCenterX;

    public float mLastCallbackProgress;

    public float mLeft;

    public final Paint mPaint;

    public float mRight;

    public final Paint mThumbPaint;

    public float mTouchXDown;

    public b mOSSeekBarBuilder;

    public float mTouchXMove;

    public ImageView mLeftIcon;

    public float offset;

    public ImageView mRightIcon;

    public boolean mIsForceStopCalculate;

    public Drawable thumbDrawable;

    public float mThumbStokeWidth;

    public a67 mLiquidDrawable;

    public float mSourceThumbInHalfWidth;

    public int mLiquidWidth;

    public float mMaxThumbInHalfWidth;

    public int mLiquidHeight;

    public float mSourceThumbInHalfHeight;

    public int mLiquidRadius;

    public float mCurrentThumbInHalfWidth;

    public final GradientDrawable mWhiteBackDrawable;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a(int i) {
            return (int) TypedValue.applyDimension(1, i, Resources.getSystem().getDisplayMetrics());
        }

        public Companion() {
        }
    }

    public static final class b {
        public int A;
        public boolean B;
        public int[] C;
        public float[] D;
        public WeakReference E;
        public final OSSeekbar a;
        public int b;
        public float c;
        public float d;
        public float e;
        public int f;
        public int g;
        public int h;
        public int i;
        public int j;
        public int k;
        public int l;
        public int m;
        public int n;
        public int o;
        public float p;
        public float q;
        public float r;
        public int s;
        public int t;
        public int u;
        public int v;
        public int w;
        public int x;
        public int y;
        public int z;

        public b(OSSeekbar oSSeekbar) {
            this.a = oSSeekbar;
            if (oSSeekbar != null) {
                this.E = new WeakReference(oSSeekbar);
                this.c = 0.0f;
                this.d = 100.0f;
                this.e = 0.0f;
                if (oSSeekbar.getOnlyHiOSStyle()) {
                    c();
                    return;
                }
                int i = R.attr.os_seekbar_track_width;
                Companion companion = OSSeekbar.INSTANCE;
                this.f = olb.n(i, companion.a(3), oSSeekbar.mContext);
                this.g = olb.n(R.attr.os_seekbar_second_track_width, companion.a(3), oSSeekbar.mContext);
                this.h = olb.n(R.attr.os_seekbar_t_track_width, companion.a(3), oSSeekbar.mContext);
                this.i = olb.m(oSSeekbar.mContext, R.attr.os_opacityfill_weaker, R.color.os_opacityfill_weaker_hios);
                Context context = oSSeekbar.mContext;
                int i2 = R.attr.os_platform_basic_color;
                int i3 = R.color.os_platform_basic_color_hios;
                this.j = olb.m(context, i2, i3);
                this.k = olb.m(oSSeekbar.mContext, i2, i3);
                this.l = olb.m(oSSeekbar.mContext, R.attr.os_seekbar_section_thumb_in_color, R.color.os_color_white100);
                this.m = olb.n(R.attr.os_seekbar_thumb_in_width, companion.a(8), oSSeekbar.mContext);
                this.n = olb.n(R.attr.os_seekbar_thumb_out_width, companion.a(14), oSSeekbar.mContext);
                this.o = companion.a(20);
                this.p = 1.25f;
                this.q = 1.142857f;
                int iM = olb.m(oSSeekbar.mContext, R.attr.os_brand_disabled, R.color.os_brand_disabled_hios);
                this.s = iM;
                this.t = iM;
                this.u = olb.m(oSSeekbar.mContext, R.attr.os_seekbar_thumb_in_disable_color, R.color.os_layer_low_hios);
                b(oSSeekbar);
                this.v = olb.n(R.attr.os_seekbar_section_dot_size, OSSectionSeekbar.INSTANCE.a(6), oSSeekbar.mContext);
                Context context2 = oSSeekbar.mContext;
                int i4 = R.attr.os_grayfill_strong;
                int i5 = R.color.os_grayfill_strong_hios;
                this.w = olb.m(context2, i4, i5);
                this.x = olb.c ? oSSeekbar.mContext.getResources().getColor(R.color.os_color_white30, oSSeekbar.mContext.getTheme()) : oSSeekbar.m0();
                this.y = olb.m(oSSeekbar.mContext, R.attr.os_seekbar_section_dot_disable_color, i5);
            }
        }

        public final void a() {
            WeakReference weakReference = this.E;
            y45.g(weakReference);
            if (weakReference.get() != null) {
                WeakReference weakReference2 = this.E;
                y45.g(weakReference2);
                Object obj = weakReference2.get();
                y45.g(obj);
                ((OSSeekbar) obj).config(this);
            }
        }

        public final void b(OSSeekbar oSSeekbar) {
            this.r = oSSeekbar.getContext().getResources().getDimensionPixelOffset(R.dimen.os_dimen_seekbar_thumb_out_width_hios);
        }

        public final b c() {
            if (this.a != null) {
                this.E = new WeakReference(this.a);
                this.c = 0.0f;
                this.d = 100.0f;
                this.e = 0.0f;
                ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(this.a.mContext, R.style.OS_Theme_Material_hios);
                Context context = this.a.mContext;
                int i = R.attr.os_seekbar_track_width;
                Companion companion = OSSeekbar.INSTANCE;
                this.f = olb.n(i, companion.a(3), contextThemeWrapper);
                this.g = olb.n(R.attr.os_seekbar_second_track_width, companion.a(3), contextThemeWrapper);
                this.h = olb.n(R.attr.os_seekbar_t_track_width, companion.a(3), contextThemeWrapper);
                this.i = olb.m(context, R.attr.os_opacityfill_weaker, R.color.os_opacityfill_weaker_hios);
                int i2 = R.attr.os_platform_basic_color;
                int i3 = R.color.os_platform_basic_color_hios;
                this.j = olb.m(context, i2, i3);
                this.k = olb.m(context, i2, i3);
                this.l = olb.m(contextThemeWrapper, R.attr.os_seekbar_section_thumb_in_color, R.color.os_color_white100);
                this.m = olb.n(R.attr.os_seekbar_thumb_in_width, companion.a(8), contextThemeWrapper);
                this.n = olb.n(R.attr.os_seekbar_thumb_out_width, companion.a(14), contextThemeWrapper);
                this.o = companion.a(20);
                int iM = olb.m(context, R.attr.os_brand_disabled, R.color.os_brand_disabled_hios);
                this.s = iM;
                this.t = iM;
                this.u = olb.m(contextThemeWrapper, R.attr.os_seekbar_thumb_in_disable_color, R.color.os_layer_low_hios);
            }
            return this;
        }

        public final int getDotsColor() {
            return this.w;
        }

        public final int getDotsSelectedColor() {
            return this.x;
        }

        public final int getDotsSelectedColorDisable() {
            return this.y;
        }

        public final int getDotsSize() {
            return this.v;
        }

        public final float[] getGradientPositions() {
            return this.D;
        }

        public final int getLeftIcon() {
            return this.z;
        }

        public final float getMax() {
            return this.d;
        }

        public final float getMin() {
            return this.c;
        }

        public final OSSeekbar getOsWideSeekbarNew() {
            return this.a;
        }

        public final float getProgress() {
            return this.e;
        }

        public final int getRightIcon() {
            return this.A;
        }

        public final int getSecondTrackColor() {
            return this.j;
        }

        public final int getSecondTrackColorDisable() {
            return this.s;
        }

        public final int[] getSecondTrackGradientColors() {
            return this.C;
        }

        public final int getSecondTrackWidth() {
            return this.g;
        }

        public final boolean getShowMiddlePoint() {
            return this.B;
        }

        public final float getThumbHeightHios() {
            return this.r;
        }

        public final float getThumbInMaxScal() {
            return this.p;
        }

        public final int getThumbInMaxWidth() {
            return this.o;
        }

        public final int getThumbInWidth() {
            return this.m;
        }

        public final int getThumbInsideColor() {
            return this.l;
        }

        public final int getThumbInsideColorDisable() {
            return this.u;
        }

        public final int getThumbInsideUnAbleColorHios() {
            return this.b;
        }

        public final int getThumbOutColor() {
            return this.k;
        }

        public final int getThumbOutColorDisable() {
            return this.t;
        }

        public final float getThumbOutMaxScal() {
            return this.q;
        }

        public final int getThumbOutWidth() {
            return this.n;
        }

        public final int getTrackColor() {
            return this.i;
        }

        public final int getTrackWidth() {
            return this.f;
        }

        public final int getTrackWidthMax() {
            return this.h;
        }

        public final void setDotsColor(int i) {
            this.w = i;
        }

        public final void setDotsSelectedColor(int i) {
            this.x = i;
        }

        public final void setDotsSelectedColorDisable(int i) {
            this.y = i;
        }

        public final void setDotsSize(int i) {
            this.v = i;
        }

        public final void setGradientPositions(float[] fArr) {
            this.D = fArr;
        }

        public final void setLeftIcon(int i) {
            this.z = i;
        }

        public final void setMax(float f) {
            this.d = f;
        }

        public final void setMin(float f) {
            this.c = f;
        }

        public final void setProgress(float f) {
            this.e = f;
        }

        public final void setRightIcon(int i) {
            this.A = i;
        }

        public final void setSecondTrackColor(int i) {
            this.j = i;
        }

        public final void setSecondTrackColorDisable(int i) {
            this.s = i;
        }

        public final void setSecondTrackGradientColors(int[] iArr) {
            this.C = iArr;
        }

        public final void setSecondTrackWidth(int i) {
            this.g = i;
        }

        public final void setShowMiddlePoint(boolean z) {
            this.B = z;
        }

        public final void setThumbHeightHios(float f) {
            this.r = f;
        }

        public final void setThumbInMaxScal(float f) {
            this.p = f;
        }

        public final void setThumbInMaxWidth(int i) {
            this.o = i;
        }

        public final void setThumbInWidth(int i) {
            this.m = i;
        }

        public final void setThumbInsideColor(int i) {
            this.l = i;
        }

        public final void setThumbInsideColorDisable(int i) {
            this.u = i;
        }

        public final void setThumbInsideUnAbleColorHios(int i) {
            this.b = i;
        }

        public final void setThumbOutColor(int i) {
            this.k = i;
        }

        public final void setThumbOutColorDisable(int i) {
            this.t = i;
        }

        public final void setThumbOutMaxScal(float f) {
            this.q = f;
        }

        public final void setThumbOutWidth(int i) {
            this.n = i;
        }

        public final void setTrackColor(int i) {
            this.i = i;
        }

        public final void setTrackWidth(int i) {
            this.f = i;
        }

        public final void setTrackWidthMax(int i) {
            this.h = i;
        }
    }

    public interface c {
        void onProgressChanged(OSSeekbar oSSeekbar, int i, float f, boolean z);

        void onStartTrackingTouch(OSSeekbar oSSeekbar);

        void onStopTrackingTouch(OSSeekbar oSSeekbar);
    }

    public static final class d implements ValueAnimator.AnimatorUpdateListener {
        public d() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            y45.j(valueAnimator, "animation");
            Object animatedValue = valueAnimator.getAnimatedValue();
            y45.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
            float fFloatValue = ((Float) animatedValue).floatValue();
            OSSeekbar oSSeekbar = OSSeekbar.this;
            oSSeekbar.mThumbCenterX = oSSeekbar.mFromThumbCenterX + ((OSSeekbar.this.mToThumbCenterX - OSSeekbar.this.mFromThumbCenterX) * fFloatValue);
            OSSeekbar oSSeekbar2 = OSSeekbar.this;
            oSSeekbar2.mProgress = oSSeekbar2.l(oSSeekbar2.mThumbCenterX);
            OSSeekbar.this.I(true);
            OSSeekbar oSSeekbar3 = OSSeekbar.this;
            oSSeekbar3.mCurrentThumbInHalfWidth = fFloatValue <= 0.5f ? oSSeekbar3.mFromThumbHalfLen + (fFloatValue * 2 * (OSSeekbar.this.mCenterThumbHalfLen - OSSeekbar.this.mFromThumbHalfLen)) : oSSeekbar3.mCenterThumbHalfLen + ((fFloatValue - 0.5f) * 2 * (OSSeekbar.this.mToThumbHalfLen - OSSeekbar.this.mCenterThumbHalfLen));
            OSSeekbar.this.invalidate();
        }
    }

    public static final class e implements Animator.AnimatorListener {
        public e() {
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            y45.j(animator, "animation");
            OSSeekbar.this.isCenterXAnimation = false;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animation");
            OSSeekbar.this.isCenterXAnimation = false;
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
            y45.j(animator, "animation");
            OSSeekbar.this.isCenterXAnimation = true;
        }

        @Override
        public void onAnimationStart(Animator animator) {
            y45.j(animator, "animation");
            OSSeekbar.this.isCenterXAnimation = true;
        }
    }

    public static final class f implements Animator.AnimatorListener {
        public f() {
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            y45.j(animator, "animation");
            OSSeekbar.this.isCenterXAnimation = false;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animation");
            OSSeekbar.this.isCenterXAnimation = false;
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
            y45.j(animator, "animation");
            OSSeekbar.this.isCenterXAnimation = true;
        }

        @Override
        public void onAnimationStart(Animator animator) {
            y45.j(animator, "animation");
            OSSeekbar.this.isCenterXAnimation = true;
        }
    }

    public static final class g implements Animator.AnimatorListener {
        public final int c;

        public g(int i) {
            this.c = i;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            y45.j(animator, "animation");
            OSSeekbar.this.mThumbColorAnimator = null;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animation");
            OSSeekbar.this.mThumbColorAnimator = null;
            OSSeekbar.this.mThumbOutColor = this.c;
            OSSeekbar.this.invalidate();
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
            y45.j(animator, "animation");
        }

        @Override
        public void onAnimationStart(Animator animator) {
            y45.j(animator, "animation");
        }
    }

    public static final class h implements Animator.AnimatorListener {
        public final int b;
        public final OSSeekbar c;
        public final boolean d;
        public final int[] e;

        public h(int i, OSSeekbar oSSeekbar, boolean z, int[] iArr) {
            this.b = i;
            this.c = oSSeekbar;
            this.d = z;
            this.e = iArr;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            y45.j(animator, "animation");
            if (this.b != this.c.mGradientAnimToken) {
                return;
            }
            this.c.mAnimStartColors = null;
            this.c.mAnimTargetColors = null;
            this.c.mTrackGradientActive = this.d;
            if (!this.d) {
                this.c.mThumbTargetColors = null;
            } else if (this.c.m()) {
                OSSeekbar oSSeekbar = this.c;
                oSSeekbar.mThumbOutColor = oSSeekbar.U(this.e, oSSeekbar.l0());
            }
            this.c.invalidate();
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animation");
            if (this.b != this.c.mGradientAnimToken) {
                return;
            }
            OSSeekbar oSSeekbar = this.c;
            oSSeekbar.mSecondTrackGradientColors = oSSeekbar.mAnimTargetColors;
            this.c.mSecondTrackGradient = null;
            this.c.mTrackGradientActive = this.d;
            if (!this.d) {
                this.c.mThumbTargetColors = null;
            } else if (this.c.m()) {
                OSSeekbar oSSeekbar2 = this.c;
                oSSeekbar2.mThumbOutColor = oSSeekbar2.U(this.e, oSSeekbar2.l0());
            }
            this.c.mAnimStartColors = null;
            this.c.mAnimTargetColors = null;
            this.c.invalidate();
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
            y45.j(animator, "animation");
        }

        @Override
        public void onAnimationStart(Animator animator) {
            y45.j(animator, "animation");
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSSeekbar(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "mContext");
    }

    public static final void H(OSSeekbar oSSeekbar) {
        y45.j(oSSeekbar, "this$0");
        vob.c(oSSeekbar.mContext);
    }

    public static final void M(OSSeekbar oSSeekbar) {
        y45.j(oSSeekbar, "this$0");
        oSSeekbar.requestLayout();
    }

    public static final void Y(OSSeekbar oSSeekbar, ValueAnimator valueAnimator) {
        y45.j(oSSeekbar, "this$0");
        y45.j(valueAnimator, "animation");
        Object animatedValue = valueAnimator.getAnimatedValue();
        y45.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        oSSeekbar.mCurrentAlpha = ((Float) animatedValue).floatValue();
        oSSeekbar.invalidate();
    }

    public static final void a0(OSSeekbar oSSeekbar, f43 f43Var, float f2, float f3) {
        y45.j(oSSeekbar, "this$0");
        oSSeekbar.mCurrentScaleFactor = f2;
        Log.d(d1, "startHiosScaleAnimation: " + f2);
        oSSeekbar.invalidate();
    }

    public static final void d0(OSSeekbar oSSeekbar, int i, int i2, ValueAnimator valueAnimator) {
        y45.j(oSSeekbar, "this$0");
        y45.j(valueAnimator, "animation");
        Object animatedValue = valueAnimator.getAnimatedValue();
        y45.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        oSSeekbar.mThumbOutColor = oSSeekbar.j(i, i2, ((Float) animatedValue).floatValue());
        oSSeekbar.invalidate();
    }

    public static void g0(OSSeekbar oSSeekbar, float f2, float f3, long j, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: startThumbIntervalAnimationHios");
        }
        if ((i & 8) != 0) {
            z = true;
        }
        oSSeekbar.f0(f2, f3, j, z);
    }

    private final int getContentHeight() {
        return isHiOSStyle() ? (int) (this.mThumbHalfWidth * 2) : (int) Math.max((int) (((this.mSourceThumbInHalfHeight * this.mMaxThumbInScal) + (this.mThumbStokeWidth * this.mMaxThumbStokeScal)) * 2), this.mSourceTrackWidth);
    }

    private final int getDotColor() {
        return isEnabled() ? this.mDotsSelectedColor : this.mDotsSelectedColorDisable;
    }

    private final int getSecondTrackColor() {
        return isEnabled() ? this.mSecondTrackColor : this.mSecondTrackColorDisable;
    }

    private final float getThumbHalfSizeOnTouchDown() {
        return isHiOSStyle() ? this.mSourceThumbInHalfWidth : (this.mSourceThumbInHalfWidth * this.mMaxThumbInScal) + (this.mThumbStokeWidth * this.mMaxThumbStokeScal);
    }

    private final int getThumbInSideColor() {
        return isEnabled() ? this.mThumbInsideColor : this.mThumbInsideColorDisable;
    }

    private final int getThumbOutColor() {
        return isEnabled() ? this.mThumbOutColor : this.mThumbOutColorDisable;
    }

    public static final void k0(int i, OSSeekbar oSSeekbar, int[] iArr, int i2, ValueAnimator valueAnimator) {
        int[] iArr2;
        y45.j(oSSeekbar, "this$0");
        y45.j(iArr, "$resolvedTarget");
        y45.j(valueAnimator, "animation");
        if (i != oSSeekbar.mGradientAnimToken) {
            return;
        }
        Object animatedValue = valueAnimator.getAnimatedValue();
        y45.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float fFloatValue = ((Float) animatedValue).floatValue();
        int[] iArr3 = oSSeekbar.mAnimStartColors;
        if (iArr3 == null || (iArr2 = oSSeekbar.mAnimTargetColors) == null) {
            return;
        }
        oSSeekbar.mAnimInterpolatedColors[0] = oSSeekbar.j(iArr3[0], iArr2[0], fFloatValue);
        oSSeekbar.mAnimInterpolatedColors[1] = oSSeekbar.j(iArr3[1], iArr2[1], fFloatValue);
        oSSeekbar.mAnimInterpolatedColors[2] = oSSeekbar.j(iArr3[2], iArr2[2], fFloatValue);
        oSSeekbar.mSecondTrackGradientColors = oSSeekbar.mAnimInterpolatedColors;
        oSSeekbar.mSecondTrackGradient = null;
        if (oSSeekbar.m()) {
            oSSeekbar.mThumbOutColor = oSSeekbar.j(i2, oSSeekbar.U(iArr, oSSeekbar.l0()), fFloatValue);
        }
        oSSeekbar.invalidate();
    }

    public static final void o(OSSeekbar oSSeekbar, ValueAnimator valueAnimator) {
        y45.j(oSSeekbar, "this$0");
        y45.j(valueAnimator, "animation");
        Object animatedValue = valueAnimator.getAnimatedValue();
        y45.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float fFloatValue = ((Float) animatedValue).floatValue();
        oSSeekbar.mCurrentThumbInScal = fFloatValue;
        float f2 = oSSeekbar.mMaxThumbInScal;
        if (f2 != 0.0f) {
            float f3 = 1;
            oSSeekbar.mCurrentThumbOutScal = f3 + ((fFloatValue * (f3 - oSSeekbar.mMaxThumbStokeScal)) / f2);
        }
        oSSeekbar.invalidate();
    }

    public static final void r(OSSeekbar oSSeekbar, ValueAnimator valueAnimator) {
        float f2;
        y45.j(oSSeekbar, "this$0");
        y45.j(valueAnimator, "animation");
        Object animatedValue = valueAnimator.getAnimatedValue();
        y45.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float fFloatValue = ((Float) animatedValue).floatValue();
        float f3 = oSSeekbar.mFromThumbCenterX;
        float f4 = f3 + ((oSSeekbar.mToThumbCenterX - f3) * fFloatValue);
        oSSeekbar.mThumbCenterX = f4;
        oSSeekbar.mProgress = oSSeekbar.l(f4);
        oSSeekbar.I(true);
        if (oSSeekbar.isNoThumb) {
            if (oSSeekbar.mFromUpEvent) {
                float f5 = oSSeekbar.mFromTrackWidth;
                f2 = f5 - ((f5 - oSSeekbar.mSourceTrackWidth) * fFloatValue);
            } else {
                float f6 = oSSeekbar.mFromTrackWidth;
                f2 = f6 + (fFloatValue * (oSSeekbar.mTrackWidthMax - f6));
            }
            oSSeekbar.mCurrentSourceTrackWidth = f2;
            oSSeekbar.mCurrentSourceSecondTTrackWidth = f2;
        }
        oSSeekbar.invalidate();
    }

    public static final void t(OSSeekbar oSSeekbar, ValueAnimator valueAnimator) {
        y45.j(oSSeekbar, "this$0");
        y45.j(valueAnimator, "animation");
        Object animatedValue = valueAnimator.getAnimatedValue();
        y45.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        oSSeekbar.mCurrentThumbInHalfWidth = ((Float) animatedValue).floatValue();
        oSSeekbar.invalidate();
    }

    public final ViewGroup.LayoutParams A() {
        int dimensionPixelOffset = getContext().getResources().getDimensionPixelOffset(R.dimen.os_dimen_icon_common_size);
        return new ViewGroup.LayoutParams(dimensionPixelOffset, dimensionPixelOffset);
    }

    public final ImageView B(int icon) {
        ImageView imageView = new ImageView(getContext());
        imageView.setLayoutParams(A());
        imageView.setImageResource(icon);
        return imageView;
    }

    public final ViewGroup.LayoutParams C() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.weight = 1.0f;
        return layoutParams;
    }

    public final int D(int thumbInsideColor) {
        return (wn8.k((int) ((thumbInsideColor >>> 24) * (1.0f - this.mCurrentAlpha)), 0, 255) << 24) | (thumbInsideColor & 16777215);
    }

    public final int E(int height) {
        return (int) Math.max(height, isHiOSStyle() ? olb.h(getContext(), 30) : olb.h(getContext(), 20));
    }

    public final void F() {
        if (this.min == this.max) {
            this.min = 0.0f;
            this.max = 100.0f;
        }
        float f2 = this.min;
        float f3 = this.max;
        if (f2 > f3) {
            this.max = f2;
            this.min = f3;
        }
        float f4 = this.mProgress;
        float f5 = this.min;
        if (f4 < f5) {
            this.mProgress = f5;
        }
        float f6 = this.mProgress;
        float f7 = this.max;
        if (f6 > f7) {
            this.mProgress = f7;
        }
        this.mDelta = f7 - f5;
        setProgress(this.mProgress);
    }

    public final boolean G() {
        ValueAnimator valueAnimator = this.mThumbIntervalAnimator;
        if (valueAnimator != null) {
            y45.g(valueAnimator);
            if (valueAnimator.isRunning()) {
                return true;
            }
        }
        return false;
    }

    public final void I(boolean fromUser) {
        float progressFloat = getProgressFloat();
        if (progressFloat == this.mLastCallbackProgress) {
            return;
        }
        this.mLastCallbackProgress = progressFloat;
        c cVar = this.onProgressChangedListener;
        if (cVar != null) {
            cVar.onProgressChanged(this, getProgress(), progressFloat, fromUser);
        }
    }

    public final void J(MotionEvent event) {
        if (this.isThumbOnDragging) {
            float fK = k(event.getX());
            this.mTouchXMove = Math.abs(fK - this.mTouchXDown);
            o0(fK);
            if (fK == this.mPreThumbCenterX) {
                return;
            }
            if (this.mTouchXMove > INSTANCE.a(1) || this.isTouchMove) {
                if (!this.isTouchMove && !this.isTouchOnThumb) {
                    Z(0.0f);
                    X(1.0f);
                    f0(this.mThumbCenterX, fK, f1, false);
                } else if (G()) {
                    this.mToThumbCenterX = fK;
                } else {
                    this.mPreThumbCenterX = fK;
                    this.mThumbCenterX = fK;
                    this.mProgress = l(fK);
                    I(true);
                    invalidate();
                }
                this.isTouchMove = true;
                L(fK);
            }
        }
    }

    public final void K(MotionEvent event) {
        if (!this.isThumbOnDragging) {
            if (this.mCurrentThumbInHalfWidth == this.mSourceThumbInHalfWidth) {
                return;
            }
            float targValue = this.mThumbWidthTrackAnimator.getTargValue();
            float f2 = this.mSourceThumbInHalfWidth;
            if (targValue == f2) {
                return;
            }
            j0(this.mCurrentThumbInHalfWidth, f2);
            invalidate();
            return;
        }
        if (!this.isEnterActionMove) {
            h0(1.0f, this.mMaxThumbInScal);
            this.mTouchThumbX = event.getX();
            this.mPreThumbCenterX = this.mThumbCenterX;
            return;
        }
        float fK = k(event.getX());
        this.mTouchXMove = (float) Math.abs(fK - this.mTouchXDown);
        double dAbs = Math.abs(fK - this.mPreThumbCenterX);
        Companion companion = INSTANCE;
        boolean z = false;
        if (dAbs >= companion.a(1) && (this.mTouchXMove > companion.a(1) || this.isTouchMove)) {
            if (this.isTouchMove || this.isTouchOnThumb) {
                float fAbs = (float) Math.abs(fK - this.mTouchThumbX);
                if (fAbs < companion.a(1)) {
                    fAbs = 0.0f;
                }
                this.mThumbScalType = 1;
                float f3 = this.mSourceThumbInHalfWidth + (fAbs * 1.3f);
                float f4 = this.mMaxThumbInHalfWidth;
                if (f3 > f4) {
                    f3 = f4;
                }
                if (G()) {
                    this.mToThumbCenterX = fK;
                    this.mToThumbHalfLen = f3;
                } else {
                    if (!this.mThumbCenterXTrackAnimator.e() && (!this.mThumbWidthTrackAnimator.e() || isHiOSStyle())) {
                        z = true;
                    }
                    j0(this.mCurrentThumbInHalfWidth, f3);
                    b0(this.mThumbCenterX, fK);
                    if (z) {
                        invalidate();
                    }
                }
            } else {
                e0(this.mThumbCenterX, fK, e1);
            }
            this.mPreThumbCenterX = fK;
            this.isTouchMove = true;
            L(fK);
        } else if (!G() && this.mCurrentThumbInHalfWidth != this.mSourceThumbInHalfWidth) {
            boolean z2 = (this.mThumbCenterXTrackAnimator.e() || this.mThumbWidthTrackAnimator.e()) ? false : true;
            j0(this.mCurrentThumbInHalfWidth, this.mSourceThumbInHalfWidth);
            if (z2) {
                invalidate();
            }
        }
        this.mTouchThumbX = fK;
    }

    public final void L(float thumbCenterX) {
        if (this.mShowMiddlePoint) {
            int iL = (int) l(thumbCenterX);
            if (iL == this.mShowMiddlePointPercent && iL != this.mCalculateVibrateProgress) {
                P();
                bq5.p(d1, "onProgressVibrate: vibrate calculateProgress = " + iL);
            }
            this.mCalculateVibrateProgress = iL;
        }
    }

    public final void N(MotionEvent event) {
        float fK = k(event.getX());
        boolean z = this.isNoThumb;
        if (z && fK == this.mLeft) {
            fK -= this.mThumbHalfWidth / 2;
        }
        if (z && fK == this.mRight) {
            fK += this.mThumbHalfWidth / 2;
        }
        float f2 = fK;
        L(f2);
        ValueAnimator valueAnimator = this.mThumbColorAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        Z(1.0f);
        X(0.0f);
        g0(this, this.mThumbCenterX, f2, this.isTouchOnThumb ? f1 : g1, false, 8, null);
    }

    public final void O(MotionEvent event) {
        this.mThumbWidthTrackAnimator.d();
        this.mThumbCenterXTrackAnimator.d();
        float fK = k(event.getX());
        if (this.isEnterActionMove && !isHiOSStyle()) {
            h0(this.mCurrentThumbInScal, 1.0f);
            boolean zG = G();
            if (zG) {
                this.mToThumbHalfLen = this.mSourceThumbInHalfWidth;
            }
            if (!zG) {
                float f2 = this.mCurrentThumbInHalfWidth;
                float f3 = this.mSourceThumbInHalfWidth;
                if (f2 != f3) {
                    i0(f2, f3);
                }
            }
        }
        if (this.mThumbCenterX != fK) {
            if (this.isEnterActionMove && G() && Math.abs(this.mPreThumbCenterX - fK) < INSTANCE.a(6)) {
                this.mToThumbCenterX = fK;
            } else {
                e0(this.mThumbCenterX, fK, e1);
            }
            L(fK);
        }
        this.mPreThumbCenterX = fK;
    }

    public final void P() {
        if (!this.mVibrateAble) {
            bq5.o("vibrate Able is false");
        } else {
            if (!olb.Z || getHandler() == null || !olb.J || getHandler().hasCallbacks(this.mVibrateRunnable)) {
                return;
            }
            getHandler().postDelayed(this.mVibrateRunnable, 50L);
        }
    }

    public final float Q(float progress, float leftBase) {
        return Math.abs(this.mDelta) < 1.0E-4f ? leftBase : leftBase + ((this.mTrackLength / this.mDelta) * (progress - this.min));
    }

    public final void R() {
        this.mLastCallbackProgress = getProgressFloat();
    }

    public final int S(float thumbCenterX) {
        int i;
        if (this.mTrackGradientActive) {
            int[] iArr = this.mThumbTargetColors;
            if (iArr == null) {
                iArr = this.mSecondTrackGradientColors;
            }
            if (iArr != null && iArr.length >= 3) {
                return U(iArr, n0(l(thumbCenterX)));
            }
        }
        return (this.mThumbOutColorExplicit || (i = this.mThumbOutColorBeforeGradient) == 0) ? this.mThumbOutColor : i;
    }

    public final int T(float progress01) {
        int[] iArr = this.mThumbTargetColors;
        return iArr == null ? this.mThumbOutColor : U(iArr, progress01);
    }

    public final int U(int[] colors, float progress01) {
        if (colors.length < 3) {
            return this.mThumbOutColor;
        }
        float[] fArr = this.mGradientPositions;
        float fJ = wn8.j(progress01, 0.0f, 1.0f);
        float f2 = fArr[0];
        if (fJ <= f2) {
            return colors[0];
        }
        float f3 = fArr[1];
        if (fJ <= f3) {
            float f4 = f3 - f2;
            return ColorUtils.blendARGB(colors[0], colors[1], f4 > 1.0E-4f ? (fJ - f2) / f4 : 0.0f);
        }
        float f5 = fArr[2];
        if (fJ > f5) {
            return colors[2];
        }
        float f6 = f5 - f3;
        return ColorUtils.blendARGB(colors[1], colors[2], f6 > 1.0E-4f ? (fJ - f3) / f6 : 0.0f);
    }

    public final void V() {
        float f2 = this.mSourceThumbInHalfWidth + this.mThumbStokeWidth;
        this.mThumbHalfWidth = f2;
        this.mCurrentThumbHalfWidth = f2;
    }

    public final void W(float xRight, Canvas canvas, float yTop) {
        float f2 = (xRight - this.mLeft) / 2;
        float f3 = olb.l0() ? xRight - f2 : this.mLeft + f2;
        if (f2 < this.mThumbCenterX && isEnabled()) {
            this.mPaint.setColor(this.mDotsSelectedColor);
        } else {
            this.mPaint.setColor(this.mDotsColor);
        }
        canvas.drawCircle(f3, yTop, this.mDotsSize * 0.5f, this.mPaint);
    }

    public final void X(float toAlpha) {
        ValueAnimator valueAnimator = this.mAlphaAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.mCurrentAlpha, toAlpha);
        valueAnimatorOfFloat.setDuration(150L);
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                OSSeekbar.Y(this.b, valueAnimator2);
            }
        });
        valueAnimatorOfFloat.start();
        this.mAlphaAnimator = valueAnimatorOfFloat;
    }

    public final void Z(float toScale) {
        kv9 kv9VarV;
        if (this.mSpringAnimation == null) {
            jv9 jv9Var = new jv9(new fz3(this.mCurrentScaleFactor));
            this.mSpringAnimation = jv9Var;
            jv9Var.z(new kv9());
            jv9 jv9Var2 = this.mSpringAnimation;
            if (jv9Var2 != null) {
                jv9Var2.k(0.01f);
            }
            jv9 jv9Var3 = this.mSpringAnimation;
            if (jv9Var3 != null) {
            }
        }
        jv9 jv9Var4 = this.mSpringAnimation;
        if (jv9Var4 != null) {
            jv9Var4.c();
        }
        jv9 jv9Var5 = this.mSpringAnimation;
        if (jv9Var5 != null) {
        }
        jv9 jv9Var6 = this.mSpringAnimation;
        if (jv9Var6 != null && (kv9VarV = jv9Var6.v()) != null) {
            kv9VarV.i(400.0f);
            kv9VarV.g(0.79f);
            kv9VarV.h(toScale);
        }
        jv9 jv9Var7 = this.mSpringAnimation;
        if (jv9Var7 != null) {
            jv9Var7.p();
        }
    }

    public final void b0(float fromValue, float toValue) {
        if (!this.mThumbCenterXTrackAnimator.e()) {
            this.mThumbCenterXTrackAnimator.set(fromValue);
        }
        this.mThumbCenterXTrackAnimator.setTargValue(toValue);
    }

    public final void c0(final int targetColor, long duration) {
        ValueAnimator valueAnimator = this.mThumbColorAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        final int i = this.mThumbOutColor;
        if (i == targetColor) {
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(duration);
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                OSSeekbar.d0(this.b, i, targetColor, valueAnimator2);
            }
        });
        valueAnimatorOfFloat.addListener(new g(targetColor));
        valueAnimatorOfFloat.start();
        this.mThumbColorAnimator = valueAnimatorOfFloat;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0127  */
    public final void config(b builder) {
        int[] iArrCopyOf;
        y45.j(builder, "builder");
        this.min = builder.getMin();
        this.max = builder.getMax();
        this.mProgress = builder.getProgress();
        this.mTrackColor = builder.getTrackColor();
        this.mSecondTrackColor = builder.getSecondTrackColor();
        this.mSourceTrackWidth = builder.getTrackWidth();
        this.mCurrentSourceTrackWidth = builder.getTrackWidth();
        this.mThumbOutColor = builder.getThumbOutColor();
        this.mThumbInsideColor = builder.getThumbInsideColor();
        this.mSecondTrackColorDisable = builder.getSecondTrackColorDisable();
        this.mThumbOutColorDisable = builder.getThumbOutColorDisable();
        this.mThumbInsideColorDisable = builder.getThumbInsideColorDisable();
        this.mSourceSecondTTrackWidth = builder.getSecondTrackWidth();
        this.mCurrentSourceSecondTTrackWidth = builder.getSecondTrackWidth();
        this.mTrackWidthMax = builder.getTrackWidthMax();
        float thumbOutWidth = (builder.getThumbOutWidth() - builder.getThumbInWidth()) * 0.5f;
        this.mThumbStokeWidth = thumbOutWidth;
        if (thumbOutWidth < 0.0f) {
            this.mThumbStokeWidth = 0.0f;
        }
        this.mSourceThumbInHalfWidth = builder.getThumbInWidth() * 0.5f;
        if (builder.getThumbInMaxWidth() < builder.getThumbInWidth()) {
            builder.setThumbInMaxWidth(builder.getThumbInWidth());
        }
        this.mMaxThumbInHalfWidth = builder.getThumbInMaxWidth() * 0.5f;
        float f2 = this.mSourceThumbInHalfWidth;
        this.mSourceThumbInHalfHeight = f2;
        this.mCurrentThumbInHalfWidth = f2;
        this.mMaxThumbInScal = builder.getThumbInMaxScal();
        if (this.mThumbStokeWidth != 0.0f) {
            this.mMaxThumbStokeScal = ((builder.getThumbOutWidth() * builder.getThumbOutMaxScal()) - (builder.getThumbInWidth() * builder.getThumbInMaxScal())) / (this.mThumbStokeWidth * 2);
        }
        if (this.mMaxThumbStokeScal < 1.0f) {
            this.mMaxThumbStokeScal = 1.0f;
        }
        F();
        c cVar = this.onProgressChangedListener;
        boolean z = false;
        if (cVar != null) {
            cVar.onProgressChanged(this, getProgress(), getProgressFloat(), false);
        }
        this.mThumbInsideUnAbleColorHios = builder.getThumbInsideUnAbleColorHios();
        this.mDotsSize = builder.getDotsSize();
        this.mDotsSelectedColor = builder.getDotsSelectedColor();
        this.mDotsSelectedColorDisable = builder.getDotsSelectedColorDisable();
        this.mDotsColor = builder.getDotsColor();
        this.mShowMiddlePoint = builder.getShowMiddlePoint();
        if (isHiOSStyle()) {
            int[] secondTrackGradientColors = builder.getSecondTrackGradientColors();
            if (secondTrackGradientColors != null) {
                iArrCopyOf = Arrays.copyOf(secondTrackGradientColors, secondTrackGradientColors.length);
                y45.i(iArrCopyOf, "copyOf(this, size)");
                if (iArrCopyOf == null) {
                    int i = this.mSecondTrackColor;
                    iArrCopyOf = new int[]{i, i, i};
                }
            } else {
                int i2 = this.mSecondTrackColor;
                iArrCopyOf = new int[]{i2, i2, i2};
            }
        } else {
            iArrCopyOf = null;
        }
        this.mSecondTrackGradientColors = iArrCopyOf;
        if (isHiOSStyle() && builder.getSecondTrackGradientColors() != null) {
            z = true;
        }
        this.mTrackGradientActive = z;
        this.mThumbTargetColors = z ? builder.getSecondTrackGradientColors() : null;
        if (builder.getGradientPositions() != null) {
            float[] gradientPositions = builder.getGradientPositions();
            y45.g(gradientPositions);
            if (gradientPositions.length >= 3) {
                float[] gradientPositions2 = builder.getGradientPositions();
                y45.g(gradientPositions2);
                float[] fArrCopyOf = Arrays.copyOf(gradientPositions2, gradientPositions2.length);
                y45.i(fArrCopyOf, "copyOf(this, size)");
                this.mGradientPositions = fArrCopyOf;
            }
        }
        this.mSecondTrackGradient = null;
        this.mOSSeekBarBuilder = null;
        q0(builder);
        requestLayout();
    }

    public final void e0(float fromCenterx, float toCenterX, long duration) {
        this.isCenterXAnimation = true;
        ValueAnimator valueAnimator = this.mThumbIntervalAnimator;
        if (valueAnimator == null) {
            this.mThumbIntervalAnimator = p();
        } else {
            y45.g(valueAnimator);
            if (valueAnimator.isRunning()) {
                ValueAnimator valueAnimator2 = this.mThumbIntervalAnimator;
                y45.g(valueAnimator2);
                valueAnimator2.cancel();
                this.mThumbIntervalAnimator = p();
            }
        }
        ValueAnimator valueAnimator3 = this.mThumbIntervalAnimator;
        y45.g(valueAnimator3);
        valueAnimator3.setDuration(duration);
        this.mThumbScalType = 1;
        float fAbs = (float) Math.abs(toCenterX - fromCenterx);
        float f2 = this.mSourceThumbInHalfWidth;
        if (fAbs > f2) {
            float f3 = ((fAbs - f2) * 0.18f) + f2;
            float f4 = this.mMaxThumbInHalfWidth;
            if (f3 > f4) {
                f3 = f4;
            }
            this.mFromThumbHalfLen = this.mCurrentThumbInHalfWidth;
            this.mCenterThumbHalfLen = f3;
            this.mToThumbHalfLen = f2;
        } else {
            this.mFromThumbHalfLen = this.mCurrentThumbInHalfWidth;
            this.mCenterThumbHalfLen = f2;
            this.mToThumbHalfLen = f2;
        }
        this.mFromThumbCenterX = fromCenterx;
        this.mToThumbCenterX = toCenterX;
        ValueAnimator valueAnimator4 = this.mThumbIntervalAnimator;
        y45.g(valueAnimator4);
        valueAnimator4.start();
    }

    public final void f0(float fromCenterx, float toCenterX, long duration, boolean fromUpEvent) {
        this.isCenterXAnimation = true;
        ValueAnimator valueAnimator = this.mThumbIntervalAnimator;
        if (valueAnimator == null) {
            this.mThumbIntervalAnimator = q();
        } else {
            y45.g(valueAnimator);
            if (valueAnimator.isRunning()) {
                ValueAnimator valueAnimator2 = this.mThumbIntervalAnimator;
                y45.g(valueAnimator2);
                valueAnimator2.cancel();
                this.mThumbIntervalAnimator = q();
            }
        }
        ValueAnimator valueAnimator3 = this.mThumbIntervalAnimator;
        y45.g(valueAnimator3);
        valueAnimator3.setDuration(duration);
        this.mFromThumbCenterX = fromCenterx;
        this.mToThumbCenterX = toCenterX;
        this.mFromTrackWidth = this.mCurrentSourceTrackWidth;
        this.mFromUpEvent = fromUpEvent;
        this.mFromScaleFactor = this.mCurrentScaleFactor;
        ValueAnimator valueAnimator4 = this.mThumbIntervalAnimator;
        if (valueAnimator4 != null) {
            valueAnimator4.setInterpolator(fromUpEvent ? AnimationUtils.loadInterpolator(getContext(), com.transsion.widgetsmotionlibrary.R.interpolator.os_motion_l1_easing_easeout) : new LinearInterpolator());
            valueAnimator4.start();
        }
        if (this.mSecondTrackGradientColors != null) {
            if (!fromUpEvent) {
                c0(S(toCenterX), duration);
                return;
            }
            ValueAnimator valueAnimator5 = this.mThumbColorAnimator;
            if (valueAnimator5 != null) {
                valueAnimator5.cancel();
            }
            this.mThumbOutColor = S(toCenterX);
            invalidate();
        }
    }

    public final b getConfigBuilder() {
        if (this.mOSSeekBarBuilder == null) {
            this.mOSSeekBarBuilder = new b(this);
        }
        b bVar = this.mOSSeekBarBuilder;
        y45.g(bVar);
        return bVar;
    }

    public final ImageView getMLeftIcon() {
        return this.mLeftIcon;
    }

    public final float getMax() {
        return this.max;
    }

    public final float getMin() {
        return this.min;
    }

    public c getOnProgressChangedListener() {
        return this.onProgressChangedListener;
    }

    public final boolean getOnlyHiOSStyle() {
        return this.onlyHiOSStyle;
    }

    public final int getProgress() {
        return G() ? Math.round(l(this.mToThumbCenterX)) : Math.round(this.mProgress);
    }

    public final float getProgressFloat() {
        return G() ? l(this.mToThumbCenterX) : this.mProgress;
    }

    public final ImageView getMRightIcon() {
        return this.mRightIcon;
    }

    @Nullable
    public final Drawable getThumbDrawable() {
        return this.thumbDrawable;
    }

    public final Drawable getThumbDrawable() {
        return this.thumbDrawable;
    }

    public final void h0(float fromScal, float toScal) {
        ValueAnimator valueAnimator = this.mThumbInScalAnimator;
        if (valueAnimator == null) {
            this.mThumbInScalAnimator = n(fromScal, toScal);
        } else {
            y45.g(valueAnimator);
            if (valueAnimator.isRunning()) {
                ValueAnimator valueAnimator2 = this.mThumbInScalAnimator;
                y45.g(valueAnimator2);
                valueAnimator2.cancel();
                this.mThumbInScalAnimator = n(fromScal, toScal);
            } else {
                ValueAnimator valueAnimator3 = this.mThumbInScalAnimator;
                y45.g(valueAnimator3);
                valueAnimator3.setFloatValues(fromScal, toScal);
            }
        }
        ValueAnimator valueAnimator4 = this.mThumbInScalAnimator;
        y45.g(valueAnimator4);
        valueAnimator4.start();
    }

    public final void i0(float fromThumbHalfLen, float toThumbHalfLen) {
        ValueAnimator valueAnimator = this.mThumbWidthAnimator;
        if (valueAnimator == null) {
            this.mThumbWidthAnimator = s(fromThumbHalfLen, toThumbHalfLen);
        } else {
            y45.g(valueAnimator);
            if (valueAnimator.isRunning()) {
                ValueAnimator valueAnimator2 = this.mThumbWidthAnimator;
                y45.g(valueAnimator2);
                valueAnimator2.cancel();
                this.mThumbWidthAnimator = s(fromThumbHalfLen, toThumbHalfLen);
            } else {
                ValueAnimator valueAnimator3 = this.mThumbWidthAnimator;
                y45.g(valueAnimator3);
                valueAnimator3.setFloatValues(fromThumbHalfLen, toThumbHalfLen);
            }
        }
        ValueAnimator valueAnimator4 = this.mThumbWidthAnimator;
        y45.g(valueAnimator4);
        valueAnimator4.start();
    }

    public final boolean isHiOSStyle() {
        return olb.c || this.onlyHiOSStyle;
    }

    public final boolean getIsNoThumb() {
        return this.isNoThumb;
    }

    public final int j(int startColor, int endColor, float fraction) {
        float f2 = 1.0f - fraction;
        return wn8.k((int) (((startColor & 255) * f2) + ((endColor & 255) * fraction) + 0.5f), 0, 255) | (wn8.k((int) ((((startColor >>> 24) * f2) + ((endColor >>> 24) * fraction)) + 0.5f), 0, 255) << 24) | (wn8.k((int) (((((startColor >> 16) & 255) * f2) + (((endColor >> 16) & 255) * fraction)) + 0.5f), 0, 255) << 16) | (wn8.k((int) (((((startColor >> 8) & 255) * f2) + (((endColor >> 8) & 255) * fraction)) + 0.5f), 0, 255) << 8);
    }

    public final void j0(float fromValue, float toValue) {
        if (!this.mThumbWidthTrackAnimator.e()) {
            this.mThumbWidthTrackAnimator.set(fromValue);
        }
        this.mThumbWidthTrackAnimator.setTargValue(toValue);
    }

    public final float k(float touchedX) {
        float f2 = this.mLeft;
        if (touchedX <= f2) {
            return f2;
        }
        float f3 = this.mRight;
        return touchedX >= f3 ? f3 : touchedX;
    }

    public final float l(float thumbcenterX) {
        if (G() && this.mIsForceStopCalculate) {
            return this.mProgress;
        }
        float f2 = ((thumbcenterX - this.mLeft) * this.mDelta) / this.mTrackLength;
        float f3 = this.min;
        float f4 = f2 + f3;
        if (f4 < f3) {
            return f3;
        }
        float f5 = this.max;
        return f4 > f5 ? f5 : f4;
    }

    public final float l0() {
        return (G() || this.isCenterXAnimation) ? n0(l(this.mToThumbCenterX)) : u();
    }

    public final boolean m() {
        return isHiOSStyle() && this.mTrackGradientActive && this.mSecondTrackGradientColors != null;
    }

    public final int m0() {
        TypedValue typedValue = new TypedValue();
        return getContext().getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true) ? this.mContext.getResources().getColor(typedValue.resourceId, this.mContext.getTheme()) : this.mContext.getResources().getColor(R.color.os_platform_basic_color_hios, this.mContext.getTheme());
    }

    public final ValueAnimator n(float fromScal, float toScal) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fromScal, toScal);
        valueAnimatorOfFloat.setDuration(250L);
        valueAnimatorOfFloat.setInterpolator(new s53(0.25f, 0.0f, 0.0f, 1.0f));
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                OSSeekbar.o(this.b, valueAnimator);
            }
        });
        y45.i(valueAnimatorOfFloat, "valueAnimator");
        return valueAnimatorOfFloat;
    }

    public final float n0(float progress) {
        if (Math.abs(this.mDelta) < 1.0E-4f) {
            return 0.0f;
        }
        return wn8.j((wn8.j(progress, this.min, this.max) - this.min) / this.mDelta, 0.0f, 1.0f);
    }

    public final void o0(float thumbCenterX) {
        if (m()) {
            ValueAnimator valueAnimator = this.mThumbColorAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.mThumbOutColor = T(n0(l(thumbCenterX)));
        }
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mCurrentThumbInScal = 1.0f;
        this.mCurrentThumbOutScal = 1.0f;
        this.mCurrentScaleFactor = 1.0f;
        this.mCurrentAlpha = 0.0f;
        this.isCenterXAnimation = false;
        this.isThumbOnDragging = false;
        this.mThumbCenterX = Q(this.mProgress, this.mLeft);
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.mThumbWidthAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.mThumbInScalAnimator;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
        ValueAnimator valueAnimator3 = this.mThumbIntervalAnimator;
        if (valueAnimator3 != null) {
            valueAnimator3.cancel();
        }
        ValueAnimator valueAnimator4 = this.mAlphaAnimator;
        if (valueAnimator4 != null) {
            valueAnimator4.cancel();
        }
        jv9 jv9Var = this.mSpringAnimation;
        if (jv9Var != null) {
            jv9Var.c();
        }
        ValueAnimator valueAnimator5 = this.mTrackGradientAnimator;
        if (valueAnimator5 != null) {
            valueAnimator5.cancel();
        }
        ValueAnimator valueAnimator6 = this.mThumbColorAnimator;
        if (valueAnimator6 != null) {
            valueAnimator6.cancel();
        }
        this.mGradientAnimToken++;
        this.mThumbWidthAnimator = null;
        this.mThumbInScalAnimator = null;
        this.mThumbIntervalAnimator = null;
        this.mAlphaAnimator = null;
        this.mSpringAnimation = null;
        this.mTrackGradientAnimator = null;
        this.mThumbColorAnimator = null;
        this.mLiquidDrawable = null;
        this.mSecondTrackGradient = null;
        this.mSecondTrackCacheColors = null;
        removeCallbacks(this.mVibrateRunnable);
    }

    @Override
    public void onDraw(Canvas canvas) {
        y45.j(canvas, "canvas");
        super.onDraw(canvas);
        if (isHiOSStyle()) {
            v(canvas);
        } else {
            y(canvas);
        }
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0051  */
    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        float f2;
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int iE = E(getContentHeight() + getPaddingTop() + getPaddingBottom());
        bq5.p(d1, "height = " + iE);
        setMeasuredDimension(View.resolveSize(INSTANCE.a(180), widthMeasureSpec), iE);
        V();
        if (isHiOSStyle()) {
            float f3 = this.mLiquidWidth / 2;
            float f4 = this.mThumbHalfWidth;
            if (f4 < f3) {
                f2 = f3 - f4;
            } else {
                f2 = 0.0f;
            }
        } else {
            f2 = 0.0f;
        }
        int dimensionPixelSize = this.mLeftIcon != null ? getResources().getDimensionPixelSize(R.dimen.os_space075) : getResources().getDimensionPixelSize(R.dimen.os_space025);
        int dimensionPixelSize2 = this.mRightIcon != null ? getResources().getDimensionPixelSize(R.dimen.os_space075) : getResources().getDimensionPixelSize(R.dimen.os_space025);
        this.mLeft = getPaddingStart() + this.mThumbHalfWidth + f2 + dimensionPixelSize;
        this.mRight = (((getMeasuredWidth() - getPaddingEnd()) - this.mThumbHalfWidth) - f2) - dimensionPixelSize2;
        if (isHiOSStyle()) {
            float f5 = this.mThumbHalfWidth - (this.mSourceTrackWidth / 2);
            this.mLeft -= f5;
            this.mRight += f5;
        }
        this.mTrackLength = this.mRight - this.mLeft;
        this.mThumbCenterY = getMeasuredHeight() * 0.5f;
        this.offset = (this.mThumbHalfWidth * 2) - this.mTrackWidthMax;
        this.mSecondTrackGradient = null;
    }

    @Override
    public void onRestoreInstanceState(Parcelable state) {
        y45.j(state, ICode.CALL.CALL_KEY_STATE);
        if (!(state instanceof Bundle)) {
            super.onRestoreInstanceState(state);
            return;
        }
        Bundle bundle = (Bundle) state;
        this.mProgress = bundle.getFloat("progress");
        super.onRestoreInstanceState(bundle.getParcelable("save_instance"));
        setProgress(this.mProgress);
    }

    @Override
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("save_instance", super.onSaveInstanceState());
        bundle.putFloat("progress", this.mProgress);
        return bundle;
    }

    @Override
    public void onSizeChanged(int w, int h2, int oldw, int oldh) {
        super.onSizeChanged(w, h2, oldw, oldh);
        post(new Runnable() {
            @Override
            public final void run() {
                OSSeekbar.M(this.b);
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0030  */
    /* JADX WARN: Code duplicated, block: B:17:0x003b  */
    /* JADX WARN: Code duplicated, block: B:19:0x0041  */
    /* JADX WARN: Code duplicated, block: B:20:0x0045  */
    /* JADX WARN: Code duplicated, block: B:23:0x004e  */
    @Override
    public boolean onTouchEvent(MotionEvent event) {
        c cVar;
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        int actionMasked = event.getActionMasked();
        if (actionMasked == 0) {
            this.mIsForceStopCalculate = false;
            R();
            performClick();
            getParent().requestDisallowInterceptTouchEvent(true);
            boolean zIsEnabled = isEnabled();
            this.isThumbOnDragging = zIsEnabled;
            if (zIsEnabled) {
                if (this.isNoThumb) {
                    if (event.getX() < this.mLeft || event.getX() > this.mRight) {
                        this.isThumbOnDragging = false;
                        return false;
                    }
                } else if (event.getX() < this.mLeft - this.mThumbHalfWidth || event.getX() > this.mRight + this.mThumbHalfWidth) {
                    this.isThumbOnDragging = false;
                    return false;
                }
                this.mTouchXDown = (float) Math.min(Math.max(this.mLeft, event.getX()), this.mRight);
                c cVar2 = this.onProgressChangedListener;
                if (cVar2 != null) {
                    cVar2.onStartTrackingTouch(this);
                }
                this.isTouchOnThumb = Math.abs((double) (event.getX() - this.mThumbCenterX)) <= ((double) getThumbHalfSizeOnTouchDown());
                if (isHiOSStyle() && (this.isTouchOnThumb || this.isNoThumb)) {
                    float f2 = this.mThumbCenterX;
                    float f3 = this.mThumbHalfWidth;
                    if (f2 < f3) {
                        f2 = f3;
                    }
                    this.mThumbCenterX = f2;
                    float f4 = this.mRight;
                    if (f2 > f4) {
                        f2 = f4;
                    }
                    this.mThumbCenterX = f2;
                    Z(0.0f);
                    X(1.0f);
                    float f5 = this.mThumbCenterX;
                    f0(f5, f5, f1, false);
                }
            }
        } else if (actionMasked == 1) {
            getParent().requestDisallowInterceptTouchEvent(false);
            if (this.isThumbOnDragging) {
                if (isHiOSStyle()) {
                    N(event);
                } else {
                    O(event);
                }
            }
            this.isThumbOnDragging = false;
            cVar = this.onProgressChangedListener;
            if (cVar != null) {
                cVar.onStopTrackingTouch(this);
            }
            this.isEnterActionMove = false;
            this.isTouchMove = false;
            invalidate();
        } else if (actionMasked == 2) {
            this.mIsForceStopCalculate = false;
            this.isThumbOnDragging = isEnabled();
            if (isHiOSStyle()) {
                J(event);
            } else {
                K(event);
            }
            this.isEnterActionMove = true;
        } else if (actionMasked == 3) {
            getParent().requestDisallowInterceptTouchEvent(false);
            if (this.isThumbOnDragging) {
                if (isHiOSStyle()) {
                    N(event);
                } else {
                    O(event);
                }
            }
            this.isThumbOnDragging = false;
            cVar = this.onProgressChangedListener;
            if (cVar != null) {
                cVar.onStopTrackingTouch(this);
            }
            this.isEnterActionMove = false;
            this.isTouchMove = false;
            invalidate();
        }
        return true;
    }

    public final ValueAnimator p() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 0.5f, 1.0f);
        valueAnimatorOfFloat.setDuration(500L);
        valueAnimatorOfFloat.setInterpolator(new s53(0.4f, 0.0f, 0.2f, 1.0f));
        valueAnimatorOfFloat.addUpdateListener(new d());
        valueAnimatorOfFloat.addListener(new e());
        y45.i(valueAnimatorOfFloat, "valueAnimator");
        return valueAnimatorOfFloat;
    }

    public final boolean p0() {
        boolean zF = false;
        if (G()) {
            return false;
        }
        if (this.mThumbWidthTrackAnimator.e()) {
            zF = this.mThumbWidthTrackAnimator.f(0.064f);
            this.mCurrentThumbInHalfWidth = this.mThumbWidthTrackAnimator.getAnimatedValue();
        }
        if (!this.mThumbCenterXTrackAnimator.e()) {
            return zF;
        }
        boolean zF2 = zF | this.mThumbCenterXTrackAnimator.f(0.256f);
        float animatedValue = this.mThumbCenterXTrackAnimator.getAnimatedValue();
        this.mThumbCenterX = animatedValue;
        this.mProgress = l(animatedValue);
        I(true);
        return zF2;
    }

    @Override
    public boolean performClick() {
        return super.performClick();
    }

    public final ValueAnimator q() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 0.5f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                OSSeekbar.r(this.b, valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new f());
        y45.i(valueAnimatorOfFloat, "valueAnimator");
        return valueAnimatorOfFloat;
    }

    public final void q0(b builder) {
        bq5.c(d1, "leftIcon = " + builder.getLeftIcon() + " rightIcon = " + builder.getRightIcon());
        if (!(builder.getRightIcon() == 0 && builder.getLeftIcon() == 0) && (getParent() instanceof ViewGroup)) {
            ViewParent parent = getParent();
            LinearLayout linearLayout = new LinearLayout(getContext());
            linearLayout.setOrientation(0);
            linearLayout.setGravity(16);
            linearLayout.setClipChildren(false);
            linearLayout.setClipToPadding(false);
            y45.h(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ViewGroup viewGroup = (ViewGroup) parent;
            int iIndexOfChild = viewGroup.indexOfChild(this);
            viewGroup.removeViewInLayout(this);
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams != null) {
                layoutParams.height = -2;
                viewGroup.addView(linearLayout, iIndexOfChild, layoutParams);
            } else {
                viewGroup.addView(linearLayout, iIndexOfChild);
            }
            if (builder.getLeftIcon() > 0) {
                ImageView imageViewB = B(builder.getLeftIcon());
                this.mLeftIcon = imageViewB;
                linearLayout.addView(imageViewB);
            }
            linearLayout.addView(this);
            setLayoutParams(C());
            if (builder.getRightIcon() > 0) {
                ImageView imageViewB2 = B(builder.getRightIcon());
                this.mRightIcon = imageViewB2;
                linearLayout.addView(imageViewB2);
            }
        }
    }

    public final ValueAnimator s(float fromThumbHalfLen, float toThumbHalfLen) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fromThumbHalfLen, toThumbHalfLen);
        valueAnimatorOfFloat.setDuration(250L);
        valueAnimatorOfFloat.setInterpolator(new s53(0.4f, 0.0f, 0.2f, 1.0f));
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                OSSeekbar.t(this.b, valueAnimator);
            }
        });
        y45.i(valueAnimatorOfFloat, "valueAnimator");
        return valueAnimatorOfFloat;
    }

    public final void setForceProgress(boolean isForceProgress) {
        this.mIsForceStopCalculate = isForceProgress;
        invalidate();
    }

    public final void setGradientPositions(float[] positions) {
        y45.j(positions, "positions");
        if (positions.length >= 3) {
            float[] fArrCopyOf = Arrays.copyOf(positions, positions.length);
            y45.i(fArrCopyOf, "copyOf(this, size)");
            this.mGradientPositions = fArrCopyOf;
            this.mSecondTrackGradient = null;
            this.mSecondTrackCacheColors = null;
            invalidate();
        }
    }

    public final void setNoThumb(boolean z) {
        this.isNoThumb = z;
    }

    public void setOnProgressChangedListener(c listener) {
        this.onProgressChangedListener = listener;
    }

    public final void setOnlyHiOSStyle(boolean z) {
        this.onlyHiOSStyle = z;
    }

    public final void setProgress(float progress) {
        this.mProgress = progress;
        if (m()) {
            ValueAnimator valueAnimator = this.mThumbColorAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.mThumbOutColor = T(n0(progress));
        }
        c cVar = this.onProgressChangedListener;
        if (cVar != null) {
            cVar.onProgressChanged(this, getProgress(), getProgressFloat(), false);
        }
        postInvalidate();
    }

    public final void setSecondTrackColor(int secondTrackColor) {
        this.mSecondTrackColor = secondTrackColor;
        this.mSecondTrackGradientColors = isHiOSStyle() ? new int[]{secondTrackColor, secondTrackColor, secondTrackColor} : null;
        this.mTrackGradientActive = false;
        this.mThumbTargetColors = null;
        this.mSecondTrackGradient = null;
        invalidate();
    }

    @Nullable
    public final void setThumb(Drawable drawable) {
        this.thumbDrawable = drawable;
    }

    public final void setThumbDrawable(Drawable drawable) {
        this.thumbDrawable = drawable;
    }

    public final void setThumbInsideColor(int thumbColor) {
        if (this.mThumbInsideColor != thumbColor) {
            this.mThumbInsideColor = thumbColor;
            invalidate();
        }
    }

    public final void setThumbInsideUnAbleColorHios(int thumbInsideUnAbleColorHios) {
        if (this.mThumbInsideUnAbleColorHios != thumbInsideUnAbleColorHios) {
            this.mThumbInsideUnAbleColorHios = thumbInsideUnAbleColorHios;
            invalidate();
        }
    }

    public final void setThumbOutColor(int thumbColor) {
        this.mThumbOutColorExplicit = true;
        if (this.mThumbOutColor != thumbColor) {
            this.mThumbOutColor = thumbColor;
            invalidate();
        }
    }

    public final void setTrackColor(int trackColor) {
        if (this.mTrackColor != trackColor) {
            this.mTrackColor = trackColor;
            invalidate();
        }
    }

    public final void setTrackGradient(int[] colors) {
        int i;
        y45.j(colors, "colors");
        if (isHiOSStyle()) {
            if (colors.length >= 3) {
                this.mTrackGradientActive = true;
                int[] iArrCopyOf = Arrays.copyOf(colors, colors.length);
                y45.i(iArrCopyOf, "copyOf(this, size)");
                this.mSecondTrackGradientColors = iArrCopyOf;
                this.mThumbTargetColors = colors;
                if (m()) {
                    this.mThumbOutColorBeforeGradient = this.mThumbOutColor;
                    this.mThumbOutColor = T(u());
                }
            } else {
                this.mTrackGradientActive = false;
                this.mSecondTrackGradientColors = null;
                this.mThumbTargetColors = null;
                if (!this.mThumbOutColorExplicit && (i = this.mThumbOutColorBeforeGradient) != 0) {
                    this.mThumbOutColor = i;
                }
            }
            this.mSecondTrackGradient = null;
            invalidate();
        }
    }

    public final void setVibrateAble(boolean vibrateAble) {
        this.mVibrateAble = vibrateAble;
    }

    public final void startTrackGradientAnimation(int[] targetColors) {
        int[] iArr;
        final int[] iArr2;
        y45.j(targetColors, "targetColors");
        if (!isHiOSStyle() || (iArr = this.mSecondTrackGradientColors) == null || iArr.length == 0) {
            return;
        }
        int i = this.mSecondTrackColor;
        boolean z = !(targetColors.length == 0);
        this.mTrackGradientActive = true;
        if (targetColors.length >= 3) {
            iArr2 = new int[]{targetColors[0], targetColors[1], targetColors[2]};
        } else if (targetColors.length == 2) {
            iArr2 = new int[]{targetColors[0], targetColors[0], targetColors[1]};
        } else if (targetColors.length == 1) {
            int i2 = targetColors[0];
            iArr2 = new int[]{targetColors[0], i2, i2};
        } else {
            iArr2 = new int[]{i, i, i};
        }
        this.mThumbTargetColors = iArr2;
        final int i3 = this.mGradientAnimToken + 1;
        this.mGradientAnimToken = i3;
        ValueAnimator valueAnimator = this.mTrackGradientAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.mThumbColorAnimator;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
        int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
        y45.i(iArrCopyOf, "copyOf(this, size)");
        this.mAnimStartColors = iArrCopyOf;
        this.mAnimTargetColors = iArr2;
        final int i4 = this.mThumbOutColor;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(250L);
        valueAnimatorOfFloat.setInterpolator(AnimationUtils.loadInterpolator(getContext(), com.transsion.widgetsmotionlibrary.R.interpolator.os_motion_l1_easing_linear));
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                OSSeekbar.k0(i3, this, iArr2, i4, valueAnimator3);
            }
        });
        valueAnimatorOfFloat.addListener(new h(i3, this, z, iArr2));
        valueAnimatorOfFloat.start();
        this.mTrackGradientAnimator = valueAnimatorOfFloat;
    }

    public final float u() {
        return n0(getProgressFloat());
    }

    public final void v(Canvas canvas) {
        float f2 = this.mLeft;
        float f3 = this.mRight;
        float f4 = this.mThumbCenterY;
        if (!this.isThumbOnDragging && !this.isCenterXAnimation) {
            this.mThumbCenterX = Q(this.mProgress, f2);
            if (this.isNoThumb) {
                float f5 = this.mProgress;
                if (f5 == this.max) {
                    this.mThumbCenterX = this.mRight + (this.mThumbHalfWidth / 2);
                } else if (f5 == this.min) {
                    this.mThumbCenterX = this.mLeft - (this.mThumbHalfWidth / 2);
                }
            }
        }
        this.mPaint.setColor(this.mTrackColor);
        this.mPaint.setStrokeWidth(this.mCurrentSourceTrackWidth);
        canvas.drawLine(f2, f4, f3, f4, this.mPaint);
        float f6 = this.mThumbCenterX;
        this.mPaint.setColor(getSecondTrackColor());
        this.mPaint.setStrokeWidth(this.mCurrentSourceSecondTTrackWidth);
        z();
        this.mPaint.setShader(isEnabled() ? this.mSecondTrackGradient : null);
        canvas.drawLine(f2, f4, f6, f4, this.mPaint);
        this.mPaint.setShader(null);
        if (this.mShowMiddlePoint) {
            w(f3, canvas, f4);
        }
        Drawable drawable = this.thumbDrawable;
        if (drawable != null) {
            float f7 = this.mThumbHalfWidth;
            float f8 = this.mCurrentScaleFactor;
            float f9 = (int) (f7 * ((0.1f * f8) + 0.9f) * f8);
            float f10 = this.mThumbCenterY;
            y45.g(drawable);
            drawable.setBounds((int) (f6 - f9), (int) (f10 - f9), (int) (f6 + f9), (int) (f10 + f9));
            Drawable drawable2 = this.thumbDrawable;
            y45.g(drawable2);
            drawable2.draw(canvas);
            return;
        }
        if (!this.isNoThumb && (this.isTouchOnThumb || this.isThumbOnDragging || this.isCenterXAnimation)) {
            x(canvas, this.mThumbCenterX, f4);
        }
        Paint paint = this.mThumbPaint;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        this.mThumbPaint.setColor(getThumbOutColor());
        float f11 = this.mLiquidWidth;
        float f12 = this.mLiquidHeight;
        float f13 = 2;
        float f14 = this.mThumbHalfWidth * f13;
        float f15 = 1.0f - this.mCurrentScaleFactor;
        this.mThumbPaint.setAlpha(wn8.k((int) ((1.0f - this.mCurrentAlpha) * 255), 0, 255));
        float f16 = f14 + ((f11 - f14) * f15);
        float f17 = f14 + ((f12 - f14) * f15);
        if (!this.isNoThumb) {
            float f18 = f16 / f13;
            float f19 = this.mThumbCenterY;
            float f20 = f17 / f13;
            canvas.drawOval(f6 - f18, f19 - f20, f6 + f18, f19 + f20, this.mThumbPaint);
        }
        this.mThumbPaint.setStyle(style);
        this.mThumbPaint.setColor(D(getThumbInSideColor()));
        if (this.isNoThumb) {
            return;
        }
        float f21 = this.mThumbStokeWidth * f13;
        float f22 = (f16 - f21) / f13;
        float f23 = this.mThumbCenterY;
        float f24 = (f17 - f21) / f13;
        canvas.drawOval(f6 - f22, f23 - f24, f6 + f22, f23 + f24, this.mThumbPaint);
    }

    public final void w(float xRight, Canvas canvas, float yTop) {
        float f2 = (xRight - this.mLeft) / 2;
        float f3 = olb.l0() ? xRight - f2 : this.mLeft + f2;
        if (f2 >= this.mThumbCenterX) {
            this.mPaint.setColor(this.mDotsColor);
        } else {
            this.mPaint.setColor(getDotColor());
        }
        canvas.drawCircle(f3, yTop, this.mDotsSize * 0.5f, this.mPaint);
    }

    public final void x(Canvas canvas, float centerX, float centerY) {
        a67 a67Var;
        float f2 = this.mLiquidWidth;
        float f3 = this.mLiquidHeight;
        float f4 = 2;
        float f5 = this.mThumbHalfWidth * f4;
        float f6 = 1.0f - this.mCurrentScaleFactor;
        float f7 = ((f2 - f5) * f6) + f5;
        float f8 = ((f3 - f5) * f6) + f5;
        if (this.mLiquidDrawable == null) {
            a67 a67Var2 = new a67(this.mContext, this.mLiquidRadius);
            this.mLiquidDrawable = a67Var2;
            a67Var2.setStrokeWidth(olb.h(this.mContext, 1));
            a67 a67Var3 = this.mLiquidDrawable;
            if (a67Var3 != null) {
                a67Var3.h(true);
            }
        }
        getResources().getColor(R.color.os_liquid_thumb_color);
        this.mWhiteBackDrawable.setColor(-1);
        float f9 = f5 / 2.0f;
        float f10 = f9 + ((this.mLiquidRadius - f9) * f6);
        float f11 = olb.e0(getContext()) ? 0.2f : 0.5f;
        int iK = wn8.k((int) (this.mCurrentAlpha * 255), 0, 255);
        if (iK == 0) {
            return;
        }
        this.mWhiteBackDrawable.setCornerRadius(f10);
        float f12 = iK;
        this.mWhiteBackDrawable.setAlpha(wn8.k((int) (f11 * f12), 0, 255));
        this.mWhiteBackDrawable.setBounds(0, 0, (int) f7, (int) f8);
        canvas.save();
        canvas.translate(centerX - (f7 / f4), centerY - (f8 / f4));
        this.mWhiteBackDrawable.draw(canvas);
        a67 a67Var4 = this.mLiquidDrawable;
        if (a67Var4 != null) {
            a67Var4.setAlpha(iK);
        }
        if (f12 > 249.90001f) {
            a67 a67Var5 = this.mLiquidDrawable;
            if (a67Var5 != null) {
                a67Var5.setShowOutline(true);
            }
        } else {
            a67 a67Var6 = this.mLiquidDrawable;
            if (a67Var6 != null) {
                a67Var6.setShowOutline(false);
            }
        }
        if (Build.VERSION.SDK_INT >= 30 && (a67Var = this.mLiquidDrawable) != null) {
            a67Var.c(canvas, f7, f8, false);
        }
        canvas.restore();
    }

    public final void y(Canvas canvas) {
        float f2;
        float f3;
        float f4 = this.mLeft;
        float f5 = this.mRight;
        float f6 = this.mThumbCenterY;
        if (!this.isThumbOnDragging && !this.isCenterXAnimation) {
            this.mThumbCenterX = Q(this.mProgress, f4);
        }
        this.mPaint.setColor(this.mTrackColor);
        this.mPaint.setStrokeWidth(this.mSourceTrackWidth);
        float f7 = this.mThumbHalfWidth;
        float f8 = this.mThumbStokeWidth;
        canvas.drawLine((f4 - f7) + f8, f6, (f7 + f5) - f8, f6, this.mPaint);
        float f9 = this.mThumbCenterX;
        this.mPaint.setColor(getSecondTrackColor());
        this.mPaint.setStrokeWidth(this.mSourceSecondTTrackWidth);
        canvas.drawLine((f4 - this.mThumbHalfWidth) + this.mThumbStokeWidth, f6, f9, f6, this.mPaint);
        if (this.mShowMiddlePoint) {
            W(f5, canvas, f6);
        }
        this.mThumbPaint.setColor(getThumbOutColor());
        Paint paint = this.mThumbPaint;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        boolean zP0 = p0();
        float f10 = this.mCurrentThumbInScal;
        float f11 = this.mCurrentThumbInHalfWidth;
        float f12 = this.mThumbCenterY;
        float f13 = this.mSourceThumbInHalfHeight;
        float f14 = f12 - (f13 * f10);
        float f15 = f12 + (f13 * f10);
        int i = this.mThumbScalType;
        if (i == 0) {
            float f16 = this.mSourceThumbInHalfWidth;
            float f17 = f9 - ((f11 + (f11 - f16)) * f10);
            f2 = f9 + (f16 * f10);
            f3 = f17;
        } else if (i == 1 || i != 2) {
            float f18 = f11 * f10;
            f3 = f9 - f18;
            f2 = f9 + f18;
        } else {
            float f19 = this.mSourceThumbInHalfWidth;
            float f20 = f9 - (f19 * f10);
            f2 = f9 + ((f11 + (f11 - f19)) * f10);
            f3 = f20;
        }
        float f21 = this.mThumbStokeWidth * this.mCurrentThumbOutScal;
        float fMax = (float) Math.max(f3, f21);
        float fMin = (float) Math.min(f2, getWidth() - f21);
        float fMax2 = (float) Math.max(fMax - f21, 0.0d);
        float f22 = f14 - f21;
        float fMin2 = (float) Math.min(fMin + f21, getWidth());
        float f23 = f15 + f21;
        float f24 = this.mSourceThumbInHalfHeight * f10;
        float f25 = f24 + f21;
        Drawable drawable = this.thumbDrawable;
        if (drawable == null) {
            canvas.drawRoundRect(fMax2, f22, fMin2, f23, f25, f25, this.mThumbPaint);
            this.mThumbPaint.setStyle(style);
            this.mThumbPaint.setColor(getThumbInSideColor());
            canvas.drawRoundRect(fMax, f14, fMin, f15, f24, f24, this.mThumbPaint);
            if (zP0) {
                invalidate();
                return;
            }
            return;
        }
        y45.g(drawable);
        drawable.setBounds((int) fMax2, (int) f22, (int) fMin2, (int) f23);
        Drawable drawable2 = this.thumbDrawable;
        y45.g(drawable2);
        drawable2.draw(canvas);
        if (zP0) {
            invalidate();
        }
    }

    public final void z() {
        int[] iArr = this.mSecondTrackGradientColors;
        if (iArr == null || this.mRight <= this.mLeft) {
            this.mSecondTrackGradient = null;
            this.mSecondTrackCacheColors = null;
            return;
        }
        int[] iArr2 = this.mSecondTrackCacheColors;
        if (this.mSecondTrackGradient == null || iArr2 == null || !Arrays.equals(iArr2, iArr)) {
            this.mSecondTrackGradient = new LinearGradient(0.0f, 0.0f, 1.0f, 0.0f, iArr, this.mGradientPositions, Shader.TileMode.CLAMP);
            if (iArr2 == null || iArr2.length < iArr.length) {
                int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
                y45.i(iArrCopyOf, "copyOf(this, size)");
                this.mSecondTrackCacheColors = iArrCopyOf;
            } else {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            }
        }
        this.mSecondTrackMatrix.reset();
        this.mSecondTrackMatrix.setScale(this.mRight - this.mLeft, 1.0f);
        this.mSecondTrackMatrix.postTranslate(this.mLeft, 0.0f);
        LinearGradient linearGradient = this.mSecondTrackGradient;
        if (linearGradient != null) {
            linearGradient.setLocalMatrix(this.mSecondTrackMatrix);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSSeekbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "mContext");
    }

    public OSSeekbar(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSSeekbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "mContext");
        this.mContext = context;
        this.mCurrentThumbInScal = 1.0f;
        this.mCurrentThumbOutScal = 1.0f;
        this.mCurrentScaleFactor = 1.0f;
        this.mFromScaleFactor = 1.0f;
        this.mThumbInsideColorAlpha = 255;
        this.mThumbWidthTrackAnimator = new uua();
        uua uuaVar = new uua();
        this.mThumbCenterXTrackAnimator = uuaVar;
        this.mLastCallbackProgress = Float.MIN_VALUE;
        this.mLiquidWidth = getResources().getDimensionPixelSize(R.dimen.os_thumb_width);
        this.mLiquidHeight = getResources().getDimensionPixelSize(R.dimen.os_thumb_height);
        this.mLiquidRadius = getResources().getDimensionPixelSize(R.dimen.os_liquid_radius);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(-1);
        this.mWhiteBackDrawable = gradientDrawable;
        this.onlyHiOSStyle = true;
        this.mVibrateRunnable = new Runnable() {
            @Override
            public final void run() {
                OSSeekbar.H(this.b);
            }
        };
        this.mVibrateAble = true;
        this.mShowMiddlePointPercent = 50;
        this.mSecondTrackMatrix = new Matrix();
        this.mAnimInterpolatedColors = new int[3];
        this.mGradientPositions = new float[]{0.1f, 0.78f, 1.0f};
        getConfigBuilder().a();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OSSeekbar, i, 0);
        y45.i(typedArrayObtainStyledAttributes, "mContext.obtainStyledAtt…Seekbar, defStyleAttr, 0)");
        boolean z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSSeekbar_osSeekbarOnlyHiOSStyle, true);
        this.onlyHiOSStyle = z;
        if (z) {
            getConfigBuilder().c().a();
            this.isNoThumb = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSSeekbar_osSeekbarNoThumb, false);
        }
        this.min = typedArrayObtainStyledAttributes.getFloat(R.styleable.OSSeekbar_osSeekbarMin, 0.0f);
        this.max = typedArrayObtainStyledAttributes.getFloat(R.styleable.OSSeekbar_osSeekbarMax, 100.0f);
        this.mProgress = typedArrayObtainStyledAttributes.getFloat(R.styleable.OSSeekbar_osSeekbarProgress, this.min);
        setEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSSeekbar_android_enabled, isEnabled()));
        this.thumbDrawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.OSSeekbar_osSeekbarThumb);
        int i2 = R.styleable.OSSeekbar_osSeekbarTrackColor;
        if (typedArrayObtainStyledAttributes.hasValue(i2)) {
            setTrackColor(typedArrayObtainStyledAttributes.getColor(i2, this.mTrackColor));
        }
        int i3 = R.styleable.OSSeekbar_osSeekbarSecondTrackColor;
        if (typedArrayObtainStyledAttributes.hasValue(i3)) {
            setSecondTrackColor(typedArrayObtainStyledAttributes.getColor(i3, this.mSecondTrackColor));
        }
        typedArrayObtainStyledAttributes.recycle();
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setAntiAlias(true);
        Paint.Cap cap = Paint.Cap.ROUND;
        paint.setStrokeCap(cap);
        Paint.Align align = Paint.Align.CENTER;
        paint.setTextAlign(align);
        Paint paint2 = new Paint();
        this.mThumbPaint = paint2;
        paint2.setAntiAlias(true);
        paint2.setDither(true);
        paint2.setStrokeCap(cap);
        paint2.setTextAlign(align);
        uuaVar.setMaxSpeedFractor(0.25f);
        uuaVar.setMinSpeedFractor(0.25f);
        F();
        if (olb.l0() && getRotation() == 0.0f) {
            setRotation(180.0f);
        }
    }
}
