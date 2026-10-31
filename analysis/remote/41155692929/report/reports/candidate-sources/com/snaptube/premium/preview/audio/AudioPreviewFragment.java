package com.snaptube.premium.preview.audio;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.Layout;
import android.text.StaticLayout;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.fragment.app.FragmentViewModelLazyKt;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.firebase.remoteconfig.RemoteConfigConstants$ResponseFieldKey;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.snaptube.ads.mraid.SnapAdConstants;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import com.snaptube.ktx.FlowKt;
import com.snaptube.ktx.fragment.FragmentKt;
import com.snaptube.ktx.view.ViewKt;
import com.snaptube.player_guide.PlayerGuideAdPos;
import com.snaptube.premium.R;
import com.snaptube.premium.base.ui.SquareCardView;
import com.snaptube.premium.helper.ForegroundTimeTrackHelper;
import com.snaptube.premium.localplay.DynamicLyricFragment;
import com.snaptube.premium.log.model.DismissReason;
import com.snaptube.premium.lyric.model.LyricsInfo;
import com.snaptube.premium.preview.audio.viewmodel.AudioPreviewViewModel;
import com.snaptube.premium.preview.bar.MusicBarViewModel;
import com.snaptube.premium.preview.guide.PlaylistGuideFragment;
import com.snaptube.premium.preview.log.PreviewTracker;
import com.snaptube.premium.preview.video.LocalPlaybackViewModel;
import com.snaptube.premium.service.PlayerService;
import com.snaptube.premium.service.playback.PlayerType;
import com.snaptube.premium.views.NestedBottomSheetHost;
import com.snaptube.premium.views.PopupFragment;
import com.snaptube.premium.views.PopupNestedContentLayout;
import com.snaptube.premium.views.ScrollStateFrameLayout;
import com.snaptube.ui.anim.ViewAnimator;
import com.snaptube.util.ProductionEnv;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__IndentKt;
import kotlin.text.StringsKt__StringsKt;
import o.bx2;
import o.cy2;
import o.db1;
import o.dl6;
import o.dx2;
import o.et0;
import o.gm4;
import o.ih6;
import o.kb7;
import o.kf5;
import o.kw;
import o.l38;
import o.ld3;
import o.lw;
import o.mb8;
import o.mg8;
import o.mw;
import o.nm4;
import o.nw;
import o.or3;
import o.ow;
import o.pg1;
import o.ph3;
import o.pl6;
import o.pr3;
import o.pw;
import o.qw;
import o.rj0;
import o.rw;
import o.sr7;
import o.sw;
import o.t14;
import o.tb0;
import o.tq2;
import o.tt3;
import o.tw;
import o.uw;
import o.ux2;
import o.vq6;
import o.vw;
import o.wd0;
import o.x24;
import o.xp2;
import o.y24;
import o.y44;
import o.yf4;
import o.ys2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000\u0096\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 Ú\u00012\u00020\u00012\u00020\u0002:\u0002Û\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u0019\u0010\u000f\u001a\u00020\u00052\b\b\u0002\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J-\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00112\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00112\b\b\u0002\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0016\u001a\u00020\u00052\b\b\u0002\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0016\u0010\u0010J\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0005H\u0002¢\u0006\u0004\b \u0010\u0004J\u0017\u0010!\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b!\u0010\u001cJ\u000f\u0010\"\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\"\u0010\u0004J\u0017\u0010%\u001a\u00020\u00052\u0006\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\b%\u0010&J\u001f\u0010(\u001a\u00020\u00052\u0006\u0010'\u001a\u00020\r2\u0006\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\b(\u0010)J\u0017\u0010*\u001a\u00020\u00052\u0006\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\b*\u0010&J\u0017\u0010-\u001a\u00020\u00052\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b-\u0010.J\u0017\u00101\u001a\u00020\u00052\u0006\u00100\u001a\u00020/H\u0002¢\u0006\u0004\b1\u00102J\u0017\u00103\u001a\u00020\u00052\u0006\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\b3\u0010&J\u0017\u00105\u001a\u00020\u00052\u0006\u00104\u001a\u00020\u0011H\u0002¢\u0006\u0004\b5\u0010\u0018J\u0018\u00108\u001a\u00020\u00052\u0006\u00107\u001a\u000206H\u0082@¢\u0006\u0004\b8\u00109J\u0017\u0010;\u001a\u00020\u00052\u0006\u0010:\u001a\u00020\rH\u0002¢\u0006\u0004\b;\u0010\u0010J)\u0010?\u001a\u00020\u00052\u0006\u0010$\u001a\u00020#2\u0006\u0010=\u001a\u00020<2\b\b\u0002\u0010>\u001a\u00020\rH\u0002¢\u0006\u0004\b?\u0010@J?\u0010D\u001a\u00020\u00052\b\u0010A\u001a\u0004\u0018\u00010\u00112\b\u0010B\u001a\u0004\u0018\u00010\u00112\u0006\u0010=\u001a\u00020<2\b\b\u0002\u0010>\u001a\u00020\r2\b\b\u0002\u0010C\u001a\u00020\u001dH\u0002¢\u0006\u0004\bD\u0010EJ\u0017\u0010F\u001a\u00020\u00052\u0006\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\bF\u0010&J5\u0010I\u001a\u00020\u00052\b\u0010A\u001a\u0004\u0018\u00010\u00112\b\u0010B\u001a\u0004\u0018\u00010\u00112\u0010\b\u0002\u0010H\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010GH\u0002¢\u0006\u0004\bI\u0010JJ\u000f\u0010K\u001a\u00020\u0005H\u0002¢\u0006\u0004\bK\u0010\u0004J\u0017\u0010N\u001a\u00020\u00052\u0006\u0010M\u001a\u00020LH\u0002¢\u0006\u0004\bN\u0010OJ+\u0010S\u001a\u00020\u00052\u0006\u0010M\u001a\u00020L2\u0012\u0010R\u001a\n\u0012\u0006\b\u0001\u0012\u00020Q0P\"\u00020QH\u0002¢\u0006\u0004\bS\u0010TJ\u000f\u0010V\u001a\u00020UH\u0002¢\u0006\u0004\bV\u0010WJ\u000f\u0010X\u001a\u00020\u0005H\u0002¢\u0006\u0004\bX\u0010\u0004J\u000f\u0010Y\u001a\u00020\u0005H\u0016¢\u0006\u0004\bY\u0010\u0004J\u000f\u0010Z\u001a\u00020\u0005H\u0016¢\u0006\u0004\bZ\u0010\u0004J\u000f\u0010[\u001a\u00020\u0005H\u0016¢\u0006\u0004\b[\u0010\u0004J\u000f\u0010\\\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\\\u0010\u0004J\u000f\u0010]\u001a\u00020\u0005H\u0016¢\u0006\u0004\b]\u0010\u0004J\u0019\u0010`\u001a\u00020\u00052\b\u0010_\u001a\u0004\u0018\u00010^H\u0016¢\u0006\u0004\b`\u0010aJ+\u0010f\u001a\u00020Q2\u0006\u0010c\u001a\u00020b2\b\u0010e\u001a\u0004\u0018\u00010d2\b\u0010_\u001a\u0004\u0018\u00010^H\u0016¢\u0006\u0004\bf\u0010gJ!\u0010h\u001a\u00020\u00052\u0006\u0010R\u001a\u00020Q2\b\u0010_\u001a\u0004\u0018\u00010^H\u0016¢\u0006\u0004\bh\u0010iJ\u0017\u0010l\u001a\u00020\u00052\u0006\u0010k\u001a\u00020jH\u0016¢\u0006\u0004\bl\u0010mJ\u000f\u0010o\u001a\u00020nH\u0014¢\u0006\u0004\bo\u0010pJ\u000f\u0010q\u001a\u00020\u0005H\u0016¢\u0006\u0004\bq\u0010\u0004J\u000f\u0010r\u001a\u00020\rH\u0016¢\u0006\u0004\br\u0010sR\u001b\u0010w\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bt\u0010u\u001a\u0004\bv\u0010\nR\u001b\u0010|\u001a\u00020x8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\by\u0010u\u001a\u0004\bz\u0010{R\u001d\u0010\u0081\u0001\u001a\u00020}8BX\u0082\u0084\u0002¢\u0006\r\n\u0004\b~\u0010u\u001a\u0005\b\u007f\u0010\u0080\u0001R \u0010\u0086\u0001\u001a\u00030\u0082\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u0083\u0001\u0010u\u001a\u0006\b\u0084\u0001\u0010\u0085\u0001R\u001a\u0010\u008a\u0001\u001a\u00030\u0087\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0088\u0001\u0010\u0089\u0001R\u001c\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008b\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u008d\u0001R\u001c\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u008b\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u008d\u0001R\u001c\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u008b\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0091\u0001\u0010\u008d\u0001R\u0019\u0010\u0095\u0001\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0094\u0001R\u0019\u0010\u0098\u0001\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0096\u0001\u0010\u0097\u0001R\u001e\u0010\u009b\u0001\u001a\u00020\u001d8BX\u0082\u0084\u0002¢\u0006\u000e\n\u0005\b\u0099\u0001\u0010u\u001a\u0005\b\u009a\u0001\u0010\u001fR\u001b\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u009d\u0001R\u001b\u0010¡\u0001\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009f\u0001\u0010 \u0001R\u001c\u0010¥\u0001\u001a\u0005\u0018\u00010¢\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b£\u0001\u0010¤\u0001R\u001c\u0010©\u0001\u001a\u0005\u0018\u00010¦\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b§\u0001\u0010¨\u0001R1\u0010°\u0001\u001a\u0014\u0012\u000f\u0012\r ¬\u0001*\u0005\u0018\u00010«\u00010«\u00010ª\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u00ad\u0001\u0010u\u001a\u0006\b®\u0001\u0010¯\u0001R\u001c\u0010´\u0001\u001a\u0005\u0018\u00010±\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b²\u0001\u0010³\u0001R\u001c\u0010µ\u0001\u001a\u0005\u0018\u00010±\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0097\u0001\u0010³\u0001R\u0019\u0010·\u0001\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¶\u0001\u0010¶\u0001R\u0019\u0010¹\u0001\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¸\u0001\u0010\u0094\u0001R\u001e\u0010¼\u0001\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\u000e\n\u0005\bº\u0001\u0010u\u001a\u0005\b»\u0001\u0010sR\u0019\u0010¾\u0001\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b½\u0001\u0010\u0094\u0001R\u0019\u0010À\u0001\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¿\u0001\u0010\u0094\u0001R\u001c\u0010Ä\u0001\u001a\u0005\u0018\u00010Á\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÂ\u0001\u0010Ã\u0001R!\u0010Ç\u0001\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010G8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÅ\u0001\u0010Æ\u0001R\u0019\u0010É\u0001\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÈ\u0001\u0010\u0094\u0001R\u001b\u0010Ì\u0001\u001a\u0004\u0018\u00010U8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÊ\u0001\u0010Ë\u0001R\u0018\u0010Ð\u0001\u001a\u00030Í\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÎ\u0001\u0010Ï\u0001R\u0018\u0010Ô\u0001\u001a\u00030Ñ\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÒ\u0001\u0010Ó\u0001R\u0019\u0010×\u0001\u001a\u0004\u0018\u00010\u00118BX\u0082\u0004¢\u0006\b\u001a\u0006\bÕ\u0001\u0010Ö\u0001R\u0019\u0010Ù\u0001\u001a\u0004\u0018\u00010\u00118BX\u0082\u0004¢\u0006\b\u001a\u0006\bØ\u0001\u0010Ö\u0001¨\u0006Ü\u0001"}, d2 = {"Lcom/snaptube/premium/preview/audio/AudioPreviewFragment;", "Lcom/snaptube/premium/views/PopupFragment;", "Lo/ph3;", "<init>", "()V", "Lo/mg8;", "L4", "f4", "Lo/ys2;", "u4", "()Lo/ys2;", "v4", "G4", "", "fromIntent", "E4", "(Z)V", "", "action", "triggerTag", "g4", "(Ljava/lang/String;Ljava/lang/String;Z)V", "H4", "D4", "(Ljava/lang/String;)V", "Lcom/snaptube/premium/preview/video/LocalPlaybackViewModel$b;", "guideParams", "P4", "(Lcom/snaptube/premium/preview/video/LocalPlaybackViewModel$b;)V", "", "d4", "()I", "C4", "W3", "s4", "Landroid/support/v4/media/MediaMetadataCompat;", TtmlNode.TAG_METADATA, "a4", "(Landroid/support/v4/media/MediaMetadataCompat;)V", ES6Iterator.NEXT_METHOD, "Q4", "(ZLandroid/support/v4/media/MediaMetadataCompat;)V", "X3", "Landroid/support/v4/media/session/PlaybackStateCompat;", RemoteConfigConstants$ResponseFieldKey.STATE, "b5", "(Landroid/support/v4/media/session/PlaybackStateCompat;)V", "", NotificationCompat.CATEGORY_PROGRESS, "c5", "(J)V", "W4", "fileName", "i4", "Lcom/snaptube/premium/lyric/model/LyricsInfo;", "lyricsInfo", "a5", "(Lcom/snaptube/premium/lyric/model/LyricsInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "visible", "t4", "Landroid/widget/ImageView;", "cover", "switchBg", "S4", "(Landroid/support/v4/media/MediaMetadataCompat;Landroid/widget/ImageView;Z)V", "filePath", "thumbnailUrl", "coverSize", "T4", "(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;ZI)V", "X4", "Lkotlin/Function0;", "success", "Y4", "(Ljava/lang/String;Ljava/lang/String;Lo/bx2;)V", "Z3", "", "scale", "O4", "(F)V", "", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "N4", "(F[Landroid/view/View;)V", "Lo/tt3;", "R4", "()Lo/tt3;", "e4", "onStart", "onResume", "onPause", "onStop", "onDestroyView", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/Intent;", "intent", "onNewIntent", "(Landroid/content/Intent;)V", "Landroid/widget/FrameLayout$LayoutParams;", "P2", "()Landroid/widget/FrameLayout$LayoutParams;", "dismiss", "M2", "()Z", CampaignEx.JSON_KEY_AD_R, "Lo/t14;", "n4", "binding", "Lcom/snaptube/premium/preview/audio/AudioPreviewAdController;", "s", "l4", "()Lcom/snaptube/premium/preview/audio/AudioPreviewAdController;", "audioPreviewAdController", "Lcom/snaptube/premium/preview/video/LocalPlaybackViewModel;", "t", "o4", "()Lcom/snaptube/premium/preview/video/LocalPlaybackViewModel;", "playbackViewModel", "Lcom/snaptube/premium/preview/audio/viewmodel/AudioPreviewViewModel;", "u", "r4", "()Lcom/snaptube/premium/preview/audio/viewmodel/AudioPreviewViewModel;", "viewModel", "Lo/ld3;", "v", "Lo/ld3;", "playController", "Landroid/graphics/drawable/Drawable;", "w", "Landroid/graphics/drawable/Drawable;", "pauseDrawable", SnapAdConstants.KEY_X, "playDrawable", SnapAdConstants.KEY_Y, "defaultBgBlur", "z", "Z", "dragging", "A", "I", "opAction", "B", "p4", "screenWidth", "C", "Ljava/lang/String;", "lastMediaId", "D", "Landroid/view/View;", "showingCover", "Lcom/snaptube/premium/preview/audio/AudioPlayListFragment;", "E", "Lcom/snaptube/premium/preview/audio/AudioPlayListFragment;", "audioListFragment", "Lcom/snaptube/premium/preview/guide/PlaylistGuideFragment;", "F", "Lcom/snaptube/premium/preview/guide/PlaylistGuideFragment;", "guideFragment", "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;", "Lcom/snaptube/premium/views/NestedBottomSheetHost;", "kotlin.jvm.PlatformType", "G", "m4", "()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;", "behavior", "Lcom/snaptube/ui/anim/ViewAnimator;", "H", "Lcom/snaptube/ui/anim/ViewAnimator;", "nextAnimator", "prevAnimator", "J", "totalDuration", "K", "boundMusicService", "L", "q4", "shortScreen", "M", "secretMedia", "N", "playCompleted", "Lcom/snaptube/premium/helper/ForegroundTimeTrackHelper;", "O", "Lcom/snaptube/premium/helper/ForegroundTimeTrackHelper;", "timeTrackHelper", "P", "Lo/bx2;", "onDismissListener", "Q", "triggerFromIntent", "R", "Lo/tt3;", "firstCoverLoadJob", "Landroid/widget/SeekBar$OnSeekBarChangeListener;", "S", "Landroid/widget/SeekBar$OnSeekBarChangeListener;", "seekBarChangeListener", "Landroid/content/ServiceConnection;", "T", "Landroid/content/ServiceConnection;", "musicServiceConn", "j4", "()Ljava/lang/String;", "argFrom", "k4", "argTriggerTag", "U", "a", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAudioPreviewFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioPreviewFragment.kt\ncom/snaptube/premium/preview/audio/AudioPreviewFragment\n+ 2 ViewBinding.kt\ncom/snaptube/ktx/ViewBindingKt\n+ 3 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n+ 5 PreviewTracker.kt\ncom/snaptube/premium/preview/log/PreviewTrackerKt\n+ 6 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 7 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 8 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 9 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 10 FragmentManager.kt\nandroidx/fragment/app/FragmentManagerKt\n*L\n1#1,931:1\n25#2:932\n84#3,6:933\n56#3,10:939\n329#4,4:949\n329#4,4:953\n262#4,2:976\n262#4,2:980\n262#4,2:990\n110#5:957\n99#5,13:958\n21#6:971\n23#6:975\n50#7:972\n55#7:974\n107#8:973\n1855#9,2:978\n30#10,8:982\n*S KotlinDebug\n*F\n+ 1 AudioPreviewFragment.kt\ncom/snaptube/premium/preview/audio/AudioPreviewFragment\n*L\n105#1:932\n109#1:933,6\n110#1:939,10\n342#1:949,4\n352#1:953,4\n703#1:976,2\n748#1:980,2\n767#1:990,2\n403#1:957\n403#1:958,13\n549#1:971\n549#1:975\n549#1:972\n549#1:974\n549#1:973\n726#1:978,2\n761#1:982,8\n*E\n"})
public final class AudioPreviewFragment extends PopupFragment implements ph3 {

    public static final Companion INSTANCE = new Companion(null);

    public int opAction;

    public final t14 screenWidth;

    public String lastMediaId;

    public View showingCover;

    public AudioPlayListFragment audioListFragment;

    public PlaylistGuideFragment guideFragment;

    public final t14 behavior;

    public ViewAnimator nextAnimator;

    public ViewAnimator prevAnimator;

    public long totalDuration;

    public boolean boundMusicService;

    public final t14 shortScreen;

    public boolean secretMedia;

    public boolean playCompleted;

    public ForegroundTimeTrackHelper timeTrackHelper;

    public bx2 onDismissListener;

    public boolean triggerFromIntent;

    public tt3 firstCoverLoadJob;

    public final SeekBar.OnSeekBarChangeListener seekBarChangeListener;

    public final ServiceConnection musicServiceConn;

    public final t14 binding = kotlin.b.a(LazyThreadSafetyMode.NONE, new AudioPreviewFragment$special$$inlined$viewBinding$1(this));

    public final t14 audioPreviewAdController = kotlin.b.b(new AudioPreviewFragment$audioPreviewAdController$2(this));

    public final t14 playbackViewModel = FragmentViewModelLazyKt.createViewModelLazy(this, ih6.b(LocalPlaybackViewModel.class), new AudioPreviewFragment$special$$inlined$activityViewModels$default$1(this), new AudioPreviewFragment$special$$inlined$activityViewModels$default$2(this));

    public final t14 viewModel;

    public ld3 playController;

    public Drawable pauseDrawable;

    public Drawable playDrawable;

    public Drawable defaultBgBlur;

    public boolean dragging;

    public static final class Companion {
        public Companion() {
        }

        public Companion(pg1 pg1Var) {
            this();
        }

        public final void a(FragmentManager fragmentManager, Bundle bundle, String str, bx2 bx2Var) {
            or3.f(fragmentManager, "fm");
            AudioPreviewFragment audioPreviewFragment = new AudioPreviewFragment();
            if (bundle != null) {
                audioPreviewFragment.setArguments(bundle);
            }
            AudioPreviewFragment.N3(audioPreviewFragment, bx2Var);
            audioPreviewFragment.show(fragmentManager, str);
        }
    }

    public static final class b extends db1 {
        public b() {
        }

        public void a(Drawable drawable, mb8 mb8Var) {
            or3.f(drawable, "resource");
            AudioPreviewFragment.p3(AudioPreviewFragment.this).g.setBackground(drawable);
            AudioPreviewFragment.J3(AudioPreviewFragment.this, drawable);
        }

        @Override
        public void n(Drawable drawable) {
            AudioPreviewFragment.J3(AudioPreviewFragment.this, null);
        }

        @Override
        public void p(Object obj, mb8 mb8Var) {
            a((Drawable) obj, mb8Var);
        }

        @Override
        public void s(Drawable drawable) {
        }
    }

    public static final class c extends BottomSheetBehavior.g {
        public final ys2 a;
        public final AudioPreviewFragment b;

        public c(ys2 ys2Var, AudioPreviewFragment audioPreviewFragment) {
            this.a = ys2Var;
            this.b = audioPreviewFragment;
        }

        @Override
        public void a(View view, float f) {
            or3.f(view, "bottomSheet");
            float f2 = 1 - (f * 0.1f);
            AudioPreviewFragment.p3(this.b).m.setScaleX(f2);
            AudioPreviewFragment.p3(this.b).m.setScaleY(f2);
            AudioPreviewFragment.p3(this.b).l.setScaleX(f2);
            AudioPreviewFragment.p3(this.b).l.setScaleY(f2);
        }

        @Override
        public void b(View view, int i) {
            String str;
            or3.f(view, "bottomSheet");
            this.a.z.setEnabled(i != 3);
            if (i != 3) {
                str = i != 4 ? null : "music_detail_playlist_fold";
            } else {
                str = "music_detail_playlist_unfold";
            }
            if (str != null) {
                PreviewTracker.b.a(str).e(AudioPreviewFragment.y3(this.b).a0()).i();
            }
        }
    }

    public static final class d implements ScrollStateFrameLayout.a {
        public d() {
        }

        @Override
        public void a() {
            AudioPreviewFragment.E3(AudioPreviewFragment.this, "slide_up");
        }
    }

    public static final class e implements ServiceConnection {
        public e() {
        }

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (!(iBinder instanceof PlayerService.b)) {
                ProductionEnv.errorLog("LocalMediaPreviewActivity", "service is not instanceof PlayerService.LocalBinder!");
                return;
            }
            AudioPreviewFragment.I3(AudioPreviewFragment.this, true);
            ld3 ld3VarW3 = AudioPreviewFragment.w3(AudioPreviewFragment.this);
            if (ld3VarW3 == null) {
                or3.w("playController");
                ld3VarW3 = null;
            }
            ld3VarW3.onServiceConnected(componentName, iBinder);
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            ld3 ld3VarW3 = AudioPreviewFragment.w3(AudioPreviewFragment.this);
            if (ld3VarW3 == null) {
                or3.w("playController");
                ld3VarW3 = null;
            }
            ld3VarW3.onServiceDisconnected(componentName);
            AudioPreviewFragment.I3(AudioPreviewFragment.this, false);
        }
    }

    public static final class f implements kf5, cy2 {
        public final dx2 a;

        public f(dx2 dx2Var) {
            or3.f(dx2Var, "function");
            this.a = dx2Var;
        }

        @Override
        public final ux2 a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof kf5) && (obj instanceof cy2)) {
                return or3.a(a(), ((cy2) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.a.invoke(obj);
        }
    }

    public static final class g implements SeekBar.OnSeekBarChangeListener {
        public g() {
        }

        @Override
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            or3.f(seekBar, "seekBar");
            AudioPreviewFragment.p3(AudioPreviewFragment.this).F.setText(l38.i(i));
        }

        @Override
        public void onStartTrackingTouch(SeekBar seekBar) {
            or3.f(seekBar, "seekBar");
            AudioPreviewFragment.K3(AudioPreviewFragment.this, true);
            PreviewTracker.b.a("click_audio_drag_progress_bar").e(AudioPreviewFragment.y3(AudioPreviewFragment.this).a0()).g("music_detail").j("drag").i();
        }

        @Override
        public void onStopTrackingTouch(SeekBar seekBar) {
            or3.f(seekBar, "seekBar");
            AudioPreviewFragment.K3(AudioPreviewFragment.this, false);
            if (AudioPreviewFragment.v3(AudioPreviewFragment.this)) {
                return;
            }
            ld3 ld3VarW3 = AudioPreviewFragment.w3(AudioPreviewFragment.this);
            if (ld3VarW3 == null) {
                or3.w("playController");
                ld3VarW3 = null;
            }
            ld3VarW3.seekTo(seekBar.getProgress());
        }
    }

    public static final class h extends db1 {
        public final ImageView d;
        public final AudioPreviewFragment e;
        public final String f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(int i, ImageView imageView, AudioPreviewFragment audioPreviewFragment, String str) {
            super(i, i);
            this.d = imageView;
            this.e = audioPreviewFragment;
            this.f = str;
        }

        public void a(Drawable drawable, mb8 mb8Var) {
            or3.f(drawable, "resource");
            this.d.setImageDrawable(drawable);
        }

        @Override
        public void n(Drawable drawable) {
        }

        @Override
        public void p(Object obj, mb8 mb8Var) {
            a((Drawable) obj, mb8Var);
        }

        @Override
        public void s(Drawable drawable) {
            if (FragmentKt.d(this.e)) {
                pl6 pl6VarX = com.bumptech.glide.a.x(this.e);
                or3.e(pl6VarX, "with(...)");
                Context contextRequireContext = this.e.requireContext();
                or3.e(contextRequireContext, "requireContext(...)");
                ((dl6) gm4.l(pl6VarX, contextRequireContext, this.f, false).s0(new rj0())).I0(this.d);
            }
        }
    }

    public static final class i extends db1 {
        public final bx2 e;

        public i(bx2 bx2Var) {
            this.e = bx2Var;
        }

        public void a(Drawable drawable, mb8 mb8Var) {
            or3.f(drawable, "resource");
            AudioPreviewFragment.p3(AudioPreviewFragment.this).g.setBackground(drawable);
            bx2 bx2Var = this.e;
            if (bx2Var != null) {
                bx2Var.invoke();
            }
        }

        @Override
        public void n(Drawable drawable) {
        }

        @Override
        public void p(Object obj, mb8 mb8Var) {
            a((Drawable) obj, mb8Var);
        }

        @Override
        public void s(Drawable drawable) {
            AudioPreviewFragment.j3(AudioPreviewFragment.this);
        }
    }

    public AudioPreviewFragment() {
        AudioPreviewFragment$special$$inlined$viewModels$default$1 audioPreviewFragment$special$$inlined$viewModels$default$1 = new AudioPreviewFragment$special$$inlined$viewModels$default$1(this);
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(this, ih6.b(AudioPreviewViewModel.class), new AudioPreviewFragment$special$$inlined$viewModels$default$2(audioPreviewFragment$special$$inlined$viewModels$default$1), new AudioPreviewFragment$special$$inlined$viewModels$default$3(audioPreviewFragment$special$$inlined$viewModels$default$1, this));
        this.screenWidth = kotlin.b.b(new AudioPreviewFragment$screenWidth$2(this));
        this.behavior = kotlin.b.b(new AudioPreviewFragment$behavior$2(this));
        this.shortScreen = kotlin.b.b(new AudioPreviewFragment$shortScreen$2(this));
        this.seekBarChangeListener = new g();
        this.musicServiceConn = new e();
    }

    public static final boolean A3(AudioPreviewFragment audioPreviewFragment) {
        return audioPreviewFragment.secretMedia;
    }

    public static final void A4(AudioPreviewFragment audioPreviewFragment, View view) {
        or3.f(audioPreviewFragment, "this$0");
        audioPreviewFragment.D4("full_lyrics");
    }

    public static final boolean B3(AudioPreviewFragment audioPreviewFragment) {
        return audioPreviewFragment.triggerFromIntent;
    }

    public static final void B4(AudioPreviewFragment audioPreviewFragment, View view) {
        or3.f(audioPreviewFragment, "this$0");
        audioPreviewFragment.D4("slide_up");
    }

    public static final AudioPreviewViewModel C3(AudioPreviewFragment audioPreviewFragment) {
        return audioPreviewFragment.r4();
    }

    public static final void D3(AudioPreviewFragment audioPreviewFragment, boolean z) {
        audioPreviewFragment.t4(z);
    }

    public static final void E3(AudioPreviewFragment audioPreviewFragment, String str) {
        audioPreviewFragment.D4(str);
    }

    public static final void F3(AudioPreviewFragment audioPreviewFragment, boolean z) {
        audioPreviewFragment.E4(z);
    }

    public static void F4(AudioPreviewFragment audioPreviewFragment, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = false;
        }
        audioPreviewFragment.E4(z);
    }

    public static final void G3(AudioPreviewFragment audioPreviewFragment, boolean z) {
        audioPreviewFragment.H4(z);
    }

    public static final void H3(AudioPreviewFragment audioPreviewFragment, float f2) {
        audioPreviewFragment.O4(f2);
    }

    public static final void I3(AudioPreviewFragment audioPreviewFragment, boolean z) {
        audioPreviewFragment.boundMusicService = z;
    }

    public static void I4(AudioPreviewFragment audioPreviewFragment, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = false;
        }
        audioPreviewFragment.H4(z);
    }

    public static final void J3(AudioPreviewFragment audioPreviewFragment, Drawable drawable) {
        audioPreviewFragment.defaultBgBlur = drawable;
    }

    public static final boolean J4(AudioPreviewFragment audioPreviewFragment, View view, int i2, KeyEvent keyEvent) {
        or3.f(audioPreviewFragment, "this$0");
        BottomSheetBehavior bottomSheetBehaviorM4 = audioPreviewFragment.m4();
        if (bottomSheetBehaviorM4.h0() != 3 || bottomSheetBehaviorM4.g0() >= audioPreviewFragment.n4().w.getHeight()) {
            return false;
        }
        bottomSheetBehaviorM4.A0(4);
        return true;
    }

    public static final void K3(AudioPreviewFragment audioPreviewFragment, boolean z) {
        audioPreviewFragment.dragging = z;
    }

    public static final void K4(AudioPreviewFragment audioPreviewFragment, DismissReason dismissReason) {
        or3.f(audioPreviewFragment, "this$0");
        bx2 bx2Var = audioPreviewFragment.onDismissListener;
        if (bx2Var != null) {
            bx2Var.invoke();
        }
        PreviewTracker previewTrackerA = PreviewTracker.b.a("close_music_detail");
        ld3 ld3Var = audioPreviewFragment.playController;
        if (ld3Var == null) {
            or3.w("playController");
            ld3Var = null;
        }
        PreviewTracker previewTrackerJ = previewTrackerA.e((MediaMetadataCompat) ld3Var.getMetadata().f()).j(dismissReason != null ? dismissReason.toTriggerTag() : null);
        ForegroundTimeTrackHelper foregroundTimeTrackHelper = audioPreviewFragment.timeTrackHelper;
        previewTrackerJ.h(IntentUtil.DURATION, foregroundTimeTrackHelper != null ? Long.valueOf(foregroundTimeTrackHelper.a()) : null).i();
    }

    public static final void L3(AudioPreviewFragment audioPreviewFragment, PlaylistGuideFragment playlistGuideFragment) {
        audioPreviewFragment.guideFragment = playlistGuideFragment;
    }

    public static final void M3(AudioPreviewFragment audioPreviewFragment, String str) {
        audioPreviewFragment.lastMediaId = str;
    }

    public static final void M4(AudioPreviewFragment audioPreviewFragment, MediaMetadataCompat mediaMetadataCompat) {
        or3.f(audioPreviewFragment, "this$0");
        PreviewTracker previewTracker = new PreviewTracker();
        String strJ4 = audioPreviewFragment.j4();
        if (strJ4 == null) {
            strJ4 = "backgroud";
        }
        vq6.K().h("/music_detail", previewTracker.c(strJ4).j(audioPreviewFragment.k4()).e(mediaMetadataCompat).d());
    }

    public static final void N3(AudioPreviewFragment audioPreviewFragment, bx2 bx2Var) {
        audioPreviewFragment.onDismissListener = bx2Var;
    }

    public static final void O3(AudioPreviewFragment audioPreviewFragment, boolean z) {
        audioPreviewFragment.playCompleted = z;
    }

    public static final void P3(AudioPreviewFragment audioPreviewFragment, boolean z) {
        audioPreviewFragment.secretMedia = z;
    }

    public static final void Q3(AudioPreviewFragment audioPreviewFragment, boolean z) {
        audioPreviewFragment.triggerFromIntent = z;
    }

    public static final void R3(AudioPreviewFragment audioPreviewFragment, LocalPlaybackViewModel.b bVar) {
        audioPreviewFragment.P4(bVar);
    }

    public static final void S3(AudioPreviewFragment audioPreviewFragment, String str, String str2, ImageView imageView, boolean z, int i2) {
        audioPreviewFragment.T4(str, str2, imageView, z, i2);
    }

    public static final void T3(AudioPreviewFragment audioPreviewFragment, MediaMetadataCompat mediaMetadataCompat) {
        audioPreviewFragment.W4(mediaMetadataCompat);
    }

    public static final Object U3(AudioPreviewFragment audioPreviewFragment, LyricsInfo lyricsInfo, Continuation continuation) {
        return audioPreviewFragment.a5(lyricsInfo, continuation);
    }

    public static void U4(AudioPreviewFragment audioPreviewFragment, MediaMetadataCompat mediaMetadataCompat, ImageView imageView, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        audioPreviewFragment.S4(mediaMetadataCompat, imageView, z);
    }

    public static final void V3(AudioPreviewFragment audioPreviewFragment, PlaybackStateCompat playbackStateCompat) {
        audioPreviewFragment.b5(playbackStateCompat);
    }

    public static void V4(AudioPreviewFragment audioPreviewFragment, String str, String str2, ImageView imageView, boolean z, int i2, int i3, Object obj) {
        boolean z2 = (i3 & 8) != 0 ? false : z;
        if ((i3 & 16) != 0) {
            i2 = gm4.e();
        }
        audioPreviewFragment.T4(str, str2, imageView, z2, i2);
    }

    public static void W2(AudioPreviewFragment audioPreviewFragment, MediaMetadataCompat mediaMetadataCompat) {
        M4(audioPreviewFragment, mediaMetadataCompat);
    }

    public static void X2(AudioPreviewFragment audioPreviewFragment, View view) {
        y4(audioPreviewFragment, view);
    }

    public static void Y2(AudioPreviewFragment audioPreviewFragment, View view) {
        A4(audioPreviewFragment, view);
    }

    public static final void Y3(AudioPreviewFragment audioPreviewFragment, MediaMetadataCompat mediaMetadataCompat) {
        or3.f(audioPreviewFragment, "this$0");
        or3.f(mediaMetadataCompat, "$metadata");
        audioPreviewFragment.X4(mediaMetadataCompat);
    }

    public static void Z2(AudioPreviewFragment audioPreviewFragment, View view) {
        B4(audioPreviewFragment, view);
    }

    public static void Z4(AudioPreviewFragment audioPreviewFragment, String str, String str2, bx2 bx2Var, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            bx2Var = null;
        }
        audioPreviewFragment.Y4(str, str2, bx2Var);
    }

    public static void a3(AudioPreviewFragment audioPreviewFragment, View view) {
        w4(audioPreviewFragment, view);
    }

    public static void b3(AudioPreviewFragment audioPreviewFragment, View view) {
        x4(audioPreviewFragment, view);
    }

    public static final void b4(AudioPreviewFragment audioPreviewFragment) {
        or3.f(audioPreviewFragment, "this$0");
        audioPreviewFragment.showingCover = audioPreviewFragment.n4().f;
    }

    public static void c3(AudioPreviewFragment audioPreviewFragment) {
        b4(audioPreviewFragment);
    }

    public static final void c4(AudioPreviewFragment audioPreviewFragment) {
        or3.f(audioPreviewFragment, "this$0");
        audioPreviewFragment.showingCover = audioPreviewFragment.n4().n;
    }

    public static void d3(AudioPreviewFragment audioPreviewFragment, MediaMetadataCompat mediaMetadataCompat) {
        Y3(audioPreviewFragment, mediaMetadataCompat);
    }

    public static void e3(AudioPreviewFragment audioPreviewFragment, DismissReason dismissReason) {
        K4(audioPreviewFragment, dismissReason);
    }

    public static void f3(AudioPreviewFragment audioPreviewFragment, View view) {
        z4(audioPreviewFragment, view);
    }

    public static boolean g3(AudioPreviewFragment audioPreviewFragment, View view, int i2, KeyEvent keyEvent) {
        return J4(audioPreviewFragment, view, i2, keyEvent);
    }

    public static void h3(AudioPreviewFragment audioPreviewFragment) {
        c4(audioPreviewFragment);
    }

    public static void h4(AudioPreviewFragment audioPreviewFragment, String str, String str2, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str2 = null;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        audioPreviewFragment.g4(str, str2, z);
    }

    public static final void i3(AudioPreviewFragment audioPreviewFragment, LocalPlaybackViewModel.b bVar) {
        audioPreviewFragment.W3(bVar);
    }

    public static final void j3(AudioPreviewFragment audioPreviewFragment) {
        audioPreviewFragment.Z3();
    }

    public static final void k3(AudioPreviewFragment audioPreviewFragment, MediaMetadataCompat mediaMetadataCompat) {
        audioPreviewFragment.a4(mediaMetadataCompat);
    }

    public static final int l3(AudioPreviewFragment audioPreviewFragment) {
        return audioPreviewFragment.d4();
    }

    public static final void m3(AudioPreviewFragment audioPreviewFragment) {
        audioPreviewFragment.e4();
    }

    private final BottomSheetBehavior m4() {
        return (BottomSheetBehavior) this.behavior.getValue();
    }

    public static final String n3(AudioPreviewFragment audioPreviewFragment) {
        return audioPreviewFragment.j4();
    }

    public static final BottomSheetBehavior o3(AudioPreviewFragment audioPreviewFragment) {
        return audioPreviewFragment.m4();
    }

    private final LocalPlaybackViewModel o4() {
        return (LocalPlaybackViewModel) this.playbackViewModel.getValue();
    }

    public static final ys2 p3(AudioPreviewFragment audioPreviewFragment) {
        return audioPreviewFragment.n4();
    }

    public static final PlaylistGuideFragment q3(AudioPreviewFragment audioPreviewFragment) {
        return audioPreviewFragment.guideFragment;
    }

    public static final String r3(AudioPreviewFragment audioPreviewFragment) {
        return audioPreviewFragment.lastMediaId;
    }

    public static final ViewAnimator s3(AudioPreviewFragment audioPreviewFragment) {
        return audioPreviewFragment.nextAnimator;
    }

    public static final int t3(AudioPreviewFragment audioPreviewFragment) {
        return audioPreviewFragment.opAction;
    }

    public static final Drawable u3(AudioPreviewFragment audioPreviewFragment) {
        return audioPreviewFragment.pauseDrawable;
    }

    public static final boolean v3(AudioPreviewFragment audioPreviewFragment) {
        return audioPreviewFragment.playCompleted;
    }

    public static final ld3 w3(AudioPreviewFragment audioPreviewFragment) {
        return audioPreviewFragment.playController;
    }

    public static final void w4(AudioPreviewFragment audioPreviewFragment, View view) {
        or3.f(audioPreviewFragment, "this$0");
        audioPreviewFragment.D4("lyrics_title");
    }

    public static final Drawable x3(AudioPreviewFragment audioPreviewFragment) {
        return audioPreviewFragment.playDrawable;
    }

    public static final void x4(AudioPreviewFragment audioPreviewFragment, View view) {
        or3.f(audioPreviewFragment, "this$0");
        if (audioPreviewFragment.l4().getHasShowAd()) {
            return;
        }
        audioPreviewFragment.N2(DismissReason.CLOSE_BUTTON);
    }

    public static final LocalPlaybackViewModel y3(AudioPreviewFragment audioPreviewFragment) {
        return audioPreviewFragment.o4();
    }

    public static final void y4(AudioPreviewFragment audioPreviewFragment, View view) {
        or3.f(audioPreviewFragment, "this$0");
        audioPreviewFragment.G4();
    }

    public static final ViewAnimator z3(AudioPreviewFragment audioPreviewFragment) {
        return audioPreviewFragment.prevAnimator;
    }

    public static final void z4(AudioPreviewFragment audioPreviewFragment, View view) {
        or3.f(audioPreviewFragment, "this$0");
        audioPreviewFragment.G4();
    }

    public final void C4() {
        ld3 ld3Var = this.playController;
        ld3 ld3Var2 = null;
        if (ld3Var == null) {
            or3.w("playController");
            ld3Var = null;
        }
        ld3Var.getMetadata().i(getViewLifecycleOwner(), new f(new AudioPreviewFragment$observePlayEvent$1(this)));
        ld3 ld3Var3 = this.playController;
        if (ld3Var3 == null) {
            or3.w("playController");
        } else {
            ld3Var2 = ld3Var3;
        }
        ld3Var2.getPlaybackState().i(getViewLifecycleOwner(), new f(new AudioPreviewFragment$observePlayEvent$2(this)));
        kb7 kb7VarM0 = o4().m0();
        x24 viewLifecycleOwner = getViewLifecycleOwner();
        or3.e(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        FlowKt.c(kb7VarM0, viewLifecycleOwner, null, new AudioPreviewFragment$observePlayEvent$3(this), 2, null);
        kb7 kb7VarF0 = o4().f0();
        x24 viewLifecycleOwner2 = getViewLifecycleOwner();
        or3.e(viewLifecycleOwner2, "getViewLifecycleOwner(...)");
        FlowKt.c(kb7VarF0, viewLifecycleOwner2, null, new AudioPreviewFragment$observePlayEvent$4(this), 2, null);
        AudioPreviewFragment$observePlayEvent$$inlined$filter$1 audioPreviewFragment$observePlayEvent$$inlined$filter$1 = new AudioPreviewFragment$observePlayEvent$$inlined$filter$1(o4().s0(), this);
        x24 viewLifecycleOwner3 = getViewLifecycleOwner();
        or3.e(viewLifecycleOwner3, "getViewLifecycleOwner(...)");
        FlowKt.c(audioPreviewFragment$observePlayEvent$$inlined$filter$1, viewLifecycleOwner3, null, new AudioPreviewFragment$observePlayEvent$6(this), 2, null);
    }

    public final void D4(String triggerTag) {
        PlayerGuideAdPos playerGuideAdPos = PlayerGuideAdPos.AD_POS_AUDIO_FULL_SCREEN_LYRIC;
        AudioPreviewViewModel audioPreviewViewModelR4 = r4();
        or3.c(playerGuideAdPos);
        String strE0 = o4().e0();
        PlaybackStateCompat playbackStateCompatD0 = o4().d0();
        if (audioPreviewViewModelR4.M(playerGuideAdPos, strE0, playbackStateCompatD0 != null ? Long.valueOf(playbackStateCompatD0.getPosition()) : null)) {
            return;
        }
        DynamicLyricFragment.Companion aVar = DynamicLyricFragment.INSTANCE;
        FragmentManager childFragmentManager = getChildFragmentManager();
        or3.e(childFragmentManager, "getChildFragmentManager(...)");
        aVar.c(childFragmentManager, triggerTag);
    }

    public final void E4(boolean fromIntent) {
        String string;
        this.triggerFromIntent = fromIntent;
        this.opAction = 1;
        LocalPlaybackViewModel localPlaybackViewModelO4 = o4();
        if (fromIntent) {
            Bundle arguments = getArguments();
            string = arguments != null ? arguments.getString("trigger_pos") : null;
        } else {
            string = "click_page_next";
        }
        LocalPlaybackViewModel.P0(localPlaybackViewModelO4, string, null, 2, null);
        o4().D0(LocalPlaybackViewModel.From.AUDIO);
        DynamicLyricFragment.Companion aVar = DynamicLyricFragment.INSTANCE;
        FragmentManager childFragmentManager = getChildFragmentManager();
        or3.e(childFragmentManager, "getChildFragmentManager(...)");
        aVar.a(childFragmentManager);
        h4(this, "click_next", null, fromIntent, 2, null);
    }

    public final void G4() {
        boolean z = this.playCompleted;
        ld3 ld3Var = this.playController;
        ld3 ld3Var2 = null;
        if (ld3Var == null) {
            or3.w("playController");
            ld3Var = null;
        }
        ld3Var.g();
        if (z && Math.abs(this.totalDuration - ((long) n4().z.getProgress())) / ((long) 1000) > 3) {
            ld3 ld3Var3 = this.playController;
            if (ld3Var3 == null) {
                or3.w("playController");
            } else {
                ld3Var2 = ld3Var3;
            }
            ld3Var2.seekTo(n4().z.getProgress());
        }
        if (o4().c0() == 3) {
            h4(this, "click_pause", "manual", false, 4, null);
        } else {
            h4(this, "click_play", null, false, 6, null);
        }
    }

    public final void H4(boolean fromIntent) {
        String string;
        this.triggerFromIntent = fromIntent;
        this.opAction = 2;
        LocalPlaybackViewModel localPlaybackViewModelO4 = o4();
        if (fromIntent) {
            Bundle arguments = getArguments();
            string = arguments != null ? arguments.getString("trigger_pos") : null;
        } else {
            string = "click_page_previous";
        }
        LocalPlaybackViewModel.P0(localPlaybackViewModelO4, string, null, 2, null);
        o4().E0(LocalPlaybackViewModel.From.AUDIO);
        DynamicLyricFragment.Companion aVar = DynamicLyricFragment.INSTANCE;
        FragmentManager childFragmentManager = getChildFragmentManager();
        or3.e(childFragmentManager, "getChildFragmentManager(...)");
        aVar.a(childFragmentManager);
        h4(this, "click_previous", null, fromIntent, 2, null);
    }

    public final void L4() {
        ld3 ld3Var = this.playController;
        if (ld3Var == null) {
            or3.w("playController");
            ld3Var = null;
        }
        y44.c(ld3Var.getMetadata(), this, new ow(this));
    }

    @Override
    public boolean M2() {
        return false;
    }

    public final void N4(float scale, View... view) {
        x24 x24VarK2 = K2();
        if (x24VarK2 != null) {
            ViewAnimator.i((View[]) Arrays.copyOf(view, view.length)).o(scale).j(new AccelerateDecelerateInterpolator()).f(300L).d(x24VarK2).r();
        }
    }

    public final void O4(float scale) {
        SquareCardView squareCardView = n4().l;
        or3.e(squareCardView, "cvCoverBack");
        SquareCardView squareCardView2 = n4().m;
        or3.e(squareCardView2, "cvCoverFront");
        N4(scale, squareCardView, squareCardView2);
    }

    @Override
    public FrameLayout.LayoutParams P2() {
        return new FrameLayout.LayoutParams(-1, -1);
    }

    public final void P4(LocalPlaybackViewModel.b guideParams) {
        if (this.secretMedia) {
            return;
        }
        y24.a(this).f(new AudioPreviewFragment$showPlaylistGuide$1(this, guideParams, null));
    }

    public final void Q4(boolean next, MediaMetadataCompat metadata) {
        if (next) {
            if (!or3.a(this.showingCover, n4().n)) {
                n4().n.setImageDrawable(n4().f.getDrawable());
            }
            ImageView imageView = n4().f;
            or3.e(imageView, "backCover");
            U4(this, metadata, imageView, false, 4, null);
            return;
        }
        if (!or3.a(this.showingCover, n4().f)) {
            n4().f.setImageDrawable(n4().n.getDrawable());
        }
        ImageView imageView2 = n4().n;
        or3.e(imageView2, "frontCover");
        U4(this, metadata, imageView2, false, 4, null);
    }

    public final tt3 R4() {
        x24 viewLifecycleOwner = getViewLifecycleOwner();
        or3.e(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        return wd0.d(y24.a(viewLifecycleOwner), null, null, new AudioPreviewFragment$tryLoadFirstCover$1(this, null), 3, null);
    }

    public final void S4(MediaMetadataCompat metadata, ImageView cover, boolean switchBg) {
        V4(this, nm4.h(metadata), nm4.j(metadata), cover, switchBg, 0, 16, null);
    }

    public final void T4(String filePath, String thumbnailUrl, ImageView cover, boolean switchBg, int coverSize) {
        if (FragmentKt.d(this)) {
            pl6 pl6VarX = com.bumptech.glide.a.x(this);
            or3.e(pl6VarX, "with(...)");
            Context contextRequireContext = requireContext();
            or3.e(contextRequireContext, "requireContext(...)");
            ((dl6) gm4.j(pl6VarX, contextRequireContext, filePath, thumbnailUrl, false).s0(new rj0())).F0(new h(coverSize, cover, this, thumbnailUrl));
            if (switchBg) {
                Z4(this, filePath, thumbnailUrl, null, 4, null);
            }
        }
    }

    public final void W3(LocalPlaybackViewModel.b guideParams) {
        AudioPreviewViewModel audioPreviewViewModelR4 = r4();
        PlayerGuideAdPos playerGuideAdPos = PlayerGuideAdPos.AD_POS_MUSIC_DETAIL_CONTINUE_PLAY;
        or3.e(playerGuideAdPos, "AD_POS_MUSIC_DETAIL_CONTINUE_PLAY");
        String strE0 = o4().e0();
        PlaybackStateCompat playbackStateCompatD0 = o4().d0();
        if (audioPreviewViewModelR4.M(playerGuideAdPos, strE0, playbackStateCompatD0 != null ? Long.valueOf(playbackStateCompatD0.getPosition()) : null)) {
            return;
        }
        P4(guideParams);
    }

    public final void W4(MediaMetadataCompat metadata) {
        long j = metadata.getLong(MediaMetadataCompat.METADATA_KEY_DURATION);
        n4().z.setMax((int) j);
        n4().C.setText(l38.i(j));
        this.totalDuration = j;
        String strH = nm4.h(metadata);
        if (strH != null) {
            i4(strH);
        }
        ld3 ld3Var = this.playController;
        if (ld3Var == null) {
            or3.w("playController");
            ld3Var = null;
        }
        PlaybackStateCompat playbackStateCompat = (PlaybackStateCompat) ld3Var.getPlaybackState().f();
        if (playbackStateCompat != null) {
            b5(playbackStateCompat);
        }
    }

    public final void X3(MediaMetadataCompat metadata) {
        x24 x24VarK2 = K2();
        if (x24VarK2 != null) {
            ViewAnimator.i(n4().g).b(1.0f, 0.2f).f(150L).m(new mw(this, metadata)).t(n4().g).b(0.2f, 1.0f).f(150L).d(x24VarK2).r();
        }
    }

    public final void X4(MediaMetadataCompat metadata) {
        Z4(this, nm4.h(metadata), nm4.j(metadata), null, 4, null);
    }

    public final void Y4(String filePath, String thumbnailUrl, bx2 success) {
        if (FragmentKt.d(this)) {
            pl6 pl6VarX = com.bumptech.glide.a.x(this);
            or3.e(pl6VarX, "with(...)");
            Context contextRequireContext = requireContext();
            or3.e(contextRequireContext, "requireContext(...)");
            ((dl6) gm4.k(pl6VarX, contextRequireContext, filePath, thumbnailUrl, false, 8, null).s0(new tb0(25, 10))).F0(new i(success));
        }
    }

    public final void Z3() {
        if (this.defaultBgBlur != null) {
            n4().g.setBackground(this.defaultBgBlur);
        } else if (FragmentKt.d(this)) {
            pl6 pl6VarX = com.bumptech.glide.a.x(this);
            Context contextRequireContext = requireContext();
            or3.e(contextRequireContext, "requireContext(...)");
            ((dl6) pl6VarX.t(gm4.b(contextRequireContext)).s0(new tb0(25, 10))).F0(new b());
        }
    }

    public final void a4(MediaMetadataCompat metadata) {
        int i2 = this.opAction;
        if (i2 == 0) {
            ImageView imageView = n4().n;
            or3.e(imageView, "frontCover");
            S4(metadata, imageView, true);
            this.showingCover = n4().n;
            return;
        }
        if (i2 == 1) {
            Q4(true, metadata);
            x24 x24VarK2 = K2();
            this.nextAnimator = x24VarK2 != null ? ViewAnimator.i(n4().m).v(0.0f, -p4()).c(n4().l).o(0.9f, 1.0f).f(300L).m(new pw(this)).j(new AccelerateDecelerateInterpolator()).d(x24VarK2).r() : null;
            X3(metadata);
            return;
        }
        if (i2 != 2) {
            return;
        }
        Q4(false, metadata);
        x24 x24VarK3 = K2();
        this.prevAnimator = x24VarK3 != null ? ViewAnimator.i(n4().m).v(-p4(), 0.0f).c(n4().l).o(1.0f, 0.9f).f(300L).m(new qw(this)).j(new AccelerateDecelerateInterpolator()).d(x24VarK3).r() : null;
        X3(metadata);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a5(LyricsInfo lyricsInfo, Continuation continuation) throws Throwable {
        AudioPreviewFragment$updateLyricsWithLimitedLines$1 audioPreviewFragment$updateLyricsWithLimitedLines$1;
        String str;
        float f2;
        AudioPreviewFragment audioPreviewFragment;
        if (continuation instanceof AudioPreviewFragment$updateLyricsWithLimitedLines$1) {
            audioPreviewFragment$updateLyricsWithLimitedLines$1 = (AudioPreviewFragment$updateLyricsWithLimitedLines$1) continuation;
            int i2 = audioPreviewFragment$updateLyricsWithLimitedLines$1.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                audioPreviewFragment$updateLyricsWithLimitedLines$1.label = i2 - Integer.MIN_VALUE;
            } else {
                audioPreviewFragment$updateLyricsWithLimitedLines$1 = new AudioPreviewFragment$updateLyricsWithLimitedLines$1(this, continuation);
            }
        } else {
            audioPreviewFragment$updateLyricsWithLimitedLines$1 = new AudioPreviewFragment$updateLyricsWithLimitedLines$1(this, continuation);
        }
        Object obj = audioPreviewFragment$updateLyricsWithLimitedLines$1.result;
        Object objF = pr3.f();
        int i3 = audioPreviewFragment$updateLyricsWithLimitedLines$1.label;
        if (i3 == 0) {
            kotlin.c.b(obj);
            StringBuilder sb = new StringBuilder();
            List listC = lyricsInfo.c();
            if (listC != null) {
                Iterator it2 = listC.iterator();
                while (it2.hasNext()) {
                    sb.append(((yf4) it2.next()).c());
                    sb.append("\n");
                }
            }
            String string = sb.toString();
            or3.e(string, "toString(...)");
            String strU0 = StringsKt__StringsKt.u0(string, "\n");
            float lineSpacingExtra = n4().D.getLineSpacingExtra();
            TextView textView = n4().D;
            or3.e(textView, "tvLyric");
            audioPreviewFragment$updateLyricsWithLimitedLines$1.L$0 = this;
            audioPreviewFragment$updateLyricsWithLimitedLines$1.L$1 = strU0;
            audioPreviewFragment$updateLyricsWithLimitedLines$1.F$0 = lineSpacingExtra;
            audioPreviewFragment$updateLyricsWithLimitedLines$1.label = 1;
            Object objF2 = ViewKt.f(textView, audioPreviewFragment$updateLyricsWithLimitedLines$1);
            if (objF2 == objF) {
                return objF;
            }
            str = strU0;
            f2 = lineSpacingExtra;
            obj = objF2;
            audioPreviewFragment = this;
        } else {
            if (i3 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            float f3 = audioPreviewFragment$updateLyricsWithLimitedLines$1.F$0;
            str = (String) audioPreviewFragment$updateLyricsWithLimitedLines$1.L$1;
            audioPreviewFragment = (AudioPreviewFragment) audioPreviewFragment$updateLyricsWithLimitedLines$1.L$0;
            kotlin.c.b(obj);
            f2 = f3;
        }
        Pair pair = (Pair) obj;
        StaticLayout staticLayout = new StaticLayout(str, audioPreviewFragment.n4().D.getPaint(), ((Number) pair.getFirst()).intValue(), Layout.Alignment.ALIGN_NORMAL, 1.0f, f2, true);
        int lineCount = (staticLayout.getLineCount() * ((Number) pair.getSecond()).intValue()) / staticLayout.getHeight();
        ProductionEnv.d("AudioPreviewFragment", StringsKt__IndentKt.f("\n      viewSize=" + pair + ", lines=" + lineCount + ", \n      lineCount=" + staticLayout.getLineCount() + ", height=" + staticLayout.getHeight() + "\n    "));
        TextView textView2 = audioPreviewFragment.n4().D;
        textView2.setMaxLines(lineCount);
        textView2.setText(str);
        return mg8.a;
    }

    public final void b5(PlaybackStateCompat state) {
        ProductionEnv.d("AudioPreviewFragment", "updatePlaybackState: " + state.getState() + ", pos: " + state.getPosition());
        int state2 = state.getState();
        if (state2 == 2 || state2 == 3) {
            c5(state.getPosition());
        }
    }

    public final void c5(long progress) {
        if (this.dragging) {
            return;
        }
        n4().z.setProgress((int) progress);
    }

    public final int d4() {
        return requireView().getHeight() - ((int) n4().e.getY());
    }

    @Override
    public void dismiss() {
        DynamicLyricFragment.Companion aVar = DynamicLyricFragment.INSTANCE;
        FragmentManager childFragmentManager = getChildFragmentManager();
        or3.e(childFragmentManager, "getChildFragmentManager(...)");
        aVar.a(childFragmentManager);
        super.dismiss();
    }

    public final void e4() {
        tt3 tt3Var;
        tt3 tt3Var2 = this.firstCoverLoadJob;
        if (tt3Var2 == null || !tt3Var2.isActive() || (tt3Var = this.firstCoverLoadJob) == null) {
            return;
        }
        tt3.a.a(tt3Var, null, 1, null);
    }

    public final void f4() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            arguments.remove("from");
        }
    }

    public final void g4(String action, String triggerTag, boolean fromIntent) {
        String strJ4 = fromIntent ? j4() : "music_detail";
        PreviewTracker previewTracker = new PreviewTracker();
        previewTracker.d().setEventName("Click");
        previewTracker.d().setAction(action);
        previewTracker.g(this.secretMedia ? "vault_music" : "myfiles_download");
        previewTracker.c(strJ4);
        ld3 ld3Var = this.playController;
        if (ld3Var == null) {
            or3.w("playController");
            ld3Var = null;
        }
        previewTracker.e((MediaMetadataCompat) ld3Var.getMetadata().f());
        previewTracker.h("trigger_tag", triggerTag);
        previewTracker.i();
    }

    public final void i4(String fileName) {
        if (!this.secretMedia) {
            tq2.J(tq2.M(tq2.u(tq2.M(r4().B(fileName), new AudioPreviewFragment$displayLyricsOrPlaylist$1(this, null))), new AudioPreviewFragment$displayLyricsOrPlaylist$2(this, null)), y24.a(this));
            return;
        }
        t4(true);
        ConstraintLayout constraintLayout = n4().u;
        or3.e(constraintLayout, "lyricBox");
        constraintLayout.setVisibility(8);
    }

    public final String j4() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments.getString("from");
        }
        return null;
    }

    public final String k4() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments.getString("extra_trigger_tag");
        }
        return null;
    }

    public final AudioPreviewAdController l4() {
        return (AudioPreviewAdController) this.audioPreviewAdController.getValue();
    }

    public final ys2 n4() {
        return (ys2) this.binding.getValue();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        PopupNestedContentLayout popupNestedContentLayoutB = n4().b();
        or3.e(popupNestedContentLayoutB, "getRoot(...)");
        sr7.h(popupNestedContentLayoutB, false, true, false, 5, null);
        getLifecycle().a(l4());
        ld3 ld3VarJ0 = o4().j0();
        if (ld3VarJ0 == null) {
            FragmentActivity activity = getActivity();
            if (activity != null) {
                activity.finish();
                return;
            }
            return;
        }
        this.playController = ld3VarJ0;
        this.pauseDrawable = androidx.core.content.res.a.f(getResources(), R.drawable.ic_pause_filled, null);
        this.playDrawable = androidx.core.content.res.a.f(getResources(), R.drawable.ic_play_filled, null);
        this.timeTrackHelper = new ForegroundTimeTrackHelper(this);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        or3.f(inflater, "inflater");
        PopupNestedContentLayout popupNestedContentLayoutB = n4().b();
        or3.e(popupNestedContentLayoutB, "getRoot(...)");
        return popupNestedContentLayoutB;
    }

    @Override
    public void onDestroyView() {
        MusicBarViewModel.a aVar = MusicBarViewModel.f;
        ld3 ld3Var = this.playController;
        ld3 ld3Var2 = null;
        if (ld3Var == null) {
            or3.w("playController");
            ld3Var = null;
        }
        MediaMetadataCompat mediaMetadataCompat = (MediaMetadataCompat) ld3Var.getMetadata().f();
        ld3 ld3Var3 = this.playController;
        if (ld3Var3 == null) {
            or3.w("playController");
        } else {
            ld3Var2 = ld3Var3;
        }
        aVar.d(mediaMetadataCompat, (PlaybackStateCompat) ld3Var2.getPlaybackState().f());
        if (this.secretMedia) {
            PlayerService.Companion companion = PlayerService.INSTANCE;
            Context contextRequireContext = requireContext();
            or3.e(contextRequireContext, "requireContext(...)");
            companion.j(contextRequireContext, PlayerType.LOCAL);
        }
        aVar.f();
        super.onDestroyView();
    }

    @Override
    public void onNewIntent(Intent intent) {
        or3.f(intent, "intent");
        o4().J0();
        s4();
    }

    @Override
    public void onPause() {
        f4();
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
        L4();
    }

    @Override
    public void onStart() {
        super.onStart();
        requireActivity().bindService(new Intent(requireActivity(), (Class<?>) PlayerService.class), this.musicServiceConn, 1);
    }

    @Override
    public void onStop() {
        if (this.boundMusicService) {
            requireActivity().unbindService(this.musicServiceConn);
            this.boundMusicService = false;
        }
        super.onStop();
    }

    @Override
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        or3.f(view, MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW);
        super.onViewCreated(view, savedInstanceState);
        Q2().setNeedFirstAttachAnimation(false);
        Q2().setFullScreenEnable(true);
        Q2().k();
        Q2().setBackpressListener(new kw(this));
        C4();
        v4();
        u4();
        s4();
        l4().M(n4());
        n4().d.setRxFragment(this);
        U2(new nw(this));
        this.firstCoverLoadJob = R4();
    }

    public final int p4() {
        return ((Number) this.screenWidth.getValue()).intValue();
    }

    public final boolean q4() {
        return ((Boolean) this.shortScreen.getValue()).booleanValue();
    }

    public final AudioPreviewViewModel r4() {
        return (AudioPreviewViewModel) this.viewModel.getValue();
    }

    public final void s4() {
        y24.a(this).f(new AudioPreviewFragment$handleArgs$1(this, null));
    }

    public final void t4(boolean visible) {
        if (!visible) {
            NestedBottomSheetHost nestedBottomSheetHost = n4().w;
            or3.e(nestedBottomSheetHost, "nbsHost");
            nestedBottomSheetHost.setVisibility(8);
            return;
        }
        NestedBottomSheetHost nestedBottomSheetHost2 = n4().w;
        or3.e(nestedBottomSheetHost2, "nbsHost");
        nestedBottomSheetHost2.setVisibility(0);
        if (this.audioListFragment == null) {
            AudioPlayListFragment audioPlayListFragmentA = AudioPlayListFragment.INSTANCE.a(this.secretMedia);
            audioPlayListFragmentA.f3(new AudioPreviewFragment$handlePlaylistVisible$fragment$1$1(this));
            audioPlayListFragmentA.d3(new AudioPreviewFragment$handlePlaylistVisible$fragment$1$2(this));
            audioPlayListFragmentA.e3(new AudioPreviewFragment$handlePlaylistVisible$fragment$1$3(this));
            FragmentManager childFragmentManager = getChildFragmentManager();
            or3.e(childFragmentManager, "getChildFragmentManager(...)");
            FragmentTransaction fragmentTransactionBeginTransaction = childFragmentManager.beginTransaction();
            or3.e(fragmentTransactionBeginTransaction, "beginTransaction()");
            fragmentTransactionBeginTransaction.add(n4().y.getId(), audioPlayListFragmentA);
            fragmentTransactionBeginTransaction.commitAllowingStateLoss();
            this.audioListFragment = audioPlayListFragmentA;
        }
    }

    public final ys2 u4() {
        ys2 ys2VarN4 = n4();
        ImageView imageView = ys2VarN4.p;
        or3.e(imageView, "ivNext");
        et0.c(imageView, 0.0f, 1, null);
        ImageView imageView2 = ys2VarN4.r;
        or3.e(imageView2, "ivPrevious");
        et0.c(imageView2, 0.0f, 1, null);
        FrameLayout frameLayout = ys2VarN4.x;
        or3.e(frameLayout, "playPauseBox");
        et0.c(frameLayout, 0.0f, 1, null);
        ImageView imageView3 = ys2VarN4.q;
        or3.e(imageView3, "ivPlayPause");
        et0.a(imageView3, 0.0f);
        m4().T(new c(ys2VarN4, this));
        return ys2VarN4;
    }

    public final ys2 v4() {
        ys2 ys2VarN4 = n4();
        ys2VarN4.z.setOnSeekBarChangeListener(this.seekBarChangeListener);
        FrameLayout frameLayout = ys2VarN4.B;
        or3.e(frameLayout, "toolbar");
        sr7.h(frameLayout, true, false, true, 2, null);
        ImageView imageView = ys2VarN4.p;
        or3.e(imageView, "ivNext");
        ViewKt.t(imageView, new AudioPreviewFragment$initView$1$1(this));
        ImageView imageView2 = ys2VarN4.r;
        or3.e(imageView2, "ivPrevious");
        ViewKt.t(imageView2, new AudioPreviewFragment$initView$1$2(this));
        ys2VarN4.x.setOnClickListener(new rw(this));
        ys2VarN4.q.setOnClickListener(new sw(this));
        ys2VarN4.t.setOnClickListener(new tw(this));
        ys2VarN4.D.setOnClickListener(new uw(this));
        ys2VarN4.E.setOnClickListener(new vw(this));
        ys2VarN4.B.setOnClickListener(new lw(this));
        ys2VarN4.A.setScrollListener(new d());
        ConstraintLayout constraintLayout = ys2VarN4.u;
        or3.e(constraintLayout, "lyricBox");
        ViewGroup.LayoutParams layoutParams = constraintLayout.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        if (q4()) {
            marginLayoutParams.topMargin = xp2.a(16.0f);
            marginLayoutParams.bottomMargin = xp2.a(16.0f);
        } else {
            marginLayoutParams.topMargin = xp2.a(40.0f);
            marginLayoutParams.bottomMargin = xp2.a(24.0f);
        }
        constraintLayout.setLayoutParams(marginLayoutParams);
        SquareCardView squareCardView = ys2VarN4.l;
        or3.e(squareCardView, "cvCoverBack");
        ViewGroup.LayoutParams layoutParams2 = squareCardView.getLayoutParams();
        if (layoutParams2 == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        }
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
        marginLayoutParams2.topMargin = ((p4() - marginLayoutParams2.width) / 2) + 48;
        squareCardView.setLayoutParams(marginLayoutParams2);
        return ys2VarN4;
    }
}
