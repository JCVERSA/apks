package com.snaptube.premium.activity;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.phoenix.extensions.PagerSlidingTabStrip;
import com.snaptube.base.ktx.ObservableKt;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import com.snaptube.exoplayer.impl.BasePlayerView;
import com.snaptube.exoplayer.impl.VideoDetailInfo;
import com.snaptube.extractor.pluginlib.models.Format;
import com.snaptube.ktx.fragment.FragmentKt;
import com.snaptube.mixed_list.NavigableMultiTabFragment;
import com.snaptube.premium.NavigationManager;
import com.snaptube.premium.R;
import com.snaptube.premium.fragment.youtube.YtbWaterFallCommentsFragment;
import com.snaptube.premium.log.ReportPropertyBuilder;
import com.snaptube.premium.log.video.VideoTracker;
import com.snaptube.premium.onlineaudio.OnlineAudioUtils;
import com.snaptube.premium.playback.detail.VideoPlaybackController;
import com.snaptube.premium.playback.detail.VideoPlaybackFragment;
import com.snaptube.premium.views.playback.AppBarLayoutWithoutInterceptBehavior;
import com.snaptube.premium.views.playback.NestRecyclerViewFrameLayout;
import com.snaptube.premium.views.viewanimator.ViewAnimatorHelper;
import com.snaptube.premium.youtube.comment.CommentViewModel;
import com.vungle.ads.internal.protos.Sdk;
import com.wandoujia.base.utils.RxBus;
import com.wandoujia.em.common.protomodel.Card;
import com.wandoujia.em.common.protomodel.ListPageResponse;
import com.wandoujia.em.common.protomodel.Tab;
import com.wandoujia.em.common.protomodel.TabResponse;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import o.a58;
import o.ah7;
import o.az7;
import o.b6;
import o.bh7;
import o.cu7;
import o.cw0;
import o.cy2;
import o.dx2;
import o.ei0;
import o.fc1;
import o.ih6;
import o.ke3;
import o.kf5;
import o.kf9;
import o.kh3;
import o.mf3;
import o.or3;
import o.pg9;
import o.pj5;
import o.qe9;
import o.qg9;
import o.qv2;
import o.rg9;
import o.ri0;
import o.sg9;
import o.t14;
import o.tg9;
import o.ti3;
import o.u0;
import o.uf3;
import o.ug5;
import o.ux2;
import o.vq6;
import o.wi3;
import o.wu7;
import o.wz7;
import o.x24;
import o.xz7;
import o.yi3;
import o.yu0;
import o.z34;
import o.zv4;
import o.zw5;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000 \u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0002×\u0001\u0018\u0000 ä\u00012\u00020\u00012\u00020\u00022\u00020\u0003:\u0002å\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\u0005J\u0011\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000f\u0010\u0005J\u000f\u0010\u0010\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0010\u0010\u0005J\u0017\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0016\u0010\u0014J\u000f\u0010\u0017\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0017\u0010\u0005J\u000f\u0010\u0018\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0018\u0010\u0005J\u0017\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0019\u0010\u001e\u001a\u00020\b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0019H\u0002¢\u0006\u0004\b\u001e\u0010\u001cJ\u000f\u0010\u001f\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001f\u0010\u0005J\u000f\u0010 \u001a\u00020\bH\u0002¢\u0006\u0004\b \u0010\u0005J'\u0010'\u001a\u00020&2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0!2\b\u0010%\u001a\u0004\u0018\u00010$H\u0002¢\u0006\u0004\b'\u0010(J\u0017\u0010+\u001a\u00020*2\u0006\u0010)\u001a\u00020$H\u0002¢\u0006\u0004\b+\u0010,J\u0011\u0010.\u001a\u0004\u0018\u00010-H\u0002¢\u0006\u0004\b.\u0010/J\u0017\u00102\u001a\u00020*2\u0006\u00101\u001a\u000200H\u0002¢\u0006\u0004\b2\u00103J\u0017\u00104\u001a\u0002002\u0006\u00101\u001a\u000200H\u0002¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020$H\u0002¢\u0006\u0004\b6\u00107J\u000f\u00108\u001a\u00020*H\u0002¢\u0006\u0004\b8\u00109J\u000f\u0010:\u001a\u00020\bH\u0002¢\u0006\u0004\b:\u0010\u0005J\u0011\u0010<\u001a\u0004\u0018\u00010;H\u0002¢\u0006\u0004\b<\u0010=J\u000f\u0010>\u001a\u00020\bH\u0002¢\u0006\u0004\b>\u0010\u0005J\u0017\u0010A\u001a\u00020\b2\u0006\u0010@\u001a\u00020?H\u0016¢\u0006\u0004\bA\u0010BJ\u0019\u0010E\u001a\u00020\b2\b\u0010D\u001a\u0004\u0018\u00010CH\u0016¢\u0006\u0004\bE\u0010FJ-\u0010L\u001a\u0004\u0018\u00010K2\u0006\u0010H\u001a\u00020G2\b\u0010J\u001a\u0004\u0018\u00010I2\b\u0010D\u001a\u0004\u0018\u00010CH\u0016¢\u0006\u0004\bL\u0010MJ!\u0010O\u001a\u00020\b2\u0006\u0010N\u001a\u00020K2\b\u0010D\u001a\u0004\u0018\u00010CH\u0016¢\u0006\u0004\bO\u0010PJ\u0019\u0010Q\u001a\u00020\b2\b\u0010D\u001a\u0004\u0018\u00010CH\u0016¢\u0006\u0004\bQ\u0010FJ/\u0010X\u001a\u00020\b2\f\u0010T\u001a\b\u0012\u0004\u0012\u00020S0R2\u0006\u0010U\u001a\u00020\u00112\b\u0010W\u001a\u0004\u0018\u00010VH\u0014¢\u0006\u0004\bX\u0010YJ\u000f\u0010Z\u001a\u00020\bH\u0014¢\u0006\u0004\bZ\u0010\u0005J\u001f\u0010^\u001a\u00020\b2\u0006\u0010\\\u001a\u00020[2\u0006\u0010H\u001a\u00020]H\u0016¢\u0006\u0004\b^\u0010_J\u000f\u0010a\u001a\u00020`H\u0014¢\u0006\u0004\ba\u0010bJ)\u0010e\u001a\u00020*2\u0006\u0010@\u001a\u00020?2\b\u0010\u001d\u001a\u0004\u0018\u00010\u00192\u0006\u0010d\u001a\u00020cH\u0016¢\u0006\u0004\be\u0010fJ\r\u0010g\u001a\u00020$¢\u0006\u0004\bg\u00107J\r\u0010h\u001a\u00020\b¢\u0006\u0004\bh\u0010\u0005J\u001b\u0010j\u001a\u0004\u0018\u0001002\b\u0010i\u001a\u0004\u0018\u000100H\u0016¢\u0006\u0004\bj\u00105J\u000f\u0010k\u001a\u00020\bH\u0016¢\u0006\u0004\bk\u0010\u0005J\u0017\u0010m\u001a\u00020*2\u0006\u0010l\u001a\u00020\u0011H\u0016¢\u0006\u0004\bm\u0010nJ\u000f\u0010o\u001a\u00020\bH\u0016¢\u0006\u0004\bo\u0010\u0005Jm\u0010z\u001a\u00020\b2\b\u0010p\u001a\u0004\u0018\u00010$2\b\u0010q\u001a\u0004\u0018\u00010$2\b\u0010r\u001a\u0004\u0018\u00010$2\b\u0010s\u001a\u0004\u0018\u00010$2\b\u0010t\u001a\u0004\u0018\u00010$2\b\u0010u\u001a\u0004\u0018\u00010$2\b\u0010v\u001a\u0004\u0018\u00010$2\u0006\u0010w\u001a\u00020*2\b\u0010x\u001a\u0004\u0018\u00010$2\u0006\u0010y\u001a\u00020*¢\u0006\u0004\bz\u0010{J\u0015\u0010}\u001a\u00020\b2\u0006\u0010|\u001a\u00020\u0002¢\u0006\u0004\b}\u0010~J0\u0010\u0082\u0001\u001a\u00020\b2\b\u0010\u007f\u001a\u0004\u0018\u00010$2\b\u0010r\u001a\u0004\u0018\u00010$2\n\u0010\u0081\u0001\u001a\u0005\u0018\u00010\u0080\u0001¢\u0006\u0006\b\u0082\u0001\u0010\u0083\u0001J\u001c\u0010\u0085\u0001\u001a\u00020\b2\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0005\b\u0085\u0001\u0010\u001cJ\u0011\u0010\u0086\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0086\u0001\u0010\u0005J&\u0010\u0089\u0001\u001a\u00020\b2\u0007\u0010\u0087\u0001\u001a\u00020*2\t\u0010\u0088\u0001\u001a\u0004\u0018\u00010cH\u0016¢\u0006\u0006\b\u0089\u0001\u0010\u008a\u0001R\u001c\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008b\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u008d\u0001R\u001b\u0010\u0091\u0001\u001a\u0004\u0018\u00010K8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0090\u0001R*\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\b\u0092\u0001\u0010\u0093\u0001\u001a\u0006\b\u0094\u0001\u0010\u0095\u0001\"\u0005\b\u0096\u0001\u0010\u001cR,\u0010\u009e\u0001\u001a\u0005\u0018\u00010\u0098\u00018\u0000@\u0000X\u0080\u000e¢\u0006\u0018\n\u0006\b\u0089\u0001\u0010\u0099\u0001\u001a\u0006\b\u009a\u0001\u0010\u009b\u0001\"\u0006\b\u009c\u0001\u0010\u009d\u0001R \u0010p\u001a\u0004\u0018\u00010$8FX\u0086\u0084\u0002¢\u0006\u000f\n\u0006\b\u009f\u0001\u0010 \u0001\u001a\u0005\b¡\u0001\u00107R\u001b\u0010¤\u0001\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¢\u0001\u0010£\u0001R\u001a\u0010s\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¥\u0001\u0010£\u0001R\u001a\u0010t\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¦\u0001\u0010£\u0001R\u001a\u0010x\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b§\u0001\u0010£\u0001R\u001a\u0010u\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¨\u0001\u0010£\u0001R\u001a\u0010v\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b©\u0001\u0010£\u0001R!\u0010®\u0001\u001a\u00030ª\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b«\u0001\u0010 \u0001\u001a\u0006\b¬\u0001\u0010\u00ad\u0001R\u001c\u0010²\u0001\u001a\u0005\u0018\u00010¯\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b°\u0001\u0010±\u0001R\u001b\u0010µ\u0001\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b³\u0001\u0010´\u0001R\u001b\u0010·\u0001\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¶\u0001\u0010£\u0001R\u001c\u0010»\u0001\u001a\u0005\u0018\u00010¸\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¹\u0001\u0010º\u0001R\u001c\u0010¿\u0001\u001a\u0005\u0018\u00010¼\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b½\u0001\u0010¾\u0001R!\u0010Ä\u0001\u001a\u00030À\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÁ\u0001\u0010 \u0001\u001a\u0006\bÂ\u0001\u0010Ã\u0001R\u0019\u0010Æ\u0001\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÅ\u0001\u0010£\u0001R\u0019\u0010È\u0001\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÇ\u0001\u0010¶\u0001R\u001b\u0010Ê\u0001\u001a\u0004\u0018\u00010K8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÉ\u0001\u0010\u0090\u0001R*\u0010Ð\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\bË\u0001\u0010Ì\u0001\u001a\u0006\bÍ\u0001\u0010Î\u0001\"\u0005\bÏ\u0001\u0010~R\u0019\u0010Ò\u0001\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÑ\u0001\u0010¶\u0001R\u001c\u0010Ö\u0001\u001a\u0005\u0018\u00010Ó\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÔ\u0001\u0010Õ\u0001R\u0018\u0010Ú\u0001\u001a\u00030×\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bØ\u0001\u0010Ù\u0001R\u0018\u0010Ý\u0001\u001a\u00030\u008b\u00018BX\u0082\u0004¢\u0006\b\u001a\u0006\bÛ\u0001\u0010Ü\u0001R\u0018\u0010ß\u0001\u001a\u0004\u0018\u00010$8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\bÞ\u0001\u00107R\u001a\u0010ã\u0001\u001a\u0005\u0018\u00010à\u00018@X\u0080\u0004¢\u0006\b\u001a\u0006\bá\u0001\u0010â\u0001¨\u0006æ\u0001"}, d2 = {"Lcom/snaptube/premium/activity/YtbPlaylistTabFragment;", "Lcom/snaptube/mixed_list/NavigableMultiTabFragment;", "Lcom/snaptube/premium/activity/YtbPlaylistFragment$b;", "Lo/ug5;", "<init>", "()V", "Lo/ei0;", "cardBuilder", "Lo/mg8;", "n4", "(Lo/ei0;)V", "N4", "Lo/wi3;", "s4", "()Lo/wi3;", "U4", "G4", "", "verticalOffset", "t4", "(I)V", "top", "T4", "J4", "I4", "Lcom/wandoujia/em/common/protomodel/Card;", "it", "Y4", "(Lcom/wandoujia/em/common/protomodel/Card;)V", "card", "X4", "q4", "o4", "", "Lo/pj5;", "mediaList", "", Format.Fields.PLAY_URL, "", "w4", "(Ljava/util/List;Ljava/lang/String;)J", "action", "", "V4", "(Ljava/lang/String;)Z", "Lcom/snaptube/premium/views/playback/NestRecyclerViewFrameLayout;", "C4", "()Lcom/snaptube/premium/views/playback/NestRecyclerViewFrameLayout;", "Lcom/wandoujia/em/common/protomodel/TabResponse;", "tabResponse", "K4", "(Lcom/wandoujia/em/common/protomodel/TabResponse;)Z", "P4", "(Lcom/wandoujia/em/common/protomodel/TabResponse;)Lcom/wandoujia/em/common/protomodel/TabResponse;", "F4", "()Ljava/lang/String;", "L4", "()Z", "Q4", "Lcom/snaptube/premium/activity/YtbPlaylistFragment;", "b5", "()Lcom/snaptube/premium/activity/YtbPlaylistFragment;", "a5", "Landroid/content/Context;", "context", "onAttach", "(Landroid/content/Context;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onActivityCreated", "", "Lo/wz7;", "delegates", "selectedTabIndex", "Lcom/wandoujia/em/common/protomodel/ListPageResponse;", "page", "E3", "(Ljava/util/List;ILcom/wandoujia/em/common/protomodel/ListPageResponse;)V", "X2", "Landroid/view/Menu;", "menu", "Landroid/view/MenuInflater;", "onCreateOptionsMenu", "(Landroid/view/Menu;Landroid/view/MenuInflater;)V", "Lo/u0;", "M2", "()Lo/u0;", "Landroid/content/Intent;", "intent", "l0", "(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)Z", "x4", "r4", "response", "r3", "A3", "position", "k2", "(I)Z", "onDestroyView", "playlistUrl", "url", "videoUrl", "query", "queryFrom", "videoTitle", IntentUtil.POS, "videoIsLive", "listTitle", "isFromPIP", "R4", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "S4", "(Lcom/snaptube/premium/activity/YtbPlaylistFragment$b;)V", "recommendUrl", "Lcom/snaptube/exoplayer/impl/VideoDetailInfo;", "videoDetailInfo", "Z4", "(Ljava/lang/String;Ljava/lang/String;Lcom/snaptube/exoplayer/impl/VideoDetailInfo;)V", "videoCard", "i0", "u", "login", "actionAfterLogin", "O", "(ZLandroid/content/Intent;)V", "Lo/qv2;", "L", "Lo/qv2;", "_binding", "M", "Landroid/view/View;", "headCardView", "N", "Lcom/wandoujia/em/common/protomodel/Card;", "E4", "()Lcom/wandoujia/em/common/protomodel/Card;", "setWatchHeadCard", "watchHeadCard", "Lcom/snaptube/premium/playback/detail/VideoPlaybackController;", "Lcom/snaptube/premium/playback/detail/VideoPlaybackController;", "D4", "()Lcom/snaptube/premium/playback/detail/VideoPlaybackController;", "setVideoPlaybackController$snaptube_classicNormalRelease", "(Lcom/snaptube/premium/playback/detail/VideoPlaybackController;)V", "videoPlaybackController", "P", "Lo/t14;", "A4", "Q", "Ljava/lang/String;", "currentPlayVideoUrl", "R", "S", "T", "U", "V", "Lcom/snaptube/premium/youtube/comment/CommentViewModel;", "W", "v4", "()Lcom/snaptube/premium/youtube/comment/CommentViewModel;", "commentViewModel", "Lo/ke3;", "X", "Lo/ke3;", "mixedListDelegate", "Y", "Lo/wi3;", "parseListener", "Z", "commentNextOffset", "Lo/ah7;", "f0", "Lo/ah7;", "commentSkeletonScreen", "Lo/wu7;", "v0", "Lo/wu7;", "subscription", "Lo/ti3;", "w0", "B4", "()Lo/ti3;", "userManager", "x0", "tabsReportStr", "y0", "tabExposureReported", "z0", "commentSectionView", "A0", "Lcom/snaptube/premium/activity/YtbPlaylistFragment$b;", "getLoadListener", "()Lcom/snaptube/premium/activity/YtbPlaylistFragment$b;", "setLoadListener", "loadListener", "B0", "isAccountChange", "Lcom/snaptube/premium/fragment/youtube/YtbWaterFallCommentsFragment;", "C0", "Lcom/snaptube/premium/fragment/youtube/YtbWaterFallCommentsFragment;", "ytbWaterFallCommentsFragment", "com/snaptube/premium/activity/YtbPlaylistTabFragment$b", "D0", "Lcom/snaptube/premium/activity/YtbPlaylistTabFragment$b;", "onOffsetChangedListener", "u4", "()Lo/qv2;", "binding", "y4", "pageFrom", "Lo/uf3;", "z4", "()Lo/uf3;", "playbackPresenter", "E0", "a", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nYtbPlaylistTabFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 YtbPlaylistTabFragment.kt\ncom/snaptube/premium/activity/YtbPlaylistTabFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 Any.kt\ncom/snaptube/ktx/AnyKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,702:1\n56#2,10:703\n260#3:713\n262#3,2:714\n329#3,4:716\n262#3,2:728\n8#4:720\n766#5:721\n857#5,2:722\n1549#5:724\n1620#5,3:725\n*S KotlinDebug\n*F\n+ 1 YtbPlaylistTabFragment.kt\ncom/snaptube/premium/activity/YtbPlaylistTabFragment\n*L\n106#1:703,10\n266#1:713\n345#1:714,2\n347#1:716,4\n683#1:728,2\n384#1:720\n557#1:721\n557#1:722,2\n564#1:724\n564#1:725,3\n*E\n"})
public final class YtbPlaylistTabFragment extends NavigableMultiTabFragment implements YtbPlaylistFragment.b, ug5 {

    public YtbPlaylistFragment.b loadListener;

    public boolean isAccountChange;

    public YtbWaterFallCommentsFragment ytbWaterFallCommentsFragment;

    public final b onOffsetChangedListener;

    public qv2 _binding;

    public View headCardView;

    public Card watchHeadCard;

    public VideoPlaybackController videoPlaybackController;

    public final t14 playlistUrl = kotlin.b.b(new YtbPlaylistTabFragment$playlistUrl$2(this));

    public String currentPlayVideoUrl;

    public String query;

    public String queryFrom;

    public String listTitle;

    public String videoTitle;

    public String pos;

    public final t14 commentViewModel;

    public ke3 mixedListDelegate;

    public wi3 parseListener;

    public String commentNextOffset;

    public ah7 commentSkeletonScreen;

    public wu7 subscription;

    public final t14 userManager;

    public String tabsReportStr;

    public boolean tabExposureReported;

    public View commentSectionView;

    public static final class b implements AppBarLayout.d {
        public b() {
        }

        @Override
        public void a(AppBarLayout appBarLayout, int i) {
            or3.f(appBarLayout, "appBar");
            if (FragmentKt.d(YtbPlaylistTabFragment.this)) {
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                View viewC4 = YtbPlaylistTabFragment.c4(YtbPlaylistTabFragment.this);
                int height = totalScrollRange - (viewC4 != null ? viewC4.getHeight() : 0);
                int iAbs = Math.abs(i);
                View viewC5 = YtbPlaylistTabFragment.c4(YtbPlaylistTabFragment.this);
                int height2 = iAbs - (viewC5 != null ? viewC5.getHeight() : 0);
                if (height2 < 0) {
                    YtbPlaylistTabFragment.X3(YtbPlaylistTabFragment.this, i);
                    return;
                }
                float fMin = Math.min(1.0f, height2 / height);
                YtbPlaylistTabFragment.Y3(YtbPlaylistTabFragment.this).k.setAlpha(fMin);
                float height3 = (1 - fMin) * YtbPlaylistTabFragment.Y3(YtbPlaylistTabFragment.this).k.getHeight();
                YtbPlaylistTabFragment.Y3(YtbPlaylistTabFragment.this).k.setTranslationY(height3);
                PagerSlidingTabStrip pagerSlidingTabStrip = YtbPlaylistTabFragment.Y3(YtbPlaylistTabFragment.this).k;
                or3.e(pagerSlidingTabStrip, "tabs");
                if (pagerSlidingTabStrip.getVisibility() == 0 && !YtbPlaylistTabFragment.e4(YtbPlaylistTabFragment.this) && YtbPlaylistTabFragment.Y3(YtbPlaylistTabFragment.this).k.getTranslationY() <= 1.0d) {
                    String strF4 = YtbPlaylistTabFragment.f4(YtbPlaylistTabFragment.this);
                    u0 u0VarD4 = YtbPlaylistTabFragment.d4(YtbPlaylistTabFragment.this);
                    VideoTracker.h(strF4, u0VarD4 != null ? u0VarD4.getCount() : 0, YtbPlaylistTabFragment.this.m(), YtbPlaylistTabFragment.h4(YtbPlaylistTabFragment.this), YtbPlaylistTabFragment.i4(YtbPlaylistTabFragment.this), YtbPlaylistTabFragment.g4(YtbPlaylistTabFragment.this).d());
                    YtbPlaylistTabFragment.k4(YtbPlaylistTabFragment.this, true);
                }
                YtbPlaylistTabFragment.l4(YtbPlaylistTabFragment.this, -((int) height3));
            }
        }
    }

    public static final class c implements kf5, cy2 {
        public final dx2 a;

        public c(dx2 dx2Var) {
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

    public YtbPlaylistTabFragment() {
        YtbPlaylistTabFragment$special$$inlined$viewModels$default$1 ytbPlaylistTabFragment$special$$inlined$viewModels$default$1 = new YtbPlaylistTabFragment$special$$inlined$viewModels$default$1(this);
        this.commentViewModel = FragmentViewModelLazyKt.createViewModelLazy(this, ih6.b(CommentViewModel.class), new YtbPlaylistTabFragment$special$$inlined$viewModels$default$2(ytbPlaylistTabFragment$special$$inlined$viewModels$default$1), new YtbPlaylistTabFragment$special$$inlined$viewModels$default$3(ytbPlaylistTabFragment$special$$inlined$viewModels$default$1, this));
        this.userManager = kotlin.b.b(YtbPlaylistTabFragment$userManager$2.INSTANCE);
        this.tabsReportStr = "";
        this.onOffsetChangedListener = new b();
    }

    private final ti3 B4() {
        return (ti3) this.userManager.getValue();
    }

    public static final void H4(YtbPlaylistTabFragment ytbPlaylistTabFragment) {
        or3.f(ytbPlaylistTabFragment, "this$0");
        if (FragmentKt.d(ytbPlaylistTabFragment)) {
            float height = ytbPlaylistTabFragment.u4().k.getHeight();
            ytbPlaylistTabFragment.u4().k.setAlpha(0.0f);
            ytbPlaylistTabFragment.u4().k.setTranslationY(height);
            ytbPlaylistTabFragment.T4(-((int) height));
        }
    }

    public static final void M4(YtbPlaylistTabFragment ytbPlaylistTabFragment) {
        or3.f(ytbPlaylistTabFragment, "this$0");
        ytbPlaylistTabFragment.a3(7);
    }

    private final void N4() {
        String string;
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString(IntentUtil.VIDEO_TITLE)) == null) {
            string = "";
        }
        this.videoTitle = string;
        Bundle arguments2 = getArguments();
        this.currentPlayVideoUrl = arguments2 != null ? arguments2.getString(CampaignEx.JSON_KEY_VIDEO_URL, null) : null;
        Bundle arguments3 = getArguments();
        this.query = arguments3 != null ? arguments3.getString("query") : null;
        Bundle arguments4 = getArguments();
        this.queryFrom = arguments4 != null ? arguments4.getString("query_from") : null;
        Bundle arguments5 = getArguments();
        this.listTitle = arguments5 != null ? arguments5.getString("playlistTitle") : null;
        Bundle arguments6 = getArguments();
        this.pos = arguments6 != null ? arguments6.getString(IntentUtil.POS) : null;
    }

    public static final void O4(YtbPlaylistTabFragment ytbPlaylistTabFragment) {
        View childAt;
        or3.f(ytbPlaylistTabFragment, "this$0");
        if (FragmentKt.d(ytbPlaylistTabFragment) && ytbPlaylistTabFragment.g.s()) {
            PagerSlidingTabStrip pagerSlidingTabStrip = ytbPlaylistTabFragment.g;
            LinearLayout tabsContainer = pagerSlidingTabStrip.getTabsContainer();
            pagerSlidingTabStrip.scrollTo((tabsContainer == null || (childAt = tabsContainer.getChildAt(0)) == null) ? 0 : childAt.getRight(), 0);
        }
    }

    public static void R3(YtbPlaylistTabFragment ytbPlaylistTabFragment, DialogInterface dialogInterface) {
        W4(ytbPlaylistTabFragment, dialogInterface);
    }

    public static void S3(YtbPlaylistTabFragment ytbPlaylistTabFragment) {
        O4(ytbPlaylistTabFragment);
    }

    public static void T3(YtbPlaylistTabFragment ytbPlaylistTabFragment) {
        H4(ytbPlaylistTabFragment);
    }

    public static void U3(YtbPlaylistTabFragment ytbPlaylistTabFragment) {
        M4(ytbPlaylistTabFragment);
    }

    private final void U4() {
        rx.c cVarG = RxBus.d().c(1263).g(RxBus.f);
        or3.e(cVarG, "compose(...)");
        this.subscription = ObservableKt.i(cVarG, new YtbPlaylistTabFragment$setupSubscription$1(this));
    }

    public static void V3(YtbPlaylistTabFragment ytbPlaylistTabFragment, View view) {
        p4(ytbPlaylistTabFragment, view);
    }

    public static final View W3(YtbPlaylistTabFragment ytbPlaylistTabFragment, int i) {
        return ytbPlaylistTabFragment.C2(i);
    }

    public static final void W4(YtbPlaylistTabFragment ytbPlaylistTabFragment, DialogInterface dialogInterface) {
        or3.f(ytbPlaylistTabFragment, "this$0");
        ytbPlaylistTabFragment.ytbWaterFallCommentsFragment = null;
    }

    public static final void X3(YtbPlaylistTabFragment ytbPlaylistTabFragment, int i) {
        ytbPlaylistTabFragment.t4(i);
    }

    public static final qv2 Y3(YtbPlaylistTabFragment ytbPlaylistTabFragment) {
        return ytbPlaylistTabFragment.u4();
    }

    public static final View Z3(YtbPlaylistTabFragment ytbPlaylistTabFragment) {
        return ytbPlaylistTabFragment.commentSectionView;
    }

    public static final ah7 a4(YtbPlaylistTabFragment ytbPlaylistTabFragment) {
        return ytbPlaylistTabFragment.commentSkeletonScreen;
    }

    public static final CommentViewModel b4(YtbPlaylistTabFragment ytbPlaylistTabFragment) {
        return ytbPlaylistTabFragment.v4();
    }

    public static final View c4(YtbPlaylistTabFragment ytbPlaylistTabFragment) {
        return ytbPlaylistTabFragment.headCardView;
    }

    public static final u0 d4(YtbPlaylistTabFragment ytbPlaylistTabFragment) {
        return ytbPlaylistTabFragment.i;
    }

    public static final boolean e4(YtbPlaylistTabFragment ytbPlaylistTabFragment) {
        return ytbPlaylistTabFragment.tabExposureReported;
    }

    public static final String f4(YtbPlaylistTabFragment ytbPlaylistTabFragment) {
        return ytbPlaylistTabFragment.tabsReportStr;
    }

    public static final ti3 g4(YtbPlaylistTabFragment ytbPlaylistTabFragment) {
        return ytbPlaylistTabFragment.B4();
    }

    public static final String h4(YtbPlaylistTabFragment ytbPlaylistTabFragment) {
        return ytbPlaylistTabFragment.videoTitle;
    }

    public static final String i4(YtbPlaylistTabFragment ytbPlaylistTabFragment) {
        return ytbPlaylistTabFragment.F4();
    }

    public static final void j4(YtbPlaylistTabFragment ytbPlaylistTabFragment, View view) {
        ytbPlaylistTabFragment.commentSectionView = view;
    }

    public static final void k4(YtbPlaylistTabFragment ytbPlaylistTabFragment, boolean z) {
        ytbPlaylistTabFragment.tabExposureReported = z;
    }

    public static final void l4(YtbPlaylistTabFragment ytbPlaylistTabFragment, int i) {
        ytbPlaylistTabFragment.T4(i);
    }

    public static final void m4(YtbPlaylistTabFragment ytbPlaylistTabFragment, Card card) {
        ytbPlaylistTabFragment.Y4(card);
    }

    public static final void p4(YtbPlaylistTabFragment ytbPlaylistTabFragment, View view) {
        or3.f(ytbPlaylistTabFragment, "this$0");
        or3.f(view, "$miniBar");
        VideoPlaybackController videoPlaybackController = ytbPlaylistTabFragment.videoPlaybackController;
        String strI0 = videoPlaybackController != null ? videoPlaybackController.I0() : null;
        if (strI0 == null) {
            return;
        }
        VideoPlaybackController videoPlaybackController2 = ytbPlaylistTabFragment.videoPlaybackController;
        BasePlayerView basePlayerViewN0 = videoPlaybackController2 != null ? videoPlaybackController2.N0() : null;
        if (basePlayerViewN0 == null) {
            return;
        }
        uf3 uf3VarZ4 = ytbPlaylistTabFragment.z4();
        ViewAnimatorHelper.H(uf3VarZ4 != null ? uf3VarZ4.getActivity() : null, basePlayerViewN0, view, strI0);
    }

    @Override
    public void A3() {
        super.A3();
        kh3 kh3VarK = vq6.K();
        ReportPropertyBuilder reportPropertyBuilder = new ReportPropertyBuilder();
        Bundle arguments = getArguments();
        kh3VarK.h("/youtube_playlist", reportPropertyBuilder.setProperty("from", arguments != null ? arguments.getString(IntentUtil.POS) : null));
    }

    public final String A4() {
        return (String) this.playlistUrl.getValue();
    }

    public final NestRecyclerViewFrameLayout C4() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof VideoPlaybackFragment) {
            return ((VideoPlaybackFragment) parentFragment).D3();
        }
        return null;
    }

    public final VideoPlaybackController getVideoPlaybackController() {
        return this.videoPlaybackController;
    }

    @Override
    public void E3(List delegates, int selectedTabIndex, ListPageResponse page) {
        String str;
        Map<String, String> map;
        or3.f(delegates, "delegates");
        super.E3(delegates, selectedTabIndex, page);
        if (delegates.size() == 1) {
            wz7 wz7Var = (wz7) CollectionsKt___CollectionsKt.W(delegates);
            if (or3.a(wz7Var != null ? wz7Var.b() : null, YtbPlaylistFragment.class)) {
                PagerSlidingTabStrip pagerSlidingTabStrip = u4().k;
                or3.e(pagerSlidingTabStrip, "tabs");
                pagerSlidingTabStrip.setVisibility(8);
                u4().e.setPadding(0, 0, 0, 0);
                NestedScrollView nestedScrollView = u4().j;
                or3.e(nestedScrollView, "svContainer");
                ViewGroup.LayoutParams layoutParams = nestedScrollView.getLayoutParams();
                if (layoutParams == null) {
                    throw new NullPointerException("null cannot be cast to non-null type com.google.android.material.appbar.CollapsingToolbarLayout.LayoutParams");
                }
                CollapsingToolbarLayout.c cVar = (CollapsingToolbarLayout.c) layoutParams;
                cVar.a(0);
                nestedScrollView.setLayoutParams(cVar);
                Q4();
            }
        }
        if (page == null || (map = page.extras) == null || (str = map.get("report_params")) == null) {
            str = "";
        }
        this.tabsReportStr = str;
        this.g.post(new pg9(this));
    }

    public final Card getWatchHeadCard() {
        return this.watchHeadCard;
    }

    public final String F4() {
        Bundle arguments = getArguments();
        if (arguments == null || !arguments.getBoolean("video_is_live")) {
            return kf9.j(m()) ? "shorts_video" : "non_shorts_video";
        }
        return "live";
    }

    public final void G4() {
        u4().b.post(new sg9(this));
        u4().b.b(this.onOffsetChangedListener);
        AppBarLayoutWithoutInterceptBehavior appBarLayoutWithoutInterceptBehavior = u4().b;
        or3.e(appBarLayoutWithoutInterceptBehavior, "appBarLayout");
        com.snaptube.premium.views.playback.a.a(appBarLayoutWithoutInterceptBehavior, !getTabs().isEmpty());
    }

    public final void I4() {
        x24 x24VarK2 = K2();
        if (x24VarK2 != null) {
            v4().M().i(x24VarK2, new c(new YtbPlaylistTabFragment$initEvents$1$1(this)));
        }
    }

    public final void J4() {
        if (this.parseListener != null) {
            ei0 ei0VarG = ei0.x().w(1175).g(Sdk.SDKError.Reason.AD_SERVER_ERROR_VALUE, this.listTitle);
            or3.c(ei0VarG);
            n4(ei0VarG);
            X4(ei0VarG.k());
        }
        ah7 ah7Var = this.commentSkeletonScreen;
        if (ah7Var == null) {
            this.commentSkeletonScreen = bh7.a.d(u4().d, R.layout.layout_skeleton_item_youtube_video_comment);
        } else if (ah7Var != null) {
            ah7Var.a();
        }
    }

    public final boolean K4(TabResponse tabResponse) {
        String str;
        if (tabResponse.tab.size() == 1) {
            List<Tab> list = tabResponse.tab;
            or3.e(list, "tab");
            Tab tab = (Tab) CollectionsKt___CollectionsKt.W(list);
            if (tab != null && (str = tab.action) != null) {
                Uri data = Intent.parseUri(str, 1).getData();
                String path = data != null ? data.getPath() : null;
                if (or3.a(path, "/list/youtube/mix") || or3.a(path, "/list/youtube/playlist")) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean L4() {
        wz7 wz7VarG;
        u0 u0Var = this.i;
        return or3.a((u0Var == null || (wz7VarG = u0Var.g(0)) == null) ? null : wz7VarG.b(), YtbPlaylistFragment.class);
    }

    @Override
    public u0 M2() {
        return new xz7(requireContext(), getChildFragmentManager(), true);
    }

    @Override
    public void O(boolean login, Intent actionAfterLogin) {
        this.isAccountChange = true;
    }

    public final TabResponse P4(TabResponse tabResponse) {
        List<Tab> list = tabResponse.tab;
        or3.e(list, "tab");
        ArrayList<Tab> arrayList = new ArrayList();
        for (Object obj : list) {
            boolean zA = true;
            try {
                Uri data = Intent.parseUri(((Tab) obj).action, 1).getData();
                zA = true ^ or3.a(data != null ? data.getPath() : null, "/list/youtube/watch/tab_mix");
            } catch (Exception unused) {
            }
            if (zA) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(yu0.r(arrayList, 10));
        for (Tab tab : arrayList) {
            Tab.Builder builderNewBuilder = tab.newBuilder();
            String string = Uri.parse(tab.action).buildUpon().appendQueryParameter("from", "ytb_playlist_tab").build().toString();
            or3.e(string, "toString(...)");
            builderNewBuilder.action = string;
            arrayList2.add(builderNewBuilder.build());
        }
        TabResponse tabResponseBuild = tabResponse.newBuilder().tab(arrayList2).build();
        or3.e(tabResponseBuild, "build(...)");
        return tabResponseBuild;
    }

    public final void Q4() {
        String str = this.currentPlayVideoUrl;
        if (str != null) {
            H3(true);
            String string = new Uri.Builder().path("/watch").appendQueryParameter("url", str).build().toString();
            or3.e(string, "toString(...)");
            G3(string, false);
        }
    }

    public final void R4(String playlistUrl, String url, String videoUrl, String query, String queryFrom, String videoTitle, String pos, boolean videoIsLive, String listTitle, boolean isFromPIP) {
        Bundle bundleRequireArguments;
        if (getArguments() == null) {
            bundleRequireArguments = new Bundle();
        } else {
            bundleRequireArguments = requireArguments();
            or3.e(bundleRequireArguments, "requireArguments(...)");
        }
        bundleRequireArguments.putString("playlistUrl", playlistUrl);
        bundleRequireArguments.putString("recommend_url", url);
        bundleRequireArguments.putString(CampaignEx.JSON_KEY_VIDEO_URL, videoUrl);
        bundleRequireArguments.putString("query", query);
        bundleRequireArguments.putString("query_from", queryFrom);
        bundleRequireArguments.putString(IntentUtil.VIDEO_TITLE, videoTitle);
        bundleRequireArguments.putString(IntentUtil.POS, pos);
        bundleRequireArguments.putString("playlistTitle", listTitle);
        bundleRequireArguments.putBoolean("video_is_live", videoIsLive);
        bundleRequireArguments.putBoolean("key_from_pip", isFromPIP);
        setArguments(bundleRequireArguments);
    }

    public final void S4(YtbPlaylistFragment.b listener) {
        or3.f(listener, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        this.loadListener = listener;
    }

    public final void T4(int top) {
        PagerSlidingTabStrip pagerSlidingTabStrip = u4().k;
        or3.e(pagerSlidingTabStrip, "tabs");
        if (pagerSlidingTabStrip.getVisibility() == 0) {
            u4().e.setPadding(0, top, 0, 0);
        }
    }

    public final boolean V4(String action) {
        Dialog dialog;
        cw0.k();
        if (getActivity() == null) {
            return false;
        }
        if (or3.a(action, "snaptube.intent.action.CLICK_COMMENT_EMPTY") && !B4().d() && getContext() != null) {
            NavigationManager.a1(getContext(), "from_ytb_video_detail_tab");
            return true;
        }
        NestRecyclerViewFrameLayout nestRecyclerViewFrameLayoutC4 = C4();
        if (nestRecyclerViewFrameLayoutC4 == null) {
            return true;
        }
        YtbWaterFallCommentsFragment ytbWaterFallCommentsFragment = this.ytbWaterFallCommentsFragment;
        if (ytbWaterFallCommentsFragment != null && (dialog = ytbWaterFallCommentsFragment.getDialog()) != null && dialog.isShowing()) {
            return true;
        }
        nestRecyclerViewFrameLayoutC4.j();
        YtbWaterFallCommentsFragment ytbWaterFallCommentsFragmentA = YtbWaterFallCommentsFragment.INSTANCE.a(m(), this.commentNextOffset, (nestRecyclerViewFrameLayoutC4.getBottom() - nestRecyclerViewFrameLayoutC4.getMinTop()) + requireContext().getResources().getDimensionPixelSize(R.dimen.navigation_bar_height), false);
        ytbWaterFallCommentsFragmentA.H2(new rg9(this));
        this.ytbWaterFallCommentsFragment = ytbWaterFallCommentsFragmentA;
        ytbWaterFallCommentsFragmentA.show(getChildFragmentManager(), "YtbWaterFallCommentsFragment");
        return true;
    }

    @Override
    public void X2() {
        this.g = u4().k;
    }

    public final void X4(Card card) {
        if (this.headCardView == null) {
            return;
        }
        View view = this.headCardView;
        or3.c(view);
        YtbPlaylistFragment ytbPlaylistFragmentB5 = b5();
        zw5 zw5Var = new zw5(this, view, this, ytbPlaylistFragmentB5 != null ? ytbPlaylistFragmentB5.getYoutubePlaylistFetcher() : null);
        zw5Var.s(1175, this.headCardView);
        ei0 ei0VarW = ei0.y(card).w(1175);
        or3.c(ei0VarW);
        n4(ei0VarW);
        zw5Var.m(ei0VarW.k());
    }

    public final void Y4(Card it2) {
        this.watchHeadCard = it2;
        this.listTitle = ri0.D(it2);
        this.commentNextOffset = ri0.h(it2, 20061);
        CommentViewModel commentViewModelV4 = v4();
        Object obj = this.t.get();
        or3.e(obj, "get(...)");
        commentViewModelV4.T((z34) obj, this.commentNextOffset);
        X4(it2);
    }

    public final void Z4(String recommendUrl, String videoUrl, VideoDetailInfo videoDetailInfo) {
        if (FragmentKt.d(this) && L4()) {
            YtbPlaylistFragment ytbPlaylistFragmentB5 = b5();
            if (ytbPlaylistFragmentB5 != null) {
                ytbPlaylistFragmentB5.a6(recommendUrl, videoUrl, videoDetailInfo);
            }
            if (!or3.a(this.currentPlayVideoUrl, videoUrl) || this.isAccountChange) {
                U2();
                this.currentPlayVideoUrl = videoUrl;
                this.isAccountChange = false;
                Q4();
            }
        }
    }

    public final void a5() {
        if (L4()) {
            PagerSlidingTabStrip pagerSlidingTabStrip = u4().k;
            or3.e(pagerSlidingTabStrip, "tabs");
            pagerSlidingTabStrip.setVisibility(0);
            T4((int) (-u4().k.getHeight()));
        }
    }

    public final YtbPlaylistFragment b5() {
        Fragment fragmentR2 = R2(0);
        if (fragmentR2 instanceof YtbPlaylistFragment) {
            return (YtbPlaylistFragment) fragmentR2;
        }
        return null;
    }

    @Override
    public void i0(Card videoCard) {
        AppBarLayoutWithoutInterceptBehavior appBarLayoutWithoutInterceptBehavior = u4().b;
        or3.e(appBarLayoutWithoutInterceptBehavior, "appBarLayout");
        com.snaptube.premium.views.playback.a.a(appBarLayoutWithoutInterceptBehavior, true);
        a5();
        YtbPlaylistFragment.b bVar = this.loadListener;
        if (bVar != null) {
            bVar.i0(videoCard);
        }
    }

    @Override
    public boolean k2(int position) {
        String string;
        List listI;
        wz7 wz7Var;
        Bundle bundleA;
        u0 u0Var = this.i;
        if (u0Var == null || (listI = u0Var.i()) == null || (wz7Var = (wz7) CollectionsKt___CollectionsKt.X(listI, position)) == null || (bundleA = wz7Var.a()) == null || (string = bundleA.getString("recommend_tab_type")) == null) {
            string = "other";
        }
        VideoTracker.r(string);
        return super.k2(position);
    }

    @Override
    public boolean l0(Context context, Card card, Intent intent) {
        or3.f(context, "context");
        or3.f(intent, "intent");
        String action = intent.getAction();
        if (or3.a("snaptube.intent.action.CLICK_COMMENT_SECTION", action) || or3.a("snaptube.intent.action.CLICK_COMMENT_EMPTY", action)) {
            return V4(action);
        }
        if (or3.a("snaptube.intent.action.CLICK_COMMENT_RETRY", action)) {
            CommentViewModel commentViewModelV4 = v4();
            Object obj = this.t.get();
            or3.e(obj, "get(...)");
            commentViewModelV4.T((z34) obj, this.commentNextOffset);
            return true;
        }
        if (or3.a("action_click_more", action)) {
            q4();
            return true;
        }
        if (or3.a("action_click_listen_all", action)) {
            o4();
            return true;
        }
        intent.putExtra("from_playlist", true);
        intent.putExtra("query", this.query);
        intent.putExtra("query_from", this.queryFrom);
        if (!intent.hasExtra("from")) {
            intent.putExtra("from", y4());
        }
        ke3 ke3Var = this.mixedListDelegate;
        if (ke3Var != null) {
            return ke3Var.l0(context, card, intent);
        }
        return false;
    }

    public final void n4(ei0 cardBuilder) {
        String strA4 = A4();
        if (strA4 != null) {
            Intent intent = new Intent("snaptube.intent.action.DOWNLOAD_ALL", Uri.parse("https://snaptubeapp.com").buildUpon().path("/list/youtube/playlist").appendQueryParameter("url", Uri.parse(strA4).getQueryParameter("url")).build());
            intent.putExtra(IntentUtil.POS, this.queryFrom);
            cardBuilder.c(30006, intent.toUri(1));
        }
    }

    public final void o4() {
        zv4 zv4VarO3;
        com.snaptube.premium.minibar.c cVar = com.snaptube.premium.minibar.c.a;
        com.snaptube.premium.minibar.c.z(cVar, az7.i(getContext()), 0.0f, false, 6, null);
        YtbPlaylistFragment ytbPlaylistFragmentB5 = b5();
        List listA = (ytbPlaylistFragmentB5 == null || (zv4VarO3 = ytbPlaylistFragmentB5.o3()) == null) ? null : zv4VarO3.A();
        if (listA == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(1204);
        arrayList.add(1174);
        List listC = OnlineAudioUtils.c(listA, arrayList);
        OnlineAudioUtils.a(listC, false, w4(listC, this.currentPlayVideoUrl), this.currentPlayVideoUrl);
        View viewF = cVar.f(requireActivity());
        if (viewF == null) {
            return;
        }
        viewF.post(new tg9(this, viewF));
        uf3 uf3VarZ4 = z4();
        if (uf3VarZ4 != null) {
            uf3VarZ4.L();
        }
    }

    @Override
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        a58.a.post(new qg9(this));
        this.g.r(true);
    }

    @Override
    public void onAttach(Context context) {
        or3.f(context, "context");
        super.onAttach(context);
        b6 parentFragment = getParentFragment();
        mf3 mf3Var = parentFragment instanceof mf3 ? (mf3) parentFragment : null;
        yi3 yi3VarK = mf3Var != null ? mf3Var.getPlaybackControl() : null;
        this.videoPlaybackController = yi3VarK instanceof VideoPlaybackController ? (VideoPlaybackController) yi3VarK : null;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mixedListDelegate = ((com.snaptube.premium.app.d) fc1.c(getContext())).c();
        N4();
        this.parseListener = s4();
    }

    @Override
    public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        ActionBar supportActionBar;
        or3.f(menu, "menu");
        or3.f(inflater, "inflater");
        super.onCreateOptionsMenu(menu, inflater);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            if (!(activity instanceof AppCompatActivity)) {
                activity = null;
            }
            AppCompatActivity appCompatActivity = (AppCompatActivity) activity;
            if (appCompatActivity == null || (supportActionBar = appCompatActivity.getSupportActionBar()) == null) {
                return;
            }
            supportActionBar.hide();
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        or3.f(inflater, "inflater");
        this._binding = qv2.c(inflater, container, false);
        return u4().b();
    }

    @Override
    public void onDestroyView() {
        wu7 wu7Var = this.subscription;
        if (wu7Var != null) {
            wu7Var.unsubscribe();
        }
        u4().b.p(this.onOffsetChangedListener);
        this._binding = null;
        super.onDestroyView();
    }

    @Override
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        or3.f(view, MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW);
        super.onViewCreated(view, savedInstanceState);
        u4().e.setScrollEnabled(false);
        this.headCardView = view.findViewById(R.id.layout_header);
        G4();
        J4();
        I4();
        U4();
    }

    public final void q4() {
        YtbPlaylistFragment ytbPlaylistFragmentB5 = b5();
        qe9 qe9VarG5 = ytbPlaylistFragmentB5 != null ? ytbPlaylistFragmentB5.getYoutubePlaylistFetcher() : null;
        if (this.watchHeadCard == null && qe9VarG5 != null) {
            this.watchHeadCard = ei0.x().w(1183).g(Sdk.SDKError.Reason.AD_SERVER_ERROR_VALUE, ri0.h(qe9VarG5.j(), Sdk.SDKError.Reason.AD_SERVER_ERROR_VALUE)).k();
        }
        b6 parentFragment = getParentFragment();
        if (parentFragment instanceof uf3) {
            ((uf3) parentFragment).C0();
        }
    }

    @Override
    public TabResponse r3(TabResponse response) {
        if (response == null) {
            return null;
        }
        List<Tab> list = response.tab;
        return (list == null || list.isEmpty() || K4(response)) ? response : P4(response);
    }

    public final void r4() {
        YtbWaterFallCommentsFragment ytbWaterFallCommentsFragment = this.ytbWaterFallCommentsFragment;
        if (ytbWaterFallCommentsFragment != null) {
            ytbWaterFallCommentsFragment.dismiss();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final wi3 s4() {
        for (Fragment parentFragment = getParentFragment(); parentFragment != 0; parentFragment = parentFragment.getParentFragment()) {
            if (parentFragment instanceof wi3) {
                return (wi3) parentFragment;
            }
        }
        return null;
    }

    public final void t4(int verticalOffset) {
        View view = this.headCardView;
        int height = view != null ? view.getHeight() : 0;
        float height2 = u4().k.getHeight();
        if (Math.abs(verticalOffset) >= height || u4().k.getTranslationY() == height2) {
            return;
        }
        u4().k.setAlpha(0.0f);
        u4().k.setTranslationY(height2);
        T4(-((int) height2));
    }

    @Override
    public void u() {
        YtbPlaylistFragment.b bVar = this.loadListener;
        if (bVar != null) {
            bVar.u();
        }
    }

    public final qv2 u4() {
        qv2 qv2Var = this._binding;
        or3.c(qv2Var);
        return qv2Var;
    }

    public final CommentViewModel v4() {
        return (CommentViewModel) this.commentViewModel.getValue();
    }

    public final long w4(List mediaList, String playUrl) {
        VideoPlaybackController videoPlaybackController;
        if (TextUtils.isEmpty(playUrl) && (!mediaList.isEmpty())) {
            playUrl = ((pj5) mediaList.get(0)).l();
        }
        if (playUrl == null || cu7.B(playUrl) || (videoPlaybackController = this.videoPlaybackController) == null) {
            return 0L;
        }
        return videoPlaybackController.O0(playUrl);
    }

    public final String x4() {
        return "YtbPlaylistTabFragment#" + hashCode();
    }

    public final String y4() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof VideoPlaybackFragment) {
            return ((VideoPlaybackFragment) parentFragment).F3();
        }
        return null;
    }

    public final uf3 z4() {
        b6 parentFragment = getParentFragment();
        if (parentFragment instanceof uf3) {
            return (uf3) parentFragment;
        }
        return null;
    }
}
