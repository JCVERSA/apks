package com.yandex.div.internal.widget.slider;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.SeekBar;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.RequestConfiguration;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.yandex.div.R;
import com.yandex.div.internal.widget.slider.SliderView;
import defpackage.dha;
import defpackage.mp9;
import defpackage.pdc;
import defpackage.qd7;
import defpackage.s86;
import defpackage.wn8;
import defpackage.y45;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000À\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u001b*\u0002hk\b\u0016\u0018\u00002\u00020\u0001:\u0007Ý\u0001]adÞ\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0011\u001a\u00020\u000e2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0017\u0010\u0016J\r\u0010\u0018\u001a\u00020\u000e¢\u0006\u0004\b\u0018\u0010\u0019J\u001f\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0006H\u0014¢\u0006\u0004\b \u0010\u001fJ\u0017\u0010#\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020!H\u0014¢\u0006\u0004\b#\u0010$J\u0017\u0010'\u001a\u00020\f2\u0006\u0010&\u001a\u00020%H\u0017¢\u0006\u0004\b'\u0010(J)\u0010-\u001a\u00020\u000e2\u0006\u0010)\u001a\u00020\f2\u0006\u0010*\u001a\u00020\u00062\b\u0010,\u001a\u0004\u0018\u00010+H\u0014¢\u0006\u0004\b-\u0010.J\u0017\u00100\u001a\u00020\f2\u0006\u0010/\u001a\u00020%H\u0014¢\u0006\u0004\b0\u0010(J\u0017\u00102\u001a\u00020\f2\u0006\u0010/\u001a\u000201H\u0016¢\u0006\u0004\b2\u00103J!\u00106\u001a\u00020\u000e2\b\u00104\u001a\u0004\u0018\u00010\n2\u0006\u00105\u001a\u00020\nH\u0002¢\u0006\u0004\b6\u00107J#\u00108\u001a\u00020\u000e2\b\u00104\u001a\u0004\u0018\u00010\n2\b\u00105\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b8\u00109J)\u0010;\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\f2\u0006\u0010:\u001a\u00020\fH\u0002¢\u0006\u0004\b;\u0010<J)\u0010=\u001a\u00020\u000e2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010:\u001a\u00020\fH\u0002¢\u0006\u0004\b=\u0010>J\u001f\u0010A\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\u00062\u0006\u0010@\u001a\u00020\u0006H\u0002¢\u0006\u0004\bA\u0010BJ\u0017\u0010E\u001a\u00020D2\u0006\u0010C\u001a\u00020\u0006H\u0002¢\u0006\u0004\bE\u0010FJ1\u0010H\u001a\u00020\u000e2\u0006\u0010G\u001a\u00020D2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\b\b\u0002\u0010:\u001a\u00020\fH\u0002¢\u0006\u0004\bH\u0010IJ\u0017\u0010J\u001a\u00020\n2\u0006\u0010C\u001a\u00020\u0006H\u0002¢\u0006\u0004\bJ\u0010KJ\u000f\u0010L\u001a\u00020\fH\u0002¢\u0006\u0004\bL\u0010MJ\u000f\u0010N\u001a\u00020\u000eH\u0002¢\u0006\u0004\bN\u0010\u0019J\u000f\u0010O\u001a\u00020\u000eH\u0002¢\u0006\u0004\bO\u0010\u0019J\u001d\u0010Q\u001a\u00020\u0006*\u00020\n2\b\b\u0002\u0010P\u001a\u00020\u0006H\u0003¢\u0006\u0004\bQ\u0010RJ\u0019\u0010S\u001a\u00020\u00062\b\b\u0002\u0010P\u001a\u00020\u0006H\u0002¢\u0006\u0004\bS\u0010TJ\u0013\u0010U\u001a\u00020\u0006*\u00020\u0006H\u0003¢\u0006\u0004\bU\u0010TJ\u0013\u0010V\u001a\u00020\n*\u00020\u0006H\u0002¢\u0006\u0004\bV\u0010KJ\u0013\u0010W\u001a\u00020\n*\u00020\nH\u0002¢\u0006\u0004\bW\u0010XJ\u0013\u0010Z\u001a\u00020\u000e*\u00020YH\u0002¢\u0006\u0004\bZ\u0010[R\u0014\u0010_\u001a\u00020\\8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b]\u0010^R\u001a\u0010c\u001a\b\u0012\u0004\u0012\u00020\u00130`8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\ba\u0010bR\u0018\u0010f\u001a\u0004\u0018\u00010Y8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010eR\u0018\u0010g\u001a\u0004\u0018\u00010Y8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010eR\u0014\u0010j\u001a\u00020h8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u0010iR\u0014\u0010m\u001a\u00020k8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bS\u0010lR\u001d\u0010t\u001a\b\u0012\u0004\u0012\u00020o0n8\u0006¢\u0006\f\n\u0004\bp\u0010q\u001a\u0004\br\u0010sR*\u0010{\u001a\u00020u2\u0006\u0010\u000b\u001a\u00020u8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\bW\u0010v\u001a\u0004\bw\u0010x\"\u0004\by\u0010zR%\u0010\u0082\u0001\u001a\u00020|8\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\bL\u0010}\u001a\u0004\b~\u0010\u007f\"\u0006\b\u0080\u0001\u0010\u0081\u0001R'\u0010\u0087\u0001\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\bA\u0010\u0083\u0001\u001a\u0005\b\u0084\u0001\u0010M\"\u0006\b\u0085\u0001\u0010\u0086\u0001R0\u0010\u008d\u0001\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\b6\u0010\u0088\u0001\u001a\u0006\b\u0089\u0001\u0010\u008a\u0001\"\u0006\b\u008b\u0001\u0010\u008c\u0001R0\u0010\u0090\u0001\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\b8\u0010\u0088\u0001\u001a\u0006\b\u008e\u0001\u0010\u008a\u0001\"\u0006\b\u008f\u0001\u0010\u008c\u0001R7\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u0091\u00012\t\u0010\u000b\u001a\u0005\u0018\u00010\u0091\u00018\u0006@FX\u0086\u000e¢\u0006\u0018\n\u0006\b\u0092\u0001\u0010\u0093\u0001\u001a\u0006\b\u0094\u0001\u0010\u0095\u0001\"\u0006\b\u0096\u0001\u0010\u0097\u0001R7\u0010\u009c\u0001\u001a\u0005\u0018\u00010\u0091\u00012\t\u0010\u000b\u001a\u0005\u0018\u00010\u0091\u00018\u0006@FX\u0086\u000e¢\u0006\u0018\n\u0006\b\u0099\u0001\u0010\u0093\u0001\u001a\u0006\b\u009a\u0001\u0010\u0095\u0001\"\u0006\b\u009b\u0001\u0010\u0097\u0001R6\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u0091\u00012\t\u0010\u000b\u001a\u0005\u0018\u00010\u0091\u00018\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\bN\u0010\u0093\u0001\u001a\u0006\b\u009d\u0001\u0010\u0095\u0001\"\u0006\b\u009e\u0001\u0010\u0097\u0001R6\u0010¢\u0001\u001a\u0005\u0018\u00010\u0091\u00012\t\u0010\u000b\u001a\u0005\u0018\u00010\u0091\u00018\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\bO\u0010\u0093\u0001\u001a\u0006\b \u0001\u0010\u0095\u0001\"\u0006\b¡\u0001\u0010\u0097\u0001R)\u0010¥\u0001\u001a\u00020\n2\u0007\u0010£\u0001\u001a\u00020\n8\u0006@BX\u0086\u000e¢\u0006\u000f\n\u0005\bH\u0010\u0088\u0001\u001a\u0006\b¤\u0001\u0010\u008a\u0001R8\u0010ª\u0001\u001a\u0005\u0018\u00010\u0091\u00012\n\u0010¦\u0001\u001a\u0005\u0018\u00010\u0091\u00018\u0006@FX\u0086\u000e¢\u0006\u0018\n\u0006\b§\u0001\u0010\u0093\u0001\u001a\u0006\b¨\u0001\u0010\u0095\u0001\"\u0006\b©\u0001\u0010\u0097\u0001R7\u0010±\u0001\u001a\u0005\u0018\u00010«\u00012\n\u0010¦\u0001\u001a\u0005\u0018\u00010«\u00018\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\bQ\u0010¬\u0001\u001a\u0006\b\u00ad\u0001\u0010®\u0001\"\u0006\b¯\u0001\u0010°\u0001R-\u0010µ\u0001\u001a\u0004\u0018\u00010\n2\t\u0010£\u0001\u001a\u0004\u0018\u00010\n8\u0006@BX\u0086\u000e¢\u0006\u000f\n\u0005\bU\u0010²\u0001\u001a\u0006\b³\u0001\u0010´\u0001R\u001c\u0010¹\u0001\u001a\u00070¶\u0001R\u00020\u00008\u0002X\u0082\u0004¢\u0006\b\n\u0006\b·\u0001\u0010¸\u0001R6\u0010¼\u0001\u001a\u0005\u0018\u00010\u0091\u00012\t\u0010\u000b\u001a\u0005\u0018\u00010\u0091\u00018\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\bV\u0010\u0093\u0001\u001a\u0006\bº\u0001\u0010\u0095\u0001\"\u0006\b»\u0001\u0010\u0097\u0001R7\u0010¿\u0001\u001a\u0005\u0018\u00010«\u00012\n\u0010¦\u0001\u001a\u0005\u0018\u00010«\u00018\u0006@FX\u0086\u000e¢\u0006\u0017\n\u0005\b=\u0010¬\u0001\u001a\u0006\b½\u0001\u0010®\u0001\"\u0006\b¾\u0001\u0010°\u0001R \u0010Ã\u0001\u001a\u00020\u00068B@\u0002X\u0082\u000e¢\u0006\u000f\n\u0006\bÀ\u0001\u0010Á\u0001\u001a\u0005\bÂ\u0001\u0010\u001fR\u001b\u0010Æ\u0001\u001a\u00070Ä\u0001R\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b;\u0010Å\u0001R\u0019\u0010É\u0001\u001a\u00020D8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÇ\u0001\u0010È\u0001R(\u0010Í\u0001\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\bÊ\u0001\u0010\u0083\u0001\u001a\u0005\bË\u0001\u0010M\"\u0006\bÌ\u0001\u0010\u0086\u0001R1\u0010Ñ\u0001\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0018\n\u0006\bÎ\u0001\u0010\u0088\u0001\u001a\u0006\bÏ\u0001\u0010\u008a\u0001\"\u0006\bÐ\u0001\u0010\u008c\u0001R\u0019\u0010Ó\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÒ\u0001\u0010\u0088\u0001R\u0019\u0010Õ\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÔ\u0001\u0010\u0088\u0001R\u0019\u0010Ö\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0088\u0001\u0010\u0088\u0001R\u001b\u0010Ù\u0001\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b×\u0001\u0010Ø\u0001R\u001d\u0010Û\u0001\u001a\u00020\u0006*\u0005\u0018\u00010\u0091\u00018BX\u0082\u0004¢\u0006\u0007\u001a\u0005\bd\u0010Ú\u0001R\u001d\u0010Ü\u0001\u001a\u00020\u0006*\u0005\u0018\u00010\u0091\u00018BX\u0082\u0004¢\u0006\u0007\u001a\u0005\ba\u0010Ú\u0001¨\u0006ß\u0001"}, d2 = {"Lcom/yandex/div/internal/widget/slider/SliderView;", "Landroid/view/View;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", ES6Iterator.VALUE_PROPERTY, "", "animated", "Lzfb;", "setThumbValue", "(FZ)V", "setThumbSecondaryValue", "(Ljava/lang/Float;Z)V", "Lcom/yandex/div/internal/widget/slider/SliderView$c;", "listener", "addOnThumbChangedListener", "(Lcom/yandex/div/internal/widget/slider/SliderView$c;)V", "removeOnChangedListener", "clearOnThumbChangedListener", "()V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "getSuggestedMinimumHeight", "()I", "getSuggestedMinimumWidth", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "Landroid/view/MotionEvent;", "ev", "onTouchEvent", "(Landroid/view/MotionEvent;)Z", "gainFocus", ICode.CALL.CALL_KEY_DIRECTION, "Landroid/graphics/Rect;", "previouslyFocusedRect", "onFocusChanged", "(ZILandroid/graphics/Rect;)V", NotificationCompat.CATEGORY_EVENT, "dispatchHoverEvent", "Landroid/view/KeyEvent;", "dispatchKeyEvent", "(Landroid/view/KeyEvent;)Z", "prevValue", "newValue", CmcdData.STREAM_TYPE_LIVE, "(Ljava/lang/Float;F)V", CmcdData.OBJECT_TYPE_MANIFEST, "(Ljava/lang/Float;Ljava/lang/Float;)V", "forced", "z", "(FZZ)V", "x", "(Ljava/lang/Float;ZZ)V", "desiredSize", "measureSpec", "k", "(II)I", "position", "Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;", "e", "(I)Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;", "thumb", "r", "(Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;FZZ)V", "f", "(I)F", "j", "()Z", TtmlNode.TAG_P, "q", "viewWidth", "t", "(FI)I", GslbInterceptor.HEADER_KEY_GSLB, "(I)I", "u", "w", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "(F)F", "Landroid/animation/ValueAnimator;", "setBaseParams", "(Landroid/animation/ValueAnimator;)V", "Lmp9;", "b", "Lmp9;", "sliderDrawDelegate", "Lqd7;", "c", "Lqd7;", "listeners", "d", "Landroid/animation/ValueAnimator;", "sliderAnimator", "sliderSecondaryAnimator", "com/yandex/div/internal/widget/slider/SliderView$f", "Lcom/yandex/div/internal/widget/slider/SliderView$f;", "animatorListener", "com/yandex/div/internal/widget/slider/SliderView$g", "Lcom/yandex/div/internal/widget/slider/SliderView$g;", "animatorSecondaryListener", "", "Lcom/yandex/div/internal/widget/slider/SliderView$d;", CmcdData.STREAMING_FORMAT_HLS, "Ljava/util/List;", "getRanges", "()Ljava/util/List;", "ranges", "", "J", "getAnimationDuration", "()J", "setAnimationDuration", "(J)V", "animationDuration", "Landroid/view/animation/AccelerateDecelerateInterpolator;", "Landroid/view/animation/AccelerateDecelerateInterpolator;", "getAnimationInterpolator", "()Landroid/view/animation/AccelerateDecelerateInterpolator;", "setAnimationInterpolator", "(Landroid/view/animation/AccelerateDecelerateInterpolator;)V", "animationInterpolator", "Z", "getAnimationEnabled", "setAnimationEnabled", "(Z)V", "animationEnabled", "F", "getMinValue", "()F", "setMinValue", "(F)V", "minValue", "getMaxValue", "setMaxValue", "maxValue", "Landroid/graphics/drawable/Drawable;", "n", "Landroid/graphics/drawable/Drawable;", "getActiveTickMarkDrawable", "()Landroid/graphics/drawable/Drawable;", "setActiveTickMarkDrawable", "(Landroid/graphics/drawable/Drawable;)V", "activeTickMarkDrawable", "o", "getInactiveTickMarkDrawable", "setInactiveTickMarkDrawable", "inactiveTickMarkDrawable", "getActiveTrackDrawable", "setActiveTrackDrawable", "activeTrackDrawable", "getInactiveTrackDrawable", "setInactiveTrackDrawable", "inactiveTrackDrawable", "<set-?>", "getThumbValue", "thumbValue", "drawable", "s", "getThumbDrawable", "setThumbDrawable", "thumbDrawable", "Ldha;", "Ldha;", "getThumbTextDrawable", "()Ldha;", "setThumbTextDrawable", "(Ldha;)V", "thumbTextDrawable", "Ljava/lang/Float;", "getThumbSecondaryValue", "()Ljava/lang/Float;", "thumbSecondaryValue", "Lcom/yandex/div/internal/widget/slider/SliderView$a;", "v", "Lcom/yandex/div/internal/widget/slider/SliderView$a;", "a11yHelper", "getThumbSecondaryDrawable", "setThumbSecondaryDrawable", "thumbSecondaryDrawable", "getThumbSecondTextDrawable", "setThumbSecondTextDrawable", "thumbSecondTextDrawable", "y", "I", "getMaxTickmarkOrThumbWidth", "maxTickmarkOrThumbWidth", "Lcom/yandex/div/internal/widget/slider/SliderView$b;", "Lcom/yandex/div/internal/widget/slider/SliderView$b;", "activeRange", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;", "thumbOnTouch", "B", "getInteractive", "setInteractive", "interactive", "C", "getInterceptionAngle", "setInterceptionAngle", "interceptionAngle", "D", "interceptionAngleTg", ExifInterface.LONGITUDE_EAST, "prevX", "prevY", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "Ljava/lang/Integer;", "touchSlop", "(Landroid/graphics/drawable/Drawable;)I", "boundsWidth", "boundsHeight", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Thumb", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class SliderView extends View {

    public Thumb thumbOnTouch;

    public boolean interactive;

    public float interceptionAngle;

    public float interceptionAngleTg;

    public float prevX;

    public float prevY;

    public Integer touchSlop;

    public final mp9 sliderDrawDelegate;

    public final qd7 listeners;

    public ValueAnimator sliderAnimator;

    public ValueAnimator sliderSecondaryAnimator;

    public final f animatorListener;

    public final g animatorSecondaryListener;

    public final List ranges;

    public long animationDuration;

    public AccelerateDecelerateInterpolator animationInterpolator;

    public boolean animationEnabled;

    public float minValue;

    public float maxValue;

    public Drawable activeTickMarkDrawable;

    public Drawable inactiveTickMarkDrawable;

    public Drawable activeTrackDrawable;

    public Drawable inactiveTrackDrawable;

    public float thumbValue;

    public Drawable thumbDrawable;

    public dha thumbTextDrawable;

    public Float thumbSecondaryValue;

    public final a a11yHelper;

    public Drawable thumbSecondaryDrawable;

    public dha thumbSecondTextDrawable;

    public int maxTickmarkOrThumbWidth;

    public final b activeRange;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0082\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/yandex/div/internal/widget/slider/SliderView$Thumb;", "", "(Ljava/lang/String;I)V", "THUMB", "THUMB_SECONDARY", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum Thumb {
        THUMB,
        THUMB_SECONDARY
    }

    public final class a extends ExploreByTouchHelper {
        public final SliderView a;
        public final Rect b;
        public final SliderView c;

        public class C0304a {
            public static final int[] a;

            static {
                int[] iArr = new int[Thumb.values().length];
                try {
                    iArr[Thumb.THUMB.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Thumb.THUMB_SECONDARY.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(SliderView sliderView, SliderView sliderView2) {
            super(sliderView2);
            y45.j(sliderView2, "slider");
            this.c = sliderView;
            this.a = sliderView2;
            this.b = new Rect();
        }

        public final int a() {
            return Math.max(s86.b(((double) (this.c.getMaxValue() - this.c.getMinValue())) * 0.05d), 1);
        }

        public final void b(int i, float f) {
            this.c.r(c(i), this.c.i(f), false, true);
            sendEventForVirtualView(i, 4);
            invalidateVirtualView(i);
        }

        public final Thumb c(int i) {
            if (i != 0 && this.c.getThumbSecondaryValue() != null) {
                return Thumb.THUMB_SECONDARY;
            }
            return Thumb.THUMB;
        }

        public final float d(int i) {
            Float thumbSecondaryValue;
            if (i != 0 && (thumbSecondaryValue = this.c.getThumbSecondaryValue()) != null) {
                return thumbSecondaryValue.floatValue();
            }
            return this.c.getThumbValue();
        }

        public final void e(int i) {
            int iD;
            int iC;
            if (i == 1) {
                SliderView sliderView = this.c;
                iD = sliderView.d(sliderView.getThumbSecondaryDrawable());
                SliderView sliderView2 = this.c;
                iC = sliderView2.c(sliderView2.getThumbSecondaryDrawable());
            } else {
                SliderView sliderView3 = this.c;
                iD = sliderView3.d(sliderView3.getThumbDrawable());
                SliderView sliderView4 = this.c;
                iC = sliderView4.c(sliderView4.getThumbDrawable());
            }
            int iV = SliderView.v(this.c, d(i), 0, 1, null) + this.a.getPaddingLeft();
            Rect rect = this.b;
            rect.left = iV;
            rect.right = iV + iD;
            int i2 = iC / 2;
            rect.top = (this.a.getHeight() / 2) - i2;
            this.b.bottom = (this.a.getHeight() / 2) + i2;
        }

        @Override
        public int getVirtualViewAt(float f, float f2) {
            if (f < this.c.getLeftPaddingOffset()) {
                return 0;
            }
            int i = C0304a.a[this.c.e((int) f).ordinal()];
            if (i == 1) {
                return 0;
            }
            if (i == 2) {
                return 1;
            }
            throw new NoWhenBranchMatchedException();
        }

        @Override
        public void getVisibleVirtualViews(List list) {
            y45.j(list, "virtualViewIds");
            list.add(0);
            if (this.c.getThumbSecondaryValue() != null) {
                list.add(1);
            }
        }

        @Override
        public boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
            if (i2 == 4096) {
                b(i, d(i) + a());
                return true;
            }
            if (i2 == 8192) {
                b(i, d(i) - a());
                return true;
            }
            if (i2 != 16908349 || bundle == null || !bundle.containsKey(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_PROGRESS_VALUE)) {
                return false;
            }
            b(i, bundle.getFloat(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_PROGRESS_VALUE));
            return true;
        }

        @Override
        public void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            y45.j(accessibilityNodeInfoCompat, "node");
            accessibilityNodeInfoCompat.setClassName(SeekBar.class.getName());
            accessibilityNodeInfoCompat.setRangeInfo(AccessibilityNodeInfoCompat.RangeInfoCompat.obtain(0, this.c.getMinValue(), this.c.getMaxValue(), d(i)));
            StringBuilder sb = new StringBuilder();
            CharSequence contentDescription = this.a.getContentDescription();
            if (contentDescription != null) {
                sb.append(contentDescription);
                sb.append(StringUtils.COMMA);
            }
            sb.append(startOrEndDescription(i));
            accessibilityNodeInfoCompat.setContentDescription(sb.toString());
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
            e(i);
            accessibilityNodeInfoCompat.setBoundsInParent(this.b);
        }

        public final String startOrEndDescription(int i) {
            if (this.c.getThumbSecondaryValue() == null) {
                return "";
            }
            if (i == 0) {
                String string = this.c.getContext().getString(R.string.div_slider_range_start);
                y45.i(string, "context.getString(R.string.div_slider_range_start)");
                return string;
            }
            if (i != 1) {
                return "";
            }
            String string2 = this.c.getContext().getString(R.string.div_slider_range_end);
            y45.i(string2, "context.getString(R.string.div_slider_range_end)");
            return string2;
        }
    }

    public final class b {
        public b() {
        }

        public final float a() {
            return !SliderView.this.j() ? SliderView.this.getThumbValue() : c(SliderView.this.getThumbValue(), SliderView.this.getThumbSecondaryValue());
        }

        public final float b() {
            return !SliderView.this.j() ? SliderView.this.getMinValue() : d(SliderView.this.getThumbValue(), SliderView.this.getThumbSecondaryValue());
        }

        public final float c(float f, Float f2) {
            return f2 != null ? Math.max(f, f2.floatValue()) : f;
        }

        public final float d(float f, Float f2) {
            return f2 != null ? Math.min(f, f2.floatValue()) : f;
        }
    }

    public interface c {
        default void a(float f) {
        }

        default void b(Float f) {
        }
    }

    public static final class d {
        public float a;
        public float b;
        public int c;
        public int d;
        public Drawable e;
        public Drawable f;
        public int g;
        public int h;

        public final Drawable a() {
            return this.e;
        }

        public final int b() {
            return this.h;
        }

        public final float c() {
            return this.b;
        }

        public final Drawable d() {
            return this.f;
        }

        public final int e() {
            return this.d;
        }

        public final int f() {
            return this.c;
        }

        public final int g() {
            return this.g;
        }

        public final float h() {
            return this.a;
        }

        public final void i(Drawable drawable) {
            this.e = drawable;
        }

        public final void j(int i) {
            this.h = i;
        }

        public final void k(float f) {
            this.b = f;
        }

        public final void l(Drawable drawable) {
            this.f = drawable;
        }

        public final void m(int i) {
            this.d = i;
        }

        public final void n(int i) {
            this.c = i;
        }

        public final void o(int i) {
            this.g = i;
        }

        public final void p(float f) {
            this.a = f;
        }
    }

    public class e {
        public static final int[] a;

        static {
            int[] iArr = new int[Thumb.values().length];
            try {
                iArr[Thumb.THUMB.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Thumb.THUMB_SECONDARY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public static final class f implements Animator.AnimatorListener {
        public float b;
        public boolean c;

        public f() {
        }

        public final float a() {
            return this.b;
        }

        public final void b(float f) {
            this.b = f;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            y45.j(animator, "animation");
            this.c = true;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animation");
            SliderView.this.sliderAnimator = null;
            if (this.c) {
                return;
            }
            SliderView.this.l(Float.valueOf(this.b), SliderView.this.getThumbValue());
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
            y45.j(animator, "animation");
        }

        @Override
        public void onAnimationStart(Animator animator) {
            y45.j(animator, "animation");
            this.c = false;
        }
    }

    public static final class g implements Animator.AnimatorListener {
        public Float b;
        public boolean c;

        public g() {
        }

        public final Float a() {
            return this.b;
        }

        public final void b(Float f) {
            this.b = f;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            y45.j(animator, "animation");
            this.c = true;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animation");
            SliderView.this.sliderSecondaryAnimator = null;
            if (this.c) {
                return;
            }
            SliderView sliderView = SliderView.this;
            sliderView.m(this.b, sliderView.getThumbSecondaryValue());
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
            y45.j(animator, "animation");
        }

        @Override
        public void onAnimationStart(Animator animator) {
            y45.j(animator, "animation");
            this.c = false;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SliderView(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public static final void A(SliderView sliderView, ValueAnimator valueAnimator) {
        y45.j(sliderView, "this$0");
        y45.j(valueAnimator, "it");
        Object animatedValue = valueAnimator.getAnimatedValue();
        y45.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        sliderView.thumbValue = ((Float) animatedValue).floatValue();
        sliderView.postInvalidateOnAnimation();
    }

    private final int getMaxTickmarkOrThumbWidth() {
        if (this.maxTickmarkOrThumbWidth == -1) {
            this.maxTickmarkOrThumbWidth = Math.max(Math.max(d(this.activeTickMarkDrawable), d(this.inactiveTickMarkDrawable)), Math.max(d(this.thumbDrawable), d(this.thumbSecondaryDrawable)));
        }
        return this.maxTickmarkOrThumbWidth;
    }

    public static int h(SliderView sliderView, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getTrackLength");
        }
        if ((i2 & 1) != 0) {
            i = sliderView.getWidth();
        }
        return sliderView.g(i);
    }

    public static final void n(d dVar, SliderView sliderView, Canvas canvas, Drawable drawable, int i, int i2) {
        sliderView.sliderDrawDelegate.f(canvas, drawable, i, i2);
    }

    public static void o(d dVar, SliderView sliderView, Canvas canvas, Drawable drawable, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onDraw$lambda$10$drawTrackPart");
        }
        if ((i3 & 16) != 0) {
            i = dVar.g();
        }
        int i4 = i;
        if ((i3 & 32) != 0) {
            i2 = dVar.b();
        }
        n(dVar, sliderView, canvas, drawable, i4, i2);
    }

    public static void s(SliderView sliderView, Thumb thumb, float f2, boolean z, boolean z2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setValueToThumb");
        }
        if ((i & 8) != 0) {
            z2 = false;
        }
        sliderView.r(thumb, f2, z, z2);
    }

    private final void setBaseParams(ValueAnimator valueAnimator) {
        valueAnimator.setDuration(this.animationDuration);
        valueAnimator.setInterpolator(this.animationInterpolator);
    }

    public static void setThumbSecondaryValue$default(SliderView sliderView, Float f2, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setThumbSecondaryValue");
        }
        if ((i & 2) != 0) {
            z = sliderView.animationEnabled;
        }
        sliderView.setThumbSecondaryValue(f2, z);
    }

    public static void setThumbValue$default(SliderView sliderView, float f2, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setThumbValue");
        }
        if ((i & 2) != 0) {
            z = sliderView.animationEnabled;
        }
        sliderView.setThumbValue(f2, z);
    }

    public static int v(SliderView sliderView, float f2, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toPosition");
        }
        if ((i2 & 1) != 0) {
            i = sliderView.getWidth();
        }
        return sliderView.t(f2, i);
    }

    public static final void y(SliderView sliderView, ValueAnimator valueAnimator) {
        y45.j(sliderView, "this$0");
        y45.j(valueAnimator, "it");
        Object animatedValue = valueAnimator.getAnimatedValue();
        y45.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        sliderView.thumbSecondaryValue = (Float) animatedValue;
        sliderView.postInvalidateOnAnimation();
    }

    public final void addOnThumbChangedListener(c listener) {
        y45.j(listener, "listener");
        this.listeners.j(listener);
    }

    public final int c(Drawable drawable) {
        Rect bounds;
        if (drawable == null || (bounds = drawable.getBounds()) == null) {
            return 0;
        }
        return bounds.height();
    }

    public final void clearOnThumbChangedListener() {
        this.listeners.clear();
    }

    public final int d(Drawable drawable) {
        Rect bounds;
        if (drawable == null || (bounds = drawable.getBounds()) == null) {
            return 0;
        }
        return bounds.width();
    }

    @Override
    public boolean dispatchHoverEvent(MotionEvent event) {
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        return this.a11yHelper.dispatchHoverEvent(event) || super.dispatchHoverEvent(event);
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        return this.a11yHelper.dispatchKeyEvent(event) || super.dispatchKeyEvent(event);
    }

    public final Thumb e(int position) {
        if (!j()) {
            return Thumb.THUMB;
        }
        int iAbs = Math.abs(position - v(this, this.thumbValue, 0, 1, null));
        Float f2 = this.thumbSecondaryValue;
        y45.g(f2);
        return iAbs < Math.abs(position - v(this, f2.floatValue(), 0, 1, null)) ? Thumb.THUMB : Thumb.THUMB_SECONDARY;
    }

    public final float f(int position) {
        return (this.inactiveTickMarkDrawable == null && this.activeTickMarkDrawable == null) ? w(position) : s86.c(w(position));
    }

    public final int g(int viewWidth) {
        return ((viewWidth - getPaddingLeft()) - getPaddingRight()) - getMaxTickmarkOrThumbWidth();
    }

    public final Drawable getActiveTickMarkDrawable() {
        return this.activeTickMarkDrawable;
    }

    public final Drawable getActiveTrackDrawable() {
        return this.activeTrackDrawable;
    }

    public final long getAnimationDuration() {
        return this.animationDuration;
    }

    public final boolean getAnimationEnabled() {
        return this.animationEnabled;
    }

    public final AccelerateDecelerateInterpolator getAnimationInterpolator() {
        return this.animationInterpolator;
    }

    public final Drawable getInactiveTickMarkDrawable() {
        return this.inactiveTickMarkDrawable;
    }

    public final Drawable getInactiveTrackDrawable() {
        return this.inactiveTrackDrawable;
    }

    public final boolean getInteractive() {
        return this.interactive;
    }

    public final float getInterceptionAngle() {
        return this.interceptionAngle;
    }

    public final float getMaxValue() {
        return this.maxValue;
    }

    public final float getMinValue() {
        return this.minValue;
    }

    public final List<d> getRanges() {
        return this.ranges;
    }

    @Override
    public int getSuggestedMinimumHeight() {
        Integer num;
        int iMax = Math.max(c(this.activeTrackDrawable), c(this.inactiveTrackDrawable));
        Iterator it = this.ranges.iterator();
        if (it.hasNext()) {
            d dVar = (d) it.next();
            Integer numValueOf = Integer.valueOf(Math.max(c(dVar.a()), c(dVar.d())));
            while (it.hasNext()) {
                d dVar2 = (d) it.next();
                Integer numValueOf2 = Integer.valueOf(Math.max(c(dVar2.a()), c(dVar2.d())));
                if (numValueOf.compareTo(numValueOf2) < 0) {
                    numValueOf = numValueOf2;
                }
            }
            num = numValueOf;
        } else {
            num = null;
        }
        return Math.max(Math.max(c(this.thumbDrawable), c(this.thumbSecondaryDrawable)), Math.max(iMax, num != null ? num.intValue() : 0));
    }

    @Override
    public int getSuggestedMinimumWidth() {
        int iMax = Math.max(Math.max(d(this.thumbDrawable), d(this.thumbSecondaryDrawable)), Math.max(d(this.activeTrackDrawable), d(this.inactiveTrackDrawable)) * ((int) ((this.maxValue - this.minValue) + 1)));
        dha dhaVar = this.thumbTextDrawable;
        int intrinsicWidth = dhaVar != null ? dhaVar.getIntrinsicWidth() : 0;
        dha dhaVar2 = this.thumbSecondTextDrawable;
        return Math.max(iMax, Math.max(intrinsicWidth, dhaVar2 != null ? dhaVar2.getIntrinsicWidth() : 0));
    }

    public final Drawable getThumbDrawable() {
        return this.thumbDrawable;
    }

    public final dha getThumbSecondTextDrawable() {
        return this.thumbSecondTextDrawable;
    }

    public final Drawable getThumbSecondaryDrawable() {
        return this.thumbSecondaryDrawable;
    }

    public final Float getThumbSecondaryValue() {
        return this.thumbSecondaryValue;
    }

    public final dha getThumbTextDrawable() {
        return this.thumbTextDrawable;
    }

    public final float getThumbValue() {
        return this.thumbValue;
    }

    public final float i(float f2) {
        return Math.min(Math.max(f2, this.minValue), this.maxValue);
    }

    public final boolean j() {
        return this.thumbSecondaryValue != null;
    }

    public final int k(int desiredSize, int measureSpec) {
        int mode = View.MeasureSpec.getMode(measureSpec);
        int size = View.MeasureSpec.getSize(measureSpec);
        if (mode != Integer.MIN_VALUE) {
            return mode != 1073741824 ? desiredSize : size;
        }
        return Math.min(desiredSize, size);
    }

    public final void l(Float prevValue, float newValue) {
        if (y45.c(prevValue, newValue)) {
            return;
        }
        Iterator it = this.listeners.iterator();
        while (it.hasNext()) {
            ((c) it.next()).a(newValue);
        }
    }

    public final void m(Float prevValue, Float newValue) {
        if (y45.d(prevValue, newValue)) {
            return;
        }
        Iterator it = this.listeners.iterator();
        while (it.hasNext()) {
            ((c) it.next()).b(newValue);
        }
    }

    @Override
    public void onDraw(Canvas canvas) {
        int i;
        y45.j(canvas, "canvas");
        super.onDraw(canvas);
        canvas.save();
        canvas.translate(getPaddingLeft() + (getMaxTickmarkOrThumbWidth() / 2), getPaddingTop());
        int iSave = canvas.save();
        for (d dVar : this.ranges) {
            canvas.clipRect(dVar.g() - dVar.f(), 0.0f, dVar.b() + dVar.e(), getHeight(), Region.Op.DIFFERENCE);
        }
        this.sliderDrawDelegate.c(canvas, this.inactiveTrackDrawable);
        float fB = this.activeRange.b();
        float fA = this.activeRange.a();
        int iV = v(this, fB, 0, 1, null);
        int iV2 = v(this, fA, 0, 1, null);
        this.sliderDrawDelegate.f(canvas, this.activeTrackDrawable, wn8.g(iV, iV2), wn8.d(iV2, iV));
        canvas.restoreToCount(iSave);
        for (d dVar2 : this.ranges) {
            if (dVar2.b() < iV || dVar2.g() > iV2) {
                i = iV2;
                o(dVar2, this, canvas, dVar2.d(), 0, 0, 48, null);
            } else if (dVar2.g() < iV || dVar2.b() > iV2) {
                i = iV2;
                if (dVar2.g() < iV && dVar2.b() <= i) {
                    o(dVar2, this, canvas, dVar2.d(), 0, wn8.d(iV - 1, dVar2.g()), 16, null);
                    o(dVar2, this, canvas, dVar2.a(), iV, 0, 32, null);
                } else if (dVar2.g() < iV || dVar2.b() <= i) {
                    o(dVar2, this, canvas, dVar2.d(), 0, 0, 48, null);
                    n(dVar2, this, canvas, dVar2.a(), iV, i);
                } else {
                    o(dVar2, this, canvas, dVar2.a(), 0, i, 16, null);
                    o(dVar2, this, canvas, dVar2.d(), wn8.g(i + 1, dVar2.b()), 0, 32, null);
                }
            } else {
                i = iV2;
                o(dVar2, this, canvas, dVar2.a(), 0, 0, 48, null);
            }
            iV2 = i;
        }
        int i2 = (int) this.minValue;
        int i3 = (int) this.maxValue;
        if (i2 <= i3) {
            while (true) {
                this.sliderDrawDelegate.d(canvas, (i2 > ((int) fA) || ((int) fB) > i2) ? this.inactiveTickMarkDrawable : this.activeTickMarkDrawable, u(i2));
                if (i2 == i3) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        this.sliderDrawDelegate.e(canvas, v(this, this.thumbValue, 0, 1, null), this.thumbDrawable, (int) this.thumbValue, this.thumbTextDrawable);
        if (j()) {
            mp9 mp9Var = this.sliderDrawDelegate;
            Float f2 = this.thumbSecondaryValue;
            y45.g(f2);
            int iV3 = v(this, f2.floatValue(), 0, 1, null);
            Drawable drawable = this.thumbSecondaryDrawable;
            Float f3 = this.thumbSecondaryValue;
            y45.g(f3);
            mp9Var.e(canvas, iV3, drawable, (int) f3.floatValue(), this.thumbSecondTextDrawable);
        }
        canvas.restore();
    }

    @Override
    public void onFocusChanged(boolean gainFocus, int direction, Rect previouslyFocusedRect) {
        super.onFocusChanged(gainFocus, direction, previouslyFocusedRect);
        this.a11yHelper.onFocusChanged(gainFocus, direction, previouslyFocusedRect);
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int suggestedMinimumWidth = getSuggestedMinimumWidth() + getPaddingLeft() + getPaddingRight();
        int suggestedMinimumHeight = getSuggestedMinimumHeight() + getPaddingTop() + getPaddingBottom();
        int iK = k(suggestedMinimumWidth, widthMeasureSpec);
        int iK2 = k(suggestedMinimumHeight, heightMeasureSpec);
        setMeasuredDimension(iK, iK2);
        this.sliderDrawDelegate.h(g(iK), (iK2 - getPaddingTop()) - getPaddingBottom());
        for (d dVar : this.ranges) {
            dVar.o(t(Math.max(dVar.h(), this.minValue), iK) + dVar.f());
            dVar.j(t(Math.min(dVar.c(), this.maxValue), iK) - dVar.e());
        }
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent ev) {
        int scaledTouchSlop;
        y45.j(ev, "ev");
        if (!this.interactive) {
            return false;
        }
        int x = (((int) ev.getX()) - getPaddingLeft()) - (getMaxTickmarkOrThumbWidth() / 2);
        int action = ev.getAction();
        if (action == 0) {
            Thumb thumbE = e(x);
            this.thumbOnTouch = thumbE;
            s(this, thumbE, f(x), this.animationEnabled, false, 8, null);
            this.prevX = ev.getX();
            this.prevY = ev.getY();
            return true;
        }
        if (action == 1) {
            s(this, this.thumbOnTouch, f(x), this.animationEnabled, false, 8, null);
            return true;
        }
        if (action != 2) {
            return false;
        }
        r(this.thumbOnTouch, f(x), false, true);
        Integer num = this.touchSlop;
        if (num != null) {
            scaledTouchSlop = num.intValue();
        } else {
            scaledTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
            this.touchSlop = Integer.valueOf(scaledTouchSlop);
        }
        float fAbs = Math.abs(ev.getY() - this.prevY);
        if (fAbs < scaledTouchSlop) {
            getParent().requestDisallowInterceptTouchEvent(true);
        } else {
            getParent().requestDisallowInterceptTouchEvent(fAbs / Math.abs(ev.getX() - this.prevX) <= this.interceptionAngleTg);
        }
        this.prevX = ev.getX();
        this.prevY = ev.getY();
        return true;
    }

    public final void p() {
        z(i(this.thumbValue), false, true);
        if (j()) {
            Float f2 = this.thumbSecondaryValue;
            x(f2 != null ? Float.valueOf(i(f2.floatValue())) : null, false, true);
        }
    }

    public final void q() {
        z(s86.c(this.thumbValue), false, true);
        Float f2 = this.thumbSecondaryValue;
        if (f2 != null) {
            x(Float.valueOf(s86.c(f2.floatValue())), false, true);
        }
    }

    public final void r(Thumb thumb, float value, boolean animated, boolean forced) {
        int i = e.a[thumb.ordinal()];
        if (i == 1) {
            z(value, animated, forced);
        } else {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            x(Float.valueOf(value), animated, forced);
        }
    }

    public final void removeOnChangedListener(c listener) {
        y45.j(listener, "listener");
        this.listeners.p(listener);
    }

    public final void setActiveTickMarkDrawable(Drawable drawable) {
        this.activeTickMarkDrawable = drawable;
        this.maxTickmarkOrThumbWidth = -1;
        q();
        invalidate();
    }

    public final void setActiveTrackDrawable(Drawable drawable) {
        this.activeTrackDrawable = drawable;
        invalidate();
    }

    public final void setAnimationDuration(long j) {
        if (this.animationDuration == j || j < 0) {
            return;
        }
        this.animationDuration = j;
    }

    public final void setAnimationEnabled(boolean z) {
        this.animationEnabled = z;
    }

    public final void setAnimationInterpolator(AccelerateDecelerateInterpolator accelerateDecelerateInterpolator) {
        y45.j(accelerateDecelerateInterpolator, "<set-?>");
        this.animationInterpolator = accelerateDecelerateInterpolator;
    }

    public final void setInactiveTickMarkDrawable(Drawable drawable) {
        this.inactiveTickMarkDrawable = drawable;
        this.maxTickmarkOrThumbWidth = -1;
        q();
        invalidate();
    }

    public final void setInactiveTrackDrawable(Drawable drawable) {
        this.inactiveTrackDrawable = drawable;
        invalidate();
    }

    public final void setInteractive(boolean z) {
        this.interactive = z;
    }

    public final void setInterceptionAngle(float f2) {
        float fMax = Math.max(45.0f, Math.abs(f2) % 90);
        this.interceptionAngle = fMax;
        this.interceptionAngleTg = (float) Math.tan(fMax);
    }

    public final void setMaxValue(float f2) {
        if (this.maxValue == f2) {
            return;
        }
        setMinValue(Math.min(this.minValue, f2 - 1.0f));
        this.maxValue = f2;
        p();
        invalidate();
    }

    public final void setMinValue(float f2) {
        if (this.minValue == f2) {
            return;
        }
        setMaxValue(Math.max(this.maxValue, 1.0f + f2));
        this.minValue = f2;
        p();
        invalidate();
    }

    public final void setThumbDrawable(Drawable drawable) {
        this.thumbDrawable = drawable;
        this.maxTickmarkOrThumbWidth = -1;
        invalidate();
    }

    public final void setThumbSecondTextDrawable(dha dhaVar) {
        this.thumbSecondTextDrawable = dhaVar;
        invalidate();
    }

    public final void setThumbSecondaryDrawable(Drawable drawable) {
        this.thumbSecondaryDrawable = drawable;
        this.maxTickmarkOrThumbWidth = -1;
        invalidate();
    }

    public final void setThumbSecondaryValue(Float value, boolean animated) {
        x(value, animated, true);
    }

    public final void setThumbTextDrawable(dha dhaVar) {
        this.thumbTextDrawable = dhaVar;
        invalidate();
    }

    public final void setThumbValue(float value, boolean animated) {
        z(value, animated, true);
    }

    public final int t(float f2, int i) {
        return s86.c((g(i) / (this.maxValue - this.minValue)) * (pdc.f(this) ? this.maxValue - f2 : f2 - this.minValue));
    }

    public final int u(int i) {
        return v(this, i, 0, 1, null);
    }

    public final float w(int i) {
        float f2 = this.minValue;
        float fH = (i * (this.maxValue - f2)) / h(this, 0, 1, null);
        if (pdc.f(this)) {
            fH = (this.maxValue - fH) - 1;
        }
        return f2 + fH;
    }

    public final void x(Float value, boolean animated, boolean forced) {
        ValueAnimator valueAnimator;
        Float f2;
        Float fValueOf = value != null ? Float.valueOf(i(value.floatValue())) : null;
        if (y45.d(this.thumbSecondaryValue, fValueOf)) {
            return;
        }
        if (!animated || !this.animationEnabled || (f2 = this.thumbSecondaryValue) == null || fValueOf == null) {
            if (forced && (valueAnimator = this.sliderSecondaryAnimator) != null) {
                valueAnimator.cancel();
            }
            if (forced || this.sliderSecondaryAnimator == null) {
                this.animatorSecondaryListener.b(this.thumbSecondaryValue);
                this.thumbSecondaryValue = fValueOf;
                m(this.animatorSecondaryListener.a(), this.thumbSecondaryValue);
            }
        } else {
            if (this.sliderSecondaryAnimator == null) {
                this.animatorSecondaryListener.b(f2);
            }
            ValueAnimator valueAnimator2 = this.sliderSecondaryAnimator;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
            }
            Float f3 = this.thumbSecondaryValue;
            y45.g(f3);
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f3.floatValue(), fValueOf.floatValue());
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    SliderView.y(this.b, valueAnimator3);
                }
            });
            valueAnimatorOfFloat.addListener(this.animatorSecondaryListener);
            y45.i(valueAnimatorOfFloat, "trySetThumbSecondaryValue$lambda$5");
            setBaseParams(valueAnimatorOfFloat);
            valueAnimatorOfFloat.start();
            this.sliderSecondaryAnimator = valueAnimatorOfFloat;
        }
        invalidate();
    }

    public final void z(float value, boolean animated, boolean forced) {
        ValueAnimator valueAnimator;
        float fI = i(value);
        float f2 = this.thumbValue;
        if (f2 == fI) {
            return;
        }
        if (animated && this.animationEnabled) {
            if (this.sliderAnimator == null) {
                this.animatorListener.b(f2);
            }
            ValueAnimator valueAnimator2 = this.sliderAnimator;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.thumbValue, fI);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    SliderView.A(this.b, valueAnimator3);
                }
            });
            valueAnimatorOfFloat.addListener(this.animatorListener);
            y45.i(valueAnimatorOfFloat, "trySetThumbValue$lambda$3");
            setBaseParams(valueAnimatorOfFloat);
            valueAnimatorOfFloat.start();
            this.sliderAnimator = valueAnimatorOfFloat;
        } else {
            if (forced && (valueAnimator = this.sliderAnimator) != null) {
                valueAnimator.cancel();
            }
            if (forced || this.sliderAnimator == null) {
                this.animatorListener.b(this.thumbValue);
                this.thumbValue = fI;
                l(Float.valueOf(this.animatorListener.a()), this.thumbValue);
            }
        }
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SliderView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public SliderView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SliderView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.sliderDrawDelegate = new mp9();
        this.listeners = new qd7();
        this.animatorListener = new f();
        this.animatorSecondaryListener = new g();
        this.ranges = new ArrayList();
        this.animationDuration = 300L;
        this.animationInterpolator = new AccelerateDecelerateInterpolator();
        this.animationEnabled = true;
        this.maxValue = 100.0f;
        this.thumbValue = this.minValue;
        a aVar = new a(this, this);
        this.a11yHelper = aVar;
        ViewCompat.setAccessibilityDelegate(this, aVar);
        setAccessibilityLiveRegion(1);
        this.maxTickmarkOrThumbWidth = -1;
        this.activeRange = new b();
        this.thumbOnTouch = Thumb.THUMB;
        this.interactive = true;
        this.interceptionAngle = 45.0f;
        this.interceptionAngleTg = (float) Math.tan(45.0f);
    }
}
