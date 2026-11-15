package com.transsion.widgets.fastscroller;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.DimenRes;
import androidx.annotation.Keep;
import androidx.annotation.StyleRes;
import androidx.annotation.StyleableRes;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.core.widget.TextViewCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p004lifecycle.MutableLiveData;
import androidx.p004lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.WindowInfoViewModel;
import com.transsion.common.R;
import com.transsion.livecaption.constant.ICode;
import com.transsion.widgets.CustomSwipeRefreshLayout;
import com.transsion.widgets.fastscroller.RecyclerViewFastScroller;
import defpackage.c74;
import defpackage.db3;
import defpackage.el0;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.s86;
import defpackage.wh1;
import defpackage.wn8;
import defpackage.y45;
import defpackage.yi5;
import defpackage.z45;
import defpackage.zfb;
import java.lang.ref.WeakReference;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.NotImplementedError;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.b;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.a;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.d;
import kotlinx.coroutines.j;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000ü\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0015\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u001d*\u0004º\u0001Á\u0001\b\u0016\u0018\u0000 Ý\u00012\u00020\u00012\u00020\u0002:\u0010Ý\u0001Þ\u0001ß\u0001à\u0001á\u0001â\u0001ã\u0001ä\u0001B'\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\f\u0010\rJ\u001b\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0012\u0010\rJ\u000f\u0010\u0013\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0013\u0010\rJ\u000f\u0010\u0014\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0014\u0010\rJ\u0019\u0010\u0016\u001a\u00020\u000b2\b\b\u0002\u0010\u0015\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u000bH\u0003¢\u0006\u0004\b\u0018\u0010\rJ\u000f\u0010\u0019\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0019\u0010\rJ\u000f\u0010\u001a\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u001a\u0010\rJ\u001f\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u000bH\u0002¢\u0006\u0004\b!\u0010\rJ\u001f\u0010#\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u001bH\u0002¢\u0006\u0004\b#\u0010$J$\u0010(\u001a\u00020\u000b*\u00020%2\u000e\b\u0004\u0010'\u001a\b\u0012\u0004\u0012\u00020\u000b0&H\u0082\b¢\u0006\u0004\b(\u0010)J\u001d\u0010+\u001a\u00020\u000b*\u00020\u000e2\b\b\u0002\u0010*\u001a\u00020\u001dH\u0002¢\u0006\u0004\b+\u0010,J\u0019\u0010.\u001a\u00020\u00072\b\b\u0001\u0010-\u001a\u00020\u0007H\u0002¢\u0006\u0004\b.\u0010/J\u001b\u00102\u001a\u0004\u0018\u0001012\b\b\u0001\u00100\u001a\u00020\u0007H\u0002¢\u0006\u0004\b2\u00103J\u0013\u00105\u001a\u00020\u0007*\u000204H\u0002¢\u0006\u0004\b5\u00106J\u001b\u00109\u001a\u00020\u000b*\u0002072\u0006\u00108\u001a\u00020\u0007H\u0002¢\u0006\u0004\b9\u0010:J\u001b\u0010<\u001a\u00020\u0007*\u0002072\u0006\u0010;\u001a\u00020\u001bH\u0002¢\u0006\u0004\b<\u0010=J\u001b\u0010?\u001a\u00020\u000b*\u0002072\u0006\u0010>\u001a\u00020\u001bH\u0002¢\u0006\u0004\b?\u0010@J\u0013\u0010A\u001a\u00020\u001d*\u000207H\u0002¢\u0006\u0004\bA\u0010BJ\u0017\u0010C\u001a\u00020\u000b2\u0006\u00108\u001a\u00020\u0007H\u0002¢\u0006\u0004\bC\u0010\u0017J\u000f\u0010D\u001a\u00020\u000bH\u0002¢\u0006\u0004\bD\u0010\rJ\u000f\u0010E\u001a\u00020\u000bH\u0002¢\u0006\u0004\bE\u0010\rJ\u000f\u0010F\u001a\u00020\u000bH\u0002¢\u0006\u0004\bF\u0010\rJ\u0019\u0010I\u001a\u00020\u000b2\b\b\u0002\u0010H\u001a\u00020GH\u0002¢\u0006\u0004\bI\u0010JJ\u0015\u0010M\u001a\u00020\u000b2\u0006\u0010L\u001a\u00020K¢\u0006\u0004\bM\u0010NJ\u000f\u0010O\u001a\u00020\u000bH\u0014¢\u0006\u0004\bO\u0010\rJ\u000f\u0010P\u001a\u00020\u000bH\u0014¢\u0006\u0004\bP\u0010\rJ\u000f\u0010Q\u001a\u00020\u000bH\u0015¢\u0006\u0004\bQ\u0010\rJ\r\u0010R\u001a\u00020\u000b¢\u0006\u0004\bR\u0010\rJ#\u0010V\u001a\u00020\u001d2\b\u0010S\u001a\u0004\u0018\u00010\u000e2\b\u0010U\u001a\u0004\u0018\u00010TH\u0016¢\u0006\u0004\bV\u0010WJ\u001d\u0010Z\u001a\u00020\u000b2\u0006\u0010X\u001a\u0002072\u0006\u0010Y\u001a\u00020\u0007¢\u0006\u0004\bZ\u0010:J%\u0010]\u001a\u00020\u000b2\u0006\u0010X\u001a\u0002072\u0006\u0010[\u001a\u00020\u00072\u0006\u0010\\\u001a\u00020\u0007¢\u0006\u0004\b]\u0010^J\u0015\u0010`\u001a\u00020\u000b2\u0006\u0010_\u001a\u00020\u001d¢\u0006\u0004\b`\u0010aJ\u0015\u0010d\u001a\u00020\u000b2\u0006\u0010c\u001a\u00020b¢\u0006\u0004\bd\u0010eJ\u0017\u0010f\u001a\u00020\u000b2\u0006\u0010X\u001a\u000207H\u0007¢\u0006\u0004\bf\u0010gJ\u000f\u0010h\u001a\u00020\u000bH\u0007¢\u0006\u0004\bh\u0010\rR\u0014\u0010j\u001a\u00020i8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bj\u0010kR\u0014\u0010l\u001a\u00020i8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bl\u0010kR*\u0010n\u001a\u00020\u00072\u0006\u0010m\u001a\u00020\u00078\u0006@FX\u0087\u000e¢\u0006\u0012\n\u0004\bn\u0010o\u001a\u0004\bp\u0010q\"\u0004\br\u0010\u0017R\u0016\u0010s\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010tR\"\u0010u\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bu\u0010t\u001a\u0004\bu\u0010v\"\u0004\bw\u0010aR\"\u0010y\u001a\u00020x8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\by\u0010z\u001a\u0004\b{\u0010|\"\u0004\b}\u0010~R,\u0010\u007f\u001a\u00020\u00072\u0006\u0010m\u001a\u00020\u00078\u0006@FX\u0086\u000e¢\u0006\u0014\n\u0004\b\u007f\u0010o\u001a\u0005\b\u0080\u0001\u0010q\"\u0005\b\u0081\u0001\u0010\u0017R.\u0010\u0082\u0001\u001a\u00020\u00072\u0006\u0010m\u001a\u00020\u00078\u0006@FX\u0086\u000e¢\u0006\u0015\n\u0005\b\u0082\u0001\u0010o\u001a\u0005\b\u0083\u0001\u0010q\"\u0005\b\u0084\u0001\u0010\u0017R3\u0010\u0086\u0001\u001a\u00030\u0085\u00012\u0007\u0010m\u001a\u00030\u0085\u00018\u0006@FX\u0086\u000e¢\u0006\u0018\n\u0006\b\u0086\u0001\u0010\u0087\u0001\u001a\u0006\b\u0088\u0001\u0010\u0089\u0001\"\u0006\b\u008a\u0001\u0010\u008b\u0001R.\u0010\u008c\u0001\u001a\u00020\u00072\u0006\u0010m\u001a\u00020\u00078\u0006@FX\u0086\u000e¢\u0006\u0015\n\u0005\b\u008c\u0001\u0010o\u001a\u0005\b\u008d\u0001\u0010q\"\u0005\b\u008e\u0001\u0010\u0017R.\u0010\u008f\u0001\u001a\u00020\u00072\u0006\u0010m\u001a\u00020\u00078\u0006@FX\u0086\u000e¢\u0006\u0015\n\u0005\b\u008f\u0001\u0010o\u001a\u0005\b\u0090\u0001\u0010q\"\u0005\b\u0091\u0001\u0010\u0017R&\u0010\u0092\u0001\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0092\u0001\u0010o\u001a\u0005\b\u0093\u0001\u0010q\"\u0005\b\u0094\u0001\u0010\u0017R\u001a\u0010\u0096\u0001\u001a\u00030\u0095\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0096\u0001\u0010\u0097\u0001R\u0018\u0010\u0098\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0098\u0001\u0010tR\u001a\u0010\u009a\u0001\u001a\u00030\u0099\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u009b\u0001R\u001a\u0010\u009d\u0001\u001a\u00030\u009c\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u009e\u0001R\u0017\u0010X\u001a\u0002078\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\bX\u0010\u009f\u0001R\u001f\u0010¢\u0001\u001a\b0 \u0001j\u0003`¡\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¢\u0001\u0010£\u0001R\u0018\u0010¤\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¤\u0001\u0010tR\u0019\u0010c\u001a\u0004\u0018\u00010b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bc\u0010¥\u0001R\u0018\u0010¦\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¦\u0001\u0010oR\u001c\u0010¨\u0001\u001a\u0005\u0018\u00010§\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¨\u0001\u0010©\u0001R\u0018\u0010ª\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bª\u0001\u0010oR\u001b\u0010«\u0001\u001a\u0004\u0018\u00010K8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b«\u0001\u0010¬\u0001R\u001c\u0010®\u0001\u001a\u0005\u0018\u00010\u00ad\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b®\u0001\u0010¯\u0001R\u0019\u0010°\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b°\u0001\u0010±\u0001R!\u0010´\u0001\u001a\n\u0012\u0005\u0012\u00030³\u00010²\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b´\u0001\u0010µ\u0001R\u001a\u0010·\u0001\u001a\u0005\u0018\u00010¶\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b·\u0001\u0010¸\u0001R\u0018\u0010¹\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¹\u0001\u0010oR!\u0010¿\u0001\u001a\u00030º\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b»\u0001\u0010¼\u0001\u001a\u0006\b½\u0001\u0010¾\u0001R\u001f\u0010Â\u0001\u001a\n\u0012\u0005\u0012\u00030Á\u00010À\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÂ\u0001\u0010¼\u0001R)\u0010Ã\u0001\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\bÃ\u0001\u0010±\u0001\u001a\u0006\bÄ\u0001\u0010Å\u0001\"\u0006\bÆ\u0001\u0010Ç\u0001R\u001a\u0010É\u0001\u001a\u00030È\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÉ\u0001\u0010Ê\u0001R\u0018\u0010Ë\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bË\u0001\u0010tR\u0017\u0010Í\u0001\u001a\u00020\u001b8BX\u0082\u0004¢\u0006\b\u001a\u0006\bÌ\u0001\u0010Å\u0001R\u0017\u0010Ï\u0001\u001a\u00020\u001b8BX\u0082\u0004¢\u0006\b\u001a\u0006\bÎ\u0001\u0010Å\u0001R\u0017\u0010Ñ\u0001\u001a\u00020\u001b8BX\u0082\u0004¢\u0006\b\u001a\u0006\bÐ\u0001\u0010Å\u0001R-\u0010Ö\u0001\u001a\u0004\u0018\u0001012\b\u0010m\u001a\u0004\u0018\u0001018F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\bÒ\u0001\u0010Ó\u0001\"\u0006\bÔ\u0001\u0010Õ\u0001R-\u0010Ù\u0001\u001a\u0004\u0018\u0001012\b\u0010m\u001a\u0004\u0018\u0001018F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\b×\u0001\u0010Ó\u0001\"\u0006\bØ\u0001\u0010Õ\u0001R-\u0010Ü\u0001\u001a\u0004\u0018\u0001012\b\u0010m\u001a\u0004\u0018\u0001018F@FX\u0086\u000e¢\u0006\u0010\u001a\u0006\bÚ\u0001\u0010Ó\u0001\"\u0006\bÛ\u0001\u0010Õ\u0001¨\u0006å\u0001"}, d2 = {"Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;", "Landroid/widget/RelativeLayout;", "Landroid/view/View$OnTouchListener;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lzfb;", "initCsRefreshLayout", "()V", "Landroid/view/View;", "view", "getDecorViewFromView", "(Landroid/view/View;)Landroid/view/View;", "alignPopupLayout", "alignTrackAndHandle", "setTrackMargin", "newComputedSize", "refreshHandleImageViewSize", "(I)V", "addThumbAndTrack", "addPopupLayout", "enableNestedScrolling", "", TypedValues.CycleType.S_WAVE_OFFSET, "", "delayHide", "moveHandle", "(FZ)V", "delayHideHandleImageView", "finalOffset", "moveViewToRelativePositionWithBounds", "(Landroid/view/View;F)V", "Landroid/view/ViewPropertyAnimator;", "Lkotlin/Function0;", TtmlNode.TAG_BODY, "onAnimationCancelled", "(Landroid/view/ViewPropertyAnimator;Lc74;)V", "makeVisible", "animateVisibility", "(Landroid/view/View;Z)V", "dimenSize", "loadDimenFromResource", "(I)I", "styleId", "Landroid/graphics/drawable/Drawable;", "loadDrawableFromAttributes", "(I)Landroid/graphics/drawable/Drawable;", "Landroidx/recyclerview/widget/LinearLayoutManager;", "getTotalCompletelyVisibleItemCount", "(Landroidx/recyclerview/widget/LinearLayoutManager;)I", "Landroidx/recyclerview/widget/RecyclerView;", "position", "safeScrollToPosition", "(Landroidx/recyclerview/widget/RecyclerView;I)V", "relativeRawPos", "computePositionForOffsetAndScroll", "(Landroidx/recyclerview/widget/RecyclerView;F)I", "newOffset", "scrollToRelativeOffset", "(Landroidx/recyclerview/widget/RecyclerView;F)V", "isRecyclerNearBottom", "(Landroidx/recyclerview/widget/RecyclerView;)Z", "updateTextInPopup", "setEmptySpaceItemDecorator", "registerDataObserver", "initImpl", "", "message", "log", "(Ljava/lang/String;)V", "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleAppBarLayoutStateListener;", "handleAppBarLayoutStateListener", "setHandleAppBarLayoutStateListener", "(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleAppBarLayoutStateListener;)V", "onDetachedFromWindow", "onAttachedToWindow", "onFinishInflate", "refreshScrollerBar", "v", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "onTouch", "(Landroid/view/View;Landroid/view/MotionEvent;)Z", "recyclerView", "newState", "onScrollStateChanged", "dx", "dy", "onScrolled", "(Landroidx/recyclerview/widget/RecyclerView;II)V", "isExpand", "setAppBarExpand", "(Z)V", "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleStateListener;", "handleStateListener", "setHandleStateListener", "(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleStateListener;)V", "attachFastScrollerToRecyclerView", "(Landroidx/recyclerview/widget/RecyclerView;)V", "detachFastScrollerFromRecyclerView", "", "PRESSED_STATE_SET", "[I", "EMPTY_STATE_SET", ES6Iterator.VALUE_PROPERTY, "textStyle", "I", "getTextStyle", "()I", "setTextStyle", "isFixedSizeHandle", "Z", "isFastScrollEnabled", "()Z", "setFastScrollEnabled", "Landroid/widget/TextView;", "popupTextView", "Landroid/widget/TextView;", "getPopupTextView", "()Landroid/widget/TextView;", "setPopupTextView", "(Landroid/widget/TextView;)V", "trackMarginStart", "getTrackMarginStart", "setTrackMarginStart", "trackMarginEnd", "getTrackMarginEnd", "setTrackMarginEnd", "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;", "fastScrollDirection", "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;", "getFastScrollDirection", "()Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;", "setFastScrollDirection", "(Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;)V", "handleWidth", "getHandleWidth", "setHandleWidth", "handleHeight", "getHandleHeight", "setHandleHeight", "handleVisibilityDuration", "getHandleVisibilityDuration", "setHandleVisibilityDuration", "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;", "popupPosition", "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;", "hasEmptyItemDecorator", "Landroidx/appcompat/widget/AppCompatImageView;", "handleImageView", "Landroidx/appcompat/widget/AppCompatImageView;", "Landroid/widget/LinearLayout;", "trackView", "Landroid/widget/LinearLayout;", "Landroidx/recyclerview/widget/RecyclerView;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "popupAnimationRunnable", "Ljava/lang/Runnable;", "isEngaged", "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleStateListener;", "previousTotalVisibleItem", "Lkotlinx/coroutines/j;", "hideHandleJob", "Lkotlinx/coroutines/j;", "mScrollState", "mHandleAppBarLayoutStateListener", "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleAppBarLayoutStateListener;", "Lcom/transsion/WindowInfoViewModel;", "mWindowInfoViewModel", "Lcom/transsion/WindowInfoViewModel;", "mCurrentRelativePos", "F", "Ljava/lang/ref/WeakReference;", "Lcom/transsion/widgets/CustomSwipeRefreshLayout;", "mCsRefreshLayout", "Ljava/lang/ref/WeakReference;", "Landroid/content/res/TypedArray;", "attribs", "Landroid/content/res/TypedArray;", "totalVisibleItems", "com/transsion/widgets/fastscroller/RecyclerViewFastScroller$emptySpaceItemDecoration$2$1", "emptySpaceItemDecoration$delegate", "Lyi5;", "getEmptySpaceItemDecoration", "()Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$emptySpaceItemDecoration$2$1;", "emptySpaceItemDecoration", "Lyi5;", "com/transsion/widgets/fastscroller/RecyclerViewFastScroller$adapterDataObserver$1$1", "adapterDataObserver", "mLastScrollerOffset", "getMLastScrollerOffset", "()F", "setMLastScrollerOffset", "(F)V", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "onScrollListener", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "mIsAppBarExpand", "getTrackLength", "trackLength", "getHandleLength", "handleLength", "getPopupLength", "popupLength", "getTrackDrawable", "()Landroid/graphics/drawable/Drawable;", "setTrackDrawable", "(Landroid/graphics/drawable/Drawable;)V", "trackDrawable", "getPopupDrawable", "setPopupDrawable", "popupDrawable", "getHandleDrawable", "setHandleDrawable", "handleDrawable", "Companion", "FastScrollDirection", "PopupPosition", "Defaults", "OnPopupViewUpdate", "OnPopupTextUpdate", "HandleStateListener", "HandleAppBarLayoutStateListener", "common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class RecyclerViewFastScroller extends RelativeLayout implements View.OnTouchListener {
    private static final String ERROR_MESSAGE_NO_RECYCLER_VIEW = "The RecyclerView required for initialization with FastScroller cannot be null";
    private static final String TAG = "RecyclerViewFastScroller";
    private final int[] EMPTY_STATE_SET;
    private final int[] PRESSED_STATE_SET;
    private final yi5 adapterDataObserver;
    private final TypedArray attribs;

    private final yi5 emptySpaceItemDecoration;
    private FastScrollDirection fastScrollDirection;
    private int handleHeight;
    private AppCompatImageView handleImageView;
    private HandleStateListener handleStateListener;
    private int handleVisibilityDuration;
    private int handleWidth;
    private boolean hasEmptyItemDecorator;
    private j hideHandleJob;
    private boolean isEngaged;
    private boolean isFastScrollEnabled;
    private boolean isFixedSizeHandle;
    private WeakReference<CustomSwipeRefreshLayout> mCsRefreshLayout;
    private float mCurrentRelativePos;
    private HandleAppBarLayoutStateListener mHandleAppBarLayoutStateListener;
    private boolean mIsAppBarExpand;
    private float mLastScrollerOffset;
    private int mScrollState;
    private WindowInfoViewModel mWindowInfoViewModel;
    private RecyclerView.OnScrollListener onScrollListener;
    private Runnable popupAnimationRunnable;
    private PopupPosition popupPosition;
    public TextView popupTextView;
    private int previousTotalVisibleItem;
    private RecyclerView recyclerView;

    @StyleRes
    private int textStyle;
    private int totalVisibleItems;
    private int trackMarginEnd;
    private int trackMarginStart;
    private LinearLayout trackView;

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007R\u0011\u0010\n\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0007R\u0011\u0010\f\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u0007R\u0011\u0010\u000e\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0007R\u0011\u0010\u0010\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0007R\u0011\u0010\u0012\u001a\u00020\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u0017¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u001bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u001eX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u001bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$Defaults;", "", MethodDecl.initName, "()V", "popupDrawableInt", "", "getPopupDrawableInt", "()I", "handleDrawableInt", "getHandleDrawableInt", "handleSize", "getHandleSize", "handleWidth", "getHandleWidth", "handleHeight", "getHandleHeight", "textStyle", "getTextStyle", "popupPosition", "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;", "getPopupPosition", "()Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;", "fastScrollDirection", "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;", "getFastScrollDirection", "()Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;", "isFixedSizeHandle", "", "isFastScrollEnabled", "animationDuration", "", "popupVisibilityDuration", "hasEmptyItemDecorator", "handleVisibilityDuration", "trackMargin", "common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Defaults {
        public static final long animationDuration = 500;
        public static final int handleVisibilityDuration = 2000;
        public static final boolean hasEmptyItemDecorator = true;
        public static final boolean isFastScrollEnabled = true;
        public static final boolean isFixedSizeHandle = false;
        public static final long popupVisibilityDuration = 200;
        public static final int trackMargin = 0;
        public static final Defaults INSTANCE = new Defaults();
        private static final int popupDrawableInt = R.drawable.custom_bg_primary;
        private static final int handleDrawableInt = R.drawable.scroll_thumb;
        private static final int handleSize = R.dimen.default_handle_size;
        private static final int handleWidth = R.dimen.default_handle_width;
        private static final int handleHeight = R.dimen.default_handle_height;
        private static final int textStyle = R.style.FastScrollerTextAppearance;
        private static final PopupPosition popupPosition = PopupPosition.BEFORE_TRACK;
        private static final FastScrollDirection fastScrollDirection = FastScrollDirection.VERTICAL;

        private Defaults() {
        }

        public final FastScrollDirection getFastScrollDirection() {
            return fastScrollDirection;
        }

        public final int getHandleDrawableInt() {
            return handleDrawableInt;
        }

        public final int getHandleHeight() {
            return handleHeight;
        }

        public final int getHandleSize() {
            return handleSize;
        }

        public final int getHandleWidth() {
            return handleWidth;
        }

        public final int getPopupDrawableInt() {
            return popupDrawableInt;
        }

        public final PopupPosition getPopupPosition() {
            return popupPosition;
        }

        public final int getTextStyle() {
            return textStyle;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;", "", ES6Iterator.VALUE_PROPERTY, "", MethodDecl.initName, "(Ljava/lang/String;II)V", "getValue", "()I", "HORIZONTAL", "VERTICAL", "Companion", "common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum FastScrollDirection {
        HORIZONTAL(1),
        VERTICAL(0);

        private final int value;
        private static final db3 $ENTRIES = a.a(values());

        public static final Companion INSTANCE = new Companion(null);

        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection$Companion;", "", MethodDecl.initName, "()V", "getFastScrollDirectionByValue", "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$FastScrollDirection;", ES6Iterator.VALUE_PROPERTY, "", "common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public static FastScrollDirection getFastScrollDirectionByValue$default(Companion companion, int i, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    i = Defaults.INSTANCE.getFastScrollDirection().getValue();
                }
                return companion.getFastScrollDirectionByValue(i);
            }

            public final FastScrollDirection getFastScrollDirectionByValue(int value) {
                for (FastScrollDirection fastScrollDirection : FastScrollDirection.values()) {
                    if (fastScrollDirection.getValue() == value) {
                        return fastScrollDirection;
                    }
                }
                return Defaults.INSTANCE.getFastScrollDirection();
            }

            private Companion() {
            }
        }

        FastScrollDirection(int i) {
            this.value = i;
        }

        public static db3 getEntries() {
            return $ENTRIES;
        }

        public final int getValue() {
            return this.value;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleAppBarLayoutStateListener;", "", "Lzfb;", "onAppBarExpanded", "()V", "onAppBarCollapsed", "common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface HandleAppBarLayoutStateListener {

        @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
        public static final class DefaultImpls {
            public static void onAppBarCollapsed(HandleAppBarLayoutStateListener handleAppBarLayoutStateListener) {
            }

            public static void onAppBarExpanded(HandleAppBarLayoutStateListener handleAppBarLayoutStateListener) {
            }
        }

        void onAppBarCollapsed();

        void onAppBarExpanded();
    }

    @Keep
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\bg\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\u0004¨\u0006\f"}, d2 = {"Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$HandleStateListener;", "", "Lzfb;", "onEngaged", "()V", "", TypedValues.CycleType.S_WAVE_OFFSET, "", "position", "onDragged", "(FI)V", "onReleased", "common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface HandleStateListener {

        @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
        public static final class DefaultImpls {
            public static void onDragged(HandleStateListener handleStateListener, float f, int i) {
            }

            public static void onEngaged(HandleStateListener handleStateListener) {
            }

            public static void onReleased(HandleStateListener handleStateListener) {
            }
        }

        void onDragged(float offset, int position);

        void onEngaged();

        void onReleased();
    }

    @Keep
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$OnPopupTextUpdate;", "", "onChange", "", "position", "", "common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface OnPopupTextUpdate {
        CharSequence onChange(int position);
    }

    @Keep
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$OnPopupViewUpdate;", "", "", "position", "Landroid/widget/TextView;", "popupTextView", "Lzfb;", "onUpdate", "(ILandroid/widget/TextView;)V", "common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface OnPopupViewUpdate {
        void onUpdate(int position, TextView popupTextView);
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0082\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;", "", ES6Iterator.VALUE_PROPERTY, "", MethodDecl.initName, "(Ljava/lang/String;II)V", "getValue", "()I", "BEFORE_TRACK", "AFTER_TRACK", "Companion", "common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum PopupPosition {
        BEFORE_TRACK(0),
        AFTER_TRACK(1);

        private final int value;
        private static final db3 $ENTRIES = a.a(values());

        public static final Companion INSTANCE = new Companion(null);

        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition$Companion;", "", MethodDecl.initName, "()V", "getPopupPositionByValue", "Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller$PopupPosition;", ES6Iterator.VALUE_PROPERTY, "", "common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public static PopupPosition getPopupPositionByValue$default(Companion companion, int i, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    i = Defaults.INSTANCE.getPopupPosition().getValue();
                }
                return companion.getPopupPositionByValue(i);
            }

            public final PopupPosition getPopupPositionByValue(int value) {
                for (PopupPosition popupPosition : PopupPosition.values()) {
                    if (popupPosition.getValue() == value) {
                        return popupPosition;
                    }
                }
                return Defaults.INSTANCE.getPopupPosition();
            }

            private Companion() {
            }
        }

        PopupPosition(int i) {
            this.value = i;
        }

        public static db3 getEntries() {
            return $ENTRIES;
        }

        public final int getValue() {
            return this.value;
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;
        public static final int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[FastScrollDirection.values().length];
            try {
                iArr[FastScrollDirection.VERTICAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FastScrollDirection.HORIZONTAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[PopupPosition.values().length];
            try {
                iArr2[PopupPosition.BEFORE_TRACK.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[PopupPosition.AFTER_TRACK.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.widgets.fastscroller.RecyclerViewFastScroller$delayHideHandleImageView$1", f = "RecyclerViewFastScroller.kt", l = {903}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        int label;

        public AnonymousClass1(wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return RecyclerViewFastScroller.this.new AnonymousClass1(wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                long handleVisibilityDuration = RecyclerViewFastScroller.this.getHandleVisibilityDuration();
                this.label = 1;
                if (DelayKt.b(handleVisibilityDuration, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            RecyclerViewFastScroller recyclerViewFastScroller = RecyclerViewFastScroller.this;
            AppCompatImageView appCompatImageView = recyclerViewFastScroller.handleImageView;
            if (appCompatImageView == null) {
                y45.B("handleImageView");
                appCompatImageView = null;
            }
            recyclerViewFastScroller.animateVisibility(appCompatImageView, false);
            return zfb.a;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RecyclerViewFastScroller(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.transsion.widgets.fastscroller.RecyclerViewFastScroller$adapterDataObserver$1$1] */
    public static final RecyclerViewFastScroller$adapterDataObserver$1$1 adapterDataObserver$lambda$21(final RecyclerViewFastScroller recyclerViewFastScroller) {
        return new RecyclerView.AdapterDataObserver() {
            @Override
            public void onChanged() {
                super.onChanged();
                this.this$0.previousTotalVisibleItem = 0;
                this.this$0.totalVisibleItems = 0;
            }

            @Override
            public void onItemRangeRemoved(int positionStart, int itemCount) {
                super.onItemRangeRemoved(positionStart, itemCount);
                this.this$0.previousTotalVisibleItem = 0;
            }
        };
    }

    private final void addPopupLayout() {
        View.inflate(getContext(), R.layout.fastscroller_popup, this);
        setPopupTextView((TextView) findViewById(R.id.fastScrollPopupTV));
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private final void addThumbAndTrack() {
        View.inflate(getContext(), R.layout.fastscroller_track_thumb, this);
        this.handleImageView = (AppCompatImageView) findViewById(R.id.thumbIV);
        this.trackView = (LinearLayout) findViewById(R.id.trackView);
        AppCompatImageView appCompatImageView = this.handleImageView;
        LinearLayout linearLayout = null;
        if (appCompatImageView == null) {
            y45.B("handleImageView");
            appCompatImageView = null;
        }
        appCompatImageView.setOnTouchListener(this);
        LinearLayout linearLayout2 = this.trackView;
        if (linearLayout2 == null) {
            y45.B("trackView");
        } else {
            linearLayout = linearLayout2;
        }
        linearLayout.setOnTouchListener(this);
    }

    private final void alignPopupLayout() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        int i = WhenMappings.$EnumSwitchMapping$1[this.popupPosition.ordinal()];
        LinearLayout linearLayout = null;
        if (i == 1) {
            int i2 = WhenMappings.$EnumSwitchMapping$0[this.fastScrollDirection.ordinal()];
            if (i2 == 1) {
                LinearLayout linearLayout2 = this.trackView;
                if (linearLayout2 == null) {
                    y45.B("trackView");
                } else {
                    linearLayout = linearLayout2;
                }
                layoutParams.addRule(16, linearLayout.getId());
            } else {
                if (i2 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                LinearLayout linearLayout3 = this.trackView;
                if (linearLayout3 == null) {
                    y45.B("trackView");
                } else {
                    linearLayout = linearLayout3;
                }
                layoutParams.addRule(2, linearLayout.getId());
            }
        } else {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            int i3 = WhenMappings.$EnumSwitchMapping$0[this.fastScrollDirection.ordinal()];
            if (i3 == 1) {
                LinearLayout linearLayout4 = this.trackView;
                if (linearLayout4 == null) {
                    y45.B("trackView");
                } else {
                    linearLayout = linearLayout4;
                }
                layoutParams.addRule(17, linearLayout.getId());
            } else {
                if (i3 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                LinearLayout linearLayout5 = this.trackView;
                if (linearLayout5 == null) {
                    y45.B("trackView");
                } else {
                    linearLayout = linearLayout5;
                }
                layoutParams.addRule(3, linearLayout.getId());
            }
        }
        getPopupTextView().setLayoutParams(layoutParams);
    }

    private final void alignTrackAndHandle() {
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.default_handle_padding);
        int i = WhenMappings.$EnumSwitchMapping$0[this.fastScrollDirection.ordinal()];
        View view = null;
        if (i == 1) {
            AppCompatImageView appCompatImageView = this.handleImageView;
            if (appCompatImageView == null) {
                y45.B("handleImageView");
                appCompatImageView = null;
            }
            appCompatImageView.setPadding(dimensionPixelOffset, 0, dimensionPixelOffset, 0);
            TextView popupTextView = getPopupTextView();
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(19, R.id.trackView);
            popupTextView.setLayoutParams(layoutParams);
            LinearLayout linearLayout = this.trackView;
            if (linearLayout == null) {
                y45.B("trackView");
            } else {
                view = linearLayout;
            }
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -1);
            layoutParams2.addRule(21);
            view.setLayoutParams(layoutParams2);
        } else {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            AppCompatImageView appCompatImageView2 = this.handleImageView;
            if (appCompatImageView2 == null) {
                y45.B("handleImageView");
                appCompatImageView2 = null;
            }
            appCompatImageView2.setPadding(0, dimensionPixelOffset, 0, dimensionPixelOffset);
            TextView popupTextView2 = getPopupTextView();
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams3.addRule(8, R.id.trackView);
            popupTextView2.setLayoutParams(layoutParams3);
            LinearLayout linearLayout2 = this.trackView;
            if (linearLayout2 == null) {
                y45.B("trackView");
            } else {
                view = linearLayout2;
            }
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams4.addRule(12);
            view.setLayoutParams(layoutParams4);
        }
        post(new Runnable() {
            @Override
            public final void run() {
                RecyclerViewFastScroller.alignTrackAndHandle$lambda$12(this.b);
            }
        });
    }

    public static final void alignTrackAndHandle$lambda$12(RecyclerViewFastScroller recyclerViewFastScroller) {
        int i = WhenMappings.$EnumSwitchMapping$0[recyclerViewFastScroller.fastScrollDirection.ordinal()];
        RecyclerView recyclerView = null;
        if (i == 1) {
            AppCompatImageView appCompatImageView = recyclerViewFastScroller.handleImageView;
            if (appCompatImageView == null) {
                y45.B("handleImageView");
                appCompatImageView = null;
            }
            appCompatImageView.setX(0.0f);
            TextView popupTextView = recyclerViewFastScroller.getPopupTextView();
            LinearLayout linearLayout = recyclerViewFastScroller.trackView;
            if (linearLayout == null) {
                y45.B("trackView");
                linearLayout = null;
            }
            popupTextView.setX(linearLayout.getX() - recyclerViewFastScroller.getPopupTextView().getWidth());
        } else {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            AppCompatImageView appCompatImageView2 = recyclerViewFastScroller.handleImageView;
            if (appCompatImageView2 == null) {
                y45.B("handleImageView");
                appCompatImageView2 = null;
            }
            appCompatImageView2.setY(0.0f);
            TextView popupTextView2 = recyclerViewFastScroller.getPopupTextView();
            LinearLayout linearLayout2 = recyclerViewFastScroller.trackView;
            if (linearLayout2 == null) {
                y45.B("trackView");
                linearLayout2 = null;
            }
            popupTextView2.setY(linearLayout2.getY() - recyclerViewFastScroller.getPopupTextView().getHeight());
        }
        RecyclerView.OnScrollListener onScrollListener = recyclerViewFastScroller.onScrollListener;
        RecyclerView recyclerView2 = recyclerViewFastScroller.recyclerView;
        if (recyclerView2 == null) {
            y45.B("recyclerView");
        } else {
            recyclerView = recyclerView2;
        }
        onScrollListener.onScrolled(recyclerView, 0, 0);
    }

    public final void animateVisibility(final View view, boolean z) {
        final float f = z ? 1.0f : 0.0f;
        ViewPropertyAnimator duration = view.animate().alpha(f).setDuration(500L);
        y45.i(duration, "setDuration(...)");
        duration.setListener(new Animator.AnimatorListener() {
            @Override
            public void onAnimationCancel(Animator p0) {
                y45.j(p0, "p0");
                view.animate().alpha(f).setDuration(500L);
            }

            @Override
            public void onAnimationEnd(Animator p0) {
                y45.j(p0, "p0");
            }

            @Override
            public void onAnimationRepeat(Animator p0) {
                y45.j(p0, "p0");
            }

            @Override
            public void onAnimationStart(Animator p0) {
                y45.j(p0, "p0");
            }
        });
    }

    public static void animateVisibility$default(RecyclerViewFastScroller recyclerViewFastScroller, View view, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: animateVisibility");
        }
        if ((i & 1) != 0) {
            z = true;
        }
        recyclerViewFastScroller.animateVisibility(view, z);
    }

    private final int computePositionForOffsetAndScroll(RecyclerView recyclerView, float f) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        int itemCount = adapter != null ? adapter.getItemCount() : 0;
        if (itemCount <= 0 || Float.isInfinite(f) || Float.isNaN(f)) {
            return -1;
        }
        Float fValueOf = Float.valueOf(getTrackLength() - getHandleLength());
        float fFloatValue = fValueOf.floatValue();
        float fJ = 0.0f;
        if (fFloatValue <= 0.0f || Float.isInfinite(fFloatValue) || Float.isNaN(fFloatValue)) {
            fValueOf = null;
        }
        float fFloatValue2 = f / (fValueOf != null ? fValueOf.floatValue() : 1.0f);
        if (!Float.isInfinite(fFloatValue2) && !Float.isNaN(fFloatValue2)) {
            fJ = wn8.j(fFloatValue2, 0.0f, 1.0f);
        }
        if (!(layoutManager instanceof LinearLayoutManager)) {
            int i = itemCount - 1;
            int iK = wn8.k(s86.c(fJ * i), 0, i);
            safeScrollToPosition(recyclerView, iK);
            return iK;
        }
        int i2 = itemCount - 1;
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        int iK2 = linearLayoutManager.getReverseLayout() ? wn8.k(s86.c((1.0f - fJ) * i2), 0, i2) : wn8.k(s86.c(i2 * fJ), 0, i2);
        if (this.fastScrollDirection != FastScrollDirection.VERTICAL || linearLayoutManager.getReverseLayout() || fJ < 0.92f || !isRecyclerNearBottom(recyclerView)) {
            safeScrollToPosition(recyclerView, iK2);
            return iK2;
        }
        scrollToRelativeOffset(recyclerView, fJ);
        return iK2;
    }

    private final void delayHideHandleImageView() {
        if (this.handleVisibilityDuration > 0) {
            j jVar = this.hideHandleJob;
            if (jVar != null) {
                j.a.b(jVar, null, 1, null);
            }
            this.hideHandleJob = el0.d(d.a(mc2.c()), null, null, new AnonymousClass1(null), 3, null);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.transsion.widgets.fastscroller.RecyclerViewFastScroller$emptySpaceItemDecoration$2$1] */
    public static final RecyclerViewFastScroller$emptySpaceItemDecoration$2$1 emptySpaceItemDecoration_delegate$lambda$20(final RecyclerViewFastScroller recyclerViewFastScroller) {
        return new RecyclerView.ItemDecoration() {
            @Override
            public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
                View view2;
                y45.j(outRect, "outRect");
                y45.j(view, "view");
                y45.j(parent, "parent");
                y45.j(state, ICode.CALL.CALL_KEY_STATE);
                super.getItemOffsets(outRect, view, parent, state);
                int childAdapterPosition = parent.getChildAdapterPosition(view);
                RecyclerView.Adapter adapter = parent.getAdapter();
                if (childAdapterPosition == (adapter != null ? adapter.getItemCount() : -1)) {
                    RecyclerView recyclerView = this.this$0.recyclerView;
                    if (recyclerView == null) {
                        y45.B("recyclerView");
                        recyclerView = null;
                    }
                    RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
                    y45.h(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
                    int iFindFirstVisibleItemPosition = ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition();
                    if (iFindFirstVisibleItemPosition != -1) {
                        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = parent.findViewHolderForAdapterPosition(iFindFirstVisibleItemPosition);
                        outRect.bottom = (viewHolderFindViewHolderForAdapterPosition == null || (view2 = viewHolderFindViewHolderForAdapterPosition.itemView) == null) ? 0 : view2.getHeight();
                    }
                }
            }
        };
    }

    private final void enableNestedScrolling() {
        setNestedScrollingEnabled(true);
    }

    private final View getDecorViewFromView(View view) {
        Window window;
        if (view == null) {
            return null;
        }
        Context context = view.getContext();
        if (!(context instanceof Activity) || (window = ((Activity) context).getWindow()) == null) {
            return null;
        }
        return window.getDecorView();
    }

    private final RecyclerViewFastScroller$emptySpaceItemDecoration$2$1 getEmptySpaceItemDecoration() {
        return (RecyclerViewFastScroller$emptySpaceItemDecoration$2$1) this.emptySpaceItemDecoration.getValue();
    }

    private final float getHandleLength() {
        int height;
        int i = WhenMappings.$EnumSwitchMapping$0[this.fastScrollDirection.ordinal()];
        AppCompatImageView appCompatImageView = null;
        if (i == 1) {
            AppCompatImageView appCompatImageView2 = this.handleImageView;
            if (appCompatImageView2 == null) {
                y45.B("handleImageView");
            } else {
                appCompatImageView = appCompatImageView2;
            }
            height = appCompatImageView.getHeight();
        } else {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            AppCompatImageView appCompatImageView3 = this.handleImageView;
            if (appCompatImageView3 == null) {
                y45.B("handleImageView");
            } else {
                appCompatImageView = appCompatImageView3;
            }
            height = appCompatImageView.getWidth();
        }
        return height;
    }

    private final float getPopupLength() {
        int height;
        int i = WhenMappings.$EnumSwitchMapping$0[this.fastScrollDirection.ordinal()];
        if (i == 1) {
            height = getPopupTextView().getHeight();
        } else {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            height = getPopupTextView().getWidth();
        }
        return height;
    }

    private final int getTotalCompletelyVisibleItemCount(LinearLayoutManager linearLayoutManager) {
        Integer numValueOf = Integer.valueOf(linearLayoutManager.findFirstCompletelyVisibleItemPosition());
        if (numValueOf.intValue() == -1) {
            numValueOf = null;
        }
        int iIntValue = numValueOf != null ? numValueOf.intValue() : linearLayoutManager.findFirstVisibleItemPosition();
        Integer numValueOf2 = Integer.valueOf(linearLayoutManager.findLastCompletelyVisibleItemPosition());
        Integer num = numValueOf2.intValue() != -1 ? numValueOf2 : null;
        int iIntValue2 = num != null ? num.intValue() : linearLayoutManager.findLastVisibleItemPosition();
        if (iIntValue == -1 || iIntValue2 == -1) {
            return -1;
        }
        return iIntValue2 - iIntValue;
    }

    private final float getTrackLength() {
        int height;
        int i = WhenMappings.$EnumSwitchMapping$0[this.fastScrollDirection.ordinal()];
        LinearLayout linearLayout = null;
        if (i == 1) {
            LinearLayout linearLayout2 = this.trackView;
            if (linearLayout2 == null) {
                y45.B("trackView");
            } else {
                linearLayout = linearLayout2;
            }
            height = linearLayout.getHeight();
        } else {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            LinearLayout linearLayout3 = this.trackView;
            if (linearLayout3 == null) {
                y45.B("trackView");
            } else {
                linearLayout = linearLayout3;
            }
            height = linearLayout.getWidth();
        }
        return height;
    }

    private final void initCsRefreshLayout() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof CustomSwipeRefreshLayout) {
                this.mCsRefreshLayout = new WeakReference<>(parent);
                return;
            }
        }
    }

    private final void initImpl() {
        if (this.hasEmptyItemDecorator) {
            setEmptySpaceItemDecorator();
        }
        registerDataObserver();
    }

    private final boolean isRecyclerNearBottom(RecyclerView recyclerView) {
        int iComputeVerticalScrollRange = recyclerView.computeVerticalScrollRange() - recyclerView.computeVerticalScrollExtent();
        return iComputeVerticalScrollRange > 0 && ((float) recyclerView.computeVerticalScrollOffset()) / ((float) iComputeVerticalScrollRange) >= 0.85f;
    }

    private final int loadDimenFromResource(@DimenRes int dimenSize) {
        return getContext().getResources().getDimensionPixelSize(dimenSize);
    }

    private final Drawable loadDrawableFromAttributes(@StyleableRes int styleId) {
        TypedArray typedArray = this.attribs;
        if (typedArray != null) {
            return typedArray.getDrawable(styleId);
        }
        return null;
    }

    private final void log(String message) {
    }

    public static void log$default(RecyclerViewFastScroller recyclerViewFastScroller, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: log");
        }
        if ((i & 1) != 0) {
            str = "";
        }
        recyclerViewFastScroller.log(str);
    }

    private final void moveHandle(float offset, boolean delayHide) {
        if (delayHide) {
            delayHideHandleImageView();
        }
        AppCompatImageView appCompatImageView = this.handleImageView;
        if (appCompatImageView == null) {
            y45.B("handleImageView");
            appCompatImageView = null;
        }
        moveViewToRelativePositionWithBounds(appCompatImageView, offset);
        moveViewToRelativePositionWithBounds(getPopupTextView(), offset - getPopupLength());
    }

    private final void moveViewToRelativePositionWithBounds(View view, float finalOffset) {
        int i = WhenMappings.$EnumSwitchMapping$0[this.fastScrollDirection.ordinal()];
        if (i == 1) {
            view.setY(Math.min(Math.max(finalOffset, 0.0f), getTrackLength() - view.getHeight()));
        } else {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            view.setX(Math.min(Math.max(finalOffset, 0.0f), getTrackLength() - view.getWidth()));
        }
    }

    private final void onAnimationCancelled(ViewPropertyAnimator viewPropertyAnimator, final c74 c74Var) {
        viewPropertyAnimator.setListener(new Animator.AnimatorListener() {
            @Override
            public void onAnimationCancel(Animator p0) {
                y45.j(p0, "p0");
                c74Var.invoke();
            }

            @Override
            public void onAnimationEnd(Animator p0) {
                y45.j(p0, "p0");
            }

            @Override
            public void onAnimationRepeat(Animator p0) {
                y45.j(p0, "p0");
            }

            @Override
            public void onAnimationStart(Animator p0) {
                y45.j(p0, "p0");
            }
        });
    }

    public static final void onFinishInflate$lambda$5(final RecyclerViewFastScroller recyclerViewFastScroller) {
        final int scaledTouchSlop = ViewConfiguration.get(recyclerViewFastScroller.getContext()).getScaledTouchSlop();
        View.OnTouchListener onTouchListener = new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return RecyclerViewFastScroller.onFinishInflate$lambda$5$lambda$4(this.b, scaledTouchSlop, view, motionEvent);
            }
        };
        AppCompatImageView appCompatImageView = recyclerViewFastScroller.handleImageView;
        LinearLayout linearLayout = null;
        if (appCompatImageView == null) {
            y45.B("handleImageView");
            appCompatImageView = null;
        }
        appCompatImageView.setOnTouchListener(onTouchListener);
        LinearLayout linearLayout2 = recyclerViewFastScroller.trackView;
        if (linearLayout2 == null) {
            y45.B("trackView");
        } else {
            linearLayout = linearLayout2;
        }
        linearLayout.setOnTouchListener(onTouchListener);
    }

    public static final boolean onFinishInflate$lambda$5$lambda$4(RecyclerViewFastScroller recyclerViewFastScroller, int i, View view, MotionEvent motionEvent) throws IllegalAccessException {
        float rawY;
        HandleAppBarLayoutStateListener handleAppBarLayoutStateListener;
        float y;
        MutableLiveData mutableLiveData;
        HandleStateListener handleStateListener;
        HandleStateListener handleStateListener2;
        int[] iArr = new int[2];
        LinearLayout linearLayout = recyclerViewFastScroller.trackView;
        RecyclerView recyclerView = null;
        if (linearLayout == null) {
            y45.B("trackView");
            linearLayout = null;
        }
        linearLayout.getLocationInWindow(iArr);
        Pair pair = new Pair(Integer.valueOf(iArr[0]), Integer.valueOf(iArr[1]));
        int iIntValue = ((Number) pair.component1()).intValue();
        int iIntValue2 = ((Number) pair.component2()).intValue();
        int action = motionEvent.getAction() & motionEvent.getActionMasked();
        recyclerViewFastScroller.log("Touch Action: " + action);
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action != 3) {
                        return false;
                    }
                }
            }
            recyclerViewFastScroller.mCurrentRelativePos = 0.0f;
            recyclerViewFastScroller.isEngaged = false;
            Drawable handleDrawable = recyclerViewFastScroller.getHandleDrawable();
            if (handleDrawable != null) {
                handleDrawable.setState(recyclerViewFastScroller.EMPTY_STATE_SET);
            }
            recyclerViewFastScroller.delayHideHandleImageView();
            CustomSwipeRefreshLayout customSwipeRefreshLayout = recyclerViewFastScroller.mCsRefreshLayout.get();
            if (customSwipeRefreshLayout != null) {
                customSwipeRefreshLayout.setHandleViewPressed(false);
            }
            recyclerViewFastScroller.requestDisallowInterceptTouchEvent(false);
            if (recyclerViewFastScroller.isFastScrollEnabled && (handleStateListener2 = recyclerViewFastScroller.handleStateListener) != null) {
                handleStateListener2.onReleased();
            }
            return super.onTouchEvent(motionEvent);
        }
        recyclerViewFastScroller.requestDisallowInterceptTouchEvent(true);
        if (recyclerViewFastScroller.mCsRefreshLayout.get() == null) {
            recyclerViewFastScroller.initCsRefreshLayout();
        }
        CustomSwipeRefreshLayout customSwipeRefreshLayout2 = recyclerViewFastScroller.mCsRefreshLayout.get();
        if (customSwipeRefreshLayout2 != null) {
            customSwipeRefreshLayout2.setHandleViewPressed(true);
        }
        if (motionEvent.getAction() == 0) {
            if (!recyclerViewFastScroller.adapterDataObserver.isInitialized()) {
                recyclerViewFastScroller.registerDataObserver();
            }
            Drawable handleDrawable2 = recyclerViewFastScroller.getHandleDrawable();
            if (handleDrawable2 != null) {
                handleDrawable2.setState(recyclerViewFastScroller.PRESSED_STATE_SET);
            }
            recyclerViewFastScroller.isEngaged = true;
            if (recyclerViewFastScroller.isFastScrollEnabled && (handleStateListener = recyclerViewFastScroller.handleStateListener) != null) {
                handleStateListener.onEngaged();
            }
        }
        float handleLength = recyclerViewFastScroller.getHandleLength() / 2;
        WindowInfoViewModel windowInfoViewModel = recyclerViewFastScroller.mWindowInfoViewModel;
        if ((windowInfoViewModel == null || (mutableLiveData = windowInfoViewModel.c) == null) ? false : y45.e(mutableLiveData.getValue(), Boolean.TRUE)) {
            int[] iArr2 = new int[2];
            View decorViewFromView = recyclerViewFastScroller.getDecorViewFromView(recyclerViewFastScroller);
            if (decorViewFromView != null) {
                decorViewFromView.getLocationOnScreen(iArr2);
            }
            float f = iArr2[0];
            float f2 = iArr2[1];
            float rawX = motionEvent.getRawX() - f;
            float rawY2 = motionEvent.getRawY() - f2;
            int i2 = WhenMappings.$EnumSwitchMapping$0[recyclerViewFastScroller.fastScrollDirection.ordinal()];
            if (i2 == 1) {
                rawY = (rawY2 - iIntValue2) - handleLength;
            } else {
                if (i2 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                rawY = (rawX - iIntValue) - handleLength;
            }
        } else {
            int i3 = WhenMappings.$EnumSwitchMapping$0[recyclerViewFastScroller.fastScrollDirection.ordinal()];
            if (i3 == 1) {
                rawY = (motionEvent.getRawY() - iIntValue2) - handleLength;
            } else {
                if (i3 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                rawY = (motionEvent.getRawX() - iIntValue) - handleLength;
            }
        }
        if (recyclerViewFastScroller.isFastScrollEnabled) {
            AppCompatImageView appCompatImageView = recyclerViewFastScroller.handleImageView;
            if (appCompatImageView == null) {
                y45.B("handleImageView");
                appCompatImageView = null;
            }
            appCompatImageView.setAlpha(1.0f);
            AppCompatImageView appCompatImageView2 = recyclerViewFastScroller.handleImageView;
            if (appCompatImageView2 == null) {
                y45.B("handleImageView");
                appCompatImageView2 = null;
            }
            recyclerViewFastScroller.animateVisibility(appCompatImageView2, true);
            recyclerViewFastScroller.moveHandle(rawY, false);
            RecyclerView recyclerView2 = recyclerViewFastScroller.recyclerView;
            if (recyclerView2 == null) {
                y45.B("recyclerView");
                recyclerView2 = null;
            }
            int iComputePositionForOffsetAndScroll = recyclerViewFastScroller.computePositionForOffsetAndScroll(recyclerView2, rawY);
            if (Math.abs(recyclerViewFastScroller.mCurrentRelativePos - rawY) > i && motionEvent.getAction() == 2) {
                Drawable handleDrawable3 = recyclerViewFastScroller.getHandleDrawable();
                if (handleDrawable3 != null) {
                    handleDrawable3.setState(recyclerViewFastScroller.PRESSED_STATE_SET);
                }
                HandleStateListener handleStateListener3 = recyclerViewFastScroller.handleStateListener;
                if (handleStateListener3 != null) {
                    int i4 = WhenMappings.$EnumSwitchMapping$0[recyclerViewFastScroller.fastScrollDirection.ordinal()];
                    if (i4 == 1) {
                        AppCompatImageView appCompatImageView3 = recyclerViewFastScroller.handleImageView;
                        if (appCompatImageView3 == null) {
                            y45.B("handleImageView");
                            appCompatImageView3 = null;
                        }
                        y = appCompatImageView3.getY();
                    } else {
                        if (i4 != 2) {
                            throw new NoWhenBranchMatchedException();
                        }
                        AppCompatImageView appCompatImageView4 = recyclerViewFastScroller.handleImageView;
                        if (appCompatImageView4 == null) {
                            y45.B("handleImageView");
                            appCompatImageView4 = null;
                        }
                        y = appCompatImageView4.getX();
                    }
                    handleStateListener3.onDragged(y, iComputePositionForOffsetAndScroll);
                }
            }
            recyclerViewFastScroller.mCurrentRelativePos = rawY;
            RecyclerView recyclerView3 = recyclerViewFastScroller.recyclerView;
            if (recyclerView3 == null) {
                y45.B("recyclerView");
            } else {
                recyclerView = recyclerView3;
            }
            RecyclerView.Adapter adapter = recyclerView.getAdapter();
            recyclerViewFastScroller.updateTextInPopup(Math.min((adapter != null ? adapter.getItemCount() : 0) - 1, iComputePositionForOffsetAndScroll));
            if (recyclerViewFastScroller.getContext() != null) {
                if (motionEvent.getRawY() >= (com.transsion.utils.a.l(recyclerViewFastScroller.getContext()) - handleLength) - com.transsion.utils.a.d(recyclerViewFastScroller.getContext(), 60.0f) && (handleAppBarLayoutStateListener = recyclerViewFastScroller.mHandleAppBarLayoutStateListener) != null) {
                    handleAppBarLayoutStateListener.onAppBarCollapsed();
                }
            }
        } else {
            RecyclerView recyclerView4 = recyclerViewFastScroller.recyclerView;
            if (recyclerView4 == null) {
                y45.B("recyclerView");
                recyclerView4 = null;
            }
            RecyclerView.LayoutManager layoutManager = recyclerView4.getLayoutManager();
            y45.h(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
            int orientation = ((LinearLayoutManager) layoutManager).getOrientation();
            if (orientation == 0) {
                RecyclerView recyclerView5 = recyclerViewFastScroller.recyclerView;
                if (recyclerView5 == null) {
                    y45.B("recyclerView");
                } else {
                    recyclerView = recyclerView5;
                }
                recyclerView.scrollBy((int) rawY, 0);
            } else if (orientation == 1) {
                RecyclerView recyclerView6 = recyclerViewFastScroller.recyclerView;
                if (recyclerView6 == null) {
                    y45.B("recyclerView");
                } else {
                    recyclerView = recyclerView6;
                }
                recyclerView.scrollBy(0, (int) rawY);
            }
        }
        return true;
    }

    private final void refreshHandleImageViewSize(int newComputedSize) {
        if (newComputedSize != -1) {
            throw new NotImplementedError("An operation is not implemented: @shahsurajk dynamic sizing of handle");
        }
        AppCompatImageView appCompatImageView = this.handleImageView;
        if (appCompatImageView == null) {
            y45.B("handleImageView");
            appCompatImageView = null;
        }
        appCompatImageView.setLayoutParams(new LinearLayout.LayoutParams(this.handleWidth, this.handleHeight));
    }

    public static void refreshHandleImageViewSize$default(RecyclerViewFastScroller recyclerViewFastScroller, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: refreshHandleImageViewSize");
        }
        if ((i2 & 1) != 0) {
            i = -1;
        }
        recyclerViewFastScroller.refreshHandleImageViewSize(i);
    }

    private final void registerDataObserver() {
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView == null) {
            y45.B("recyclerView");
            recyclerView = null;
        }
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        if (adapter != null) {
            adapter.registerAdapterDataObserver((RecyclerView.AdapterDataObserver) this.adapterDataObserver.getValue());
        }
    }

    private final void safeScrollToPosition(RecyclerView recyclerView, int i) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            ((LinearLayoutManager) layoutManager).scrollToPositionWithOffset(i, 0);
        } else if (layoutManager != null) {
            layoutManager.scrollToPosition(i);
        }
    }

    private final void scrollToRelativeOffset(RecyclerView recyclerView, float f) {
        Triple triple;
        int iK;
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        if (linearLayoutManager == null) {
            return;
        }
        int orientation = linearLayoutManager.getOrientation();
        if (orientation == 0) {
            triple = new Triple(Integer.valueOf(recyclerView.computeHorizontalScrollRange()), Integer.valueOf(recyclerView.computeHorizontalScrollExtent()), Integer.valueOf(recyclerView.computeHorizontalScrollOffset()));
        } else if (orientation != 1) {
            return;
        } else {
            triple = new Triple(Integer.valueOf(recyclerView.computeVerticalScrollRange()), Integer.valueOf(recyclerView.computeVerticalScrollExtent()), Integer.valueOf(recyclerView.computeVerticalScrollOffset()));
        }
        int iIntValue = ((Number) triple.component1()).intValue();
        int iIntValue2 = ((Number) triple.component2()).intValue();
        int iIntValue3 = ((Number) triple.component3()).intValue();
        int iD = wn8.d(iIntValue - iIntValue2, 0);
        if (iD == 0 || Float.isInfinite(f) || Float.isNaN(f) || (iK = wn8.k(s86.c(iD * f), 0, iD) - iIntValue3) == 0) {
            return;
        }
        if (linearLayoutManager.getOrientation() == 0) {
            recyclerView.scrollBy(iK, 0);
        } else {
            recyclerView.scrollBy(0, iK);
        }
    }

    private final void setEmptySpaceItemDecorator() {
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView == null) {
            y45.B("recyclerView");
            recyclerView = null;
        }
        recyclerView.addItemDecoration(getEmptySpaceItemDecoration());
    }

    private final void setTrackMargin() {
        LinearLayout linearLayout = this.trackView;
        if (linearLayout == null) {
            y45.B("trackView");
            linearLayout = null;
        }
        ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        int i = WhenMappings.$EnumSwitchMapping$0[this.fastScrollDirection.ordinal()];
        if (i == 1) {
            marginLayoutParams.setMargins(0, this.trackMarginStart, 0, this.trackMarginEnd);
        } else {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            marginLayoutParams.setMarginStart(this.trackMarginStart);
            marginLayoutParams.setMarginEnd(this.trackMarginEnd);
        }
    }

    private final void updateTextInPopup(int position) throws IllegalAccessException {
        if (position >= 0) {
            RecyclerView recyclerView = this.recyclerView;
            RecyclerView recyclerView2 = null;
            if (recyclerView == null) {
                y45.B("recyclerView");
                recyclerView = null;
            }
            RecyclerView.Adapter adapter = recyclerView.getAdapter();
            if (position < (adapter != null ? adapter.getItemCount() : 1)) {
                RecyclerView recyclerView3 = this.recyclerView;
                if (recyclerView3 == null) {
                    y45.B("recyclerView");
                } else {
                    recyclerView2 = recyclerView3;
                }
                Object adapter2 = recyclerView2.getAdapter();
                if (adapter2 == null) {
                    throw new IllegalAccessException("No adapter found, if you have an adapter then try placing if before calling the attachFastScrollerToRecyclerView() method");
                }
                if (adapter2 instanceof OnPopupTextUpdate) {
                    getPopupTextView().setText(((OnPopupTextUpdate) adapter2).onChange(position).toString());
                } else if (adapter2 instanceof OnPopupViewUpdate) {
                    ((OnPopupViewUpdate) adapter2).onUpdate(position, getPopupTextView());
                } else {
                    getPopupTextView().setVisibility(8);
                }
            }
        }
    }

    @Keep
    public final void attachFastScrollerToRecyclerView(RecyclerView recyclerView) {
        y45.j(recyclerView, "recyclerView");
        this.recyclerView = recyclerView;
        initImpl();
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public final void detachFastScrollerFromRecyclerView() {
        try {
            if (this.adapterDataObserver.isInitialized()) {
                RecyclerView recyclerView = this.recyclerView;
                if (recyclerView == null) {
                    y45.B("recyclerView");
                    recyclerView = null;
                }
                RecyclerView.Adapter adapter = recyclerView.getAdapter();
                if (adapter != null) {
                    adapter.unregisterAdapterDataObserver((RecyclerView.AdapterDataObserver) this.adapterDataObserver.getValue());
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "detachFastScrollerFromRecyclerView, unregisterAdapterDataObserver exception:" + e.getMessage());
        }
        AppCompatImageView appCompatImageView = this.handleImageView;
        if (appCompatImageView == null) {
            y45.B("handleImageView");
            appCompatImageView = null;
        }
        appCompatImageView.setOnTouchListener(null);
        LinearLayout linearLayout = this.trackView;
        if (linearLayout == null) {
            y45.B("trackView");
            linearLayout = null;
        }
        linearLayout.setOnTouchListener(null);
        getPopupTextView().setOnTouchListener(null);
        RecyclerView recyclerView2 = this.recyclerView;
        if (recyclerView2 == null) {
            y45.B("recyclerView");
            recyclerView2 = null;
        }
        recyclerView2.removeOnScrollListener(this.onScrollListener);
        try {
            if (this.hasEmptyItemDecorator) {
                RecyclerView recyclerView3 = this.recyclerView;
                if (recyclerView3 == null) {
                    y45.B("recyclerView");
                    recyclerView3 = null;
                }
                recyclerView3.removeItemDecoration(getEmptySpaceItemDecoration());
            }
        } catch (Exception e2) {
            Log.e(TAG, "detachFastScrollerFromRecyclerView, removeItemDecoration exception:" + e2.getMessage());
        }
        j jVar = this.hideHandleJob;
        if (jVar != null) {
            j.a.b(jVar, null, 1, null);
        }
        AppCompatImageView appCompatImageView2 = this.handleImageView;
        if (appCompatImageView2 == null) {
            y45.B("handleImageView");
            appCompatImageView2 = null;
        }
        ViewPropertyAnimator viewPropertyAnimatorAnimate = appCompatImageView2.animate();
        if (viewPropertyAnimatorAnimate != null) {
            viewPropertyAnimatorAnimate.setListener(null);
            viewPropertyAnimatorAnimate.cancel();
        }
        ViewPropertyAnimator viewPropertyAnimatorAnimate2 = animate();
        if (viewPropertyAnimatorAnimate2 != null) {
            viewPropertyAnimatorAnimate2.setListener(null);
            viewPropertyAnimatorAnimate2.cancel();
        }
    }

    public final FastScrollDirection getFastScrollDirection() {
        return this.fastScrollDirection;
    }

    public final Drawable getHandleDrawable() {
        AppCompatImageView appCompatImageView = this.handleImageView;
        if (appCompatImageView == null) {
            y45.B("handleImageView");
            appCompatImageView = null;
        }
        return appCompatImageView.getDrawable();
    }

    public final int getHandleHeight() {
        return this.handleHeight;
    }

    public final int getHandleVisibilityDuration() {
        return this.handleVisibilityDuration;
    }

    public final int getHandleWidth() {
        return this.handleWidth;
    }

    public final float getMLastScrollerOffset() {
        return this.mLastScrollerOffset;
    }

    public final Drawable getPopupDrawable() {
        return getPopupTextView().getBackground();
    }

    public final TextView getPopupTextView() {
        TextView textView = this.popupTextView;
        if (textView != null) {
            return textView;
        }
        y45.B("popupTextView");
        return null;
    }

    public final int getTextStyle() {
        return this.textStyle;
    }

    public final Drawable getTrackDrawable() {
        LinearLayout linearLayout = this.trackView;
        if (linearLayout == null) {
            y45.B("trackView");
            linearLayout = null;
        }
        return linearLayout.getBackground();
    }

    public final int getTrackMarginEnd() {
        return this.trackMarginEnd;
    }

    public final int getTrackMarginStart() {
        return this.trackMarginStart;
    }

    public final boolean getIsFastScrollEnabled() {
        return this.isFastScrollEnabled;
    }

    @Override
    public void onAttachedToWindow() {
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView != null) {
            if (recyclerView == null) {
                y45.B("recyclerView");
                recyclerView = null;
            }
            recyclerView.addOnScrollListener(this.onScrollListener);
        }
        super.onAttachedToWindow();
        if (getContext() instanceof AppCompatActivity) {
            Context context = getContext();
            y45.h(context, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
            this.mWindowInfoViewModel = (WindowInfoViewModel) new ViewModelProvider((AppCompatActivity) context).get(WindowInfoViewModel.class);
        }
    }

    @Override
    public void onDetachedFromWindow() {
        detachFastScrollerFromRecyclerView();
        super.onDetachedFromWindow();
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public void onFinishInflate() {
        super.onFinishInflate();
        if (getChildCount() > 2) {
            int childCount = getChildCount();
            for (int i = 2; i < childCount; i++) {
                View childAt = getChildAt(i);
                if (childAt instanceof RecyclerView) {
                    removeView(childAt);
                    addView(childAt, 0);
                    attachFastScrollerToRecyclerView((RecyclerView) childAt);
                }
            }
        }
        post(new Runnable() {
            @Override
            public final void run() {
                RecyclerViewFastScroller.onFinishInflate$lambda$5(this.b);
            }
        });
    }

    public final void onScrollStateChanged(RecyclerView recyclerView, int newState) {
        y45.j(recyclerView, "recyclerView");
        this.mScrollState = newState;
    }

    public final void onScrolled(RecyclerView recyclerView, int dx, int dy) {
        Triple triple;
        y45.j(recyclerView, "recyclerView");
        View view = null;
        if (this.mIsAppBarExpand) {
            animateVisibility(this, false);
            j jVar = this.hideHandleJob;
            if (jVar != null) {
                j.a.b(jVar, null, 1, null);
            }
        }
        if (this.isEngaged && this.isFastScrollEnabled) {
            return;
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        y45.h(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
        int orientation = ((LinearLayoutManager) layoutManager).getOrientation();
        if (orientation == 0) {
            triple = new Triple(Integer.valueOf(recyclerView.computeHorizontalScrollRange()), Integer.valueOf(recyclerView.computeHorizontalScrollExtent()), Integer.valueOf(recyclerView.computeHorizontalScrollOffset()));
        } else {
            if (orientation != 1) {
                throw new IllegalStateException("The orientation of the LinearLayoutManager should be horizontal or vertical");
            }
            triple = new Triple(Integer.valueOf(recyclerView.computeVerticalScrollRange()), Integer.valueOf(recyclerView.computeVerticalScrollExtent()), Integer.valueOf(recyclerView.computeVerticalScrollOffset()));
        }
        int iIntValue = ((Number) triple.component1()).intValue();
        int iIntValue2 = ((Number) triple.component2()).intValue();
        int iIntValue3 = ((Number) triple.component3()).intValue();
        if (iIntValue2 >= iIntValue) {
            AppCompatImageView appCompatImageView = this.handleImageView;
            if (appCompatImageView == null) {
                y45.B("handleImageView");
                appCompatImageView = null;
            }
            animateVisibility(appCompatImageView, false);
            LinearLayout linearLayout = this.trackView;
            if (linearLayout == null) {
                y45.B("trackView");
                linearLayout = null;
            }
            linearLayout.setEnabled(false);
            AppCompatImageView appCompatImageView2 = this.handleImageView;
            if (appCompatImageView2 == null) {
                y45.B("handleImageView");
            } else {
                view = appCompatImageView2;
            }
            view.setEnabled(false);
            return;
        }
        if (this.mScrollState != 0) {
            AppCompatImageView appCompatImageView3 = this.handleImageView;
            if (appCompatImageView3 == null) {
                y45.B("handleImageView");
                appCompatImageView3 = null;
            }
            appCompatImageView3.setAlpha(1.0f);
            AppCompatImageView appCompatImageView4 = this.handleImageView;
            if (appCompatImageView4 == null) {
                y45.B("handleImageView");
                appCompatImageView4 = null;
            }
            animateVisibility$default(this, appCompatImageView4, false, 1, null);
            AppCompatImageView appCompatImageView5 = this.handleImageView;
            if (appCompatImageView5 == null) {
                y45.B("handleImageView");
                appCompatImageView5 = null;
            }
            appCompatImageView5.setEnabled(true);
            LinearLayout linearLayout2 = this.trackView;
            if (linearLayout2 == null) {
                y45.B("trackView");
            } else {
                view = linearLayout2;
            }
            view.setEnabled(true);
        }
        float trackLength = ((getTrackLength() - getHandleLength()) * iIntValue3) / (iIntValue - iIntValue2);
        RecyclerView.LayoutManager layoutManager2 = recyclerView.getLayoutManager();
        y45.h(layoutManager2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
        if (((LinearLayoutManager) layoutManager2).getOrientation() == 1) {
            float f = this.mLastScrollerOffset;
            if (f > 0.0f && (dy <= 0 ? !(dy >= 0 || trackLength <= f) : trackLength < f)) {
                trackLength = f;
            }
            this.mLastScrollerOffset = trackLength;
        }
        moveHandle(trackLength, true);
    }

    @Override
    public boolean onTouch(View v, MotionEvent event) throws IllegalAccessException {
        float rawY;
        float y;
        HandleStateListener handleStateListener;
        HandleStateListener handleStateListener2;
        if (this.mCsRefreshLayout.get() == null) {
            initCsRefreshLayout();
        }
        if (event == null) {
            return false;
        }
        int scaledTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        int[] iArr = new int[2];
        LinearLayout linearLayout = this.trackView;
        RecyclerView recyclerView = null;
        if (linearLayout == null) {
            y45.B("trackView");
            linearLayout = null;
        }
        linearLayout.getLocationInWindow(iArr);
        Pair pair = new Pair(Integer.valueOf(iArr[0]), Integer.valueOf(iArr[1]));
        int iIntValue = ((Number) pair.component1()).intValue();
        int iIntValue2 = ((Number) pair.component2()).intValue();
        int action = event.getAction() & event.getActionMasked();
        log("Touch Action: " + action);
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action != 3) {
                        return false;
                    }
                }
            }
            this.mCurrentRelativePos = 0.0f;
            this.isEngaged = false;
            Drawable handleDrawable = getHandleDrawable();
            if (handleDrawable != null) {
                handleDrawable.setState(this.EMPTY_STATE_SET);
            }
            delayHideHandleImageView();
            if (this.isFastScrollEnabled && (handleStateListener2 = this.handleStateListener) != null) {
                handleStateListener2.onReleased();
            }
            requestDisallowInterceptTouchEvent(false);
            CustomSwipeRefreshLayout customSwipeRefreshLayout = this.mCsRefreshLayout.get();
            if (customSwipeRefreshLayout != null) {
                customSwipeRefreshLayout.setHandleViewPressed(false);
            }
            return super.onTouchEvent(event);
        }
        AppCompatImageView appCompatImageView = this.handleImageView;
        if (appCompatImageView == null) {
            y45.B("handleImageView");
            appCompatImageView = null;
        }
        Log.i(TAG, "handleImageView.visibility: " + (appCompatImageView.getVisibility() == 0));
        AppCompatImageView appCompatImageView2 = this.handleImageView;
        if (appCompatImageView2 == null) {
            y45.B("handleImageView");
            appCompatImageView2 = null;
        }
        if (appCompatImageView2.getVisibility() != 0) {
            AppCompatImageView appCompatImageView3 = this.handleImageView;
            if (appCompatImageView3 == null) {
                y45.B("handleImageView");
                appCompatImageView3 = null;
            }
            animateVisibility(appCompatImageView3, true);
            AppCompatImageView appCompatImageView4 = this.handleImageView;
            if (appCompatImageView4 == null) {
                y45.B("handleImageView");
                appCompatImageView4 = null;
            }
            appCompatImageView4.setEnabled(true);
            LinearLayout linearLayout2 = this.trackView;
            if (linearLayout2 == null) {
                y45.B("trackView");
                linearLayout2 = null;
            }
            linearLayout2.setEnabled(true);
        }
        requestDisallowInterceptTouchEvent(true);
        CustomSwipeRefreshLayout customSwipeRefreshLayout2 = this.mCsRefreshLayout.get();
        if (customSwipeRefreshLayout2 != null) {
            customSwipeRefreshLayout2.setHandleViewPressed(true);
        }
        if (event.getAction() == 0) {
            if (!this.adapterDataObserver.isInitialized()) {
                registerDataObserver();
            }
            Drawable handleDrawable2 = getHandleDrawable();
            if (handleDrawable2 != null) {
                handleDrawable2.setState(this.PRESSED_STATE_SET);
            }
            this.isEngaged = true;
            if (this.isFastScrollEnabled && (handleStateListener = this.handleStateListener) != null) {
                handleStateListener.onEngaged();
            }
        }
        float handleLength = getHandleLength() / 2;
        FastScrollDirection fastScrollDirection = this.fastScrollDirection;
        int[] iArr2 = WhenMappings.$EnumSwitchMapping$0;
        int i = iArr2[fastScrollDirection.ordinal()];
        if (i == 1) {
            rawY = (event.getRawY() - iIntValue2) - handleLength;
        } else {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            rawY = (event.getRawX() - iIntValue) - handleLength;
        }
        if (this.isFastScrollEnabled) {
            AppCompatImageView appCompatImageView5 = this.handleImageView;
            if (appCompatImageView5 == null) {
                y45.B("handleImageView");
                appCompatImageView5 = null;
            }
            animateVisibility(appCompatImageView5, true);
            moveHandle(rawY, false);
            RecyclerView recyclerView2 = this.recyclerView;
            if (recyclerView2 == null) {
                y45.B("recyclerView");
                recyclerView2 = null;
            }
            int iComputePositionForOffsetAndScroll = computePositionForOffsetAndScroll(recyclerView2, rawY);
            if (Math.abs(this.mCurrentRelativePos - rawY) > scaledTouchSlop && event.getAction() == 2) {
                Drawable handleDrawable3 = getHandleDrawable();
                if (handleDrawable3 != null) {
                    handleDrawable3.setState(this.PRESSED_STATE_SET);
                }
                HandleStateListener handleStateListener3 = this.handleStateListener;
                if (handleStateListener3 != null) {
                    int i2 = iArr2[this.fastScrollDirection.ordinal()];
                    if (i2 == 1) {
                        AppCompatImageView appCompatImageView6 = this.handleImageView;
                        if (appCompatImageView6 == null) {
                            y45.B("handleImageView");
                            appCompatImageView6 = null;
                        }
                        y = appCompatImageView6.getY();
                    } else {
                        if (i2 != 2) {
                            throw new NoWhenBranchMatchedException();
                        }
                        AppCompatImageView appCompatImageView7 = this.handleImageView;
                        if (appCompatImageView7 == null) {
                            y45.B("handleImageView");
                            appCompatImageView7 = null;
                        }
                        y = appCompatImageView7.getX();
                    }
                    handleStateListener3.onDragged(y, iComputePositionForOffsetAndScroll);
                }
            }
            this.mCurrentRelativePos = rawY;
            RecyclerView recyclerView3 = this.recyclerView;
            if (recyclerView3 == null) {
                y45.B("recyclerView");
            } else {
                recyclerView = recyclerView3;
            }
            RecyclerView.Adapter adapter = recyclerView.getAdapter();
            updateTextInPopup(Math.min((adapter != null ? adapter.getItemCount() : 0) - 1, iComputePositionForOffsetAndScroll));
        } else {
            RecyclerView recyclerView4 = this.recyclerView;
            if (recyclerView4 == null) {
                y45.B("recyclerView");
                recyclerView4 = null;
            }
            RecyclerView.LayoutManager layoutManager = recyclerView4.getLayoutManager();
            y45.h(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
            int orientation = ((LinearLayoutManager) layoutManager).getOrientation();
            if (orientation == 0) {
                RecyclerView recyclerView5 = this.recyclerView;
                if (recyclerView5 == null) {
                    y45.B("recyclerView");
                } else {
                    recyclerView = recyclerView5;
                }
                recyclerView.scrollBy((int) rawY, 0);
            } else if (orientation == 1) {
                RecyclerView recyclerView6 = this.recyclerView;
                if (recyclerView6 == null) {
                    y45.B("recyclerView");
                } else {
                    recyclerView = recyclerView6;
                }
                recyclerView.scrollBy(0, (int) rawY);
            }
        }
        return true;
    }

    public final void refreshScrollerBar() {
        Triple triple;
        try {
            View view = null;
            if (this.mIsAppBarExpand) {
                animateVisibility(this, false);
                j jVar = this.hideHandleJob;
                if (jVar != null) {
                    j.a.b(jVar, null, 1, null);
                }
            }
            if (this.isEngaged && this.isFastScrollEnabled) {
                return;
            }
            RecyclerView recyclerView = this.recyclerView;
            if (recyclerView == null) {
                y45.B("recyclerView");
                recyclerView = null;
            }
            if (recyclerView.getLayoutManager() instanceof LinearLayoutManager) {
                RecyclerView recyclerView2 = this.recyclerView;
                if (recyclerView2 == null) {
                    y45.B("recyclerView");
                    recyclerView2 = null;
                }
                RecyclerView.LayoutManager layoutManager = recyclerView2.getLayoutManager();
                y45.h(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
                int orientation = ((LinearLayoutManager) layoutManager).getOrientation();
                if (orientation == 0) {
                    RecyclerView recyclerView3 = this.recyclerView;
                    if (recyclerView3 == null) {
                        y45.B("recyclerView");
                        recyclerView3 = null;
                    }
                    Integer numValueOf = Integer.valueOf(recyclerView3.computeHorizontalScrollRange());
                    RecyclerView recyclerView4 = this.recyclerView;
                    if (recyclerView4 == null) {
                        y45.B("recyclerView");
                        recyclerView4 = null;
                    }
                    Integer numValueOf2 = Integer.valueOf(recyclerView4.computeHorizontalScrollExtent());
                    RecyclerView recyclerView5 = this.recyclerView;
                    if (recyclerView5 == null) {
                        y45.B("recyclerView");
                        recyclerView5 = null;
                    }
                    triple = new Triple(numValueOf, numValueOf2, Integer.valueOf(recyclerView5.computeHorizontalScrollOffset()));
                } else {
                    if (orientation != 1) {
                        throw new IllegalStateException("The orientation of the LinearLayoutManager should be horizontal or vertical");
                    }
                    RecyclerView recyclerView6 = this.recyclerView;
                    if (recyclerView6 == null) {
                        y45.B("recyclerView");
                        recyclerView6 = null;
                    }
                    Integer numValueOf3 = Integer.valueOf(recyclerView6.computeVerticalScrollRange());
                    RecyclerView recyclerView7 = this.recyclerView;
                    if (recyclerView7 == null) {
                        y45.B("recyclerView");
                        recyclerView7 = null;
                    }
                    Integer numValueOf4 = Integer.valueOf(recyclerView7.computeVerticalScrollExtent());
                    RecyclerView recyclerView8 = this.recyclerView;
                    if (recyclerView8 == null) {
                        y45.B("recyclerView");
                        recyclerView8 = null;
                    }
                    triple = new Triple(numValueOf3, numValueOf4, Integer.valueOf(recyclerView8.computeVerticalScrollOffset()));
                }
                int iIntValue = ((Number) triple.component1()).intValue();
                int iIntValue2 = ((Number) triple.component2()).intValue();
                int iIntValue3 = ((Number) triple.component3()).intValue();
                if (iIntValue2 >= iIntValue) {
                    AppCompatImageView appCompatImageView = this.handleImageView;
                    if (appCompatImageView == null) {
                        y45.B("handleImageView");
                        appCompatImageView = null;
                    }
                    animateVisibility(appCompatImageView, false);
                    LinearLayout linearLayout = this.trackView;
                    if (linearLayout == null) {
                        y45.B("trackView");
                        linearLayout = null;
                    }
                    linearLayout.setEnabled(false);
                    AppCompatImageView appCompatImageView2 = this.handleImageView;
                    if (appCompatImageView2 == null) {
                        y45.B("handleImageView");
                    } else {
                        view = appCompatImageView2;
                    }
                    view.setEnabled(false);
                    return;
                }
                if (this.mScrollState != 0) {
                    AppCompatImageView appCompatImageView3 = this.handleImageView;
                    if (appCompatImageView3 == null) {
                        y45.B("handleImageView");
                        appCompatImageView3 = null;
                    }
                    appCompatImageView3.setAlpha(1.0f);
                    AppCompatImageView appCompatImageView4 = this.handleImageView;
                    if (appCompatImageView4 == null) {
                        y45.B("handleImageView");
                        appCompatImageView4 = null;
                    }
                    animateVisibility$default(this, appCompatImageView4, false, 1, null);
                    AppCompatImageView appCompatImageView5 = this.handleImageView;
                    if (appCompatImageView5 == null) {
                        y45.B("handleImageView");
                        appCompatImageView5 = null;
                    }
                    appCompatImageView5.setEnabled(true);
                    LinearLayout linearLayout2 = this.trackView;
                    if (linearLayout2 == null) {
                        y45.B("trackView");
                    } else {
                        view = linearLayout2;
                    }
                    view.setEnabled(true);
                }
                moveHandle(((getTrackLength() - getHandleLength()) * iIntValue3) / (iIntValue - iIntValue2), true);
            }
        } catch (Exception unused) {
        }
    }

    public final void setAppBarExpand(boolean isExpand) {
        this.mIsAppBarExpand = isExpand;
    }

    public final void setFastScrollDirection(FastScrollDirection fastScrollDirection) {
        y45.j(fastScrollDirection, ES6Iterator.VALUE_PROPERTY);
        this.fastScrollDirection = fastScrollDirection;
        alignTrackAndHandle();
    }

    public final void setFastScrollEnabled(boolean z) {
        this.isFastScrollEnabled = z;
    }

    public final void setHandleAppBarLayoutStateListener(HandleAppBarLayoutStateListener handleAppBarLayoutStateListener) {
        y45.j(handleAppBarLayoutStateListener, "handleAppBarLayoutStateListener");
        this.mHandleAppBarLayoutStateListener = handleAppBarLayoutStateListener;
    }

    public final void setHandleDrawable(Drawable drawable) {
        AppCompatImageView appCompatImageView = this.handleImageView;
        if (appCompatImageView == null) {
            y45.B("handleImageView");
            appCompatImageView = null;
        }
        if (drawable == null) {
            throw new IllegalArgumentException("No drawable found for the given ID");
        }
        appCompatImageView.setImageDrawable(drawable);
    }

    public final void setHandleHeight(int i) {
        this.handleHeight = i;
        refreshHandleImageViewSize$default(this, 0, 1, null);
    }

    public final void setHandleStateListener(HandleStateListener handleStateListener) {
        y45.j(handleStateListener, "handleStateListener");
        this.handleStateListener = handleStateListener;
    }

    public final void setHandleVisibilityDuration(int i) {
        this.handleVisibilityDuration = i;
    }

    public final void setHandleWidth(int i) {
        this.handleWidth = i;
        refreshHandleImageViewSize$default(this, 0, 1, null);
    }

    public final void setMLastScrollerOffset(float f) {
        this.mLastScrollerOffset = f;
    }

    public final void setPopupDrawable(Drawable drawable) {
        getPopupTextView().setBackground(drawable);
    }

    public final void setPopupTextView(TextView textView) {
        y45.j(textView, "<set-?>");
        this.popupTextView = textView;
    }

    public final void setTextStyle(int i) {
        TextViewCompat.setTextAppearance(getPopupTextView(), i);
    }

    public final void setTrackDrawable(Drawable drawable) {
        LinearLayout linearLayout = this.trackView;
        if (linearLayout == null) {
            y45.B("trackView");
            linearLayout = null;
        }
        linearLayout.setBackground(drawable);
    }

    public final void setTrackMarginEnd(int i) {
        this.trackMarginEnd = i;
        setTrackMargin();
    }

    public final void setTrackMarginStart(int i) {
        this.trackMarginStart = i;
        setTrackMargin();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RecyclerViewFastScroller(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public RecyclerViewFastScroller(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecyclerViewFastScroller(Context context, AttributeSet attributeSet, int i) {
        Drawable drawable;
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.PRESSED_STATE_SET = new int[]{android.R.attr.state_pressed};
        this.EMPTY_STATE_SET = new int[0];
        Defaults defaults = Defaults.INSTANCE;
        this.textStyle = defaults.getTextStyle();
        this.isFastScrollEnabled = true;
        this.fastScrollDirection = defaults.getFastScrollDirection();
        this.handleWidth = -2;
        this.handleHeight = -2;
        this.handleVisibilityDuration = -1;
        this.popupPosition = defaults.getPopupPosition();
        this.hasEmptyItemDecorator = true;
        LinearLayout linearLayout = null;
        this.mCsRefreshLayout = new WeakReference<>(null);
        TypedArray typedArrayObtainStyledAttributes = attributeSet != null ? context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.RecyclerViewFastScroller, 0, 0) : null;
        this.attribs = typedArrayObtainStyledAttributes;
        addPopupLayout();
        addThumbAndTrack();
        initCsRefreshLayout();
        if (typedArrayObtainStyledAttributes != null) {
            int i2 = R.styleable.RecyclerViewFastScroller_popupPosition;
            if (typedArrayObtainStyledAttributes.hasValue(i2)) {
                this.popupPosition = PopupPosition.INSTANCE.getPopupPositionByValue(typedArrayObtainStyledAttributes.getInt(i2, defaults.getPopupPosition().getValue()));
            }
            int i3 = R.styleable.RecyclerViewFastScroller_fastScrollDirection;
            if (typedArrayObtainStyledAttributes.hasValue(i3)) {
                setFastScrollDirection(FastScrollDirection.INSTANCE.getFastScrollDirectionByValue(typedArrayObtainStyledAttributes.getInt(i3, defaults.getFastScrollDirection().getValue())));
            }
            this.isFixedSizeHandle = typedArrayObtainStyledAttributes.getBoolean(R.styleable.RecyclerViewFastScroller_handleHasFixedSize, false);
            this.isFastScrollEnabled = typedArrayObtainStyledAttributes.getBoolean(R.styleable.RecyclerViewFastScroller_fastScrollEnabled, true);
            this.hasEmptyItemDecorator = typedArrayObtainStyledAttributes.getBoolean(R.styleable.RecyclerViewFastScroller_addLastItemPadding, true);
            LinearLayout linearLayout2 = this.trackView;
            if (linearLayout2 == null) {
                y45.B("trackView");
            } else {
                linearLayout = linearLayout2;
            }
            linearLayout.setBackground(typedArrayObtainStyledAttributes.getDrawable(R.styleable.RecyclerViewFastScroller_trackDrawable));
            if (typedArrayObtainStyledAttributes.getBoolean(R.styleable.RecyclerViewFastScroller_supportSwipeToRefresh, false)) {
                enableNestedScrolling();
            }
            alignTrackAndHandle();
            alignPopupLayout();
            TextView popupTextView = getPopupTextView();
            int i4 = R.styleable.RecyclerViewFastScroller_popupDrawable;
            if (typedArrayObtainStyledAttributes.hasValue(i4)) {
                drawable = loadDrawableFromAttributes(i4);
            } else {
                drawable = ContextCompat.getDrawable(context, defaults.getPopupDrawableInt());
            }
            popupTextView.setBackground(drawable);
            Drawable drawableLoadDrawableFromAttributes = loadDrawableFromAttributes(R.styleable.RecyclerViewFastScroller_handleDrawable);
            setHandleDrawable(drawableLoadDrawableFromAttributes == null ? ContextCompat.getDrawable(context, defaults.getHandleDrawableInt()) : drawableLoadDrawableFromAttributes);
            this.handleVisibilityDuration = typedArrayObtainStyledAttributes.getInt(R.styleable.RecyclerViewFastScroller_handleVisibilityDuration, 2000);
            setHandleHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.RecyclerViewFastScroller_handleHeight, loadDimenFromResource(defaults.getHandleHeight())));
            setHandleWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.RecyclerViewFastScroller_handleWidth, loadDimenFromResource(defaults.getHandleWidth())));
            setTrackMarginStart(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.RecyclerViewFastScroller_trackMarginStart, 0));
            setTrackMarginEnd(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.RecyclerViewFastScroller_trackMarginEnd, 0));
            TextViewCompat.setTextAppearance(getPopupTextView(), typedArrayObtainStyledAttributes.getResourceId(R.styleable.RecyclerViewFastScroller_popupTextStyle, defaults.getTextStyle()));
            typedArrayObtainStyledAttributes.recycle();
        }
        this.popupAnimationRunnable = new Runnable() {
            @Override
            public final void run() {
                RecyclerViewFastScroller recyclerViewFastScroller = this.this$0;
                recyclerViewFastScroller.animateVisibility(recyclerViewFastScroller.getPopupTextView(), false);
            }
        };
        this.emptySpaceItemDecoration = b.a(new c74() {
            @Override
            public final Object invoke() {
                return RecyclerViewFastScroller.emptySpaceItemDecoration_delegate$lambda$20(this.b);
            }
        });
        this.adapterDataObserver = b.a(new c74() {
            @Override
            public final Object invoke() {
                return RecyclerViewFastScroller.adapterDataObserver$lambda$21(this.b);
            }
        });
        this.onScrollListener = new RecyclerViewScrollListener(this);
    }
}
