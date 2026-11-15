package com.yandex.div.core.view2;

import android.annotation.SuppressLint;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.IntRange;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.transition.Scene;
import androidx.transition.Transition;
import androidx.transition.TransitionListenerAdapter;
import androidx.transition.TransitionManager;
import androidx.transition.TransitionSet;
import com.google.android.gms.ads.RequestConfiguration;
import com.lzy.okgo.model.Progress;
import com.transsion.livecaption.constant.ICode;
import com.transsion.push.PushConstants;
import com.yandex.div.core.Div2Context;
import com.yandex.div.core.b;
import com.yandex.div.core.d;
import com.yandex.div.core.dagger.Div2Component;
import com.yandex.div.core.dagger.Div2ViewComponent;
import com.yandex.div.core.expression.ExpressionResolverImpl;
import com.yandex.div.core.expression.local.DivRuntimeVisitor;
import com.yandex.div.core.expression.local.RuntimeStore;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.state.StateConflictException;
import com.yandex.div.core.tooltip.DivTooltipController;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.animations.DivTransitionHandler;
import com.yandex.div.core.view2.animations.SceneRootWatcher;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.core.view2.divs.DivActionBinder;
import com.yandex.div.core.view2.divs.DivLayoutProviderVariablesHolder;
import com.yandex.div.core.view2.reuse.RebindTask;
import com.yandex.div.data.VariableMutationException;
import com.yandex.div.histogram.Div2ViewHistogramReporter;
import com.yandex.div.internal.widget.FrameContainerLayout;
import com.yandex.div.json.ParsingException;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div.logging.Severity;
import com.yandex.div2.Div;
import com.yandex.div2.DivAccessibility;
import com.yandex.div2.DivAction;
import com.yandex.div2.DivData;
import com.yandex.div2.DivPatch;
import com.yandex.div2.DivTransitionSelector;
import defpackage.a15;
import defpackage.ae5;
import defpackage.bi2;
import defpackage.bob;
import defpackage.bt2;
import defpackage.c74;
import defpackage.cf2;
import defpackage.ci2;
import defpackage.d81;
import defpackage.dd2;
import defpackage.dl6;
import defpackage.e74;
import defpackage.eg2;
import defpackage.ei2;
import defpackage.fi2;
import defpackage.fs8;
import defpackage.hb0;
import defpackage.hg;
import defpackage.hh2;
import defpackage.i81;
import defpackage.ig2;
import defpackage.iu2;
import defpackage.j34;
import defpackage.jn5;
import defpackage.kcc;
import defpackage.lj3;
import defpackage.ne5;
import defpackage.og2;
import defpackage.oj3;
import defpackage.on9;
import defpackage.pc9;
import defpackage.pm9;
import defpackage.qd7;
import defpackage.rg2;
import defpackage.rga;
import defpackage.rq4;
import defpackage.sh2;
import defpackage.sq2;
import defpackage.sv2;
import defpackage.ubc;
import defpackage.ue0;
import defpackage.uv2;
import defpackage.vbc;
import defpackage.vj3;
import defpackage.w08;
import defpackage.w71;
import defpackage.wc3;
import defpackage.we0;
import defpackage.wh2;
import defpackage.wt2;
import defpackage.x71;
import defpackage.xi;
import defpackage.xt7;
import defpackage.xu8;
import defpackage.xx7;
import defpackage.y45;
import defpackage.yi5;
import defpackage.yr8;
import defpackage.yu2;
import defpackage.zfb;
import defpackage.zl2;
import defpackage.zr8;
import defpackage.zt2;
import defpackage.zx7;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.WeakHashMap;
import javassist.compiler.ast.MethodDecl;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000\u0094\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0017\u0018\u00002\u00020\u00012\u00020\u0002:\u0002á\u0003B/\b\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fB'\b\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\rJ!\u0010\u0013\u001a\u00020\u00122\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J+\u0010\u0013\u001a\u00020\u00122\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0015\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0016J7\u0010\u001b\u001a\u00020\u00122\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u001a\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020!H\u0016¢\u0006\u0004\b$\u0010#J\u000f\u0010%\u001a\u00020!H\u0016¢\u0006\u0004\b%\u0010#J\u000f\u0010)\u001a\u00020&H\u0010¢\u0006\u0004\b'\u0010(J7\u0010/\u001a\u00020!2\u0006\u0010*\u001a\u00020\u00122\u0006\u0010+\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\u00072\u0006\u0010-\u001a\u00020\u00072\u0006\u0010.\u001a\u00020\u0007H\u0014¢\u0006\u0004\b/\u00100J\u001f\u00103\u001a\u00020!2\u0006\u00101\u001a\u00020\u00072\u0006\u00102\u001a\u00020\u0007H\u0014¢\u0006\u0004\b3\u00104J\u0017\u00107\u001a\u00020!2\u0006\u00106\u001a\u000205H\u0016¢\u0006\u0004\b7\u00108J\u000f\u00109\u001a\u00020!H\u0014¢\u0006\u0004\b9\u0010#J\u000f\u0010:\u001a\u00020!H\u0014¢\u0006\u0004\b:\u0010#J\u001f\u0010?\u001a\u00020!2\u0006\u0010<\u001a\u00020;2\u0006\u0010>\u001a\u00020=H\u0016¢\u0006\u0004\b?\u0010@J/\u0010D\u001a\u00020\u00122\u0006\u0010A\u001a\u00020\u000e2\n\b\u0002\u0010B\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010C\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\bD\u0010\u0016J\u000f\u0010E\u001a\u00020!H\u0016¢\u0006\u0004\bE\u0010#J\u000f\u0010F\u001a\u00020!H\u0016¢\u0006\u0004\bF\u0010#J\u001f\u0010H\u001a\u00020!2\u0006\u0010G\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0012H\u0016¢\u0006\u0004\bH\u0010IJ\u000f\u0010J\u001a\u00020!H\u0016¢\u0006\u0004\bJ\u0010#J\u001f\u0010H\u001a\u00020!2\u0006\u0010K\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0012H\u0016¢\u0006\u0004\bH\u0010LJ-\u0010O\u001a\u00020!2\f\u0010M\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u001a\u001a\u00020\u00122\u0006\u0010N\u001a\u00020\u0012H\u0016¢\u0006\u0004\bO\u0010PJ\u0017\u0010R\u001a\u00020\u00122\u0006\u0010Q\u001a\u00020\u0018H\u0016¢\u0006\u0004\bR\u0010SJ\u0017\u0010V\u001a\u00020!2\u0006\u0010U\u001a\u00020TH\u0016¢\u0006\u0004\bV\u0010WJ\u0017\u0010X\u001a\u00020!2\u0006\u0010U\u001a\u00020TH\u0016¢\u0006\u0004\bX\u0010WJ\u0017\u0010\\\u001a\u00020!2\u0006\u0010U\u001a\u00020YH\u0010¢\u0006\u0004\bZ\u0010[J\u0017\u0010^\u001a\u00020!2\u0006\u0010U\u001a\u00020YH\u0010¢\u0006\u0004\b]\u0010[J\u000f\u0010_\u001a\u00020!H\u0016¢\u0006\u0004\b_\u0010#J\u0011\u0010c\u001a\u0004\u0018\u00010`H\u0010¢\u0006\u0004\ba\u0010bJ\u000f\u0010d\u001a\u00020!H\u0016¢\u0006\u0004\bd\u0010#J\u000f\u0010e\u001a\u00020!H\u0016¢\u0006\u0004\be\u0010#J+\u0010l\u001a\u00020!2\u0006\u0010g\u001a\u00020f2\b\b\u0002\u0010i\u001a\u00020h2\b\b\u0002\u0010k\u001a\u00020jH\u0017¢\u0006\u0004\bl\u0010mJ+\u0010n\u001a\u00020\u00122\u0006\u0010g\u001a\u00020f2\b\b\u0002\u0010i\u001a\u00020h2\b\b\u0002\u0010k\u001a\u00020jH\u0017¢\u0006\u0004\bn\u0010oJ\u0017\u0010r\u001a\u00020!2\u0006\u0010q\u001a\u00020pH\u0016¢\u0006\u0004\br\u0010sJ\u0017\u0010v\u001a\u00020!2\u0006\u0010u\u001a\u00020tH\u0016¢\u0006\u0004\bv\u0010wJ\u000f\u0010x\u001a\u00020tH\u0016¢\u0006\u0004\bx\u0010yJ\u000f\u0010z\u001a\u00020\u0010H\u0016¢\u0006\u0004\bz\u0010{J\u0017\u0010~\u001a\u00020!2\u0006\u0010}\u001a\u00020|H\u0016¢\u0006\u0004\b~\u0010\u007fJ\u0011\u0010\u0080\u0001\u001a\u00020!H\u0016¢\u0006\u0005\b\u0080\u0001\u0010#J\u001c\u0010\u0083\u0001\u001a\u00020!2\b\u0010\u0082\u0001\u001a\u00030\u0081\u0001H\u0016¢\u0006\u0006\b\u0083\u0001\u0010\u0084\u0001J\u0011\u0010\u0085\u0001\u001a\u00020!H\u0016¢\u0006\u0005\b\u0085\u0001\u0010#J\u001c\u0010\u0088\u0001\u001a\u00020\u00122\b\u0010\u0087\u0001\u001a\u00030\u0086\u0001H\u0016¢\u0006\u0006\b\u0088\u0001\u0010\u0089\u0001J\u0012\u0010\u008a\u0001\u001a\u00020\tH\u0016¢\u0006\u0006\b\u008a\u0001\u0010\u008b\u0001J\u0015\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008c\u0001H\u0016¢\u0006\u0006\b\u008d\u0001\u0010\u008e\u0001J\u0012\u0010\u008f\u0001\u001a\u00020\u0000H\u0016¢\u0006\u0006\b\u008f\u0001\u0010\u0090\u0001J\u0012\u0010\u0091\u0001\u001a\u00020jH\u0016¢\u0006\u0006\b\u0091\u0001\u0010\u0092\u0001J\u001b\u0010\u0094\u0001\u001a\u00020!2\u0007\u0010\u0093\u0001\u001a\u00020hH\u0016¢\u0006\u0006\b\u0094\u0001\u0010\u0095\u0001J$\u0010\u0094\u0001\u001a\u00020!2\u0007\u0010\u0093\u0001\u001a\u00020h2\u0007\u0010\u0096\u0001\u001a\u00020\u0012H\u0016¢\u0006\u0006\b\u0094\u0001\u0010\u0097\u0001J\u001b\u0010\u0098\u0001\u001a\u00020!2\u0007\u0010\u0093\u0001\u001a\u00020hH\u0016¢\u0006\u0006\b\u0098\u0001\u0010\u0095\u0001J\u0011\u0010\u0099\u0001\u001a\u00020!H\u0016¢\u0006\u0005\b\u0099\u0001\u0010#J\u0019\u0010\u009a\u0001\u001a\u00020!2\u0006\u00106\u001a\u000205H\u0014¢\u0006\u0005\b\u009a\u0001\u00108J.\u0010\u009d\u0001\u001a\u00020\u00122\u0006\u00106\u001a\u0002052\t\u0010\u009b\u0001\u001a\u0004\u0018\u00010=2\u0007\u0010\u009c\u0001\u001a\u00020\tH\u0014¢\u0006\u0006\b\u009d\u0001\u0010\u009e\u0001J$\u0010£\u0001\u001a\u00020!2\u0007\u0010\u009f\u0001\u001a\u00020=2\u0007\u0010 \u0001\u001a\u00020`H\u0010¢\u0006\u0006\b¡\u0001\u0010¢\u0001J\u001d\u0010¦\u0001\u001a\u0004\u0018\u00010`2\u0007\u0010\u009f\u0001\u001a\u00020=H\u0010¢\u0006\u0006\b¤\u0001\u0010¥\u0001J%\u0010«\u0001\u001a\u00020!2\u0007\u0010\u009f\u0001\u001a\u00020=2\b\u0010¨\u0001\u001a\u00030§\u0001H\u0010¢\u0006\u0006\b©\u0001\u0010ª\u0001J\u001e\u0010®\u0001\u001a\u0005\u0018\u00010§\u00012\u0007\u0010\u009f\u0001\u001a\u00020=H\u0010¢\u0006\u0006\b¬\u0001\u0010\u00ad\u0001J\u001b\u0010±\u0001\u001a\u00020\u00122\u0007\u0010\u009f\u0001\u001a\u00020=H\u0010¢\u0006\u0006\b¯\u0001\u0010°\u0001J'\u0010µ\u0001\u001a\u0005\u0018\u00010´\u00012\u0007\u0010²\u0001\u001a\u00020h2\u0007\u0010³\u0001\u001a\u00020hH\u0016¢\u0006\u0006\bµ\u0001\u0010¶\u0001J$\u0010¹\u0001\u001a\u00020!2\u0007\u0010·\u0001\u001a\u00020h2\u0007\u0010¸\u0001\u001a\u00020hH\u0016¢\u0006\u0006\b¹\u0001\u0010º\u0001J/\u0010½\u0001\u001a\u00020\u00122\u0007\u0010»\u0001\u001a\u00020h2\u0007\u0010¸\u0001\u001a\u00020h2\t\b\u0002\u0010¼\u0001\u001a\u00020jH\u0017¢\u0006\u0006\b½\u0001\u0010¾\u0001J\u001d\u0010À\u0001\u001a\u0004\u0018\u00010`2\u0007\u0010\u009f\u0001\u001a\u00020=H\u0010¢\u0006\u0006\b¿\u0001\u0010¥\u0001J\u001e\u0010Ã\u0001\u001a\u0005\u0018\u00010Â\u00012\u0007\u0010Á\u0001\u001a\u00020\u000eH\u0016¢\u0006\u0006\bÃ\u0001\u0010Ä\u0001J\"\u0010É\u0001\u001a\u00020!2\u000e\u0010Æ\u0001\u001a\t\u0012\u0004\u0012\u00020!0Å\u0001H\u0010¢\u0006\u0006\bÇ\u0001\u0010È\u0001J(\u0010Ê\u0001\u001a\u00020!2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\b\u0002\u0010\u0011\u001a\u00020\u0010H\u0012¢\u0006\u0006\bÊ\u0001\u0010Ë\u0001J\u001a\u0010Ì\u0001\u001a\u00020!2\u0006\u0010\u000f\u001a\u00020\u000eH\u0012¢\u0006\u0006\bÌ\u0001\u0010Í\u0001J\u0011\u0010Î\u0001\u001a\u00020!H\u0012¢\u0006\u0005\bÎ\u0001\u0010#J\u0011\u0010Ï\u0001\u001a\u00020!H\u0012¢\u0006\u0005\bÏ\u0001\u0010#J\u0011\u0010Ð\u0001\u001a\u00020!H\u0012¢\u0006\u0005\bÐ\u0001\u0010#J5\u0010Ô\u0001\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010B\u001a\u00020\u000e2\u0007\u0010Ñ\u0001\u001a\u00020\u000e2\b\u0010Ó\u0001\u001a\u00030Ò\u0001H\u0012¢\u0006\u0006\bÔ\u0001\u0010Õ\u0001J,\u0010×\u0001\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010Ó\u0001\u001a\u00030Ö\u0001H\u0012¢\u0006\u0006\b×\u0001\u0010Ø\u0001J\u001c\u0010Ú\u0001\u001a\u00020!2\b\u0010Ù\u0001\u001a\u00030Â\u0001H\u0012¢\u0006\u0006\bÚ\u0001\u0010Û\u0001J\u001c\u0010Ü\u0001\u001a\u00020!2\b\u0010Ù\u0001\u001a\u00030Â\u0001H\u0012¢\u0006\u0006\bÜ\u0001\u0010Û\u0001J\u0011\u0010Ý\u0001\u001a\u00020!H\u0012¢\u0006\u0005\bÝ\u0001\u0010#J\u0011\u0010Þ\u0001\u001a\u00020!H\u0012¢\u0006\u0005\bÞ\u0001\u0010#J\u001b\u0010à\u0001\u001a\u00020!2\u0007\u0010ß\u0001\u001a\u00020\u0012H\u0012¢\u0006\u0006\bà\u0001\u0010á\u0001J\u0011\u0010â\u0001\u001a\u00020!H\u0012¢\u0006\u0005\bâ\u0001\u0010#J\u0011\u0010ã\u0001\u001a\u00020!H\u0012¢\u0006\u0005\bã\u0001\u0010#J.\u0010ä\u0001\u001a\u00020\u00122\b\u0010B\u001a\u0004\u0018\u00010\u000e2\u0006\u0010A\u001a\u00020\u000e2\b\u0010Ó\u0001\u001a\u00030Ö\u0001H\u0012¢\u0006\u0006\bä\u0001\u0010å\u0001J\u0016\u0010æ\u0001\u001a\u00020\t*\u00020\u000eH\u0012¢\u0006\u0006\bæ\u0001\u0010ç\u0001J\u0019\u0010è\u0001\u001a\u0005\u0018\u00010Â\u0001*\u00020\u000eH\u0012¢\u0006\u0006\bè\u0001\u0010Ä\u0001J\"\u0010é\u0001\u001a\u00020\u00122\u0006\u0010G\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0012H\u0012¢\u0006\u0006\bé\u0001\u0010ê\u0001JT\u0010ð\u0001\u001a\u00020!2\b\u0010B\u001a\u0004\u0018\u00010\u000e2\u0006\u0010A\u001a\u00020\u000e2\t\u0010ë\u0001\u001a\u0004\u0018\u00010`2\b\u0010ì\u0001\u001a\u00030Â\u00012\u0007\u0010í\u0001\u001a\u00020=2\u0007\u0010î\u0001\u001a\u00020\u00122\u0007\u0010ï\u0001\u001a\u00020\u0012H\u0012¢\u0006\u0006\bð\u0001\u0010ñ\u0001J\"\u0010ò\u0001\u001a\u00020=2\u0006\u0010G\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0012H\u0012¢\u0006\u0006\bò\u0001\u0010ó\u0001J/\u0010õ\u0001\u001a\u00020=2\b\u0010ì\u0001\u001a\u00030Â\u00012\u0006\u0010G\u001a\u00020\t2\t\b\u0002\u0010ô\u0001\u001a\u00020\u0012H\u0012¢\u0006\u0006\bõ\u0001\u0010ö\u0001J/\u0010÷\u0001\u001a\u00020=2\b\u0010ì\u0001\u001a\u00030Â\u00012\u0006\u0010G\u001a\u00020\t2\t\b\u0002\u0010ô\u0001\u001a\u00020\u0012H\u0012¢\u0006\u0006\b÷\u0001\u0010ö\u0001J=\u0010ú\u0001\u001a\u0005\u0018\u00010ù\u00012\b\u0010B\u001a\u0004\u0018\u00010\u000e2\u0006\u0010A\u001a\u00020\u000e2\t\u0010ë\u0001\u001a\u0004\u0018\u00010`2\t\u0010ø\u0001\u001a\u0004\u0018\u00010`H\u0012¢\u0006\u0006\bú\u0001\u0010û\u0001J6\u0010þ\u0001\u001a\n\u0012\u0005\u0012\u00030ý\u00010ü\u00012\t\u0010Á\u0001\u001a\u0004\u0018\u00010\u000e2\u0007\u0010 \u0001\u001a\u00020`2\u0006\u0010k\u001a\u00020jH\u0012¢\u0006\u0006\bþ\u0001\u0010ÿ\u0001J-\u0010\u0082\u0002\u001a\u00020!2\u0006\u0010A\u001a\u00020\u000e2\u0007\u0010\u0080\u0002\u001a\u00020\u00122\b\u0010Ó\u0001\u001a\u00030\u0081\u0002H\u0012¢\u0006\u0006\b\u0082\u0002\u0010\u0083\u0002J,\u0010\u0085\u0002\u001a\u00020\u00122\u0006\u0010A\u001a\u00020\u000e2\u0006\u0010B\u001a\u00020\u000e2\b\u0010Ó\u0001\u001a\u00030\u0084\u0002H\u0012¢\u0006\u0006\b\u0085\u0002\u0010\u0086\u0002R\u001e\u0010\u0004\u001a\u00020\u00038\u0010X\u0090\u0004¢\u0006\u0010\n\u0006\b\u0087\u0002\u0010\u0088\u0002\u001a\u0006\b\u0089\u0002\u0010\u008a\u0002R\u0016\u0010\n\u001a\u00020\t8\u0012X\u0092\u0004¢\u0006\b\n\u0006\b\u008b\u0002\u0010Þ\u0001R \u0010\u0091\u0002\u001a\u00030\u008c\u00028\u0010X\u0090\u0004¢\u0006\u0010\n\u0006\b\u008d\u0002\u0010\u008e\u0002\u001a\u0006\b\u008f\u0002\u0010\u0090\u0002R \u0010\u0097\u0002\u001a\u00030\u0092\u00028\u0010X\u0090\u0004¢\u0006\u0010\n\u0006\b\u0093\u0002\u0010\u0094\u0002\u001a\u0006\b\u0095\u0002\u0010\u0096\u0002R\u0017\u0010\u0099\u0002\u001a\u00020\u00128\u0012X\u0092\u0004¢\u0006\b\n\u0006\bð\u0001\u0010\u0098\u0002R\u0017\u0010\u009b\u0002\u001a\u00020\u00128\u0012X\u0092\u0004¢\u0006\b\n\u0006\b\u009a\u0002\u0010\u0098\u0002R\u0018\u0010\u009e\u0002\u001a\u00030\u009c\u00028\u0012X\u0092\u0004¢\u0006\b\n\u0006\bÌ\u0001\u0010\u009d\u0002R\u0018\u0010¡\u0002\u001a\u00030\u009f\u00028\u0012X\u0092\u0004¢\u0006\b\n\u0006\bõ\u0001\u0010 \u0002R\u0018\u0010¥\u0002\u001a\u00030¢\u00028\u0012X\u0092\u0004¢\u0006\b\n\u0006\b£\u0002\u0010¤\u0002R\u0018\u0010¨\u0002\u001a\u00030¦\u00028\u0012X\u0092\u0004¢\u0006\b\n\u0006\b÷\u0001\u0010§\u0002R\u001e\u0010¬\u0002\u001a\t\u0012\u0004\u0012\u00020;0©\u00028\u0012X\u0092\u0004¢\u0006\b\n\u0006\bª\u0002\u0010«\u0002R\u001e\u0010\u00ad\u0002\u001a\t\u0012\u0004\u0012\u00020|0©\u00028\u0012X\u0092\u0004¢\u0006\b\n\u0006\bã\u0001\u0010«\u0002R\u001e\u0010®\u0002\u001a\t\u0012\u0004\u0012\u00020T0©\u00028\u0012X\u0092\u0004¢\u0006\b\n\u0006\bà\u0001\u0010«\u0002R\u001e\u0010±\u0002\u001a\t\u0012\u0004\u0012\u00020Y0¯\u00028\u0012X\u0092\u0004¢\u0006\b\n\u0006\b\u0085\u0002\u0010°\u0002R$\u0010´\u0002\u001a\u000f\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020`0²\u00028\u0012X\u0092\u0004¢\u0006\b\n\u0006\bÝ\u0001\u0010³\u0002R%\u0010µ\u0002\u001a\u0010\u0012\u0004\u0012\u00020=\u0012\u0005\u0012\u00030§\u00010²\u00028\u0012X\u0092\u0004¢\u0006\b\n\u0006\bÜ\u0001\u0010³\u0002R\u001c\u0010¸\u0002\u001a\u00070¶\u0002R\u00020\u00008\u0012X\u0092\u0004¢\u0006\b\n\u0006\bé\u0001\u0010·\u0002R,\u0010À\u0002\u001a\u0005\u0018\u00010¹\u00028\u0010@\u0010X\u0090\u000e¢\u0006\u0018\n\u0006\bº\u0002\u0010»\u0002\u001a\u0006\b¼\u0002\u0010½\u0002\"\u0006\b¾\u0002\u0010¿\u0002R\u001c\u0010Á\u0002\u001a\u0005\u0018\u00010¹\u00028\u0012@\u0012X\u0092\u000e¢\u0006\b\n\u0006\bþ\u0001\u0010»\u0002R,\u0010È\u0002\u001a\u0005\u0018\u00010Â\u00028\u0010@\u0010X\u0090\u000e¢\u0006\u0018\n\u0006\bÐ\u0001\u0010Ã\u0002\u001a\u0006\bÄ\u0002\u0010Å\u0002\"\u0006\bÆ\u0002\u0010Ç\u0002R)\u0010Ì\u0002\u001a\u00020\u00128\u0010@\u0010X\u0090\u000e¢\u0006\u0018\n\u0006\bÏ\u0001\u0010\u0098\u0002\u001a\u0006\bÉ\u0002\u0010Ê\u0002\"\u0006\bË\u0002\u0010á\u0001R*\u0010Ó\u0002\u001a\u00030Í\u00028\u0010@\u0010X\u0090\u000e¢\u0006\u0018\n\u0006\bú\u0001\u0010Î\u0002\u001a\u0006\bÏ\u0002\u0010Ð\u0002\"\u0006\bÑ\u0002\u0010Ò\u0002R,\u0010Ú\u0002\u001a\u0005\u0018\u00010Ô\u00028\u0010@\u0010X\u0090\u000e¢\u0006\u0018\n\u0006\b\u0082\u0002\u0010Õ\u0002\u001a\u0006\bÖ\u0002\u0010×\u0002\"\u0006\bØ\u0002\u0010Ù\u0002R0\u0010Þ\u0002\u001a\u00020\u00128\u0010@\u0010X\u0091\u000e¢\u0006\u001f\n\u0006\bÞ\u0001\u0010\u0098\u0002\u0012\u0005\bÝ\u0002\u0010#\u001a\u0006\bÛ\u0002\u0010Ê\u0002\"\u0006\bÜ\u0002\u0010á\u0001R\u0018\u0010á\u0002\u001a\u00030ß\u00028\u0012X\u0092\u0004¢\u0006\b\n\u0006\bè\u0001\u0010à\u0002R\u001c\u0010ä\u0002\u001a\u0005\u0018\u00010â\u00028\u0012@\u0012X\u0092\u000e¢\u0006\b\n\u0006\bæ\u0001\u0010ã\u0002R3\u0010ê\u0002\u001a\u0005\u0018\u00010â\u00028\u0010@\u0010X\u0091\u000e¢\u0006\u001f\n\u0006\bâ\u0001\u0010ã\u0002\u0012\u0005\bé\u0002\u0010#\u001a\u0006\bå\u0002\u0010æ\u0002\"\u0006\bç\u0002\u0010è\u0002R\u001c\u0010ë\u0002\u001a\u0005\u0018\u00010â\u00028\u0012@\u0012X\u0092\u000e¢\u0006\b\n\u0006\bä\u0001\u0010ã\u0002R\u001c\u0010ì\u0002\u001a\u0005\u0018\u00010â\u00028\u0012@\u0012X\u0092\u000e¢\u0006\b\n\u0006\bÚ\u0001\u0010ã\u0002R/\u0010G\u001a\u00020\t8\u0010@\u0010X\u0091\u000e¢\u0006\u001f\n\u0006\bÔ\u0001\u0010Þ\u0001\u0012\u0005\bð\u0002\u0010#\u001a\u0006\bí\u0002\u0010\u008b\u0001\"\u0006\bî\u0002\u0010ï\u0002R\"\u0010ó\u0002\u001a\u000b ñ\u0002*\u0004\u0018\u00010t0t8\u0012@\u0012X\u0092\u000e¢\u0006\b\n\u0006\bÊ\u0001\u0010ò\u0002R\u001c\u0010÷\u0002\u001a\u0005\u0018\u00010ô\u00028\u0012@\u0012X\u0092\u000e¢\u0006\b\n\u0006\bõ\u0002\u0010ö\u0002R)\u0010ú\u0002\u001a\u0014\u0012\u000f\u0012\r ñ\u0002*\u0005\u0018\u00010ø\u00020ø\u00020Å\u00018\u0012X\u0092\u0004¢\u0006\b\n\u0006\b×\u0001\u0010ù\u0002R!\u0010ÿ\u0002\u001a\u00030û\u00028RX\u0092\u0084\u0002¢\u0006\u0010\n\u0006\bò\u0001\u0010ü\u0002\u001a\u0006\bý\u0002\u0010þ\u0002R \u0010\u0084\u0003\u001a\u00030\u0080\u00038\u0010X\u0090\u0004¢\u0006\u0010\n\u0006\bÎ\u0001\u0010\u0081\u0003\u001a\u0006\b\u0082\u0003\u0010\u0083\u0003R9\u0010\u008a\u0003\u001a\u001c\u0012\u0004\u0012\u00020j\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u00020h\u0012\u0004\u0012\u00020\u00070\u0085\u00030\u0085\u00038\u0010X\u0090\u0004¢\u0006\u0010\n\u0006\b\u0086\u0003\u0010\u0087\u0003\u001a\u0006\b\u0088\u0003\u0010\u0089\u0003R-\u0010\u008e\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0005\u0012\u00030\u008b\u00030\u0085\u00038\u0010X\u0090\u0004¢\u0006\u0010\n\u0006\b\u008c\u0003\u0010\u0087\u0003\u001a\u0006\b\u008d\u0003\u0010\u0089\u0003R,\u0010\u0096\u0003\u001a\u0005\u0018\u00010\u008f\u00038\u0010@\u0010X\u0090\u000e¢\u0006\u0018\n\u0006\b\u0090\u0003\u0010\u0091\u0003\u001a\u0006\b\u0092\u0003\u0010\u0093\u0003\"\u0006\b\u0094\u0003\u0010\u0095\u0003R1\u0010\u009c\u0003\u001a\u00020\u00102\u0007\u0010³\u0001\u001a\u00020\u00108\u0016@PX\u0096\u000e¢\u0006\u0017\n\u0006\b\u0097\u0003\u0010\u0098\u0003\u001a\u0005\b\u0099\u0003\u0010{\"\u0006\b\u009a\u0003\u0010\u009b\u0003R1\u0010¡\u0003\u001a\u00020\u00102\u0007\u0010\u009d\u0003\u001a\u00020\u00108\u0016@PX\u0096\u000e¢\u0006\u0017\n\u0006\b\u009e\u0003\u0010\u0098\u0003\u001a\u0005\b\u009f\u0003\u0010{\"\u0006\b \u0003\u0010\u009b\u0003R6\u0010Á\u0001\u001a\u0004\u0018\u00010\u000e2\t\u0010³\u0001\u001a\u0004\u0018\u00010\u000e8\u0016@PX\u0096\u000e¢\u0006\u0018\n\u0006\b¢\u0003\u0010£\u0003\u001a\u0006\b¤\u0003\u0010¥\u0003\"\u0006\b¦\u0003\u0010Í\u0001R,\u0010®\u0003\u001a\u0005\u0018\u00010§\u00038\u0016@\u0016X\u0096\u000e¢\u0006\u0018\n\u0006\b¨\u0003\u0010©\u0003\u001a\u0006\bª\u0003\u0010«\u0003\"\u0006\b¬\u0003\u0010\u00ad\u0003R\u0019\u0010°\u0003\u001a\u00020\t8\u0012@\u0012X\u0092\u000e¢\u0006\b\n\u0006\b¯\u0003\u0010Þ\u0001R\u001e\u0010´\u0003\u001a\u00020h8\u0012X\u0093\u0004¢\u0006\u000f\n\u0006\b±\u0003\u0010²\u0003\u0012\u0005\b³\u0003\u0010#R\u0019\u0010¶\u0003\u001a\u00020\u00128\u0012@\u0012X\u0092\u000e¢\u0006\b\n\u0006\bµ\u0003\u0010\u0098\u0002R \u0010¼\u0003\u001a\u00030·\u00038\u0010X\u0090\u0004¢\u0006\u0010\n\u0006\b¸\u0003\u0010¹\u0003\u001a\u0006\bº\u0003\u0010»\u0003R\u0018\u0010À\u0003\u001a\u00030½\u00038PX\u0090\u0004¢\u0006\b\u001a\u0006\b¾\u0003\u0010¿\u0003R\u0018\u0010Ä\u0003\u001a\u00030Á\u00038PX\u0090\u0004¢\u0006\b\u001a\u0006\bÂ\u0003\u0010Ã\u0003R\u0017\u0010Æ\u0003\u001a\u00020j8PX\u0090\u0004¢\u0006\b\u001a\u0006\bÅ\u0003\u0010\u0092\u0001R\u001a\u0010Ê\u0003\u001a\u0005\u0018\u00010Ç\u00038PX\u0090\u0004¢\u0006\b\u001a\u0006\bÈ\u0003\u0010É\u0003R\u0017\u0010Ì\u0003\u001a\u00020\u00128PX\u0090\u0004¢\u0006\b\u001a\u0006\bË\u0003\u0010Ê\u0002R\u0017\u0010Ï\u0003\u001a\u00020h8VX\u0096\u0004¢\u0006\b\u001a\u0006\bÍ\u0003\u0010Î\u0003R.\u0010Ò\u0003\u001a\u0004\u0018\u00010h2\t\u0010³\u0001\u001a\u0004\u0018\u00010h8V@VX\u0096\u000e¢\u0006\u0010\u001a\u0006\bÐ\u0003\u0010Î\u0003\"\u0006\bÑ\u0003\u0010\u0095\u0001R\u0017\u0010Õ\u0003\u001a\u00020\u00188PX\u0090\u0004¢\u0006\b\u001a\u0006\bÓ\u0003\u0010Ô\u0003R*\u0010Ø\u0003\u001a\u00020\u00122\u0007\u0010³\u0001\u001a\u00020\u00128V@VX\u0096\u000e¢\u0006\u0010\u001a\u0006\bÖ\u0003\u0010Ê\u0002\"\u0006\b×\u0003\u0010á\u0001R\u0018\u0010Ü\u0003\u001a\u00030Ù\u00038RX\u0092\u0004¢\u0006\b\u001a\u0006\bÚ\u0003\u0010Û\u0003R\u0018\u0010à\u0003\u001a\u00030Ý\u00038RX\u0092\u0004¢\u0006\b\u001a\u0006\bÞ\u0003\u0010ß\u0003R\u001e\u0010Ã\u0001\u001a\u0005\u0018\u00010Â\u0001*\u00020\u000e8RX\u0092\u0004¢\u0006\b\u001a\u0006\bº\u0002\u0010Ä\u0001¨\u0006â\u0003"}, d2 = {"Lcom/yandex/div/core/view2/Div2View;", "Lcom/yandex/div/internal/widget/FrameContainerLayout;", "Lsv2;", "Lcom/yandex/div/core/Div2Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "", "constructorCallTime", MethodDecl.initName, "(Lcom/yandex/div/core/Div2Context;Landroid/util/AttributeSet;IJ)V", "(Lcom/yandex/div/core/Div2Context;Landroid/util/AttributeSet;I)V", "Lcom/yandex/div2/DivData;", "data", "Lei2;", Progress.TAG, "", "setData", "(Lcom/yandex/div2/DivData;Lei2;)Z", "oldDivData", "(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lei2;)Z", "", "Lcom/yandex/div/core/state/DivStatePath;", "paths", "temporary", "setDataWithStates", "(Lcom/yandex/div2/DivData;Lei2;Ljava/util/List;Z)Z", "Lcom/yandex/div2/DivPatch;", "patch", "applyPatch", "(Lcom/yandex/div2/DivPatch;)Z", "Lzfb;", "tryLogVisibility", "()V", "discardVisibilityTracking", "trackChildrenVisibility", "Lwh2;", "getCustomContainerChildFactory$div_release", "()Lwh2;", "getCustomContainerChildFactory", "changed", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "onLayout", "(ZIIII)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "Landroid/graphics/Canvas;", "canvas", "draw", "(Landroid/graphics/Canvas;)V", "onAttachedToWindow", "onDetachedFromWindow", "Ljn5;", "loadReference", "Landroid/view/View;", "targetView", "addLoadReference", "(Ljn5;Landroid/view/View;)V", "newData", "oldData", "newDataTag", "prepareForRecycleOrCleanup", "releaseMedia", "cleanup", "stateId", "switchToState", "(JZ)V", "switchToInitialState", "path", "(Lcom/yandex/div/core/state/DivStatePath;Z)V", "pathList", "withAnimations", "switchToMultipleStates", "(Ljava/util/List;ZZ)V", "statePath", "isInState", "(Lcom/yandex/div/core/state/DivStatePath;)Z", "Lci2;", "observer", "addDivDataChangeObserver", "(Lci2;)V", "removeDivDataChangeObserver", "Lw08;", "addPersistentDivDataObserver$div_release", "(Lw08;)V", "addPersistentDivDataObserver", "removePersistentDivDataObserver$div_release", "removePersistentDivDataObserver", "resetToInitialState", "Lcom/yandex/div2/Div;", "rootDiv$div_release", "()Lcom/yandex/div2/Div;", "rootDiv", "startDivAnimation", "stopDivAnimation", "Lcom/yandex/div2/DivAction;", "action", "", "reason", "Loj3;", "resolver", "handleAction", "(Lcom/yandex/div2/DivAction;Ljava/lang/String;Loj3;)V", "handleActionWithResult", "(Lcom/yandex/div2/DivAction;Ljava/lang/String;Loj3;)Z", "Landroid/net/Uri;", "uri", "handleUri", "(Landroid/net/Uri;)V", "Lyu2;", "viewConfig", "setConfig", "(Lyu2;)V", "getConfig", "()Lyu2;", "getDivTag", "()Lei2;", "Lxt7;", "listener", PushConstants.TOPIC_SUBSCRIBE, "(Lxt7;)V", "clearSubscriptions", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChangedOutside", "(Landroid/content/res/Configuration;)V", "dismissPendingOverflowMenus", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "hasScrollableViewUnder", "(Landroid/view/MotionEvent;)Z", "getCurrentStateId", "()J", "Luv2;", "getCurrentState", "()Luv2;", "getView", "()Lcom/yandex/div/core/view2/Div2View;", "getExpressionResolver", "()Loj3;", "tooltipId", "showTooltip", "(Ljava/lang/String;)V", "multiple", "(Ljava/lang/String;Z)V", "hideTooltip", "cancelTooltips", "dispatchDraw", "child", "drawingTime", "drawChild", "(Landroid/graphics/Canvas;Landroid/view/View;J)Z", "view", TtmlNode.TAG_DIV, "bindViewToDiv$div_release", "(Landroid/view/View;Lcom/yandex/div2/Div;)V", "bindViewToDiv", "takeBindingDiv$div_release", "(Landroid/view/View;)Lcom/yandex/div2/Div;", "takeBindingDiv", "Lcom/yandex/div2/DivAccessibility$Mode;", hb0.KEY_NAME_MODE, "setPropagatedAccessibilityMode$div_release", "(Landroid/view/View;Lcom/yandex/div2/DivAccessibility$Mode;)V", "setPropagatedAccessibilityMode", "getPropagatedAccessibilityMode$div_release", "(Landroid/view/View;)Lcom/yandex/div2/DivAccessibility$Mode;", "getPropagatedAccessibilityMode", "isDescendantAccessibilityMode$div_release", "(Landroid/view/View;)Z", "isDescendantAccessibilityMode", "name", ES6Iterator.VALUE_PROPERTY, "Lcom/yandex/div/data/VariableMutationException;", "setVariable", "(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/div/data/VariableMutationException;", TtmlNode.ATTR_ID, "command", "applyTimerCommand", "(Ljava/lang/String;Ljava/lang/String;)V", "divId", "expressionResolver", "applyVideoCommand", "(Ljava/lang/String;Ljava/lang/String;Loj3;)Z", "unbindViewFromDiv$div_release", "unbindViewFromDiv", "divData", "Lcom/yandex/div2/DivData$State;", "stateToBind", "(Lcom/yandex/div2/DivData;)Lcom/yandex/div2/DivData$State;", "Lkotlin/Function0;", "function", "bulkActions$div_release", "(Lc74;)V", "bulkActions", "Q", "(Lcom/yandex/div2/DivData;Lei2;)V", "s", "(Lcom/yandex/div2/DivData;)V", "U", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "F", "newDivData", "Lxx7;", "reporter", "P", "(Lcom/yandex/div2/DivPatch;Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lxx7;)Z", "Lj34;", ExifInterface.LATITUDE_SOUTH, "(Lcom/yandex/div2/DivData;Lei2;Lj34;)Z", ICode.CALL.CALL_KEY_STATE, "O", "(Lcom/yandex/div2/DivData$State;)V", "B", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "J", "removeChildren", "y", "(Z)V", "M", "x", "N", "(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lj34;)Z", "L", "(Lcom/yandex/div2/DivData;)J", "K", "C", "(JZ)Z", "oldDiv", "newState", "newStateView", "allowsTransition", "bindBeforeViewAdded", "q", "(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lcom/yandex/div2/Div;Lcom/yandex/div2/DivData$State;Landroid/view/View;ZZ)V", "T", "(JZ)Landroid/view/View;", "isUpdateTemporary", "t", "(Lcom/yandex/div2/DivData$State;JZ)Landroid/view/View;", "v", "newDiv", "Landroidx/transition/Transition;", "H", "(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lcom/yandex/div2/Div;Lcom/yandex/div2/Div;)Landroidx/transition/Transition;", "Lpc9;", "Lzl2;", ExifInterface.LONGITUDE_EAST, "(Lcom/yandex/div2/DivData;Lcom/yandex/div2/Div;Loj3;)Lpc9;", "isAutoanimations", "Lpm9;", "I", "(Lcom/yandex/div2/DivData;ZLpm9;)V", "Lcom/yandex/div/core/view2/reuse/a;", "z", "(Lcom/yandex/div2/DivData;Lcom/yandex/div2/DivData;Lcom/yandex/div/core/view2/reuse/a;)Z", CmcdData.OBJECT_TYPE_MANIFEST, "Lcom/yandex/div/core/Div2Context;", "getContext$div_release", "()Lcom/yandex/div/core/Div2Context;", "n", "Lcom/yandex/div/core/dagger/Div2Component;", "o", "Lcom/yandex/div/core/dagger/Div2Component;", "getDiv2Component$div_release", "()Lcom/yandex/div/core/dagger/Div2Component;", "div2Component", "Lcom/yandex/div/core/dagger/Div2ViewComponent;", TtmlNode.TAG_P, "Lcom/yandex/div/core/dagger/Div2ViewComponent;", "getViewComponent$div_release", "()Lcom/yandex/div/core/dagger/Div2ViewComponent;", "viewComponent", "Z", "bindOnAttachEnabled", "r", "complexRebindEnabled", "Lvbc;", "Lvbc;", "bindingProvider", "Lwe0;", "Lwe0;", "bindingReporterProvider", "Lzx7;", "u", "Lzx7;", "patchReporterProvider", "Ldd2;", "Ldd2;", "divBuilder", "", "w", "Ljava/util/List;", "loadReferences", "overflowMenuListeners", "divDataChangedObservers", "Lqd7;", "Lqd7;", "persistentDivDataObservers", "Ljava/util/WeakHashMap;", "Ljava/util/WeakHashMap;", "viewToDivBindings", "propagatedAccessibilityModes", "Lcom/yandex/div/core/view2/Div2View$a;", "Lcom/yandex/div/core/view2/Div2View$a;", "bulkActionsHandler", "Lvj3;", "D", "Lvj3;", "getExpressionsRuntime$div_release", "()Lvj3;", "setExpressionsRuntime$div_release", "(Lvj3;)V", "expressionsRuntime", "oldExpressionsRuntime", "Lcom/yandex/div/core/expression/local/RuntimeStore;", "Lcom/yandex/div/core/expression/local/RuntimeStore;", "getRuntimeStore$div_release", "()Lcom/yandex/div/core/expression/local/RuntimeStore;", "setRuntimeStore$div_release", "(Lcom/yandex/div/core/expression/local/RuntimeStore;)V", "runtimeStore", "getInMiddleOfBind$div_release", "()Z", "setInMiddleOfBind$div_release", "inMiddleOfBind", "Lcom/yandex/div/core/view2/a;", "Lcom/yandex/div/core/view2/a;", "getBindingContext$div_release", "()Lcom/yandex/div/core/view2/a;", "setBindingContext$div_release", "(Lcom/yandex/div/core/view2/a;)V", "bindingContext", "Lbt2;", "Lbt2;", "getDivTimerEventDispatcher$div_release", "()Lbt2;", "setDivTimerEventDispatcher$div_release", "(Lbt2;)V", "divTimerEventDispatcher", "getForceCanvasClipping", "setForceCanvasClipping", "getForceCanvasClipping$annotations", "forceCanvasClipping", "", "Ljava/lang/Object;", "monitor", "Lon9;", "Lon9;", "setActiveBindingRunnable", "getBindOnAttachRunnable$div_release", "()Lon9;", "setBindOnAttachRunnable$div_release", "(Lon9;)V", "getBindOnAttachRunnable$div_release$annotations", "bindOnAttachRunnable", "reportBindingResumedRunnable", "reportBindingFinishedRunnable", "getStateId$div_release", "setStateId$div_release", "(J)V", "getStateId$div_release$annotations", "kotlin.jvm.PlatformType", "Lyu2;", "config", "Lcom/yandex/div/core/view2/reuse/RebindTask;", "R", "Lcom/yandex/div/core/view2/reuse/RebindTask;", "rebindTask", "Lfs8;", "Lc74;", "renderConfig", "Lcom/yandex/div/histogram/Div2ViewHistogramReporter;", "Lyi5;", "getHistogramReporter", "()Lcom/yandex/div/histogram/Div2ViewHistogramReporter;", "histogramReporter", "La15;", "La15;", "getInputFocusTracker$div_release", "()La15;", "inputFocusTracker", "", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Ljava/util/Map;", "getLayoutSizes$div_release", "()Ljava/util/Map;", "layoutSizes", "Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;", ExifInterface.LONGITUDE_WEST, "getVariablesHolders$div_release", "variablesHolders", "Landroid/view/ViewTreeObserver$OnPreDrawListener;", "a0", "Landroid/view/ViewTreeObserver$OnPreDrawListener;", "getClearVariablesListener$div_release", "()Landroid/view/ViewTreeObserver$OnPreDrawListener;", "setClearVariablesListener$div_release", "(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V", "clearVariablesListener", "b0", "Lei2;", "getDataTag", "setDataTag$div_release", "(Lei2;)V", "dataTag", "<set-?>", "c0", "getPrevDataTag", "setPrevDataTag$div_release", "prevDataTag", "d0", "Lcom/yandex/div2/DivData;", "getDivData", "()Lcom/yandex/div2/DivData;", "setDivData$div_release", "Lcf2;", "e0", "Lcf2;", "getActionHandler", "()Lcf2;", "setActionHandler", "(Lcf2;)V", "actionHandler", "f0", "timeCreated", "g0", "Ljava/lang/String;", "getViewCreateCallType$annotations", "viewCreateCallType", "h0", "drawWasSkipped", "Lcom/yandex/div/core/view2/animations/DivTransitionHandler;", "i0", "Lcom/yandex/div/core/view2/animations/DivTransitionHandler;", "getDivTransitionHandler$div_release", "()Lcom/yandex/div/core/view2/animations/DivTransitionHandler;", "divTransitionHandler", "Lzr8;", "getReleaseViewVisitor$div_release", "()Lzr8;", "releaseViewVisitor", "Ldl6;", "getMediaReleaseViewVisitor$div_release", "()Ldl6;", "mediaReleaseViewVisitor", "getOldExpressionResolver$div_release", "oldExpressionResolver", "Lxu8;", "getCurrentRebindReusableList$div_release", "()Lxu8;", "currentRebindReusableList", "getComplexRebindInProgress$div_release", "complexRebindInProgress", "getLogId", "()Ljava/lang/String;", "logId", "getComponentName", "setComponentName", "componentName", "getCurrentRootPath$div_release", "()Lcom/yandex/div/core/state/DivStatePath;", "currentRootPath", "getVisualErrorsEnabled", "setVisualErrorsEnabled", "visualErrorsEnabled", "Liu2;", "getDivVideoActionHandler", "()Liu2;", "divVideoActionHandler", "Lcom/yandex/div/core/tooltip/DivTooltipController;", "getTooltipController", "()Lcom/yandex/div/core/tooltip/DivTooltipController;", "tooltipController", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SuppressLint({"ViewConstructor"})
public class Div2View extends FrameContainerLayout implements sv2 {

    public final WeakHashMap viewToDivBindings;

    public final WeakHashMap propagatedAccessibilityModes;

    public final a bulkActionsHandler;

    public vj3 expressionsRuntime;

    public vj3 oldExpressionsRuntime;

    public RuntimeStore runtimeStore;

    public boolean inMiddleOfBind;

    public com.yandex.div.core.view2.a bindingContext;

    public bt2 divTimerEventDispatcher;

    public boolean forceCanvasClipping;

    public final Object monitor;

    public on9 setActiveBindingRunnable;

    public on9 bindOnAttachRunnable;

    public on9 reportBindingResumedRunnable;

    public on9 reportBindingFinishedRunnable;

    public long stateId;

    public yu2 config;

    public RebindTask rebindTask;

    public final c74 renderConfig;

    public final yi5 histogramReporter;

    public final a15 inputFocusTracker;

    public final Map layoutSizes;

    public final Map variablesHolders;

    public ViewTreeObserver.OnPreDrawListener clearVariablesListener;

    public ei2 dataTag;

    public ei2 prevDataTag;

    public DivData divData;

    public cf2 actionHandler;

    public long timeCreated;

    public final String viewCreateCallType;

    public boolean drawWasSkipped;

    public final DivTransitionHandler divTransitionHandler;

    public final Div2Context context;

    public final long constructorCallTime;

    public final Div2Component div2Component;

    public final Div2ViewComponent viewComponent;

    public final boolean bindOnAttachEnabled;

    public final boolean complexRebindEnabled;

    public final vbc bindingProvider;

    public final we0 bindingReporterProvider;

    public final zx7 patchReporterProvider;

    public final dd2 divBuilder;

    public final List loadReferences;

    public final List overflowMenuListeners;

    public final List divDataChangedObservers;

    public final qd7 persistentDivDataObservers;

    public final class a {
        public int a;
        public DivData.State b;
        public boolean c = true;
        public final List d = new ArrayList();

        public a() {
        }

        public final void a(c74 c74Var) {
            y45.j(c74Var, "function");
            this.a++;
            c74Var.invoke();
            int i = this.a - 1;
            this.a = i;
            if (i == 0) {
                c();
            }
        }

        public final void b() {
            this.b = null;
            this.c = true;
            this.d.clear();
        }

        public final void c() {
            DivData.State state = this.b;
            if (state == null) {
                return;
            }
            if (state.b != Div2View.this.getStateId()) {
                Div2View.this.switchToState(state.b, this.c);
            } else if (Div2View.this.getChildCount() > 0) {
                try {
                    Div2View.this.getViewComponent().h().a(state, w71.c(this.d), Div2View.this.getExpressionResolver());
                } catch (StateConflictException e) {
                    eg2.e(Div2View.this, e);
                    Div2View.this.resetToInitialState();
                }
            }
            b();
        }

        public final void d(DivData.State state, List list, boolean z) {
            y45.j(list, "paths");
            DivData.State state2 = this.b;
            if (state2 != null && !y45.e(state, state2)) {
                b();
            }
            this.b = state;
            this.c = this.c && z;
            List<DivStatePath> list2 = list;
            d81.C(this.d, list2);
            Div2View div2View = Div2View.this;
            for (DivStatePath divStatePath : list2) {
                sq2 sq2VarA = div2View.getDiv2Component().A();
                String strA = div2View.getDivTag().a();
                y45.i(strA, "divTag.id");
                sq2VarA.d(strA, divStatePath, z);
            }
            if (this.a == 0) {
                c();
            }
        }

        public final void e(DivData.State state, DivStatePath divStatePath, boolean z) {
            y45.j(divStatePath, "path");
            d(state, x71.e(divStatePath), z);
        }
    }

    public static final class b implements View.OnAttachStateChangeListener {
        public final View b;
        public final Div2View c;

        public b(View view, Div2View div2View) {
            this.b = view;
            this.c = div2View;
        }

        @Override
        public void onViewAttachedToWindow(View view) {
            this.b.removeOnAttachStateChangeListener(this);
            this.c.getDiv2Component().F().a();
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Div2View(Div2Context div2Context) {
        this(div2Context, null, 0, 6, null);
        y45.j(div2Context, "context");
    }

    public static void R(Div2View div2View, DivData divData, ei2 ei2Var, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateExpressionsRuntime");
        }
        if ((i & 1) != 0) {
            divData = div2View.getDivData();
        }
        if ((i & 2) != 0) {
            ei2Var = div2View.getDataTag();
        }
        div2View.Q(divData, ei2Var);
    }

    public static boolean applyVideoCommand$default(Div2View div2View, String str, String str2, oj3 oj3Var, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: applyVideoCommand");
        }
        if ((i & 4) != 0) {
            oj3Var = div2View.getExpressionResolver();
        }
        return div2View.applyVideoCommand(str, str2, oj3Var);
    }

    @VisibleForTesting
    public static void getBindOnAttachRunnable$div_release$annotations() {
    }

    private iu2 getDivVideoActionHandler() {
        iu2 iu2VarB = getDiv2Component().b();
        y45.i(iu2VarB, "div2Component.divVideoActionHandler");
        return iu2VarB;
    }

    public static void getForceCanvasClipping$annotations() {
    }

    public Div2ViewHistogramReporter getHistogramReporter() {
        return (Div2ViewHistogramReporter) this.histogramReporter.getValue();
    }

    @VisibleForTesting
    public static void getStateId$div_release$annotations() {
    }

    private DivTooltipController getTooltipController() {
        DivTooltipController divTooltipControllerT = getDiv2Component().t();
        y45.i(divTooltipControllerT, "div2Component.tooltipController");
        return divTooltipControllerT;
    }

    private static void getViewCreateCallType$annotations() {
    }

    public static void handleAction$default(Div2View div2View, DivAction divAction, String str, oj3 oj3Var, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: handleAction");
        }
        if ((i & 2) != 0) {
            str = "external";
        }
        if ((i & 4) != 0) {
            oj3Var = div2View.getExpressionResolver();
        }
        div2View.handleAction(divAction, str, oj3Var);
    }

    public static boolean handleActionWithResult$default(Div2View div2View, DivAction divAction, String str, oj3 oj3Var, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: handleActionWithResult");
        }
        if ((i & 2) != 0) {
            str = "external";
        }
        if ((i & 4) != 0) {
            oj3Var = div2View.getExpressionResolver();
        }
        return div2View.handleActionWithResult(divAction, str, oj3Var);
    }

    public static boolean prepareForRecycleOrCleanup$default(Div2View div2View, DivData divData, DivData divData2, ei2 ei2Var, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: prepareForRecycleOrCleanup");
        }
        if ((i & 2) != 0) {
            divData2 = null;
        }
        if ((i & 4) != 0) {
            ei2Var = null;
        }
        return div2View.prepareForRecycleOrCleanup(divData, divData2, ei2Var);
    }

    public static final void r(Div2View div2View) {
        y45.j(div2View, "this$0");
        yr8.a.a(div2View, div2View);
    }

    public static View u(Div2View div2View, DivData.State state, long j, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: buildViewAndUpdateState");
        }
        if ((i & 4) != 0) {
            z = true;
        }
        return div2View.t(state, j, z);
    }

    public static View w(Div2View div2View, DivData.State state, long j, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: buildViewAsyncAndUpdateState");
        }
        if ((i & 4) != 0) {
            z = true;
        }
        return div2View.v(state, j, z);
    }

    public final void A() {
        oj3 oj3VarB;
        DivVisibilityActionTracker divVisibilityActionTrackerH = getDiv2Component().H();
        y45.i(divVisibilityActionTrackerH, "div2Component.visibilityActionTracker");
        for (Map.Entry entry : this.viewToDivBindings.entrySet()) {
            View view = (View) entry.getKey();
            Div div = (Div) entry.getValue();
            y45.i(view, "view");
            com.yandex.div.core.view2.a aVarZ = BaseDivViewExtensionsKt.Z(view);
            if (aVarZ != null && (oj3VarB = aVarZ.b()) != null) {
                y45.i(div, TtmlNode.TAG_DIV);
                DivVisibilityActionTracker.x(divVisibilityActionTrackerH, this, oj3VarB, null, div, null, null, 48, null);
            }
        }
    }

    public final void B(DivData.State state) {
        DivVisibilityActionTracker divVisibilityActionTrackerH = getDiv2Component().H();
        y45.i(divVisibilityActionTrackerH, "div2Component.visibilityActionTracker");
        DivVisibilityActionTracker.x(divVisibilityActionTrackerH, this, getExpressionResolver(), null, state.a, null, null, 48, null);
    }

    public final boolean C(long stateId, boolean temporary) {
        Object next;
        Object next2;
        setStateId$div_release(stateId);
        uv2 currentState = getCurrentState();
        Long lValueOf = currentState != null ? Long.valueOf(currentState.c()) : null;
        DivData divData = getDivData();
        if (divData == null) {
            return false;
        }
        Iterator it = divData.c.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            long j = ((DivData.State) next).b;
            if (lValueOf != null && j == lValueOf.longValue()) {
                break;
            }
        }
        DivData.State state = (DivData.State) next;
        Iterator it2 = divData.c.iterator();
        do {
            if (!it2.hasNext()) {
                next2 = null;
                break;
            }
            next2 = it2.next();
        } while (((DivData.State) next2).b != stateId);
        DivData.State state2 = (DivData.State) next2;
        if (state2 == null) {
            return false;
        }
        if (state != null) {
            B(state);
        }
        O(state2);
        boolean zD = hh2.d(hh2.a, state != null ? state.a : null, state2.a, getExpressionResolver(), getExpressionResolver(), null, 16, null);
        q(divData, divData, state != null ? state.a : null, state2, zD ? T(stateId, temporary) : t(state2, stateId, temporary), wt2.a(divData, getExpressionResolver()), zD);
        return true;
    }

    public final DivData.State D(DivData divData) {
        Object next;
        Iterator it = divData.c.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((DivData.State) next).b != getStateId());
        DivData.State state = (DivData.State) next;
        return state == null ? (DivData.State) i81.q0(divData.c) : state;
    }

    public final pc9 E(DivData divData, Div div, final oj3 resolver) {
        DivTransitionSelector divTransitionSelector;
        Expression expression;
        final hg hgVar = new hg();
        if (divData == null || (expression = divData.e) == null || (divTransitionSelector = (DivTransitionSelector) expression.b(resolver)) == null) {
            divTransitionSelector = DivTransitionSelector.NONE;
        }
        hgVar.addLast(divTransitionSelector);
        return SequencesKt___SequencesKt.F(zt2.c(div, resolver).e(new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public final Boolean invoke(Div div2) {
                y45.j(div2, TtmlNode.TAG_DIV);
                if (div2 instanceof Div.n) {
                    hgVar.addLast(((Div.n) div2).c().B.b(resolver));
                }
                return Boolean.TRUE;
            }
        }).f(new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((Div) obj);
                return zfb.a;
            }

            public final void invoke(Div div2) {
                y45.j(div2, TtmlNode.TAG_DIV);
                if (div2 instanceof Div.n) {
                    hgVar.removeLast();
                }
            }
        }), new e74() {
            {
                super(1);
            }

            @Override
            public final Boolean invoke(zl2 zl2Var) {
                boolean zB;
                y45.j(zl2Var, "item");
                List listN = zl2Var.c().b().n();
                if (listN != null) {
                    zB = wt2.c(listN);
                } else {
                    DivTransitionSelector divTransitionSelector2 = (DivTransitionSelector) hgVar.m();
                    zB = divTransitionSelector2 != null ? wt2.b(divTransitionSelector2) : false;
                }
                return Boolean.valueOf(zB);
            }
        });
    }

    public final void F() {
        setInMiddleOfBind$div_release(false);
        Iterator it = this.persistentDivDataObservers.iterator();
        while (it.hasNext()) {
            ((w08) it.next()).a();
        }
    }

    public final void G() {
        if (getInMiddleOfBind()) {
            eg2.e(this, new RuntimeException("New binding started when previous not ended!"));
        }
        setInMiddleOfBind$div_release(true);
        Iterator it = this.persistentDivDataObservers.iterator();
        while (it.hasNext()) {
            ((w08) it.next()).b();
        }
    }

    public final Transition H(DivData oldData, final DivData newData, Div oldDiv, Div newDiv) {
        if (oldDiv == newDiv) {
            return null;
        }
        final TransitionSet transitionSetD = getViewComponent().c().d(oldDiv != null ? E(oldData, oldDiv, getOldExpressionResolver$div_release()) : null, newDiv != null ? E(newData, newDiv, getExpressionResolver()) : null, getOldExpressionResolver$div_release(), getExpressionResolver());
        if (transitionSetD.getTransitionCount() == 0) {
            return null;
        }
        final bi2 bi2VarB = getDiv2Component().B();
        y45.i(bi2VarB, "div2Component.divDataChangeListener");
        bi2VarB.b(this, newData);
        transitionSetD.addListener((Transition.TransitionListener) new TransitionListenerAdapter() {
            @Override
            public void onTransitionEnd(Transition transition) {
                y45.j(transition, "transition");
                bi2VarB.a(this, newData);
                transitionSetD.removeListener(this);
            }
        });
        return transitionSetD;
    }

    public final void I(DivData newData, boolean isAutoanimations, pm9 reporter) {
        try {
            if (getChildCount() == 0) {
                reporter.l();
                S(newData, getDataTag(), reporter);
                return;
            }
            DivData.State stateD = D(newData);
            if (stateD == null) {
                reporter.e();
                return;
            }
            getHistogramReporter().q();
            wc3 wc3VarB = getViewComponent().a().b(getDataTag(), getDivData());
            if (wc3VarB != null) {
                wc3VarB.c();
            }
            View childAt = getChildAt(0);
            y45.i(childAt, "rebind$lambda$57");
            BaseDivViewExtensionsKt.D(childAt, stateD.a.b(), getExpressionResolver());
            setDivData$div_release(newData);
            getDiv2Component().A().c(getDataTag(), stateD.b, true);
            rg2 rg2VarF = getDiv2Component().F();
            com.yandex.div.core.view2.a bindingContext = getBindingContext();
            y45.i(childAt, "rootDivView");
            rg2VarF.b(bindingContext, childAt, stateD.a, DivStatePath.f.j(stateD));
            requestLayout();
            if (isAutoanimations) {
                getDiv2Component().f().a(this);
            }
            s(newData);
            getHistogramReporter().p();
            reporter.p();
        } catch (Exception e) {
            reporter.o(e);
            S(newData, getDataTag(), reporter);
            ae5 ae5Var = ae5.a;
            if (xi.o()) {
                xi.j("", e);
            }
        }
    }

    public final void J() {
        if (this.timeCreated < 0) {
            return;
        }
        sh2 sh2VarD = getDiv2Component().d();
        long j = this.constructorCallTime;
        long j2 = this.timeCreated;
        rq4 rq4VarK = getDiv2Component().k();
        y45.i(rq4VarK, "div2Component.histogramReporter");
        sh2VarD.d(j, j2, rq4VarK, this.viewCreateCallType);
        this.timeCreated = -1L;
    }

    public final DivData.State K(DivData divData) {
        Object next;
        long jL = L(divData);
        Iterator it = divData.c.iterator();
        while (it.hasNext()) {
            next = it.next();
            if (((DivData.State) next).b == jL) {
                return (DivData.State) next;
            }
        }
        next = null;
        return (DivData.State) next;
    }

    public final long L(DivData divData) {
        uv2 currentState = getCurrentState();
        return currentState != null ? currentState.c() : fi2.b(divData);
    }

    public final void M() {
        this.viewToDivBindings.clear();
        this.propagatedAccessibilityModes.clear();
        cancelTooltips();
        clearSubscriptions();
        this.divDataChangedObservers.clear();
    }

    public final boolean N(DivData oldData, DivData newData, j34 reporter) {
        DivData.State stateK = oldData != null ? K(oldData) : null;
        DivData.State stateK2 = K(newData);
        setStateId$div_release(L(newData));
        if (stateK2 == null) {
            reporter.j();
            return false;
        }
        View viewW = oldData == null ? w(this, stateK2, getStateId(), false, 4, null) : u(this, stateK2, getStateId(), false, 4, null);
        if (stateK != null) {
            B(stateK);
        }
        O(stateK2);
        q(oldData, newData, stateK != null ? stateK.a : null, stateK2, viewW, (oldData != null && wt2.a(oldData, getOldExpressionResolver$div_release())) || wt2.a(newData, getExpressionResolver()), false);
        if (oldData != null) {
            reporter.q();
        } else {
            reporter.c();
        }
        return true;
    }

    public final void O(DivData.State state) {
        DivVisibilityActionTracker divVisibilityActionTrackerH = getDiv2Component().H();
        y45.i(divVisibilityActionTrackerH, "div2Component.visibilityActionTracker");
        DivVisibilityActionTracker.x(divVisibilityActionTrackerH, this, getExpressionResolver(), getView(), state.a, null, null, 48, null);
    }

    public final boolean P(DivPatch patch, DivData oldData, DivData newDivData, xx7 reporter) {
        Div div;
        og2 og2VarB;
        DivData.State stateD = D(newDivData);
        if (stateD == null) {
            return false;
        }
        on9 bindOnAttachRunnable = getBindOnAttachRunnable();
        if (bindOnAttachRunnable != null) {
            bindOnAttachRunnable.a();
        }
        DivData.State stateK = K(oldData);
        Object obj = null;
        Div div2 = stateK != null ? stateK.a : null;
        for (Object obj2 : patch.a) {
            if (y45.e(((DivPatch.Change) obj2).a, (div2 == null || (og2VarB = div2.b()) == null) ? null : og2VarB.getId())) {
                obj = obj2;
                break;
            }
        }
        DivPatch.Change change = (DivPatch.Change) obj;
        if (change == null) {
            I(oldData, false, reporter);
            setDivData$div_release(newDivData);
            rg2 rg2VarF = getDiv2Component().F();
            com.yandex.div.core.view2.a bindingContext = getBindingContext();
            View childAt = getChildAt(0);
            y45.i(childAt, "getChildAt(0)");
            rg2VarF.w(bindingContext, childAt, stateD.a);
            return true;
        }
        List list = change.b;
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            ne5 ne5Var = ne5.a;
            if (ne5Var.a(Severity.ERROR)) {
                ne5Var.b(6, "DivPatchApply", "Unable to patch root div because there is no div in patch.");
            }
            return false;
        }
        if (list.size() > 1) {
            ne5 ne5Var2 = ne5.a;
            if (ne5Var2.a(Severity.ERROR)) {
                ne5Var2.b(6, "DivPatchApply", "More than 1 div in patch for root div. The first was applied.");
            }
            div = (Div) list.get(0);
        } else {
            div = (Div) list.get(0);
        }
        Div div3 = div;
        ue0 ue0VarA = this.bindingReporterProvider.a(newDivData, oldData);
        boolean zC = hh2.a.c(div2, div3, getExpressionResolver(), getExpressionResolver(), ue0VarA);
        if (!zC && this.complexRebindEnabled && (getView().getChildAt(0) instanceof ViewGroup) && z(newDivData, oldData, ue0VarA)) {
            return true;
        }
        if (!zC) {
            return S(newDivData, getDataTag(), reporter);
        }
        I(newDivData, false, reporter);
        return true;
    }

    public final void Q(DivData data, ei2 tag) {
        RuntimeStore runtimeStore;
        RuntimeStore runtimeStoreE;
        if (data == null) {
            return;
        }
        this.oldExpressionsRuntime = getExpressionsRuntime();
        setExpressionsRuntime$div_release(getDiv2Component().p().h(tag, data, this));
        vj3 expressionsRuntime = getExpressionsRuntime();
        if (expressionsRuntime != null && (runtimeStoreE = expressionsRuntime.e()) != null) {
            runtimeStoreE.s();
        }
        if (!y45.e(this.oldExpressionsRuntime, getExpressionsRuntime()) && (runtimeStore = getRuntimeStore()) != null) {
            runtimeStore.b();
        }
        vj3 expressionsRuntime2 = getExpressionsRuntime();
        setRuntimeStore$div_release(expressionsRuntime2 != null ? expressionsRuntime2.e() : null);
        setBindingContext$div_release(getBindingContext().d(getExpressionResolver(), getRuntimeStore()));
    }

    public final boolean S(DivData data, ei2 tag, j34 reporter) {
        DivData divData = getDivData();
        if (divData == null) {
            getHistogramReporter().i();
        } else {
            getHistogramReporter().q();
        }
        y(false);
        setDataTag$div_release(tag);
        setDivData$div_release(data);
        boolean zN = N(divData, data, reporter);
        s(data);
        if (divData != null) {
            getHistogramReporter().p();
            return zN;
        }
        if (!this.bindOnAttachEnabled) {
            getHistogramReporter().f();
            return zN;
        }
        getHistogramReporter().g();
        this.reportBindingResumedRunnable = new on9(this, new c74() {
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m145invoke();
                return zfb.a;
            }

            public final void m145invoke() {
                this.this$0.getHistogramReporter().h();
            }
        });
        this.reportBindingFinishedRunnable = new on9(this, new c74() {
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m146invoke();
                return zfb.a;
            }

            public final void m146invoke() {
                this.this$0.getHistogramReporter().f();
            }
        });
        return zN;
    }

    public final View T(long stateId, boolean temporary) {
        View childAt = getView().getChildAt(0);
        getDiv2Component().A().c(getDataTag(), stateId, temporary);
        getDiv2Component().F().a();
        y45.i(childAt, "rootView");
        return childAt;
    }

    public final void U() {
        bt2 divTimerEventDispatcher;
        DivData divData = getDivData();
        if (divData == null) {
            return;
        }
        bt2 bt2VarA = getDiv2Component().x().a(getDataTag(), divData, getExpressionResolver());
        if (!y45.e(getDivTimerEventDispatcher(), bt2VarA) && (divTimerEventDispatcher = getDivTimerEventDispatcher()) != null) {
            divTimerEventDispatcher.e(this);
        }
        setDivTimerEventDispatcher$div_release(bt2VarA);
        if (bt2VarA != null) {
            bt2VarA.d(this);
        }
    }

    public void addDivDataChangeObserver(ci2 observer) {
        y45.j(observer, "observer");
        synchronized (this.monitor) {
            this.divDataChangedObservers.add(observer);
        }
    }

    public void addLoadReference(jn5 loadReference, View targetView) {
        y45.j(loadReference, "loadReference");
        y45.j(targetView, "targetView");
        synchronized (this.monitor) {
            this.loadReferences.add(loadReference);
        }
    }

    public void addPersistentDivDataObserver$div_release(w08 observer) {
        y45.j(observer, "observer");
        synchronized (this.monitor) {
            this.persistentDivDataObservers.j(observer);
        }
    }

    public boolean applyPatch(DivPatch patch) {
        y45.j(patch, "patch");
        synchronized (this.monitor) {
            DivData divData = getDivData();
            if (divData == null) {
                return false;
            }
            DivData divDataB = getDiv2Component().D().b(divData, getDataTag(), patch, getExpressionResolver());
            xx7 xx7VarA = this.patchReporterProvider.a(patch);
            if (divDataB == null || !P(patch, divData, divDataB, xx7VarA)) {
                DivActionBinder divActionBinderN = getDiv2Component().n();
                y45.i(divActionBinderN, "div2Component.actionBinder");
                DivActionBinder.I(divActionBinderN, this, getExpressionResolver(), patch.d, "patch", null, 16, null);
                xx7VarA.h();
                return false;
            }
            getDiv2Component().D().e(getDataTag());
            Iterator it = this.divDataChangedObservers.iterator();
            if (it.hasNext()) {
                ubc.a(it.next());
                throw null;
            }
            s(divDataB);
            getDiv2Component().F().a();
            xx7VarA.a();
            DivActionBinder divActionBinderN2 = getDiv2Component().n();
            y45.i(divActionBinderN2, "div2Component.actionBinder");
            DivActionBinder.I(divActionBinderN2, this, getExpressionResolver(), patch.c, "patch", null, 16, null);
            return true;
        }
    }

    public void applyTimerCommand(String id, String command) {
        y45.j(id, TtmlNode.ATTR_ID);
        y45.j(command, "command");
        bt2 divTimerEventDispatcher = getDivTimerEventDispatcher();
        if (divTimerEventDispatcher != null) {
            divTimerEventDispatcher.b(id, command);
        }
    }

    public final boolean applyVideoCommand(String str, String str2) {
        y45.j(str, "divId");
        y45.j(str2, "command");
        return applyVideoCommand$default(this, str, str2, null, 4, null);
    }

    public void bindViewToDiv$div_release(View view, Div div) {
        y45.j(view, "view");
        y45.j(div, TtmlNode.TAG_DIV);
        this.viewToDivBindings.put(view, div);
    }

    public void bulkActions$div_release(c74 function) {
        y45.j(function, "function");
        this.bulkActionsHandler.a(function);
    }

    public void cancelTooltips() {
        getTooltipController().i(this);
    }

    public void cleanup() {
        synchronized (this.monitor) {
            y(true);
            zfb zfbVar = zfb.a;
        }
    }

    public void clearSubscriptions() {
        synchronized (this.monitor) {
            this.overflowMenuListeners.clear();
            zfb zfbVar = zfb.a;
        }
    }

    public void discardVisibilityTracking() {
        List list;
        DivData divData = getDivData();
        DivData.State state = null;
        Object obj = null;
        state = null;
        if (divData != null && (list = divData.c) != null) {
            for (Object obj2 : list) {
                if (((DivData.State) obj2).b == getStateId()) {
                    obj = obj2;
                    break;
                }
            }
            state = (DivData.State) obj;
        }
        if (state != null) {
            B(state);
        }
        A();
    }

    public void dismissPendingOverflowMenus() {
        synchronized (this.monitor) {
            try {
                Iterator it = this.overflowMenuListeners.iterator();
                while (it.hasNext()) {
                    ((xt7) it.next()).dismiss();
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        y45.j(canvas, "canvas");
        if (this.drawWasSkipped) {
            getHistogramReporter().k();
        }
        super.dispatchDraw(canvas);
        if (this.drawWasSkipped) {
            getHistogramReporter().j();
        }
    }

    @Override
    public void draw(Canvas canvas) {
        y45.j(canvas, "canvas");
        this.drawWasSkipped = false;
        getHistogramReporter().k();
        super.draw(canvas);
        getHistogramReporter().j();
        this.drawWasSkipped = true;
    }

    @Override
    public boolean drawChild(Canvas canvas, View child, long drawingTime) {
        y45.j(canvas, "canvas");
        if (child != null && child.getVisibility() == 0) {
            BaseDivViewExtensionsKt.N(child, canvas);
        }
        return super.drawChild(canvas, child, drawingTime);
    }

    public cf2 getActionHandler() {
        return this.actionHandler;
    }

    public on9 getBindOnAttachRunnable() {
        return this.bindOnAttachRunnable;
    }

    public com.yandex.div.core.view2.a getBindingContext() {
        return this.bindingContext;
    }

    public ViewTreeObserver.OnPreDrawListener getClearVariablesListener() {
        return this.clearVariablesListener;
    }

    public boolean getComplexRebindInProgress$div_release() {
        RebindTask rebindTask = this.rebindTask;
        if (rebindTask != null) {
            return rebindTask.f();
        }
        return false;
    }

    public String getComponentName() {
        return getHistogramReporter().c();
    }

    public yu2 getConfig() {
        yu2 yu2Var = this.config;
        y45.i(yu2Var, "config");
        return yu2Var;
    }

    public Div2Context getContext() {
        return this.context;
    }

    public xu8 getCurrentRebindReusableList$div_release() {
        RebindTask rebindTask;
        if (getComplexRebindInProgress$div_release() && (rebindTask = this.rebindTask) != null) {
            return rebindTask.g();
        }
        return null;
    }

    public DivStatePath getCurrentRootPath$div_release() {
        List list;
        Object next;
        DivStatePath divStatePathJ;
        DivData divData = getDivData();
        if (divData != null && (list = divData.c) != null) {
            Iterator it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((DivData.State) next).b != getStateId());
            DivData.State state = (DivData.State) next;
            if (state != null && (divStatePathJ = DivStatePath.f.j(state)) != null) {
                return divStatePathJ;
            }
        }
        return DivStatePath.f.i(getStateId());
    }

    public uv2 getCurrentState() {
        DivData divData = getDivData();
        if (divData == null) {
            return null;
        }
        uv2 uv2VarA = getDiv2Component().A().a(getDataTag());
        List<DivData.State> list = divData.c;
        if ((list instanceof Collection) && list.isEmpty()) {
            return null;
        }
        for (DivData.State state : list) {
            if (uv2VarA != null && state.b == uv2VarA.c()) {
                return uv2VarA;
            }
        }
        return null;
    }

    public long getCurrentStateId() {
        return getStateId();
    }

    public wh2 getCustomContainerChildFactory$div_release() {
        wh2 wh2VarI = getDiv2Component().i();
        y45.i(wh2VarI, "div2Component.divCustomContainerChildFactory");
        return wh2VarI;
    }

    public ei2 getDataTag() {
        return this.dataTag;
    }

    public Div2Component getDiv2Component() {
        return this.div2Component;
    }

    public DivData getDivData() {
        return this.divData;
    }

    public ei2 getDivTag() {
        return getDataTag();
    }

    public bt2 getDivTimerEventDispatcher() {
        return this.divTimerEventDispatcher;
    }

    public DivTransitionHandler getDivTransitionHandler() {
        return this.divTransitionHandler;
    }

    @Override
    public oj3 getExpressionResolver() {
        ExpressionResolverImpl expressionResolverImplC;
        vj3 expressionsRuntime = getExpressionsRuntime();
        return (expressionsRuntime == null || (expressionResolverImplC = expressionsRuntime.c()) == null) ? oj3.b : expressionResolverImplC;
    }

    public vj3 getExpressionsRuntime() {
        return this.expressionsRuntime;
    }

    public boolean getForceCanvasClipping() {
        return this.forceCanvasClipping;
    }

    public boolean getInMiddleOfBind() {
        return this.inMiddleOfBind;
    }

    public a15 getInputFocusTracker() {
        return this.inputFocusTracker;
    }

    public Map<oj3, Map<String, Integer>> getLayoutSizes$div_release() {
        return this.layoutSizes;
    }

    public String getLogId() {
        String str;
        DivData divData = getDivData();
        return (divData == null || (str = divData.b) == null) ? "" : str;
    }

    public dl6 getMediaReleaseViewVisitor$div_release() {
        return getViewComponent().m();
    }

    public oj3 getOldExpressionResolver$div_release() {
        ExpressionResolverImpl expressionResolverImplC;
        vj3 vj3Var = this.oldExpressionsRuntime;
        return (vj3Var == null || (expressionResolverImplC = vj3Var.c()) == null) ? oj3.b : expressionResolverImplC;
    }

    public ei2 getPrevDataTag() {
        return this.prevDataTag;
    }

    public DivAccessibility.Mode getPropagatedAccessibilityMode$div_release(View view) {
        y45.j(view, "view");
        return (DivAccessibility.Mode) this.propagatedAccessibilityModes.get(view);
    }

    public zr8 getReleaseViewVisitor$div_release() {
        return getViewComponent().k();
    }

    public RuntimeStore getRuntimeStore() {
        return this.runtimeStore;
    }

    public long getStateId() {
        return this.stateId;
    }

    public Map<DivData, DivLayoutProviderVariablesHolder> getVariablesHolders$div_release() {
        return this.variablesHolders;
    }

    @Override
    public Div2View getView() {
        return this;
    }

    public Div2ViewComponent getViewComponent() {
        return this.viewComponent;
    }

    public boolean getVisualErrorsEnabled() {
        return getViewComponent().e().d();
    }

    public final void handleAction(DivAction divAction) {
        y45.j(divAction, "action");
        handleAction$default(this, divAction, null, null, 6, null);
    }

    public final boolean handleActionWithResult(DivAction divAction) {
        y45.j(divAction, "action");
        return handleActionWithResult$default(this, divAction, null, null, 6, null);
    }

    public void handleUri(Uri uri) {
        y45.j(uri, "uri");
        cf2 actionHandler = getActionHandler();
        if (actionHandler == null || !actionHandler.handleActionUrl(uri, this)) {
            getDiv2Component().G().handleActionUrl(uri, this);
        }
    }

    public boolean hasScrollableViewUnder(MotionEvent event) {
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        return kcc.c(this, event);
    }

    @Override
    public void hideTooltip(String tooltipId) {
        y45.j(tooltipId, "tooltipId");
        getTooltipController().n(tooltipId, this);
    }

    public boolean isDescendantAccessibilityMode$div_release(View view) {
        y45.j(view, "view");
        Object parent = view.getParent();
        View view2 = parent instanceof View ? (View) parent : null;
        return view2 != null && this.propagatedAccessibilityModes.get(view2) == this.propagatedAccessibilityModes.get(view);
    }

    public boolean isInState(DivStatePath statePath) {
        y45.j(statePath, "statePath");
        rga rgaVarC = getDiv2Component().C();
        y45.i(rgaVarC, "div2Component.temporaryDivStateCache");
        String strA = getDataTag().a();
        y45.i(strA, "dataTag.id");
        return y45.e(rgaVarC.b(strA, String.valueOf(statePath.h())), statePath.f());
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        on9 on9Var = this.reportBindingResumedRunnable;
        if (on9Var != null) {
            on9Var.b();
        }
        on9 on9Var2 = this.setActiveBindingRunnable;
        if (on9Var2 != null) {
            on9Var2.b();
        }
        on9 bindOnAttachRunnable = getBindOnAttachRunnable();
        if (bindOnAttachRunnable != null) {
            bindOnAttachRunnable.b();
        }
        on9 on9Var3 = this.reportBindingFinishedRunnable;
        if (on9Var3 != null) {
            on9Var3.b();
        }
        bt2 divTimerEventDispatcher = getDivTimerEventDispatcher();
        if (divTimerEventDispatcher != null) {
            divTimerEventDispatcher.d(this);
        }
    }

    public void onConfigurationChangedOutside(Configuration newConfig) {
        y45.j(newConfig, "newConfig");
        dismissPendingOverflowMenus();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        discardVisibilityTracking();
        bt2 divTimerEventDispatcher = getDivTimerEventDispatcher();
        if (divTimerEventDispatcher != null) {
            divTimerEventDispatcher.e(this);
        }
        getViewComponent().j().d();
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        getHistogramReporter().m();
        super.onLayout(changed, left, top, right, bottom);
        tryLogVisibility();
        getHistogramReporter().l();
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        getHistogramReporter().o();
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        getHistogramReporter().n();
    }

    public boolean prepareForRecycleOrCleanup(DivData newData, DivData oldData, ei2 newDataTag) {
        y45.j(newData, "newData");
        if (newDataTag == null) {
            newDataTag = new ei2(UUID.randomUUID().toString());
        }
        hh2 hh2Var = hh2.a;
        DivData divData = getDivData();
        if (divData == null) {
            divData = oldData;
        }
        boolean zI = hh2Var.i(divData, newData, getStateId(), getExpressionResolver(), getDiv2Component().p().h(newDataTag, newData, this).c(), (32 & 32) != 0 ? null : null);
        if (zI) {
            yr8.a.b(this, this);
            M();
        } else {
            cleanup();
        }
        return zI;
    }

    public final void q(DivData oldData, DivData newData, Div oldDiv, DivData.State newState, View newStateView, boolean allowsTransition, boolean bindBeforeViewAdded) {
        Transition transitionH = allowsTransition ? H(oldData, newData, oldDiv, newState.a) : null;
        if (transitionH != null) {
            Scene currentScene = Scene.getCurrentScene(this);
            if (currentScene != null) {
                currentScene.setExitAction(new Runnable() {
                    @Override
                    public final void run() {
                        Div2View.r(this.b);
                    }
                });
            }
        } else {
            yr8.a.a(this, this);
        }
        if (bindBeforeViewAdded) {
            getDiv2Component().F().b(getBindingContext(), newStateView, newState.a, DivStatePath.f.j(newState));
        }
        if (transitionH == null) {
            addView(newStateView);
            getViewComponent().e().b(this);
        } else {
            TransitionManager.endTransitions(this);
            Scene scene = new Scene(this, newStateView);
            SceneRootWatcher.a.b(scene, transitionH);
            TransitionManager.go(scene, transitionH);
        }
    }

    public void releaseMedia() {
        x();
        yr8.a.c(this, this);
    }

    public void removeDivDataChangeObserver(ci2 observer) {
        y45.j(observer, "observer");
        synchronized (this.monitor) {
            this.divDataChangedObservers.remove(observer);
        }
    }

    public void removePersistentDivDataObserver$div_release(w08 observer) {
        y45.j(observer, "observer");
        synchronized (this.monitor) {
            this.persistentDivDataObservers.p(observer);
        }
    }

    public void resetToInitialState() {
        uv2 currentState = getCurrentState();
        if (currentState != null) {
            currentState.e();
        }
        rga rgaVarC = getDiv2Component().C();
        String strA = getDivTag().a();
        y45.i(strA, "divTag.id");
        rgaVarC.e(strA);
        switchToInitialState();
    }

    public Div rootDiv$div_release() {
        DivData.State stateK;
        DivData divData = getDivData();
        if (divData == null || (stateK = K(divData)) == null) {
            return null;
        }
        return stateK.a;
    }

    public final void s(DivData data) {
        final DivData.State stateK = K(data);
        if (stateK == null) {
            return;
        }
        final c74 c74Var = new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m143invoke();
                return zfb.a;
            }

            public final void m143invoke() {
                DivRuntimeVisitor divRuntimeVisitorG = this.this$0.getViewComponent().g();
                DivData.State state = stateK;
                divRuntimeVisitorG.b(state.a, DivStatePath.f.j(state), this.this$0);
            }
        };
        if (this.bindOnAttachEnabled) {
            this.setActiveBindingRunnable = new on9(this, new c74() {
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m142invoke();
                    return zfb.a;
                }

                public final void m142invoke() {
                    c74Var.invoke();
                }
            });
        } else {
            c74Var.invoke();
        }
    }

    public void setActionHandler(cf2 cf2Var) {
        this.actionHandler = cf2Var;
    }

    public void setBindOnAttachRunnable$div_release(on9 on9Var) {
        this.bindOnAttachRunnable = on9Var;
    }

    public void setBindingContext$div_release(com.yandex.div.core.view2.a aVar) {
        y45.j(aVar, "<set-?>");
        this.bindingContext = aVar;
    }

    public void setClearVariablesListener$div_release(ViewTreeObserver.OnPreDrawListener onPreDrawListener) {
        this.clearVariablesListener = onPreDrawListener;
    }

    public void setComponentName(String str) {
        getHistogramReporter().u(str);
    }

    public void setConfig(yu2 viewConfig) {
        y45.j(viewConfig, "viewConfig");
        this.config = viewConfig;
    }

    public boolean setData(DivData data, ei2 tag) {
        y45.j(tag, Progress.TAG);
        return setData(data, getDivData(), tag);
    }

    public void setDataTag$div_release(ei2 ei2Var) {
        y45.j(ei2Var, ES6Iterator.VALUE_PROPERTY);
        setPrevDataTag$div_release(this.dataTag);
        this.dataTag = ei2Var;
        this.bindingProvider.b(ei2Var, getDivData());
    }

    public boolean setDataWithStates(DivData data, ei2 tag, List<DivStatePath> paths, boolean temporary) {
        boolean zS;
        y45.j(tag, Progress.TAG);
        y45.j(paths, "paths");
        synchronized (this.monitor) {
            ue0 ue0VarA = this.bindingReporterProvider.a(getDivData(), data);
            if (data == null) {
                ue0VarA.z();
                return false;
            }
            if (getDivData() == data) {
                ue0VarA.i();
                return false;
            }
            G();
            on9 bindOnAttachRunnable = getBindOnAttachRunnable();
            if (bindOnAttachRunnable != null) {
                bindOnAttachRunnable.a();
            }
            getHistogramReporter().r();
            DivData divData = getDivData();
            Q(data, tag);
            boolean zI = hh2.a.i(divData, data, getStateId(), getOldExpressionResolver$div_release(), getExpressionResolver(), ue0VarA);
            setDataTag$div_release(tag);
            for (DivData.State state : data.c) {
                d dVarQ = getDiv2Component().q();
                y45.i(dVarQ, "div2Component.divViewDataPreloader");
                d.f(dVarQ, state.a, getBindingContext(), DivStatePath.f.j(state), null, 8, null);
            }
            for (DivStatePath divStatePath : paths) {
                sq2 sq2VarA = getDiv2Component().A();
                String strA = getDivTag().a();
                y45.i(strA, "divTag.id");
                sq2VarA.d(strA, divStatePath, temporary);
            }
            if (divData == null) {
                zS = S(data, tag, ue0VarA);
            } else if (!zI && this.complexRebindEnabled && (getView().getChildAt(0) instanceof ViewGroup) && z(data, divData, ue0VarA)) {
                zS = true;
            } else if (zI) {
                I(data, false, ue0VarA);
                zS = true;
            } else {
                zS = S(data, tag, ue0VarA);
            }
            getDiv2Component().F().a();
            J();
            this.oldExpressionsRuntime = getExpressionsRuntime();
            F();
            return zS;
        }
    }

    public void setDivData$div_release(DivData divData) {
        this.divData = divData;
        R(this, null, null, 3, null);
        U();
        this.bindingProvider.b(getDataTag(), this.divData);
    }

    public void setDivTimerEventDispatcher$div_release(bt2 bt2Var) {
        this.divTimerEventDispatcher = bt2Var;
    }

    public void setExpressionsRuntime$div_release(vj3 vj3Var) {
        this.expressionsRuntime = vj3Var;
    }

    public void setForceCanvasClipping(boolean z) {
        this.forceCanvasClipping = z;
    }

    public void setInMiddleOfBind$div_release(boolean z) {
        this.inMiddleOfBind = z;
    }

    public void setPrevDataTag$div_release(ei2 ei2Var) {
        y45.j(ei2Var, "<set-?>");
        this.prevDataTag = ei2Var;
    }

    public void setPropagatedAccessibilityMode$div_release(View view, DivAccessibility.Mode mode) {
        y45.j(view, "view");
        y45.j(mode, hb0.KEY_NAME_MODE);
        this.propagatedAccessibilityModes.put(view, mode);
    }

    public void setRuntimeStore$div_release(RuntimeStore runtimeStore) {
        this.runtimeStore = runtimeStore;
    }

    public void setStateId$div_release(long j) {
        this.stateId = j;
    }

    public VariableMutationException setVariable(String name, String value) {
        y45.j(name, "name");
        y45.j(value, ES6Iterator.VALUE_PROPERTY);
        return bob.a.d(this, name, value, getExpressionResolver());
    }

    public void setVisualErrorsEnabled(boolean z) {
        getViewComponent().e().e(z);
    }

    public void showTooltip(String tooltipId) {
        y45.j(tooltipId, "tooltipId");
        DivTooltipController.r(getTooltipController(), tooltipId, getBindingContext(), false, 4, null);
    }

    public void startDivAnimation() {
        if (getChildCount() > 0) {
            KeyEvent.Callback childAt = getChildAt(0);
            ig2 ig2Var = childAt instanceof ig2 ? (ig2) childAt : null;
            if (ig2Var != null) {
                ig2Var.startDivAnimation();
            }
        }
    }

    public DivData.State stateToBind(DivData divData) {
        y45.j(divData, "divData");
        return D(divData);
    }

    public void stopDivAnimation() {
        if (getChildCount() > 0) {
            KeyEvent.Callback childAt = getChildAt(0);
            ig2 ig2Var = childAt instanceof ig2 ? (ig2) childAt : null;
            if (ig2Var != null) {
                ig2Var.stopDivAnimation();
            }
        }
    }

    public void subscribe(xt7 listener) {
        y45.j(listener, "listener");
        synchronized (this.monitor) {
            this.overflowMenuListeners.add(listener);
        }
    }

    public void switchToInitialState() {
        DivData divData = getDivData();
        if (divData == null) {
            return;
        }
        long jB = fi2.b(divData);
        uv2 currentState = getCurrentState();
        if (currentState != null) {
            jB = currentState.c();
        }
        switchToState(jB);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void switchToMultipleStates(List<DivStatePath> pathList, boolean temporary, boolean withAnimations) {
        DivData.State state;
        Object next;
        List list;
        Object obj;
        y45.j(pathList, "pathList");
        if (pathList.isEmpty()) {
            xi.i("Empty path list!");
            return;
        }
        DivStatePath divStatePath = pathList.get(0);
        List<DivStatePath> list2 = pathList;
        Iterator<T> it = list2.iterator();
        do {
            state = null;
            obj = null;
            state = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((DivStatePath) next).k() == divStatePath.k());
        if (((DivStatePath) next) != null) {
            xi.i("Trying to switch different top level states in path list!");
        }
        if (getStateId() != divStatePath.k()) {
            for (DivStatePath divStatePath2 : list2) {
                sq2 sq2VarA = getDiv2Component().A();
                String strA = getDivTag().a();
                y45.i(strA, "divTag.id");
                sq2VarA.d(strA, divStatePath2, temporary);
            }
            switchToState(divStatePath.k());
            return;
        }
        DivData divData = getDivData();
        if (divData != null && (list = divData.c) != null) {
            for (Object obj2 : list) {
                if (((DivData.State) obj2).b == divStatePath.k()) {
                    obj = obj2;
                    break;
                }
            }
            state = (DivData.State) obj;
        }
        this.bulkActionsHandler.d(state, pathList, temporary);
    }

    @Override
    public void switchToState(@IntRange(from = 0) long j) {
        super.switchToState(j);
    }

    public final View t(DivData.State newState, long stateId, boolean isUpdateTemporary) {
        getDiv2Component().A().c(getDataTag(), stateId, isUpdateTemporary);
        View viewA = this.divBuilder.a(newState.a, getBindingContext(), DivStatePath.f.j(newState));
        getDiv2Component().F().a();
        return viewA;
    }

    public Div takeBindingDiv$div_release(View view) {
        y45.j(view, "view");
        return (Div) this.viewToDivBindings.get(view);
    }

    public void trackChildrenVisibility() {
        oj3 oj3VarB;
        DivVisibilityActionTracker divVisibilityActionTrackerH = getDiv2Component().H();
        y45.i(divVisibilityActionTrackerH, "div2Component.visibilityActionTracker");
        for (Map.Entry entry : this.viewToDivBindings.entrySet()) {
            View view = (View) entry.getKey();
            Div div = (Div) entry.getValue();
            y45.i(view, "view");
            com.yandex.div.core.view2.a aVarZ = BaseDivViewExtensionsKt.Z(view);
            if (aVarZ != null && (oj3VarB = aVarZ.b()) != null) {
                if (ViewCompat.isAttachedToWindow(view)) {
                    y45.i(div, TtmlNode.TAG_DIV);
                    DivVisibilityActionTracker.x(divVisibilityActionTrackerH, this, oj3VarB, view, div, null, null, 48, null);
                } else {
                    y45.i(div, TtmlNode.TAG_DIV);
                    DivVisibilityActionTracker.x(divVisibilityActionTrackerH, this, oj3VarB, null, div, null, null, 48, null);
                }
            }
        }
    }

    public void tryLogVisibility() {
        List list;
        DivData divData = getDivData();
        DivData.State state = null;
        Object obj = null;
        state = null;
        if (divData != null && (list = divData.c) != null) {
            for (Object obj2 : list) {
                if (((DivData.State) obj2).b == getStateId()) {
                    obj = obj2;
                    break;
                }
            }
            state = (DivData.State) obj;
        }
        if (state != null) {
            O(state);
        }
        trackChildrenVisibility();
    }

    public Div unbindViewFromDiv$div_release(View view) {
        y45.j(view, "view");
        return (Div) this.viewToDivBindings.remove(view);
    }

    public final View v(final DivData.State newState, long stateId, boolean isUpdateTemporary) {
        getDiv2Component().A().c(getDataTag(), stateId, isUpdateTemporary);
        final DivStatePath divStatePathJ = DivStatePath.f.j(newState);
        final View viewB = this.divBuilder.b(newState.a, getBindingContext(), divStatePathJ);
        if (this.bindOnAttachEnabled) {
            setBindOnAttachRunnable$div_release(new on9(this, new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m144invoke();
                    return zfb.a;
                }

                public final void m144invoke() {
                    Div2View div2View = this.this$0;
                    View view = viewB;
                    DivData.State state = newState;
                    try {
                        div2View.getDiv2Component().F().b(div2View.getBindingContext(), view, state.a, divStatePathJ);
                    } catch (ParsingException e) {
                        if (!lj3.b(e)) {
                            throw e;
                        }
                    }
                    this.this$0.getDiv2Component().F().a();
                }
            }));
        } else {
            getDiv2Component().F().b(getBindingContext(), viewB, newState.a, divStatePathJ);
            if (isAttachedToWindow()) {
                getDiv2Component().F().a();
            } else {
                addOnAttachStateChangeListener(new b(this, this));
            }
        }
        return viewB;
    }

    public final void x() {
        Iterator it = this.loadReferences.iterator();
        while (it.hasNext()) {
            ((jn5) it.next()).cancel();
        }
        this.loadReferences.clear();
    }

    public final void y(boolean removeChildren) {
        RebindTask rebindTask = this.rebindTask;
        if (rebindTask != null) {
            rebindTask.b();
            zfb zfbVar = zfb.a;
            this.rebindTask = null;
        }
        discardVisibilityTracking();
        x();
        yr8 yr8Var = yr8.a;
        yr8Var.c(this, this);
        M();
        if (removeChildren) {
            yr8Var.a(this, this);
        }
        wc3 wc3VarB = getViewComponent().a().b(getDataTag(), getDivData());
        if (wc3VarB != null) {
            wc3VarB.c();
        }
        setDivData$div_release(null);
        ei2 ei2Var = ei2.b;
        y45.i(ei2Var, "INVALID");
        setDataTag$div_release(ei2Var);
    }

    public final boolean z(DivData newData, DivData oldData, com.yandex.div.core.view2.reuse.a reporter) {
        DivData.State stateD = D(newData);
        if (stateD == null) {
            reporter.y();
            return false;
        }
        getHistogramReporter().q();
        setDivData$div_release(newData);
        RebindTask rebindTask = this.rebindTask;
        if (rebindTask == null) {
            rg2 rg2VarF = getDiv2Component().F();
            y45.i(rg2VarF, "div2Component.divBinder");
            rebindTask = new RebindTask(this, rg2VarF, getOldExpressionResolver$div_release(), getExpressionResolver(), reporter);
            this.rebindTask = rebindTask;
        }
        View childAt = getView().getChildAt(0);
        y45.h(childAt, "null cannot be cast to non-null type android.view.ViewGroup");
        ViewGroup viewGroup = (ViewGroup) childAt;
        BaseDivViewExtensionsKt.D(viewGroup, stateD.a.b(), getExpressionResolver());
        getDiv2Component().A().c(getDataTag(), stateD.b, false);
        if (!rebindTask.h(oldData, newData, viewGroup, DivStatePath.f.j(stateD))) {
            return false;
        }
        requestLayout();
        getHistogramReporter().p();
        return true;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Div2View(Div2Context div2Context, AttributeSet attributeSet) {
        this(div2Context, attributeSet, 0, 4, null);
        y45.j(div2Context, "context");
    }

    public boolean applyVideoCommand(String divId, String command, oj3 expressionResolver) {
        y45.j(divId, "divId");
        y45.j(command, "command");
        y45.j(expressionResolver, "expressionResolver");
        return getDivVideoActionHandler().b(this, divId, command, expressionResolver);
    }

    public final void handleAction(DivAction divAction, String str) {
        y45.j(divAction, "action");
        y45.j(str, "reason");
        handleAction$default(this, divAction, str, null, 4, null);
    }

    public final boolean handleActionWithResult(DivAction divAction, String str) {
        y45.j(divAction, "action");
        y45.j(str, "reason");
        return handleActionWithResult$default(this, divAction, str, null, 4, null);
    }

    public boolean setData(DivData data, DivData oldDivData, ei2 tag) {
        y45.j(tag, Progress.TAG);
        synchronized (this.monitor) {
            ue0 ue0VarA = this.bindingReporterProvider.a(oldDivData, data);
            boolean zS = false;
            if (data == null) {
                ue0VarA.z();
                return false;
            }
            if (getDivData() == data) {
                ue0VarA.i();
                return false;
            }
            G();
            on9 bindOnAttachRunnable = getBindOnAttachRunnable();
            if (bindOnAttachRunnable != null) {
                bindOnAttachRunnable.a();
            }
            getHistogramReporter().r();
            DivData divData = getDivData();
            DivData divData2 = divData == null ? oldDivData : divData;
            Q(data, tag);
            setDataTag$div_release(tag);
            for (DivData.State state : data.c) {
                d dVarQ = getDiv2Component().q();
                y45.i(dVarQ, "div2Component.divViewDataPreloader");
                d.f(dVarQ, state.a, getBindingContext(), DivStatePath.f.j(state), null, 8, null);
            }
            boolean zI = hh2.a.i(divData2, data, getStateId(), getOldExpressionResolver$div_release(), getExpressionResolver(), ue0VarA);
            if (divData2 == null || wt2.a(data, getExpressionResolver())) {
                zS = S(data, tag, ue0VarA);
            } else if (zI || !this.complexRebindEnabled || !(getView().getChildAt(0) instanceof ViewGroup) || !z(data, divData2, ue0VarA)) {
                if (zI) {
                    I(data, false, ue0VarA);
                } else {
                    zS = S(data, tag, ue0VarA);
                }
            }
            getDiv2Component().F().a();
            J();
            this.oldExpressionsRuntime = getExpressionsRuntime();
            F();
            return zS;
        }
    }

    @Override
    public void showTooltip(String tooltipId, boolean multiple) {
        y45.j(tooltipId, "tooltipId");
        getTooltipController().q(tooltipId, getBindingContext(), multiple);
    }

    @Override
    public void switchToState(long stateId, boolean temporary) {
        synchronized (this.monitor) {
            try {
                if (stateId != fi2.a(DivData.j)) {
                    on9 bindOnAttachRunnable = getBindOnAttachRunnable();
                    if (bindOnAttachRunnable != null) {
                        bindOnAttachRunnable.a();
                    }
                    C(stateId, temporary);
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Div2View(Div2Context div2Context, AttributeSet attributeSet, int i, long j) {
        super(div2Context, attributeSet, i);
        this.context = div2Context;
        this.constructorCallTime = j;
        this.div2Component = getContext().getDiv2Component$div_release();
        this.viewComponent = getDiv2Component().r().a(this).build();
        this.bindOnAttachEnabled = getDiv2Component().u();
        this.complexRebindEnabled = getDiv2Component().E();
        this.bindingProvider = getViewComponent().l();
        this.bindingReporterProvider = new we0(this);
        this.patchReporterProvider = new zx7(this);
        dd2 dd2VarV = getContext().getDiv2Component$div_release().v();
        y45.i(dd2VarV, "context.div2Component.div2Builder");
        this.divBuilder = dd2VarV;
        this.loadReferences = new ArrayList();
        this.overflowMenuListeners = new ArrayList();
        this.divDataChangedObservers = new ArrayList();
        this.persistentDivDataObservers = new qd7();
        this.viewToDivBindings = new WeakHashMap();
        this.propagatedAccessibilityModes = new WeakHashMap();
        this.bulkActionsHandler = new a();
        this.bindingContext = com.yandex.div.core.view2.a.d.a(this);
        this.monitor = new Object();
        this.stateId = fi2.a(DivData.j);
        this.config = yu2.a;
        this.renderConfig = new c74() {
            {
                super(0);
            }

            @Override
            public final fs8 invoke() {
                return (fs8) b.b.a(this.this$0.getContext()).e().a().f().get();
            }
        };
        this.histogramReporter = kotlin.b.b(LazyThreadSafetyMode.NONE, new c74() {
            {
                super(0);
            }

            @Override
            public final Div2ViewHistogramReporter invoke() {
                final Div2View div2View = this.this$0;
                return new Div2ViewHistogramReporter(new c74() {
                    {
                        super(0);
                    }

                    @Override
                    public final rq4 invoke() {
                        rq4 rq4VarK = div2View.getDiv2Component().k();
                        y45.i(rq4VarK, "div2Component.histogramReporter");
                        return rq4VarK;
                    }
                }, this.this$0.renderConfig);
            }
        });
        this.inputFocusTracker = getViewComponent().f();
        this.layoutSizes = new LinkedHashMap();
        this.variablesHolders = new LinkedHashMap();
        ei2 ei2Var = ei2.b;
        y45.i(ei2Var, "INVALID");
        this.dataTag = ei2Var;
        y45.i(ei2Var, "INVALID");
        this.prevDataTag = ei2Var;
        this.timeCreated = -1L;
        this.viewCreateCallType = getDiv2Component().d().a();
        this.drawWasSkipped = true;
        this.divTransitionHandler = new DivTransitionHandler(this);
        this.timeCreated = sh2.f.a();
        getDiv2Component().z().d(this);
    }

    public void handleAction(DivAction action, String reason, oj3 resolver) {
        y45.j(action, "action");
        y45.j(reason, "reason");
        y45.j(resolver, "resolver");
        handleActionWithResult(action, reason, resolver);
    }

    public boolean handleActionWithResult(DivAction action, String reason, oj3 resolver) {
        y45.j(action, "action");
        y45.j(reason, "reason");
        y45.j(resolver, "resolver");
        return getDiv2Component().n().D(this, resolver, action, reason, null, getActionHandler());
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override
    public void switchToState(DivStatePath path, boolean temporary) {
        List list;
        y45.j(path, "path");
        synchronized (this.monitor) {
            try {
                DivData divData = getDivData();
                DivData.State state = null;
                Object obj = null;
                state = null;
                if (divData != null && (list = divData.c) != null) {
                    for (Object obj2 : list) {
                        if (((DivData.State) obj2).b == path.k()) {
                            obj = obj2;
                            break;
                        }
                    }
                    state = (DivData.State) obj;
                }
                this.bulkActionsHandler.e(state, path, temporary);
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Div2View(Div2Context div2Context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(div2Context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Div2View(Div2Context div2Context, AttributeSet attributeSet, int i) {
        this(div2Context, attributeSet, i, SystemClock.uptimeMillis());
        y45.j(div2Context, "context");
    }
}
