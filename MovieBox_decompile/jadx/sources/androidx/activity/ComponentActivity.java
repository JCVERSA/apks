package androidx.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.IntentSenderRequest;
import androidx.core.app.ActivityCompat;
import androidx.core.view.MenuHost;
import androidx.core.view.MenuHostHelper;
import androidx.core.view.MenuProvider;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.ViewTreeLifecycleOwner;
import androidx.p009lifecycle.ViewTreeViewModelStoreOwner;
import androidx.p009lifecycle.i0;
import androidx.p009lifecycle.o0;
import androidx.p009lifecycle.q0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import androidx.p010savedstate.ViewTreeSavedStateRegistryOwner;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.permission.PermissionConstant;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000ì\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\b\u0016\u0018\u0000 Ý\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\b2\u00020\t2\u00020\n2\u00020\u000b2\u00020\t2\u00020\f2\u00020\r2\u00020\t2\u00020\u000e2\u00020\u000f:\nÞ\u0001ß\u0001à\u0001á\u0001â\u0001B\u0007¢\u0006\u0004\b\u0010\u0010\u0011B\u0013\b\u0017\u0012\b\b\u0001\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0010\u0010\u0014J\u0019\u0010\u0018\u001a\u00020\u00172\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0015H\u0015¢\u0006\u0004\b\u001b\u0010\u0019J\u000f\u0010\u001c\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u001c\u0010\u001dJ\u0011\u0010\u001e\u001a\u0004\u0018\u00010\tH\u0017¢\u0006\u0004\b\u001e\u0010\u001dJ\u0019\u0010 \u001a\u00020\u00172\b\b\u0001\u0010\u001f\u001a\u00020\u0012H\u0016¢\u0006\u0004\b \u0010\u0014J\u0019\u0010 \u001a\u00020\u00172\b\u0010\"\u001a\u0004\u0018\u00010!H\u0016¢\u0006\u0004\b \u0010#J#\u0010 \u001a\u00020\u00172\b\u0010\"\u001a\u0004\u0018\u00010!2\b\u0010%\u001a\u0004\u0018\u00010$H\u0016¢\u0006\u0004\b \u0010&J#\u0010'\u001a\u00020\u00172\b\u0010\"\u001a\u0004\u0018\u00010!2\b\u0010%\u001a\u0004\u0018\u00010$H\u0016¢\u0006\u0004\b'\u0010&J\u000f\u0010(\u001a\u00020\u0017H\u0017¢\u0006\u0004\b(\u0010\u0011J\u0011\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b*\u0010+J\u0015\u0010.\u001a\u00020\u00172\u0006\u0010-\u001a\u00020,¢\u0006\u0004\b.\u0010/J\u0015\u00100\u001a\u00020\u00172\u0006\u0010-\u001a\u00020,¢\u0006\u0004\b0\u0010/J)\u00105\u001a\u0002042\u0006\u00101\u001a\u00020\u00122\b\u0010\"\u001a\u0004\u0018\u00010!2\u0006\u00103\u001a\u000202H\u0016¢\u0006\u0004\b5\u00106J\u001f\u00107\u001a\u0002042\u0006\u00101\u001a\u00020\u00122\u0006\u00103\u001a\u000202H\u0016¢\u0006\u0004\b7\u00108J\u001f\u0010;\u001a\u0002042\u0006\u00101\u001a\u00020\u00122\u0006\u0010:\u001a\u000209H\u0016¢\u0006\u0004\b;\u0010<J\u001f\u0010=\u001a\u00020\u00172\u0006\u00101\u001a\u00020\u00122\u0006\u00103\u001a\u000202H\u0016¢\u0006\u0004\b=\u0010>J\u0017\u0010A\u001a\u00020\u00172\u0006\u0010@\u001a\u00020?H\u0016¢\u0006\u0004\bA\u0010BJ\u001f\u0010A\u001a\u00020\u00172\u0006\u0010@\u001a\u00020?2\u0006\u0010C\u001a\u00020\u0003H\u0016¢\u0006\u0004\bA\u0010DJ'\u0010A\u001a\u00020\u00172\u0006\u0010@\u001a\u00020?2\u0006\u0010C\u001a\u00020\u00032\u0006\u0010F\u001a\u00020EH\u0017¢\u0006\u0004\bA\u0010GJ\u0017\u0010H\u001a\u00020\u00172\u0006\u0010@\u001a\u00020?H\u0016¢\u0006\u0004\bH\u0010BJ\u000f\u0010I\u001a\u00020\u0017H\u0016¢\u0006\u0004\bI\u0010\u0011J\u000f\u0010J\u001a\u00020\u0017H\u0017¢\u0006\u0004\bJ\u0010\u0011J\u001f\u0010N\u001a\u00020\u00172\u0006\u0010L\u001a\u00020K2\u0006\u0010M\u001a\u00020\u0012H\u0017¢\u0006\u0004\bN\u0010OJ)\u0010N\u001a\u00020\u00172\u0006\u0010L\u001a\u00020K2\u0006\u0010M\u001a\u00020\u00122\b\u0010P\u001a\u0004\u0018\u00010\u0015H\u0017¢\u0006\u0004\bN\u0010QJA\u0010W\u001a\u00020\u00172\u0006\u0010L\u001a\u00020R2\u0006\u0010M\u001a\u00020\u00122\b\u0010S\u001a\u0004\u0018\u00010K2\u0006\u0010T\u001a\u00020\u00122\u0006\u0010U\u001a\u00020\u00122\u0006\u0010V\u001a\u00020\u0012H\u0017¢\u0006\u0004\bW\u0010XJK\u0010W\u001a\u00020\u00172\u0006\u0010L\u001a\u00020R2\u0006\u0010M\u001a\u00020\u00122\b\u0010S\u001a\u0004\u0018\u00010K2\u0006\u0010T\u001a\u00020\u00122\u0006\u0010U\u001a\u00020\u00122\u0006\u0010V\u001a\u00020\u00122\b\u0010P\u001a\u0004\u0018\u00010\u0015H\u0017¢\u0006\u0004\bW\u0010YJ)\u0010\\\u001a\u00020\u00172\u0006\u0010M\u001a\u00020\u00122\u0006\u0010Z\u001a\u00020\u00122\b\u0010[\u001a\u0004\u0018\u00010KH\u0015¢\u0006\u0004\b\\\u0010]J-\u0010c\u001a\u00020\u00172\u0006\u0010M\u001a\u00020\u00122\f\u0010`\u001a\b\u0012\u0004\u0012\u00020_0^2\u0006\u0010b\u001a\u00020aH\u0017¢\u0006\u0004\bc\u0010dJI\u0010n\u001a\b\u0012\u0004\u0012\u00028\u00000m\"\u0004\b\u0000\u0010e\"\u0004\b\u0001\u0010f2\u0012\u0010h\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010g2\u0006\u0010j\u001a\u00020i2\f\u0010l\u001a\b\u0012\u0004\u0012\u00028\u00010k¢\u0006\u0004\bn\u0010oJA\u0010n\u001a\b\u0012\u0004\u0012\u00028\u00000m\"\u0004\b\u0000\u0010e\"\u0004\b\u0001\u0010f2\u0012\u0010h\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010g2\f\u0010l\u001a\b\u0012\u0004\u0012\u00028\u00010k¢\u0006\u0004\bn\u0010pJ\u0017\u0010s\u001a\u00020\u00172\u0006\u0010r\u001a\u00020qH\u0017¢\u0006\u0004\bs\u0010tJ\u001b\u0010v\u001a\u00020\u00172\f\u0010-\u001a\b\u0012\u0004\u0012\u00020q0u¢\u0006\u0004\bv\u0010wJ\u001b\u0010x\u001a\u00020\u00172\f\u0010-\u001a\b\u0012\u0004\u0012\u00020q0u¢\u0006\u0004\bx\u0010wJ\u0017\u0010z\u001a\u00020\u00172\u0006\u0010y\u001a\u00020\u0012H\u0017¢\u0006\u0004\bz\u0010\u0014J\u001b\u0010{\u001a\u00020\u00172\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00120u¢\u0006\u0004\b{\u0010wJ\u001b\u0010|\u001a\u00020\u00172\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00120u¢\u0006\u0004\b|\u0010wJ\u0017\u0010}\u001a\u00020\u00172\u0006\u0010L\u001a\u00020KH\u0015¢\u0006\u0004\b}\u0010~J\u001b\u0010\u007f\u001a\u00020\u00172\f\u0010-\u001a\b\u0012\u0004\u0012\u00020K0u¢\u0006\u0004\b\u007f\u0010wJ\u001d\u0010\u0080\u0001\u001a\u00020\u00172\f\u0010-\u001a\b\u0012\u0004\u0012\u00020K0u¢\u0006\u0005\b\u0080\u0001\u0010wJ\u001b\u0010\u0082\u0001\u001a\u00020\u00172\u0007\u0010\u0081\u0001\u001a\u000204H\u0017¢\u0006\u0006\b\u0082\u0001\u0010\u0083\u0001J#\u0010\u0082\u0001\u001a\u00020\u00172\u0007\u0010\u0081\u0001\u001a\u0002042\u0006\u0010r\u001a\u00020qH\u0017¢\u0006\u0006\b\u0082\u0001\u0010\u0084\u0001J\u001e\u0010\u0086\u0001\u001a\u00020\u00172\r\u0010-\u001a\t\u0012\u0005\u0012\u00030\u0085\u00010u¢\u0006\u0005\b\u0086\u0001\u0010wJ\u001e\u0010\u0087\u0001\u001a\u00020\u00172\r\u0010-\u001a\t\u0012\u0005\u0012\u00030\u0085\u00010u¢\u0006\u0005\b\u0087\u0001\u0010wJ\u001b\u0010\u0089\u0001\u001a\u00020\u00172\u0007\u0010\u0088\u0001\u001a\u000204H\u0017¢\u0006\u0006\b\u0089\u0001\u0010\u0083\u0001J#\u0010\u0089\u0001\u001a\u00020\u00172\u0007\u0010\u0088\u0001\u001a\u0002042\u0006\u0010r\u001a\u00020qH\u0017¢\u0006\u0006\b\u0089\u0001\u0010\u0084\u0001J\u001e\u0010\u008b\u0001\u001a\u00020\u00172\r\u0010-\u001a\t\u0012\u0005\u0012\u00030\u008a\u00010u¢\u0006\u0005\b\u008b\u0001\u0010wJ\u001e\u0010\u008c\u0001\u001a\u00020\u00172\r\u0010-\u001a\t\u0012\u0005\u0012\u00030\u008a\u00010u¢\u0006\u0005\b\u008c\u0001\u0010wJ\u0011\u0010\u008d\u0001\u001a\u00020\u0017H\u0015¢\u0006\u0005\b\u008d\u0001\u0010\u0011J\u0019\u0010\u008f\u0001\u001a\u00020\u00172\u0007\u0010-\u001a\u00030\u008e\u0001¢\u0006\u0006\b\u008f\u0001\u0010\u0090\u0001J\u0019\u0010\u0091\u0001\u001a\u00020\u00172\u0007\u0010-\u001a\u00030\u008e\u0001¢\u0006\u0006\b\u0091\u0001\u0010\u0090\u0001J\u0011\u0010\u0092\u0001\u001a\u00020\u0017H\u0016¢\u0006\u0005\b\u0092\u0001\u0010\u0011J\u0011\u0010\u0093\u0001\u001a\u00020\u0017H\u0002¢\u0006\u0005\b\u0093\u0001\u0010\u0011J\u001c\u0010\u0096\u0001\u001a\u00020\u00172\b\u0010\u0095\u0001\u001a\u00030\u0094\u0001H\u0003¢\u0006\u0006\b\u0096\u0001\u0010\u0097\u0001J\u0013\u0010\u0099\u0001\u001a\u00030\u0098\u0001H\u0002¢\u0006\u0006\b\u0099\u0001\u0010\u009a\u0001R\u0018\u0010\u009c\u0001\u001a\u00030\u009b\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u009d\u0001R\u0018\u0010\u009f\u0001\u001a\u00030\u009e\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u009f\u0001\u0010 \u0001R\u001f\u0010¢\u0001\u001a\u00030¡\u00018\u0002X\u0082\u0004¢\u0006\u000f\n\u0006\b¢\u0001\u0010£\u0001\u0012\u0005\b¤\u0001\u0010\u0011R\u001c\u0010¦\u0001\u001a\u0005\u0018\u00010¥\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¦\u0001\u0010§\u0001R\u0018\u0010¨\u0001\u001a\u00030\u0098\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¨\u0001\u0010©\u0001R!\u0010¯\u0001\u001a\u00030ª\u00018VX\u0096\u0084\u0002¢\u0006\u0010\n\u0006\b«\u0001\u0010¬\u0001\u001a\u0006\b\u00ad\u0001\u0010®\u0001R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010eR\u0018\u0010±\u0001\u001a\u00030°\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b±\u0001\u0010²\u0001R\u001c\u0010³\u0001\u001a\u00020i8\u0006¢\u0006\u0010\n\u0006\b³\u0001\u0010´\u0001\u001a\u0006\bµ\u0001\u0010¶\u0001R$\u0010¸\u0001\u001a\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020q0u0·\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¸\u0001\u0010¹\u0001R$\u0010º\u0001\u001a\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120u0·\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bº\u0001\u0010¹\u0001R$\u0010»\u0001\u001a\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020K0u0·\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b»\u0001\u0010¹\u0001R%\u0010¼\u0001\u001a\u0010\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0085\u00010u0·\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¼\u0001\u0010¹\u0001R%\u0010½\u0001\u001a\u0010\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u008a\u00010u0·\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b½\u0001\u0010¹\u0001R\u001f\u0010¾\u0001\u001a\n\u0012\u0005\u0012\u00030\u008e\u00010·\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¾\u0001\u0010¹\u0001R\u0019\u0010¿\u0001\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¿\u0001\u0010À\u0001R\u0019\u0010Á\u0001\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÁ\u0001\u0010À\u0001R!\u0010Æ\u0001\u001a\u00030Â\u00018VX\u0096\u0084\u0002¢\u0006\u0010\n\u0006\bÃ\u0001\u0010¬\u0001\u001a\u0006\bÄ\u0001\u0010Å\u0001R(\u0010Ë\u0001\u001a\u00030\u0094\u00018FX\u0086\u0084\u0002¢\u0006\u0017\n\u0006\bÇ\u0001\u0010¬\u0001\u0012\u0005\bÊ\u0001\u0010\u0011\u001a\u0006\bÈ\u0001\u0010É\u0001R\u0018\u0010Í\u0001\u001a\u0004\u0018\u00010\t8WX\u0096\u0004¢\u0006\u0007\u001a\u0005\bÌ\u0001\u0010\u001dR\u0018\u0010Ñ\u0001\u001a\u00030Î\u00018VX\u0096\u0004¢\u0006\b\u001a\u0006\bÏ\u0001\u0010Ð\u0001R\u0018\u0010Ô\u0001\u001a\u00030¥\u00018VX\u0096\u0004¢\u0006\b\u001a\u0006\bÒ\u0001\u0010Ó\u0001R\u0018\u0010Ø\u0001\u001a\u00030Õ\u00018WX\u0096\u0004¢\u0006\b\u001a\u0006\bÖ\u0001\u0010×\u0001R\u0015\u0010Ü\u0001\u001a\u00030Ù\u00018F¢\u0006\b\u001a\u0006\bÚ\u0001\u0010Û\u0001¨\u0006ã\u0001"}, d2 = {"Landroidx/activity/ComponentActivity;", "Landroidx/core/app/ComponentActivity;", "Landroidx/activity/contextaware/a;", "Landroidx/lifecycle/u;", "Landroidx/lifecycle/y0;", "Landroidx/lifecycle/m;", "Landroidx/savedstate/e;", "Landroidx/activity/x;", "Landroidx/activity/result/d;", "", "Landroidx/core/content/d;", "Landroidx/core/content/e;", "Landroidx/core/app/u;", "Landroidx/core/app/v;", "Landroidx/core/view/MenuHost;", "Landroidx/activity/t;", "<init>", "()V", "", "contentLayoutId", "(I)V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "outState", "onSaveInstanceState", "onRetainNonConfigurationInstance", "()Ljava/lang/Object;", "onRetainCustomNonConfigurationInstance", "layoutResID", "setContentView", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "(Landroid/view/View;)V", "Landroid/view/ViewGroup$LayoutParams;", "params", "(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V", "addContentView", "initializeViewTreeOwners", "Landroid/content/Context;", "peekAvailableContext", "()Landroid/content/Context;", "Landroidx/activity/contextaware/d;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "addOnContextAvailableListener", "(Landroidx/activity/contextaware/d;)V", "removeOnContextAvailableListener", "featureId", "Landroid/view/Menu;", "menu", "", "onPreparePanel", "(ILandroid/view/View;Landroid/view/Menu;)Z", "onCreatePanelMenu", "(ILandroid/view/Menu;)Z", "Landroid/view/MenuItem;", WebConstants.FIELD_ITEM, "onMenuItemSelected", "(ILandroid/view/MenuItem;)Z", "onPanelClosed", "(ILandroid/view/Menu;)V", "Landroidx/core/view/MenuProvider;", "provider", "addMenuProvider", "(Landroidx/core/view/MenuProvider;)V", "owner", "(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/u;)V", "Landroidx/lifecycle/Lifecycle$State;", "state", "(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$State;)V", "removeMenuProvider", "invalidateMenu", "onBackPressed", "Landroid/content/Intent;", "intent", "requestCode", "startActivityForResult", "(Landroid/content/Intent;I)V", "options", "(Landroid/content/Intent;ILandroid/os/Bundle;)V", "Landroid/content/IntentSender;", "fillInIntent", "flagsMask", "flagsValues", "extraFlags", "startIntentSenderForResult", "(Landroid/content/IntentSender;ILandroid/content/Intent;III)V", "(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V", "resultCode", "data", "onActivityResult", "(IILandroid/content/Intent;)V", "", "", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "I", "O", "Lf/a;", "contract", "Landroidx/activity/result/ActivityResultRegistry;", "registry", "Landroidx/activity/result/a;", "callback", "Landroidx/activity/result/b;", "registerForActivityResult", "(Lf/a;Landroidx/activity/result/ActivityResultRegistry;Landroidx/activity/result/a;)Landroidx/activity/result/b;", "(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "Landroidx/core/util/a;", "addOnConfigurationChangedListener", "(Landroidx/core/util/a;)V", "removeOnConfigurationChangedListener", PermissionConstant.level, "onTrimMemory", "addOnTrimMemoryListener", "removeOnTrimMemoryListener", "onNewIntent", "(Landroid/content/Intent;)V", "addOnNewIntentListener", "removeOnNewIntentListener", "isInMultiWindowMode", "onMultiWindowModeChanged", "(Z)V", "(ZLandroid/content/res/Configuration;)V", "Landroidx/core/app/m;", "addOnMultiWindowModeChangedListener", "removeOnMultiWindowModeChangedListener", "isInPictureInPictureMode", "onPictureInPictureModeChanged", "Landroidx/core/app/x;", "addOnPictureInPictureModeChangedListener", "removeOnPictureInPictureModeChangedListener", "onUserLeaveHint", "Ljava/lang/Runnable;", "addOnUserLeaveHintListener", "(Ljava/lang/Runnable;)V", "removeOnUserLeaveHintListener", "reportFullyDrawn", "z", "Landroidx/activity/OnBackPressedDispatcher;", "dispatcher", "w", "(Landroidx/activity/OnBackPressedDispatcher;)V", "Landroidx/activity/ComponentActivity$e;", "y", "()Landroidx/activity/ComponentActivity$e;", "Landroidx/activity/contextaware/b;", "contextAwareHelper", "Landroidx/activity/contextaware/b;", "Landroidx/core/view/MenuHostHelper;", "menuHostHelper", "Landroidx/core/view/MenuHostHelper;", "Landroidx/savedstate/d;", "savedStateRegistryController", "Landroidx/savedstate/d;", "getSavedStateRegistryController$annotations", "Landroidx/lifecycle/x0;", "_viewModelStore", "Landroidx/lifecycle/x0;", "reportFullyDrawnExecutor", "Landroidx/activity/ComponentActivity$e;", "Landroidx/activity/s;", "fullyDrawnReporter$delegate", "Lkotlin/Lazy;", "getFullyDrawnReporter", "()Landroidx/activity/s;", "fullyDrawnReporter", "Ljava/util/concurrent/atomic/AtomicInteger;", "nextLocalRequestCode", "Ljava/util/concurrent/atomic/AtomicInteger;", "activityResultRegistry", "Landroidx/activity/result/ActivityResultRegistry;", "getActivityResultRegistry", "()Landroidx/activity/result/ActivityResultRegistry;", "Ljava/util/concurrent/CopyOnWriteArrayList;", "onConfigurationChangedListeners", "Ljava/util/concurrent/CopyOnWriteArrayList;", "onTrimMemoryListeners", "onNewIntentListeners", "onMultiWindowModeChangedListeners", "onPictureInPictureModeChangedListeners", "onUserLeaveHintListeners", "dispatchingOnMultiWindowModeChanged", "Z", "dispatchingOnPictureInPictureModeChanged", "Landroidx/lifecycle/v0$c;", "defaultViewModelProviderFactory$delegate", "getDefaultViewModelProviderFactory", "()Landroidx/lifecycle/v0$c;", "defaultViewModelProviderFactory", "onBackPressedDispatcher$delegate", "getOnBackPressedDispatcher", "()Landroidx/activity/OnBackPressedDispatcher;", "getOnBackPressedDispatcher$annotations", "onBackPressedDispatcher", "getLastCustomNonConfigurationInstance", "lastCustomNonConfigurationInstance", "Landroidx/lifecycle/Lifecycle;", "getLifecycle", "()Landroidx/lifecycle/Lifecycle;", RequestParameters.SUBRESOURCE_LIFECYCLE, "getViewModelStore", "()Landroidx/lifecycle/x0;", "viewModelStore", "Lp1/a;", "getDefaultViewModelCreationExtras", "()Lp1/a;", "defaultViewModelCreationExtras", "Landroidx/savedstate/c;", "getSavedStateRegistry", "()Landroidx/savedstate/c;", "savedStateRegistry", "Companion", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", "ReportFullyDrawnExecutorImpl", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class ComponentActivity extends androidx.core.app.ComponentActivity implements androidx.activity.contextaware.a, androidx.p009lifecycle.u, y0, androidx.p009lifecycle.m, androidx.p010savedstate.e, x, androidx.activity.result.d, androidx.core.content.d, androidx.core.content.e, androidx.core.app.u, androidx.core.app.v, MenuHost, t {
    private static final String ACTIVITY_RESULT_TAG = "android:support:activity-result";
    private static final c Companion = new c(null);
    private x0 _viewModelStore;
    private final ActivityResultRegistry activityResultRegistry;
    private int contentLayoutId;
    private final androidx.activity.contextaware.b contextAwareHelper;

    private final Lazy defaultViewModelProviderFactory;
    private boolean dispatchingOnMultiWindowModeChanged;
    private boolean dispatchingOnPictureInPictureModeChanged;

    private final Lazy fullyDrawnReporter;
    private final MenuHostHelper menuHostHelper;
    private final AtomicInteger nextLocalRequestCode;

    private final Lazy onBackPressedDispatcher;
    private final CopyOnWriteArrayList<androidx.core.util.a> onConfigurationChangedListeners;
    private final CopyOnWriteArrayList<androidx.core.util.a> onMultiWindowModeChangedListeners;
    private final CopyOnWriteArrayList<androidx.core.util.a> onNewIntentListeners;
    private final CopyOnWriteArrayList<androidx.core.util.a> onPictureInPictureModeChangedListeners;
    private final CopyOnWriteArrayList<androidx.core.util.a> onTrimMemoryListeners;
    private final CopyOnWriteArrayList<Runnable> onUserLeaveHintListeners;
    private final e reportFullyDrawnExecutor;
    private final androidx.p010savedstate.d savedStateRegistryController;

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0082\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0010\u0010\fJ\u000f\u0010\u0011\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0011\u0010\fR\u0017\u0010\u0013\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R$\u0010\u0017\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u000fR\"\u0010\u001d\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006#"}, d2 = {"Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorImpl;", "Landroidx/activity/ComponentActivity$e;", "Landroid/view/ViewTreeObserver$OnDrawListener;", "Ljava/lang/Runnable;", "<init>", "(Landroidx/activity/ComponentActivity;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "viewCreated", "(Landroid/view/View;)V", "activityDestroyed", "()V", "runnable", "execute", "(Ljava/lang/Runnable;)V", "onDraw", "run", "", "endWatchTimeMillis", "J", "getEndWatchTimeMillis", "()J", "currentRunnable", "Ljava/lang/Runnable;", "getCurrentRunnable", "()Ljava/lang/Runnable;", "setCurrentRunnable", "", "onDrawScheduled", "Z", "getOnDrawScheduled", "()Z", "setOnDrawScheduled", "(Z)V", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    final class ReportFullyDrawnExecutorImpl implements e, ViewTreeObserver.OnDrawListener, Runnable {
        private Runnable currentRunnable;
        private final long endWatchTimeMillis = SystemClock.uptimeMillis() + ((long) 10000);
        private boolean onDrawScheduled;

        public ReportFullyDrawnExecutorImpl() {
        }

        public static final void execute$lambda$0(ReportFullyDrawnExecutorImpl reportFullyDrawnExecutorImpl) {
            Runnable runnable = reportFullyDrawnExecutorImpl.currentRunnable;
            if (runnable != null) {
                Intrinsics.e(runnable);
                runnable.run();
                reportFullyDrawnExecutorImpl.currentRunnable = null;
            }
        }

        @Override
        public void activityDestroyed() {
            ComponentActivity.this.getWindow().getDecorView().removeCallbacks(this);
            ComponentActivity.this.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(this);
        }

        @Override
        public void execute(Runnable runnable) {
            Intrinsics.h(runnable, "runnable");
            this.currentRunnable = runnable;
            View decorView = ComponentActivity.this.getWindow().getDecorView();
            Intrinsics.g(decorView, "window.decorView");
            if (!this.onDrawScheduled) {
                decorView.postOnAnimation(new Runnable() {
                    @Override
                    public final void run() {
                        ComponentActivity.ReportFullyDrawnExecutorImpl.execute$lambda$0(this.f574a);
                    }
                });
            } else if (Intrinsics.c(Looper.myLooper(), Looper.getMainLooper())) {
                decorView.invalidate();
            } else {
                decorView.postInvalidate();
            }
        }

        public final Runnable getCurrentRunnable() {
            return this.currentRunnable;
        }

        public final long getEndWatchTimeMillis() {
            return this.endWatchTimeMillis;
        }

        public final boolean getOnDrawScheduled() {
            return this.onDrawScheduled;
        }

        @Override
        public void onDraw() {
            Runnable runnable = this.currentRunnable;
            if (runnable == null) {
                if (SystemClock.uptimeMillis() > this.endWatchTimeMillis) {
                    this.onDrawScheduled = false;
                    ComponentActivity.this.getWindow().getDecorView().post(this);
                    return;
                }
                return;
            }
            runnable.run();
            this.currentRunnable = null;
            if (ComponentActivity.this.getFullyDrawnReporter().c()) {
                this.onDrawScheduled = false;
                ComponentActivity.this.getWindow().getDecorView().post(this);
            }
        }

        @Override
        public void run() {
            ComponentActivity.this.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(this);
        }

        public final void setCurrentRunnable(Runnable runnable) {
            this.currentRunnable = runnable;
        }

        public final void setOnDrawScheduled(boolean z10) {
            this.onDrawScheduled = z10;
        }

        @Override
        public void viewCreated(View view) {
            Intrinsics.h(view, "view");
            if (this.onDrawScheduled) {
                return;
            }
            this.onDrawScheduled = true;
            view.getViewTreeObserver().addOnDrawListener(this);
        }
    }

    public static final class a implements androidx.p009lifecycle.r {
        a() {
        }

        @Override
        public void onStateChanged(androidx.p009lifecycle.u source, Lifecycle.Event event) {
            Intrinsics.h(source, "source");
            Intrinsics.h(event, "event");
            ComponentActivity.this.z();
            ComponentActivity.this.getLifecycle().d(this);
        }
    }

    private static final class b {

        public static final b f528a = new b();

        private b() {
        }

        public final OnBackInvokedDispatcher a(Activity activity) {
            Intrinsics.h(activity, "activity");
            OnBackInvokedDispatcher onBackInvokedDispatcher = activity.getOnBackInvokedDispatcher();
            Intrinsics.g(onBackInvokedDispatcher, "activity.getOnBackInvokedDispatcher()");
            return onBackInvokedDispatcher;
        }
    }

    private static final class c {
        public c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private c() {
        }
    }

    public static final class d {

        private Object f529a;

        private x0 f530b;

        public final Object a() {
            return this.f529a;
        }

        public final x0 b() {
            return this.f530b;
        }

        public final void c(Object obj) {
            this.f529a = obj;
        }

        public final void d(x0 x0Var) {
            this.f530b = x0Var;
        }
    }

    interface e extends Executor {
        void activityDestroyed();

        void viewCreated(View view);
    }

    public static final class f extends ActivityResultRegistry {
        f() {
        }

        public static final void s(f fVar, int i10, f.a.C0728a c0728a) {
            fVar.f(i10, c0728a.a());
        }

        public static final void t(f fVar, int i10, IntentSender.SendIntentException sendIntentException) {
            fVar.e(i10, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", sendIntentException));
        }

        @Override
        public void i(final int i10, f.a contract, Object obj, androidx.core.app.c cVar) {
            Bundle bundleC;
            Intrinsics.h(contract, "contract");
            ComponentActivity componentActivity = ComponentActivity.this;
            final f.a.C0728a c0728aB = contract.b(componentActivity, obj);
            if (c0728aB != null) {
                new Handler(Looper.getMainLooper()).post(new Runnable() {
                    @Override
                    public final void run() {
                        ComponentActivity.f.s(this.f575a, i10, c0728aB);
                    }
                });
                return;
            }
            Intent intentA = contract.a(componentActivity, obj);
            if (intentA.getExtras() != null) {
                Bundle extras = intentA.getExtras();
                Intrinsics.e(extras);
                if (extras.getClassLoader() == null) {
                    intentA.setExtrasClassLoader(componentActivity.getClassLoader());
                }
            }
            if (intentA.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
                Bundle bundleExtra = intentA.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                intentA.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                bundleC = bundleExtra;
            } else {
                bundleC = cVar != null ? cVar.c() : null;
            }
            if (Intrinsics.c("androidx.activity.result.contract.action.REQUEST_PERMISSIONS", intentA.getAction())) {
                String[] stringArrayExtra = intentA.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                if (stringArrayExtra == null) {
                    stringArrayExtra = new String[0];
                }
                ActivityCompat.g(componentActivity, stringArrayExtra, i10);
                return;
            }
            if (!Intrinsics.c("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST", intentA.getAction())) {
                ActivityCompat.k(componentActivity, intentA, i10, bundleC);
                return;
            }
            IntentSenderRequest intentSenderRequest = (IntentSenderRequest) intentA.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
            try {
                Intrinsics.e(intentSenderRequest);
                ActivityCompat.l(componentActivity, intentSenderRequest.getIntentSender(), i10, intentSenderRequest.getFillInIntent(), intentSenderRequest.getFlagsMask(), intentSenderRequest.getFlagsValues(), 0, bundleC);
            } catch (IntentSender.SendIntentException e10) {
                new Handler(Looper.getMainLooper()).post(new Runnable() {
                    @Override
                    public final void run() {
                        ComponentActivity.f.t(this.f578a, i10, e10);
                    }
                });
            }
        }
    }

    public ComponentActivity() {
        this.contextAwareHelper = new androidx.activity.contextaware.b();
        this.menuHostHelper = new MenuHostHelper(new Runnable() {
            @Override
            public final void run() {
                ComponentActivity.A(this.f567a);
            }
        });
        androidx.p010savedstate.d dVarA = androidx.p010savedstate.d.f14505d.a(this);
        this.savedStateRegistryController = dVarA;
        this.reportFullyDrawnExecutor = y();
        this.fullyDrawnReporter = LazyKt.b(new Function0<s>() {
            {
                super(0);
            }

            @Override
            public final s invoke() {
                ComponentActivity.e eVar = this.this$0.reportFullyDrawnExecutor;
                final ComponentActivity componentActivity = this.this$0;
                return new s(eVar, new Function0<Unit>() {
                    {
                        super(0);
                    }

                    @Override
                    public Object invoke() {
                        m0invoke();
                        return Unit.f64096a;
                    }

                    public final void m0invoke() {
                        componentActivity.reportFullyDrawn();
                    }
                });
            }
        });
        this.nextLocalRequestCode = new AtomicInteger();
        this.activityResultRegistry = new f();
        this.onConfigurationChangedListeners = new CopyOnWriteArrayList<>();
        this.onTrimMemoryListeners = new CopyOnWriteArrayList<>();
        this.onNewIntentListeners = new CopyOnWriteArrayList<>();
        this.onMultiWindowModeChangedListeners = new CopyOnWriteArrayList<>();
        this.onPictureInPictureModeChangedListeners = new CopyOnWriteArrayList<>();
        this.onUserLeaveHintListeners = new CopyOnWriteArrayList<>();
        if (getLifecycle() == null) {
            throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
        }
        getLifecycle().a(new androidx.p009lifecycle.r() {
            @Override
            public final void onStateChanged(androidx.p009lifecycle.u uVar, Lifecycle.Event event) {
                ComponentActivity.s(this.f568a, uVar, event);
            }
        });
        getLifecycle().a(new androidx.p009lifecycle.r() {
            @Override
            public final void onStateChanged(androidx.p009lifecycle.u uVar, Lifecycle.Event event) {
                ComponentActivity.t(this.f569a, uVar, event);
            }
        });
        getLifecycle().a(new a());
        dVarA.c();
        o0.c(this);
        if (Build.VERSION.SDK_INT <= 23) {
            getLifecycle().a(new ImmLeaksCleaner(this));
        }
        getSavedStateRegistry().h(ACTIVITY_RESULT_TAG, new androidx.p010savedstate.c.InterfaceC0116c() {
            @Override
            public final Bundle saveState() {
                return ComponentActivity.u(this.f570a);
            }
        });
        addOnContextAvailableListener(new androidx.activity.contextaware.d() {
            @Override
            public final void a(Context context) {
                ComponentActivity.v(this.f571a, context);
            }
        });
        this.defaultViewModelProviderFactory = LazyKt.b(new Function0<q0>() {
            {
                super(0);
            }

            @Override
            public final q0 invoke() {
                Application application = this.this$0.getApplication();
                ComponentActivity componentActivity = this.this$0;
                return new q0(application, componentActivity, componentActivity.getIntent() != null ? this.this$0.getIntent().getExtras() : null);
            }
        });
        this.onBackPressedDispatcher = LazyKt.b(new ComponentActivity$onBackPressedDispatcher$2(this));
    }

    public static final void A(ComponentActivity componentActivity) {
        componentActivity.invalidateMenu();
    }

    public static void getOnBackPressedDispatcher$annotations() {
    }

    public static final void s(ComponentActivity componentActivity, androidx.p009lifecycle.u uVar, Lifecycle.Event event) {
        Window window;
        View viewPeekDecorView;
        Intrinsics.h(uVar, "<anonymous parameter 0>");
        Intrinsics.h(event, "event");
        if (event != Lifecycle.Event.ON_STOP || (window = componentActivity.getWindow()) == null || (viewPeekDecorView = window.peekDecorView()) == null) {
            return;
        }
        viewPeekDecorView.cancelPendingInputEvents();
    }

    public static final void t(ComponentActivity componentActivity, androidx.p009lifecycle.u uVar, Lifecycle.Event event) {
        Intrinsics.h(uVar, "<anonymous parameter 0>");
        Intrinsics.h(event, "event");
        if (event == Lifecycle.Event.ON_DESTROY) {
            componentActivity.contextAwareHelper.b();
            if (!componentActivity.isChangingConfigurations()) {
                componentActivity.getViewModelStore().a();
            }
            componentActivity.reportFullyDrawnExecutor.activityDestroyed();
        }
    }

    public static final Bundle u(ComponentActivity componentActivity) {
        Bundle bundle = new Bundle();
        componentActivity.activityResultRegistry.k(bundle);
        return bundle;
    }

    public static final void v(ComponentActivity componentActivity, Context it) {
        Intrinsics.h(it, "it");
        Bundle bundleB = componentActivity.getSavedStateRegistry().b(ACTIVITY_RESULT_TAG);
        if (bundleB != null) {
            componentActivity.activityResultRegistry.j(bundleB);
        }
    }

    public final void w(final OnBackPressedDispatcher dispatcher) {
        getLifecycle().a(new androidx.p009lifecycle.r() {
            @Override
            public final void onStateChanged(androidx.p009lifecycle.u uVar, Lifecycle.Event event) {
                ComponentActivity.x(dispatcher, this, uVar, event);
            }
        });
    }

    public static final void x(OnBackPressedDispatcher onBackPressedDispatcher, ComponentActivity componentActivity, androidx.p009lifecycle.u uVar, Lifecycle.Event event) {
        Intrinsics.h(uVar, "<anonymous parameter 0>");
        Intrinsics.h(event, "event");
        if (event == Lifecycle.Event.ON_CREATE) {
            onBackPressedDispatcher.o(b.f528a.a(componentActivity));
        }
    }

    private final e y() {
        return new ReportFullyDrawnExecutorImpl();
    }

    public final void z() {
        if (this._viewModelStore == null) {
            d dVar = (d) getLastNonConfigurationInstance();
            if (dVar != null) {
                this._viewModelStore = dVar.b();
            }
            if (this._viewModelStore == null) {
                this._viewModelStore = new x0();
            }
        }
    }

    @Override
    public void addContentView(View view, ViewGroup.LayoutParams params) {
        initializeViewTreeOwners();
        e eVar = this.reportFullyDrawnExecutor;
        View decorView = getWindow().getDecorView();
        Intrinsics.g(decorView, "window.decorView");
        eVar.viewCreated(decorView);
        super.addContentView(view, params);
    }

    @Override
    public void addMenuProvider(MenuProvider provider) {
        Intrinsics.h(provider, "provider");
        this.menuHostHelper.addMenuProvider(provider);
    }

    @Override
    public final void addOnConfigurationChangedListener(androidx.core.util.a listener) {
        Intrinsics.h(listener, "listener");
        this.onConfigurationChangedListeners.add(listener);
    }

    public final void addOnContextAvailableListener(androidx.activity.contextaware.d listener) {
        Intrinsics.h(listener, "listener");
        this.contextAwareHelper.a(listener);
    }

    @Override
    public final void addOnMultiWindowModeChangedListener(androidx.core.util.a listener) {
        Intrinsics.h(listener, "listener");
        this.onMultiWindowModeChangedListeners.add(listener);
    }

    public final void addOnNewIntentListener(androidx.core.util.a listener) {
        Intrinsics.h(listener, "listener");
        this.onNewIntentListeners.add(listener);
    }

    @Override
    public final void addOnPictureInPictureModeChangedListener(androidx.core.util.a listener) {
        Intrinsics.h(listener, "listener");
        this.onPictureInPictureModeChangedListeners.add(listener);
    }

    @Override
    public final void addOnTrimMemoryListener(androidx.core.util.a listener) {
        Intrinsics.h(listener, "listener");
        this.onTrimMemoryListeners.add(listener);
    }

    public final void addOnUserLeaveHintListener(Runnable listener) {
        Intrinsics.h(listener, "listener");
        this.onUserLeaveHintListeners.add(listener);
    }

    @Override
    public final ActivityResultRegistry getActivityResultRegistry() {
        return this.activityResultRegistry;
    }

    @Override
    public p1.a getDefaultViewModelCreationExtras() {
        p1.b bVar = new p1.b(null, 1, null);
        if (getApplication() != null) {
            p1.a.b bVar2 = v0.a.f9342g;
            Application application = getApplication();
            Intrinsics.g(application, "application");
            bVar.c(bVar2, application);
        }
        bVar.c(o0.f9319a, this);
        bVar.c(o0.f9320b, this);
        Intent intent = getIntent();
        Bundle extras = intent != null ? intent.getExtras() : null;
        if (extras != null) {
            bVar.c(o0.f9321c, extras);
        }
        return bVar;
    }

    @Override
    public v0.c getDefaultViewModelProviderFactory() {
        return (v0.c) this.defaultViewModelProviderFactory.getValue();
    }

    public s getFullyDrawnReporter() {
        return (s) this.fullyDrawnReporter.getValue();
    }

    @Deprecated
    public Object getLastCustomNonConfigurationInstance() {
        d dVar = (d) getLastNonConfigurationInstance();
        if (dVar != null) {
            return dVar.a();
        }
        return null;
    }

    @Override
    public Lifecycle getLifecycle() {
        return super.getLifecycle();
    }

    @Override
    public final OnBackPressedDispatcher getOnBackPressedDispatcher() {
        return (OnBackPressedDispatcher) this.onBackPressedDispatcher.getValue();
    }

    @Override
    public final androidx.p010savedstate.c getSavedStateRegistry() {
        return this.savedStateRegistryController.b();
    }

    @Override
    public x0 getViewModelStore() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        z();
        x0 x0Var = this._viewModelStore;
        Intrinsics.e(x0Var);
        return x0Var;
    }

    public void initializeViewTreeOwners() {
        View decorView = getWindow().getDecorView();
        Intrinsics.g(decorView, "window.decorView");
        ViewTreeLifecycleOwner.b(decorView, this);
        View decorView2 = getWindow().getDecorView();
        Intrinsics.g(decorView2, "window.decorView");
        ViewTreeViewModelStoreOwner.b(decorView2, this);
        View decorView3 = getWindow().getDecorView();
        Intrinsics.g(decorView3, "window.decorView");
        ViewTreeSavedStateRegistryOwner.b(decorView3, this);
        View decorView4 = getWindow().getDecorView();
        Intrinsics.g(decorView4, "window.decorView");
        z.a(decorView4, this);
        View decorView5 = getWindow().getDecorView();
        Intrinsics.g(decorView5, "window.decorView");
        y.a(decorView5, this);
    }

    @Override
    public void invalidateMenu() {
        invalidateOptionsMenu();
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (this.activityResultRegistry.e(requestCode, resultCode, data)) {
            return;
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    @Override
    @Deprecated
    public void onBackPressed() {
        getOnBackPressedDispatcher().l();
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        Iterator<androidx.core.util.a> it = this.onConfigurationChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(newConfig);
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        this.savedStateRegistryController.d(savedInstanceState);
        this.contextAwareHelper.c(this);
        super.onCreate(savedInstanceState);
        i0.INSTANCE.c(this);
        int i10 = this.contentLayoutId;
        if (i10 != 0) {
            setContentView(i10);
        }
    }

    @Override
    public boolean onCreatePanelMenu(int featureId, Menu menu) {
        Intrinsics.h(menu, "menu");
        if (featureId != 0) {
            return true;
        }
        super.onCreatePanelMenu(featureId, menu);
        this.menuHostHelper.onCreateMenu(menu, getMenuInflater());
        return true;
    }

    @Override
    public boolean onMenuItemSelected(int featureId, MenuItem item) {
        Intrinsics.h(item, "item");
        if (super.onMenuItemSelected(featureId, item)) {
            return true;
        }
        if (featureId == 0) {
            return this.menuHostHelper.onMenuItemSelected(item);
        }
        return false;
    }

    @Override
    @Deprecated
    public void onMultiWindowModeChanged(boolean isInMultiWindowMode) {
        if (this.dispatchingOnMultiWindowModeChanged) {
            return;
        }
        Iterator<androidx.core.util.a> it = this.onMultiWindowModeChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(new androidx.core.app.m(isInMultiWindowMode));
        }
    }

    @Override
    protected void onNewIntent(Intent intent) {
        Intrinsics.h(intent, "intent");
        super.onNewIntent(intent);
        Iterator<androidx.core.util.a> it = this.onNewIntentListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(intent);
        }
    }

    @Override
    public void onPanelClosed(int featureId, Menu menu) {
        Intrinsics.h(menu, "menu");
        this.menuHostHelper.onMenuClosed(menu);
        super.onPanelClosed(featureId, menu);
    }

    @Override
    @Deprecated
    public void onPictureInPictureModeChanged(boolean isInPictureInPictureMode) {
        if (this.dispatchingOnPictureInPictureModeChanged) {
            return;
        }
        Iterator<androidx.core.util.a> it = this.onPictureInPictureModeChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(new androidx.core.app.x(isInPictureInPictureMode));
        }
    }

    @Override
    public boolean onPreparePanel(int featureId, View view, Menu menu) {
        Intrinsics.h(menu, "menu");
        if (featureId != 0) {
            return true;
        }
        super.onPreparePanel(featureId, view, menu);
        this.menuHostHelper.onPrepareMenu(menu);
        return true;
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        Intrinsics.h(permissions, "permissions");
        Intrinsics.h(grantResults, "grantResults");
        if (this.activityResultRegistry.e(requestCode, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", permissions).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", grantResults))) {
            return;
        }
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
    }

    @Deprecated
    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    @Override
    public final Object onRetainNonConfigurationInstance() {
        d dVar;
        Object objOnRetainCustomNonConfigurationInstance = onRetainCustomNonConfigurationInstance();
        x0 x0VarB = this._viewModelStore;
        if (x0VarB == null && (dVar = (d) getLastNonConfigurationInstance()) != null) {
            x0VarB = dVar.b();
        }
        if (x0VarB == null && objOnRetainCustomNonConfigurationInstance == null) {
            return null;
        }
        d dVar2 = new d();
        dVar2.c(objOnRetainCustomNonConfigurationInstance);
        dVar2.d(x0VarB);
        return dVar2;
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        if (getLifecycle() instanceof androidx.p009lifecycle.w) {
            Lifecycle lifecycle = getLifecycle();
            Intrinsics.f(lifecycle, "null cannot be cast to non-null type androidx.lifecycle.LifecycleRegistry");
            ((androidx.p009lifecycle.w) lifecycle).n(Lifecycle.State.CREATED);
        }
        super.onSaveInstanceState(outState);
        this.savedStateRegistryController.e(outState);
    }

    @Override
    public void onTrimMemory(int level) {
        super.onTrimMemory(level);
        Iterator<androidx.core.util.a> it = this.onTrimMemoryListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(Integer.valueOf(level));
        }
    }

    @Override
    protected void onUserLeaveHint() {
        super.onUserLeaveHint();
        Iterator<Runnable> it = this.onUserLeaveHintListeners.iterator();
        while (it.hasNext()) {
            it.next().run();
        }
    }

    public Context peekAvailableContext() {
        return this.contextAwareHelper.d();
    }

    public final <I, O> androidx.activity.result.b registerForActivityResult(f.a contract, ActivityResultRegistry registry, androidx.activity.result.a callback) {
        Intrinsics.h(contract, "contract");
        Intrinsics.h(registry, "registry");
        Intrinsics.h(callback, "callback");
        return registry.l("activity_rq#" + this.nextLocalRequestCode.getAndIncrement(), this, contract, callback);
    }

    @Override
    public void removeMenuProvider(MenuProvider provider) {
        Intrinsics.h(provider, "provider");
        this.menuHostHelper.removeMenuProvider(provider);
    }

    @Override
    public final void removeOnConfigurationChangedListener(androidx.core.util.a listener) {
        Intrinsics.h(listener, "listener");
        this.onConfigurationChangedListeners.remove(listener);
    }

    @Override
    public final void removeOnContextAvailableListener(androidx.activity.contextaware.d listener) {
        Intrinsics.h(listener, "listener");
        this.contextAwareHelper.e(listener);
    }

    @Override
    public final void removeOnMultiWindowModeChangedListener(androidx.core.util.a listener) {
        Intrinsics.h(listener, "listener");
        this.onMultiWindowModeChangedListeners.remove(listener);
    }

    public final void removeOnNewIntentListener(androidx.core.util.a listener) {
        Intrinsics.h(listener, "listener");
        this.onNewIntentListeners.remove(listener);
    }

    @Override
    public final void removeOnPictureInPictureModeChangedListener(androidx.core.util.a listener) {
        Intrinsics.h(listener, "listener");
        this.onPictureInPictureModeChangedListeners.remove(listener);
    }

    @Override
    public final void removeOnTrimMemoryListener(androidx.core.util.a listener) {
        Intrinsics.h(listener, "listener");
        this.onTrimMemoryListeners.remove(listener);
    }

    public final void removeOnUserLeaveHintListener(Runnable listener) {
        Intrinsics.h(listener, "listener");
        this.onUserLeaveHintListeners.remove(listener);
    }

    @Override
    public void reportFullyDrawn() {
        try {
            if (e4.a.d()) {
                e4.a.a("reportFullyDrawn() for ComponentActivity");
            }
            super.reportFullyDrawn();
            getFullyDrawnReporter().b();
        } finally {
            e4.a.b();
        }
    }

    @Override
    public void setContentView(int layoutResID) {
        initializeViewTreeOwners();
        e eVar = this.reportFullyDrawnExecutor;
        View decorView = getWindow().getDecorView();
        Intrinsics.g(decorView, "window.decorView");
        eVar.viewCreated(decorView);
        super.setContentView(layoutResID);
    }

    @Override
    @Deprecated
    public void startActivityForResult(Intent intent, int requestCode) {
        Intrinsics.h(intent, "intent");
        super.startActivityForResult(intent, requestCode);
    }

    @Override
    @Deprecated
    public void startIntentSenderForResult(IntentSender intent, int requestCode, Intent fillInIntent, int flagsMask, int flagsValues, int extraFlags) throws IntentSender.SendIntentException {
        Intrinsics.h(intent, "intent");
        super.startIntentSenderForResult(intent, requestCode, fillInIntent, flagsMask, flagsValues, extraFlags);
    }

    @Override
    public void addMenuProvider(MenuProvider provider, androidx.p009lifecycle.u owner) {
        Intrinsics.h(provider, "provider");
        Intrinsics.h(owner, "owner");
        this.menuHostHelper.addMenuProvider(provider, owner);
    }

    @Override
    @Deprecated
    public void startActivityForResult(Intent intent, int requestCode, Bundle options) {
        Intrinsics.h(intent, "intent");
        super.startActivityForResult(intent, requestCode, options);
    }

    @Override
    @Deprecated
    public void startIntentSenderForResult(IntentSender intent, int requestCode, Intent fillInIntent, int flagsMask, int flagsValues, int extraFlags, Bundle options) throws IntentSender.SendIntentException {
        Intrinsics.h(intent, "intent");
        super.startIntentSenderForResult(intent, requestCode, fillInIntent, flagsMask, flagsValues, extraFlags, options);
    }

    @Override
    @SuppressLint({"LambdaLast"})
    public void addMenuProvider(MenuProvider provider, androidx.p009lifecycle.u owner, Lifecycle.State state) {
        Intrinsics.h(provider, "provider");
        Intrinsics.h(owner, "owner");
        Intrinsics.h(state, "state");
        this.menuHostHelper.addMenuProvider(provider, owner, state);
    }

    public final <I, O> androidx.activity.result.b registerForActivityResult(f.a contract, androidx.activity.result.a callback) {
        Intrinsics.h(contract, "contract");
        Intrinsics.h(callback, "callback");
        return registerForActivityResult(contract, this.activityResultRegistry, callback);
    }

    @Override
    public void onMultiWindowModeChanged(boolean isInMultiWindowMode, Configuration newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        this.dispatchingOnMultiWindowModeChanged = true;
        try {
            super.onMultiWindowModeChanged(isInMultiWindowMode, newConfig);
            this.dispatchingOnMultiWindowModeChanged = false;
            Iterator<androidx.core.util.a> it = this.onMultiWindowModeChangedListeners.iterator();
            while (it.hasNext()) {
                it.next().accept(new androidx.core.app.m(isInMultiWindowMode, newConfig));
            }
        } catch (Throwable th2) {
            this.dispatchingOnMultiWindowModeChanged = false;
            throw th2;
        }
    }

    @Override
    public void onPictureInPictureModeChanged(boolean isInPictureInPictureMode, Configuration newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        this.dispatchingOnPictureInPictureModeChanged = true;
        try {
            super.onPictureInPictureModeChanged(isInPictureInPictureMode, newConfig);
            this.dispatchingOnPictureInPictureModeChanged = false;
            Iterator<androidx.core.util.a> it = this.onPictureInPictureModeChangedListeners.iterator();
            while (it.hasNext()) {
                it.next().accept(new androidx.core.app.x(isInPictureInPictureMode, newConfig));
            }
        } catch (Throwable th2) {
            this.dispatchingOnPictureInPictureModeChanged = false;
            throw th2;
        }
    }

    @Override
    public void setContentView(View view) {
        initializeViewTreeOwners();
        e eVar = this.reportFullyDrawnExecutor;
        View decorView = getWindow().getDecorView();
        Intrinsics.g(decorView, "window.decorView");
        eVar.viewCreated(decorView);
        super.setContentView(view);
    }

    @Override
    public void setContentView(View view, ViewGroup.LayoutParams params) {
        initializeViewTreeOwners();
        e eVar = this.reportFullyDrawnExecutor;
        View decorView = getWindow().getDecorView();
        Intrinsics.g(decorView, "window.decorView");
        eVar.viewCreated(decorView);
        super.setContentView(view, params);
    }

    public ComponentActivity(int i10) {
        this();
        this.contentLayoutId = i10;
    }
}
