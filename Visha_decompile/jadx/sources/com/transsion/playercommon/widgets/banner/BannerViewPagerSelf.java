package com.transsion.playercommon.widgets.banner;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.Px;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p004lifecycle.Lifecycle;
import androidx.p004lifecycle.LifecycleObserver;
import androidx.p004lifecycle.OnLifecycleEvent;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.R;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.playercommon.widgets.banner.BannerViewPagerSelf;
import com.transsion.tools.fragments.SettingFragment;
import defpackage.gdc;
import defpackage.s70;
import defpackage.t70;
import defpackage.vq8;
import defpackage.w70;
import defpackage.y45;
import java.util.ArrayList;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000È\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\b\u0007\u0018\u0000 Í\u0001*\u0004\b\u0000\u0010\u00012\u00020\u00022\u00020\u0003:\u0004\u009e\u0001Î\u0001B'\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ'\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J'\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0013\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0018\u0010\u0016J'\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u000fH\u0002¢\u0006\u0004\b \u0010\u001fJ\u000f\u0010!\u001a\u00020\u000fH\u0002¢\u0006\u0004\b!\u0010\u001fJ\u001f\u0010$\u001a\u00020\u000f2\u000e\u0010#\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\"H\u0002¢\u0006\u0004\b$\u0010%J\u0017\u0010(\u001a\u00020\u000f2\u0006\u0010'\u001a\u00020&H\u0002¢\u0006\u0004\b(\u0010)J\u0017\u0010+\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020\bH\u0002¢\u0006\u0004\b+\u0010\u0016J\u000f\u0010,\u001a\u00020\u000fH\u0014¢\u0006\u0004\b,\u0010\u001fJ\u000f\u0010-\u001a\u00020\u000fH\u0014¢\u0006\u0004\b-\u0010\u001fJ\u0017\u00101\u001a\u0002002\u0006\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b1\u00102J\u0017\u00103\u001a\u0002002\u0006\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b3\u00102J\u0017\u00106\u001a\u00020\u000f2\u0006\u00105\u001a\u000204H\u0014¢\u0006\u0004\b6\u00107J\u000f\u00109\u001a\u000208H\u0014¢\u0006\u0004\b9\u0010:J\u0017\u0010;\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u000208H\u0014¢\u0006\u0004\b;\u0010<J\r\u0010=\u001a\u00020\u000f¢\u0006\u0004\b=\u0010\u001fJ\r\u0010>\u001a\u00020\u000f¢\u0006\u0004\b>\u0010\u001fJ\r\u0010?\u001a\u00020\u000f¢\u0006\u0004\b?\u0010\u001fJ#\u0010B\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u000e\u0010A\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010@¢\u0006\u0004\bB\u0010CJ\u001d\u0010E\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0001\u0010D\u001a\u00020\b¢\u0006\u0004\bE\u0010FJ7\u0010E\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0001\u0010G\u001a\u00020\b2\b\b\u0001\u0010H\u001a\u00020\b2\u0006\u0010I\u001a\u00020\b2\u0006\u0010J\u001a\u00020\b¢\u0006\u0004\bE\u0010KJ\u001b\u0010M\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010L\u001a\u000200¢\u0006\u0004\bM\u0010NJ\u001b\u0010P\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010O\u001a\u000200¢\u0006\u0004\bP\u0010NJ\u001b\u0010R\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010Q\u001a\u00020\b¢\u0006\u0004\bR\u0010FJ\u001d\u0010U\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\u0010T\u001a\u0004\u0018\u00010S¢\u0006\u0004\bU\u0010VJ\u001d\u0010W\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\u0010T\u001a\u0004\u0018\u00010S¢\u0006\u0004\bW\u0010VJ\u0017\u0010X\u001a\u00020\u000f2\b\u0010T\u001a\u0004\u0018\u00010S¢\u0006\u0004\bX\u0010YJ\r\u0010Z\u001a\u00020\u000f¢\u0006\u0004\bZ\u0010\u001fJ\r\u0010[\u001a\u00020\u000f¢\u0006\u0004\b[\u0010\u001fJ\u001d\u0010]\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0001\u0010\\\u001a\u00020\b¢\u0006\u0004\b]\u0010FJ\u001b\u0010`\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010_\u001a\u00020^¢\u0006\u0004\b`\u0010aJ#\u0010`\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010_\u001a\u00020^2\u0006\u0010b\u001a\u000200¢\u0006\u0004\b`\u0010cJ\u001b\u0010e\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010d\u001a\u00020\b¢\u0006\u0004\be\u0010FJ!\u0010h\u001a\u00020\u000f2\u0010\b\u0002\u0010g\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010fH\u0007¢\u0006\u0004\bh\u0010%J\u001b\u0010j\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010i\u001a\u00020\b¢\u0006\u0004\bj\u0010FJ\u001d\u0010n\u001a\u00020\u000f2\u0006\u0010l\u001a\u00020k2\u0006\u0010m\u001a\u00020\b¢\u0006\u0004\bn\u0010oJ\u0015\u0010n\u001a\u00020\u000f2\u0006\u0010l\u001a\u00020k¢\u0006\u0004\bn\u0010pJ)\u0010s\u001a\u00020\u000f2\u000e\u0010#\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010f2\n\b\u0002\u0010r\u001a\u0004\u0018\u00010q¢\u0006\u0004\bs\u0010tJ\r\u0010u\u001a\u00020\u000f¢\u0006\u0004\bu\u0010\u001fJ\u001d\u0010v\u001a\u00020\u000f2\u000e\u0010#\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010f¢\u0006\u0004\bv\u0010%J\u0015\u0010w\u001a\u00020\u000f2\u0006\u0010m\u001a\u00020\b¢\u0006\u0004\bw\u0010\u0016J\u001d\u0010x\u001a\u00020\u000f2\u0006\u0010m\u001a\u00020\b2\u0006\u0010*\u001a\u00028\u0000¢\u0006\u0004\bx\u0010yJ\r\u0010z\u001a\u00020\u000f¢\u0006\u0004\bz\u0010\u001fJ\r\u0010{\u001a\u00020\u000f¢\u0006\u0004\b{\u0010\u001fJ\u001d\u0010}\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020\b2\u0006\u0010|\u001a\u000200¢\u0006\u0004\b}\u0010~J\u001f\u0010\u0080\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0001\u0010\u007f\u001a\u00020\b¢\u0006\u0005\b\u0080\u0001\u0010FJ,\u0010\u0080\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\t\b\u0001\u0010\u0081\u0001\u001a\u00020\b2\t\b\u0001\u0010\u0082\u0001\u001a\u00020\b¢\u0006\u0006\b\u0080\u0001\u0010\u0083\u0001J\u001e\u0010\u0085\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0007\u0010\u0084\u0001\u001a\u00020\b¢\u0006\u0005\b\u0085\u0001\u0010FJ\u001e\u0010\u0087\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0007\u0010\u0086\u0001\u001a\u000200¢\u0006\u0005\b\u0087\u0001\u0010NJ\"\u0010\u008a\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\n\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u0088\u0001¢\u0006\u0006\b\u008a\u0001\u0010\u008b\u0001J\"\u0010\u008e\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\u0010\u008d\u0001\u001a\u00030\u008c\u0001H\u0007¢\u0006\u0006\b\u008e\u0001\u0010\u008f\u0001J \u0010\u0090\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\u0010\u008d\u0001\u001a\u00030\u008c\u0001¢\u0006\u0006\b\u0090\u0001\u0010\u008f\u0001J \u0010\u0091\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\u0010\u008d\u0001\u001a\u00030\u008c\u0001¢\u0006\u0006\b\u0091\u0001\u0010\u008f\u0001J\u0011\u0010\u0092\u0001\u001a\u00020\u000fH\u0007¢\u0006\u0005\b\u0092\u0001\u0010\u001fJ\u0011\u0010\u0093\u0001\u001a\u00020\u000fH\u0007¢\u0006\u0005\b\u0093\u0001\u0010\u001fJ\u0011\u0010\u0094\u0001\u001a\u00020\u000fH\u0007¢\u0006\u0005\b\u0094\u0001\u0010\u001fJ\u001e\u0010\u0095\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0007\u0010\u0095\u0001\u001a\u000200¢\u0006\u0005\b\u0095\u0001\u0010NJ\u001e\u0010\u0097\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0007\u0010\u0096\u0001\u001a\u000200¢\u0006\u0005\b\u0097\u0001\u0010NJ\u001e\u0010\u0098\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0007\u0010\u0098\u0001\u001a\u000200¢\u0006\u0005\b\u0098\u0001\u0010NJ\u001e\u0010\u009a\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0007\u0010\u0099\u0001\u001a\u000200¢\u0006\u0005\b\u009a\u0001\u0010NJ \u0010\u009c\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0007\u0010\u009b\u0001\u001a\u000200H\u0007¢\u0006\u0005\b\u009c\u0001\u0010NJ!\u0010\u009d\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0001\u0010D\u001a\u00020\bH\u0007¢\u0006\u0005\b\u009d\u0001\u0010FJ;\u0010\u009d\u0001\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0001\u0010G\u001a\u00020\b2\b\b\u0001\u0010H\u001a\u00020\b2\u0006\u0010I\u001a\u00020\b2\u0006\u0010J\u001a\u00020\bH\u0007¢\u0006\u0005\b\u009d\u0001\u0010KR\u0019\u0010 \u0001\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u009f\u0001R\u0018\u0010¢\u0001\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u001e\u0010¡\u0001R\u0018\u0010£\u0001\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b \u0010¡\u0001R\u0019\u0010¦\u0001\u001a\u00030¤\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b(\u0010¥\u0001R\u0017\u0010©\u0001\u001a\u00030§\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b!\u0010¨\u0001R\u0018\u0010\u00ad\u0001\u001a\u00030ª\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b«\u0001\u0010¬\u0001R/\u0010A\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010@8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\b®\u0001\u0010¯\u0001\u001a\u0006\b°\u0001\u0010±\u0001\"\u0005\bB\u0010²\u0001R\u001c\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u0088\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b³\u0001\u0010´\u0001R\u0017\u0010·\u0001\u001a\u00020q8\u0002X\u0082\u0004¢\u0006\b\n\u0006\bµ\u0001\u0010¶\u0001R\u001b\u0010º\u0001\u001a\u0005\u0018\u00010¸\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0013\u0010¹\u0001R\u001b\u0010½\u0001\u001a\u0005\u0018\u00010»\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0010\u0010¼\u0001R\u0018\u0010¾\u0001\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0015\u0010\u009f\u0001R\u0018\u0010¿\u0001\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u001c\u0010\u009f\u0001R\u001b\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008c\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0018\u0010À\u0001R\u0018\u0010Â\u0001\u001a\u00030\u0088\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÁ\u0001\u0010´\u0001R\u0017\u0010Ä\u0001\u001a\u0002008BX\u0082\u0004¢\u0006\b\u001a\u0006\b³\u0001\u0010Ã\u0001R\u0016\u0010Q\u001a\u00020\b8BX\u0082\u0004¢\u0006\b\u001a\u0006\bÅ\u0001\u0010Æ\u0001R\u0017\u0010Ç\u0001\u001a\u0002008BX\u0082\u0004¢\u0006\b\u001a\u0006\b«\u0001\u0010Ã\u0001R\u0017\u0010È\u0001\u001a\u0002008BX\u0082\u0004¢\u0006\b\u001a\u0006\b®\u0001\u0010Ã\u0001R\u0019\u0010g\u001a\b\u0012\u0004\u0012\u00028\u00000f8F¢\u0006\b\u001a\u0006\bÉ\u0001\u0010Ê\u0001R'\u0010Ì\u0001\u001a\u00020\b2\u0006\u0010*\u001a\u00020\b8F@FX\u0086\u000e¢\u0006\u000e\u001a\u0006\bË\u0001\u0010Æ\u0001\"\u0004\b}\u0010\u0016¨\u0006Ï\u0001"}, d2 = {"Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;", "T", "Landroid/widget/RelativeLayout;", "Landroidx/lifecycle/LifecycleObserver;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "endY", "disX", "disY", "Lzfb;", CmcdData.STREAM_TYPE_LIVE, "(III)V", "endX", "k", ICode.CALL.CALL_KEY_STATE, CmcdData.OBJECT_TYPE_MANIFEST, "(I)V", "position", "o", "", "positionOffset", "positionOffsetPixels", "n", "(IFI)V", "c", "()V", "d", "f", "", "list", "setupViewPager", "(Ljava/util/List;)V", "Lt70;", "bannerOptions", "e", "(Lt70;)V", "item", "q", "onDetachedFromWindow", "onAttachedToWindow", "Landroid/view/MotionEvent;", "ev", "", "dispatchTouchEvent", "(Landroid/view/MotionEvent;)Z", "onInterceptTouchEvent", "Landroid/graphics/Canvas;", "canvas", "dispatchDraw", "(Landroid/graphics/Canvas;)V", "Landroid/os/Parcelable;", "onSaveInstanceState", "()Landroid/os/Parcelable;", "onRestoreInstanceState", "(Landroid/os/Parcelable;)V", "startLoop", "startLoopNow", "stopLoop", "Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;", "adapter", "setAdapter", "(Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;", "radius", "setRoundCorner", "(I)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;", "topLeftRadius", "topRightRadius", "bottomLeftRadius", "bottomRightRadius", "(IIII)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;", SettingFragment.SHAKE_ITEM_AUTO_PLAY, "setAutoPlay", "(Z)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;", "canLoop", "setCanLoop", "interval", "setInterval", "Landroidx/viewpager2/widget/ViewPager2$PageTransformer;", "transformer", "setPageTransformer", "(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;", "addPageTransformer", "removeTransformer", "(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V", "removeDefaultPageTransformer", "removeMarginPageTransformer", "pageMargin", "setPageMargin", "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf$b;", "onPageClickListener", "setOnPageClickListener", "(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf$b;)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;", "scrollToThisItem", "(Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf$b;Z)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;", "scrollDuration", "setScrollDuration", "", "data", "create", "orientation", "setOrientation", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "decor", "index", "addItemDecoration", "(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V", "(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V", "Ljava/lang/Runnable;", "runnable", "refreshData", "(Ljava/util/List;Ljava/lang/Runnable;)V", "refreshCurrentItem", "addData", "removeItem", "insertItem", "(ILjava/lang/Object;)V", "previousPage", "nextPage", "smoothScroll", "setCurrentItem", "(IZ)V", "revealWidth", "setRevealWidth", "leftRevealWidth", "rightRevealWidth", "(II)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;", "offScreenPageLimit", "setOffScreenPageLimit", "userInputEnabled", "setUserInputEnabled", "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;", "onPageChangeCallback", "registerOnPageChangeCallback", "(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;", "Landroidx/lifecycle/Lifecycle;", "lifecycleRegistry", "setLifecycleRegistry", "(Landroidx/lifecycle/Lifecycle;)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;", "registerLifecycleObserver", "removeLifecycleObserver", "onPause", "onResume", "onDestroy", "disallowParentInterceptDownEvent", "rtlMode", "setRTLMode", "stopLoopWhenDetachedFromWindow", "autoScrollSmoothly", "setAutoPlaySmoothly", "disallowIntercept", "disallowInterceptTouchEvent", "setRoundRect", "b", "I", "currentPosition", "Z", "isCustomIndicator", "isLooping", "Landroidx/viewpager2/widget/ViewPager2;", "Landroidx/viewpager2/widget/ViewPager2;", "mViewPager", "Ls70;", "Ls70;", "mBannerManager", "Landroid/os/Handler;", GslbInterceptor.HEADER_KEY_GSLB, "Landroid/os/Handler;", "mHandler", CmcdData.STREAMING_FORMAT_HLS, "Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;", "getAdapter", "()Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;", "(Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;)V", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;", "j", "Ljava/lang/Runnable;", "mRunnable", "Landroid/graphics/RectF;", "Landroid/graphics/RectF;", "mRadiusRectF", "Landroid/graphics/Path;", "Landroid/graphics/Path;", "mRadiusPath", "startX", "startY", "Landroidx/lifecycle/Lifecycle;", TtmlNode.TAG_P, "mOnPageChangeCallback", "()Z", "isStopLoopWhenDetachedFromWindow", "getInterval", "()I", "isAutoPlay", "isCanLoopSafely", "getData", "()Ljava/util/List;", "getCurrentItem", "currentItem", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "playercommon_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SuppressLint({"NotifyDataSetChanged"})
public final class BannerViewPagerSelf<T> extends RelativeLayout implements LifecycleObserver {

    public int currentPosition;

    public boolean isCustomIndicator;

    public boolean isLooping;

    public ViewPager2 mViewPager;

    public final s70 mBannerManager;

    public final Handler mHandler;

    public BaseBannerAdapter adapter;

    public ViewPager2.OnPageChangeCallback onPageChangeCallback;

    public final Runnable mRunnable;

    public RectF mRadiusRectF;

    public Path mRadiusPath;

    public int startX;

    public int startY;

    public Lifecycle lifecycleRegistry;

    public final ViewPager2.OnPageChangeCallback mOnPageChangeCallback;

    public interface b {
    }

    public static final class c implements BaseBannerAdapter.b {
        public final boolean a;
        public final BannerViewPagerSelf b;

        public c(b bVar, boolean z, BannerViewPagerSelf bannerViewPagerSelf) {
            this.a = z;
            this.b = bannerViewPagerSelf;
        }

        @Override
        public void a(View view, int i, int i2) {
            throw null;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BannerViewPagerSelf(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void create$default(BannerViewPagerSelf bannerViewPagerSelf, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = new ArrayList();
        }
        bannerViewPagerSelf.create(list);
    }

    private final int getInterval() {
        return this.mBannerManager.d().a();
    }

    public static final void j(BannerViewPagerSelf bannerViewPagerSelf) {
        bannerViewPagerSelf.c();
    }

    public static final void p(BannerViewPagerSelf bannerViewPagerSelf, List list, Runnable runnable) {
        BaseBannerAdapter baseBannerAdapter;
        if (!bannerViewPagerSelf.isAttachedToWindow() || list == null || (baseBannerAdapter = bannerViewPagerSelf.adapter) == null || baseBannerAdapter == null) {
            return;
        }
        int size = list.size();
        List mList = baseBannerAdapter.getMList();
        Log.d("BannerViewPagerSelf", "refreshData: new.size = " + size + " , old.size = " + (mList != null ? Integer.valueOf(mList.size()) : null));
        bannerViewPagerSelf.stopLoop();
        baseBannerAdapter.x(list);
        baseBannerAdapter.notifyDataSetChanged();
        bannerViewPagerSelf.startLoop();
        if (runnable != null) {
            runnable.run();
        }
    }

    public static void refreshData$default(BannerViewPagerSelf bannerViewPagerSelf, List list, Runnable runnable, int i, Object obj) {
        if ((i & 2) != 0) {
            runnable = null;
        }
        bannerViewPagerSelf.refreshData(list, runnable);
    }

    private final void setupViewPager(List<? extends T> list) {
        if (this.adapter == null) {
            throw new NullPointerException("You must set adapter for BannerViewPagerSelf");
        }
        t70 t70VarD = this.mBannerManager.d();
        if (t70VarD.i() != 0) {
            vq8.a.a(this.mViewPager, t70VarD.i());
        }
        this.currentPosition = 0;
        BaseBannerAdapter baseBannerAdapter = this.adapter;
        if (baseBannerAdapter != null) {
            baseBannerAdapter.w(t70VarD.l());
        }
        this.mViewPager.setAdapter(this.adapter);
        if (h()) {
            this.mViewPager.setCurrentItem(w70.a.b(list.size()), false);
        }
        this.mViewPager.unregisterOnPageChangeCallback(this.mOnPageChangeCallback);
        this.mViewPager.registerOnPageChangeCallback(this.mOnPageChangeCallback);
        this.mViewPager.setOrientation(t70VarD.d());
        this.mViewPager.setOffscreenPageLimit(t70VarD.c());
        e(t70VarD);
        startLoop();
    }

    public final void addData(List<T> list) {
        BaseBannerAdapter baseBannerAdapter;
        if (!isAttachedToWindow() || list == null || (baseBannerAdapter = this.adapter) == null) {
            return;
        }
        List mList = baseBannerAdapter.getMList();
        if (mList != null) {
            mList.addAll(list);
        }
        baseBannerAdapter.notifyDataSetChanged();
    }

    public final void addItemDecoration(RecyclerView.ItemDecoration decor, int index) {
        y45.j(decor, "decor");
        if (!h()) {
            this.mViewPager.addItemDecoration(decor, index);
            return;
        }
        BaseBannerAdapter baseBannerAdapter = this.adapter;
        int iG = baseBannerAdapter != null ? baseBannerAdapter.g() : 0;
        int currentItem = this.mViewPager.getCurrentItem();
        this.mBannerManager.d().l();
        int iC = w70.a.c(currentItem, iG);
        if (currentItem != index) {
            if (index == 0 && iC == iG - 1) {
                this.mViewPager.addItemDecoration(decor, currentItem + 1);
            } else if (iC == 0 && index == iG - 1) {
                this.mViewPager.addItemDecoration(decor, currentItem - 1);
            } else {
                this.mViewPager.addItemDecoration(decor, currentItem + (index - iC));
            }
        }
    }

    public final BannerViewPagerSelf<T> addPageTransformer(ViewPager2.PageTransformer transformer) {
        if (transformer != null) {
            this.mBannerManager.a(transformer);
        }
        return this;
    }

    public final void c() {
        BaseBannerAdapter baseBannerAdapter = this.adapter;
        if (baseBannerAdapter != null) {
            if ((baseBannerAdapter != null ? baseBannerAdapter.g() : 0) <= 1 || !g()) {
                return;
            }
            ViewPager2 viewPager2 = this.mViewPager;
            viewPager2.setCurrentItem(viewPager2.getCurrentItem() + 1, this.mBannerManager.d().k());
            this.mHandler.postDelayed(this.mRunnable, getInterval());
        }
    }

    public final void create() {
        create$default(this, null, 1, null);
    }

    public final void d() {
        BaseBannerAdapter baseBannerAdapter = this.adapter;
        List mList = baseBannerAdapter != null ? baseBannerAdapter.getMList() : null;
        if (mList != null) {
            setupViewPager(mList);
            f();
        }
    }

    public final BannerViewPagerSelf<T> disallowInterceptTouchEvent(boolean disallowIntercept) {
        this.mBannerManager.d().r(disallowIntercept);
        return this;
    }

    public final BannerViewPagerSelf<T> disallowParentInterceptDownEvent(boolean disallowParentInterceptDownEvent) {
        this.mBannerManager.d().r(disallowParentInterceptDownEvent);
        return this;
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        y45.j(canvas, "canvas");
        float[] fArrH = this.mBannerManager.d().h();
        RectF rectF = this.mRadiusRectF;
        if (rectF != null && this.mRadiusPath != null) {
            y45.g(rectF);
            rectF.right = getWidth();
            RectF rectF2 = this.mRadiusRectF;
            y45.g(rectF2);
            rectF2.bottom = getHeight();
            Path path = this.mRadiusPath;
            y45.g(path);
            RectF rectF3 = this.mRadiusRectF;
            y45.g(rectF3);
            path.addRoundRect(rectF3, fArrH, Path.Direction.CW);
            Path path2 = this.mRadiusPath;
            y45.g(path2);
            canvas.clipPath(path2);
        }
        super.dispatchDraw(canvas);
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent ev) {
        y45.j(ev, "ev");
        int action = ev.getAction();
        if (action == 0) {
            this.isLooping = true;
            stopLoop();
        } else if (action == 1 || action == 3 || action == 4) {
            this.isLooping = false;
            startLoop();
        }
        return super.dispatchTouchEvent(ev);
    }

    public final void e(t70 bannerOptions) {
        int iF = bannerOptions.f();
        int iB = bannerOptions.b();
        if (iB != -1000 || iF != -1000) {
            View childAt = this.mViewPager.getChildAt(0);
            y45.h(childAt, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView");
            RecyclerView recyclerView = (RecyclerView) childAt;
            int iD = bannerOptions.d();
            int iE = bannerOptions.e();
            int iE2 = bannerOptions.e() + iB;
            if (iE2 < 0) {
                iE2 = 0;
            }
            if (iE < 0) {
                iE = 0;
            }
            if (iD == 0) {
                recyclerView.setPadding(iE2, 0, iE, 0);
            } else if (iD == 1) {
                recyclerView.setPadding(0, iE2, 0, iE);
            }
            recyclerView.setClipToPadding(false);
        }
        this.mBannerManager.b();
    }

    public final void f() {
        int iG = this.mBannerManager.d().g();
        if (iG > 0) {
            gdc.a.a(this, iG);
        }
    }

    public final boolean g() {
        return this.mBannerManager.d().j();
    }

    public final BaseBannerAdapter<T> getAdapter() {
        return this.adapter;
    }

    public final int getCurrentPosition() {
        return this.currentPosition;
    }

    public final List<T> getData() {
        List<T> mList;
        BaseBannerAdapter baseBannerAdapter = this.adapter;
        return (baseBannerAdapter == null || (mList = baseBannerAdapter.getMList()) == null) ? new ArrayList() : mList;
    }

    public final boolean h() {
        BaseBannerAdapter baseBannerAdapter;
        if (!this.mBannerManager.d().l() || (baseBannerAdapter = this.adapter) == null) {
            return false;
        }
        return (baseBannerAdapter != null ? baseBannerAdapter.g() : 0) > 1;
    }

    public final boolean i() {
        return this.mBannerManager.d().n();
    }

    public final void insertItem(int index, T item) {
        BaseBannerAdapter baseBannerAdapter = this.adapter;
        List mList = baseBannerAdapter != null ? baseBannerAdapter.getMList() : null;
        if (!isAttachedToWindow() || index < 0) {
            return;
        }
        if (index <= (mList != null ? mList.size() : 0)) {
            if (mList != null) {
                mList.add(index, item);
            }
            BaseBannerAdapter baseBannerAdapter2 = this.adapter;
            if (baseBannerAdapter2 != null) {
                baseBannerAdapter2.notifyDataSetChanged();
            }
        }
    }

    public final void k(int endX, int disX, int disY) {
        if (disX <= disY) {
            if (disY > disX) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
        } else if (this.mBannerManager.d().l()) {
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (this.currentPosition != 0 || endX - this.startX <= 0) {
            getParent().requestDisallowInterceptTouchEvent(this.currentPosition != getData().size() - 1 || endX - this.startX >= 0);
        } else {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
    }

    public final void l(int endY, int disX, int disY) {
        if (disY <= disX) {
            if (disX > disY) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
        } else if (this.mBannerManager.d().l()) {
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (this.currentPosition != 0 || endY - this.startY <= 0) {
            getParent().requestDisallowInterceptTouchEvent(this.currentPosition != getData().size() - 1 || endY - this.startY >= 0);
        } else {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
    }

    public final void m(int state) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.onPageChangeCallback;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageScrollStateChanged(state);
        }
    }

    public final void n(int position, float positionOffset, int positionOffsetPixels) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback;
        BaseBannerAdapter baseBannerAdapter = this.adapter;
        int iG = baseBannerAdapter != null ? baseBannerAdapter.g() : 0;
        int iC = w70.a.c(position, iG);
        if (iG <= 0 || (onPageChangeCallback = this.onPageChangeCallback) == null) {
            return;
        }
        onPageChangeCallback.onPageScrolled(iC, positionOffset, positionOffsetPixels);
    }

    public final void nextPage() {
        setCurrentItem(getCurrentPosition() + 1);
    }

    public final void o(int position) {
        BaseBannerAdapter baseBannerAdapter = this.adapter;
        int iG = baseBannerAdapter != null ? baseBannerAdapter.g() : 0;
        boolean zL = this.mBannerManager.d().l();
        int iC = w70.a.c(position, iG);
        this.currentPosition = iC;
        if (iG > 0 && zL && (position == 0 || position == 999)) {
            q(iC);
        }
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.onPageChangeCallback;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageSelected(this.currentPosition);
        }
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (i()) {
            startLoop();
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public final void onDestroy() {
        stopLoop();
    }

    @Override
    public void onDetachedFromWindow() {
        if (i()) {
            stopLoop();
        }
        super.onDetachedFromWindow();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0024  */
    /* JADX WARN: Code duplicated, block: B:31:0x0070  */
    @Override
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        boolean z;
        List mList;
        y45.j(ev, "ev");
        if (this.mViewPager.isUserInputEnabled()) {
            BaseBannerAdapter baseBannerAdapter = this.adapter;
            if (((baseBannerAdapter == null || (mList = baseBannerAdapter.getMList()) == null) ? 0 : mList.size()) <= 1) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = true;
        }
        if (z) {
            return super.onInterceptTouchEvent(ev);
        }
        int action = ev.getAction();
        if (action == 0) {
            this.startX = (int) ev.getX();
            this.startY = (int) ev.getY();
            getParent().requestDisallowInterceptTouchEvent(!this.mBannerManager.d().m());
        } else if (action == 1) {
            getParent().requestDisallowInterceptTouchEvent(false);
        } else if (action == 2) {
            int x = (int) ev.getX();
            int y = (int) ev.getY();
            int iAbs = (int) Math.abs(x - this.startX);
            int iAbs2 = (int) Math.abs(y - this.startY);
            int iD = this.mBannerManager.d().d();
            if (iD == 0) {
                k(x, iAbs, iAbs2);
            } else if (iD == 1) {
                l(y, iAbs, iAbs2);
            }
        } else if (action == 3) {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
        return super.onInterceptTouchEvent(ev);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_PAUSE)
    public final void onPause() {
        stopLoop();
    }

    @Override
    public void onRestoreInstanceState(Parcelable state) {
        y45.j(state, ICode.CALL.CALL_KEY_STATE);
        Bundle bundle = (Bundle) state;
        super.onRestoreInstanceState(bundle.getParcelable("SUPER_STATE"));
        this.currentPosition = bundle.getInt("CURRENT_POSITION");
        this.isCustomIndicator = bundle.getBoolean("IS_CUSTOM_INDICATOR");
        setCurrentItem(this.currentPosition, false);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    public final void onResume() {
        startLoop();
    }

    @Override
    public Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable("SUPER_STATE", parcelableOnSaveInstanceState);
        bundle.putInt("CURRENT_POSITION", this.currentPosition);
        bundle.putBoolean("IS_CUSTOM_INDICATOR", this.isCustomIndicator);
        return bundle;
    }

    public final void previousPage() {
        setCurrentItem(getCurrentPosition() - 1);
    }

    public final void q(int item) {
        if (!h()) {
            this.mViewPager.setCurrentItem(item, false);
            return;
        }
        ViewPager2 viewPager2 = this.mViewPager;
        w70 w70Var = w70.a;
        BaseBannerAdapter baseBannerAdapter = this.adapter;
        viewPager2.setCurrentItem(w70Var.b(baseBannerAdapter != null ? baseBannerAdapter.g() : 0) + item, false);
    }

    public final void refreshCurrentItem() {
        BaseBannerAdapter baseBannerAdapter = this.adapter;
        if (baseBannerAdapter == null || baseBannerAdapter == null) {
            return;
        }
        baseBannerAdapter.notifyItemChanged(this.mViewPager.getCurrentItem());
    }

    public final void refreshData(final List<T> list, final Runnable runnable) {
        post(new Runnable() {
            @Override
            public final void run() {
                BannerViewPagerSelf.p(this.b, list, runnable);
            }
        });
    }

    public final BannerViewPagerSelf<T> registerLifecycleObserver(Lifecycle lifecycleRegistry) {
        y45.j(lifecycleRegistry, "lifecycleRegistry");
        lifecycleRegistry.addObserver(this);
        this.lifecycleRegistry = lifecycleRegistry;
        return this;
    }

    public final BannerViewPagerSelf<T> registerOnPageChangeCallback(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.onPageChangeCallback = onPageChangeCallback;
        return this;
    }

    public final void removeDefaultPageTransformer() {
        this.mBannerManager.f();
    }

    public final void removeItem(int index) {
        BaseBannerAdapter baseBannerAdapter = this.adapter;
        List mList = baseBannerAdapter != null ? baseBannerAdapter.getMList() : null;
        if (!isAttachedToWindow() || index < 0) {
            return;
        }
        if (index < (mList != null ? mList.size() : 0)) {
            if (mList != null) {
                mList.remove(index);
            }
            BaseBannerAdapter baseBannerAdapter2 = this.adapter;
            if (baseBannerAdapter2 != null) {
                baseBannerAdapter2.notifyDataSetChanged();
            }
        }
    }

    public final BannerViewPagerSelf<T> removeLifecycleObserver(Lifecycle lifecycleRegistry) {
        y45.j(lifecycleRegistry, "lifecycleRegistry");
        lifecycleRegistry.removeObserver(this);
        return this;
    }

    public final void removeMarginPageTransformer() {
        this.mBannerManager.g();
    }

    public final void removeTransformer(ViewPager2.PageTransformer transformer) {
        if (transformer != null) {
            this.mBannerManager.h(transformer);
        }
    }

    public final void m124setAdapter(BaseBannerAdapter<T> baseBannerAdapter) {
        this.adapter = baseBannerAdapter;
    }

    public final BannerViewPagerSelf<T> setAutoPlay(boolean autoPlay) {
        this.mBannerManager.d().o(autoPlay);
        if (g()) {
            this.mBannerManager.d().q(true);
        }
        return this;
    }

    public final BannerViewPagerSelf<T> setAutoPlaySmoothly(boolean autoScrollSmoothly) {
        this.mBannerManager.d().p(autoScrollSmoothly);
        return this;
    }

    public final BannerViewPagerSelf<T> setCanLoop(boolean canLoop) {
        this.mBannerManager.d().q(canLoop);
        if (!canLoop) {
            this.mBannerManager.d().o(false);
        }
        return this;
    }

    public final void setCurrentItem(int i) {
        setCurrentItem(i, true);
    }

    public final BannerViewPagerSelf<T> setInterval(int interval) {
        this.mBannerManager.d().s(interval);
        return this;
    }

    public final BannerViewPagerSelf<T> setLifecycleRegistry(Lifecycle lifecycleRegistry) {
        y45.j(lifecycleRegistry, "lifecycleRegistry");
        registerLifecycleObserver(lifecycleRegistry);
        return this;
    }

    public final BannerViewPagerSelf<T> setOffScreenPageLimit(int offScreenPageLimit) {
        this.mBannerManager.d().u(offScreenPageLimit);
        return this;
    }

    public final BannerViewPagerSelf<T> setOnPageClickListener(b onPageClickListener) {
        y45.j(onPageClickListener, "onPageClickListener");
        setOnPageClickListener(onPageClickListener, false);
        return this;
    }

    public final BannerViewPagerSelf<T> setOrientation(int orientation) {
        this.mBannerManager.d().v(orientation);
        return this;
    }

    public final BannerViewPagerSelf<T> setPageMargin(@Px int pageMargin) {
        this.mBannerManager.i(pageMargin);
        return this;
    }

    public final BannerViewPagerSelf<T> setPageTransformer(ViewPager2.PageTransformer transformer) {
        if (transformer != null) {
            this.mViewPager.setPageTransformer(transformer);
        }
        return this;
    }

    public final BannerViewPagerSelf<T> setRTLMode(boolean rtlMode) {
        this.mViewPager.setLayoutDirection(rtlMode ? 1 : 0);
        this.mBannerManager.d().A(rtlMode);
        return this;
    }

    public final BannerViewPagerSelf<T> setRevealWidth(@Px int revealWidth) {
        setRevealWidth(revealWidth, revealWidth);
        return this;
    }

    public final BannerViewPagerSelf<T> setRoundCorner(@Px int radius) {
        this.mBannerManager.d().y(radius);
        return this;
    }

    public final BannerViewPagerSelf<T> setRoundRect(@Px int radius) {
        return setRoundCorner(radius);
    }

    public final BannerViewPagerSelf<T> setScrollDuration(int scrollDuration) {
        this.mBannerManager.d().B(scrollDuration);
        return this;
    }

    public final BannerViewPagerSelf<T> setUserInputEnabled(boolean userInputEnabled) {
        this.mBannerManager.d().D(userInputEnabled);
        this.mViewPager.setUserInputEnabled(userInputEnabled);
        return this;
    }

    public final void startLoop() {
        BaseBannerAdapter baseBannerAdapter;
        if (this.isLooping || !g() || (baseBannerAdapter = this.adapter) == null) {
            return;
        }
        if ((baseBannerAdapter != null ? baseBannerAdapter.g() : 0) <= 1 || !isAttachedToWindow()) {
            return;
        }
        Lifecycle lifecycle = this.lifecycleRegistry;
        if (lifecycle != null) {
            y45.g(lifecycle);
            if (lifecycle.getState() != Lifecycle.State.RESUMED) {
                Lifecycle lifecycle2 = this.lifecycleRegistry;
                y45.g(lifecycle2);
                if (lifecycle2.getState() != Lifecycle.State.CREATED) {
                    return;
                }
            }
        }
        this.mHandler.postDelayed(this.mRunnable, getInterval());
        this.isLooping = true;
    }

    public final void startLoopNow() {
        BaseBannerAdapter baseBannerAdapter;
        if (this.isLooping || !g() || (baseBannerAdapter = this.adapter) == null) {
            return;
        }
        if ((baseBannerAdapter != null ? baseBannerAdapter.g() : 0) > 1) {
            this.mHandler.post(this.mRunnable);
            this.isLooping = true;
        }
    }

    public final void stopLoop() {
        if (this.isLooping) {
            this.mHandler.removeCallbacks(this.mRunnable);
            this.isLooping = false;
        }
    }

    public final BannerViewPagerSelf<T> stopLoopWhenDetachedFromWindow(boolean stopLoopWhenDetachedFromWindow) {
        this.mBannerManager.d().C(stopLoopWhenDetachedFromWindow);
        return this;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BannerViewPagerSelf(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public final void create(List<T> data) {
        BaseBannerAdapter baseBannerAdapter = this.adapter;
        if (baseBannerAdapter == null) {
            throw new NullPointerException("You must set adapter for BannerViewPagerSelf");
        }
        if (baseBannerAdapter != null) {
            baseBannerAdapter.x(data);
        }
        d();
    }

    public final BannerViewPagerSelf<T> setAdapter(BaseBannerAdapter<T> adapter) {
        this.adapter = adapter;
        return this;
    }

    public final void setCurrentItem(int item, boolean smoothScroll) {
        if (!h()) {
            this.mViewPager.setCurrentItem(item, smoothScroll);
            return;
        }
        stopLoop();
        int currentItem = this.mViewPager.getCurrentItem();
        w70 w70Var = w70.a;
        BaseBannerAdapter baseBannerAdapter = this.adapter;
        this.mViewPager.setCurrentItem(currentItem + (item - w70Var.c(currentItem, baseBannerAdapter != null ? baseBannerAdapter.g() : 0)), smoothScroll);
        startLoop();
    }

    public final BannerViewPagerSelf<T> setOnPageClickListener(b onPageClickListener, boolean scrollToThisItem) {
        y45.j(onPageClickListener, "onPageClickListener");
        BaseBannerAdapter baseBannerAdapter = this.adapter;
        if (baseBannerAdapter != null) {
            baseBannerAdapter.z(new c(onPageClickListener, scrollToThisItem, this));
        }
        return this;
    }

    public final BannerViewPagerSelf<T> setRevealWidth(@Px int leftRevealWidth, @Px int rightRevealWidth) {
        this.mBannerManager.d().x(rightRevealWidth);
        this.mBannerManager.d().t(leftRevealWidth);
        return this;
    }

    public final BannerViewPagerSelf<T> setRoundCorner(@Px int topLeftRadius, @Px int topRightRadius, int bottomLeftRadius, int bottomRightRadius) {
        this.mRadiusRectF = new RectF();
        this.mRadiusPath = new Path();
        this.mBannerManager.d().z(topLeftRadius, topRightRadius, bottomLeftRadius, bottomRightRadius);
        return this;
    }

    public final BannerViewPagerSelf<T> setRoundRect(@Px int topLeftRadius, @Px int topRightRadius, int bottomLeftRadius, int bottomRightRadius) {
        return setRoundCorner(topLeftRadius, topRightRadius, bottomLeftRadius, bottomRightRadius);
    }

    public BannerViewPagerSelf(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BannerViewPagerSelf(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        s70 s70Var = new s70();
        this.mBannerManager = s70Var;
        this.mHandler = new Handler(Looper.getMainLooper());
        this.mRunnable = new Runnable() {
            @Override
            public final void run() {
                BannerViewPagerSelf.j(this.b);
            }
        };
        s70Var.e(context, attributeSet);
        View.inflate(context, R.layout.bvp_layout_self, this);
        ViewPager2 viewPager2 = (ViewPager2) findViewById(R.id.vp_main);
        this.mViewPager = viewPager2;
        viewPager2.setPageTransformer(s70Var.c());
        this.mOnPageChangeCallback = new ViewPager2.OnPageChangeCallback() {
            @Override
            public void onPageScrollStateChanged(int state) {
                super.onPageScrollStateChanged(state);
                this.d.m(state);
            }

            @Override
            public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
                super.onPageScrolled(position, positionOffset, positionOffsetPixels);
                this.d.n(position, positionOffset, positionOffsetPixels);
            }

            @Override
            public void onPageSelected(int position) {
                super.onPageSelected(position);
                this.d.o(position);
            }
        };
    }

    public final void addItemDecoration(RecyclerView.ItemDecoration decor) {
        y45.j(decor, "decor");
        this.mViewPager.addItemDecoration(decor);
    }
}
