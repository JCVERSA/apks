package com.snaptube.premium.activity;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import androidx.view.n;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.snaptube.ads.base.AdsPos;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import com.snaptube.dataadapter.plugin.utils.YouTubeApiUtils;
import com.snaptube.exoplayer.impl.VideoDetailInfo;
import com.snaptube.mixed_list.data.CacheControl;
import com.snaptube.player_guide.view.BaseSnaptubeFragment;
import com.snaptube.premium.NavigationManager;
import com.snaptube.premium.R;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.playback.PlaylistViewModel;
import com.snaptube.premium.playback.detail.VideoPlaybackController;
import com.snaptube.premium.youtube.VideoDetailDataHelper;
import com.snaptube.premium.youtube.comment.YoutubeCommentEmptyViewHolder;
import com.snaptube.premium.youtube.comment.YoutubeCommentSectionViewHolder;
import com.snaptube.ui.anim.ViewAnimator;
import com.snaptube.util.ProductionEnv;
import com.trello.rxlifecycle.components.RxFragment;
import com.vungle.ads.internal.protos.Sdk;
import com.wandoujia.base.utils.RxBus;
import com.wandoujia.em.common.protomodel.Card;
import com.wandoujia.em.common.protomodel.CardAnnotation;
import com.wandoujia.em.common.protomodel.ListPageResponse;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import net.pubnative.mediation.insights.model.PubnativeInsightCrashModel;
import o.a58;
import o.ah3;
import o.ah7;
import o.ap6;
import o.az5;
import o.b6;
import o.bh7;
import o.cu7;
import o.dx2;
import o.eg3;
import o.fc1;
import o.h42;
import o.hd9;
import o.i7;
import o.je3;
import o.jf1;
import o.k7;
import o.kg9;
import o.kv2;
import o.lg9;
import o.lh9;
import o.mg9;
import o.ng9;
import o.or3;
import o.p93;
import o.px0;
import o.qe9;
import o.qm1;
import o.ri0;
import o.rp8;
import o.rw4;
import o.sm1;
import o.ta9;
import o.ti3;
import o.uf3;
import o.uu0;
import o.wi3;
import o.yi3;
import o.yj8;
import o.z34;
import o.zb9;
import o.zf6;
import o.zo6;
import o.zv4;
import o.zw5;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0090\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0003\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 Î\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0004Ï\u0001Ð\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\f\u0010\u0006J\u000f\u0010\r\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u0006J\u000f\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0010J\u0011\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0015\u0010\u0006J%\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00162\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u001d\u0010\u001c\u001a\u00020\u001b2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ%\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00162\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H\u0002¢\u0006\u0004\b\u001e\u0010\u001aJ\u0017\u0010 \u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020\u0017H\u0002¢\u0006\u0004\b \u0010!J\u001d\u0010\"\u001a\u00020\u001b2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H\u0002¢\u0006\u0004\b\"\u0010\u001dJ\u0017\u0010%\u001a\u00020\u001b2\u0006\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u000bH\u0002¢\u0006\u0004\b'\u0010\u0006J\u000f\u0010(\u001a\u00020\u000bH\u0002¢\u0006\u0004\b(\u0010\u0006J\u000f\u0010)\u001a\u00020\u000bH\u0002¢\u0006\u0004\b)\u0010\u0006J\u000f\u0010*\u001a\u00020\u000bH\u0002¢\u0006\u0004\b*\u0010\u0006J\u000f\u0010+\u001a\u00020\u000bH\u0002¢\u0006\u0004\b+\u0010\u0006J\u000f\u0010,\u001a\u00020\u000bH\u0002¢\u0006\u0004\b,\u0010\u0006J\u000f\u0010-\u001a\u00020\u000bH\u0002¢\u0006\u0004\b-\u0010\u0006J\u0017\u0010/\u001a\u00020\u000e2\u0006\u0010.\u001a\u00020\u000eH\u0002¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020\u000bH\u0002¢\u0006\u0004\b1\u0010\u0006J\u0017\u00104\u001a\u00020\u000b2\u0006\u00103\u001a\u000202H\u0016¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\u000eH\u0014¢\u0006\u0004\b6\u0010\u0010J\u0019\u00109\u001a\u00020\u000b2\b\u00108\u001a\u0004\u0018\u000107H\u0016¢\u0006\u0004\b9\u0010:J\u0017\u0010=\u001a\u00020\u000b2\u0006\u0010<\u001a\u00020;H\u0014¢\u0006\u0004\b=\u0010>J\u001f\u0010B\u001a\u00020\u000b2\u0006\u0010@\u001a\u00020?2\u0006\u0010A\u001a\u00020\u001bH\u0014¢\u0006\u0004\bB\u0010CJ!\u0010E\u001a\u00020\u000b2\u0006\u0010D\u001a\u00020?2\b\u00108\u001a\u0004\u0018\u000107H\u0016¢\u0006\u0004\bE\u0010FJ\u000f\u0010G\u001a\u00020\u000eH\u0016¢\u0006\u0004\bG\u0010\u0010J\u000f\u0010H\u001a\u00020\u000eH\u0016¢\u0006\u0004\bH\u0010\u0010J'\u0010M\u001a\n\u0012\u0004\u0012\u00020L\u0018\u00010K2\u0006\u0010I\u001a\u00020\u001b2\u0006\u0010J\u001a\u00020\u000eH\u0016¢\u0006\u0004\bM\u0010NJ\u0017\u0010P\u001a\u00020L2\u0006\u0010O\u001a\u00020LH\u0016¢\u0006\u0004\bP\u0010QJ5\u0010T\u001a\u00020\u000b2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010R\u001a\u00020\u001b2\u0006\u0010S\u001a\u00020\u001b2\u0006\u0010J\u001a\u00020\u000eH\u0014¢\u0006\u0004\bT\u0010UJ\u0017\u0010V\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020#H\u0014¢\u0006\u0004\bV\u0010WJ\u000f\u0010X\u001a\u00020\u000bH\u0014¢\u0006\u0004\bX\u0010\u0006J)\u0010[\u001a\u00020\u001b2\u0006\u00103\u001a\u0002022\b\u0010\u001f\u001a\u0004\u0018\u00010\u00172\u0006\u0010Z\u001a\u00020YH\u0016¢\u0006\u0004\b[\u0010\\J+\u0010b\u001a\u00020\u000b2\b\u0010^\u001a\u0004\u0018\u00010]2\b\u0010_\u001a\u0004\u0018\u00010]2\b\u0010a\u001a\u0004\u0018\u00010`¢\u0006\u0004\bb\u0010cJ\u0017\u0010d\u001a\u00020\u00022\u0006\u00103\u001a\u000202H\u0014¢\u0006\u0004\bd\u0010eJ\u001f\u0010g\u001a\u00020\u000e2\u0006\u0010f\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u0017H\u0016¢\u0006\u0004\bg\u0010hJ/\u0010q\u001a\u00020p2\u0006\u0010j\u001a\u00020i2\u0006\u0010l\u001a\u00020k2\u0006\u0010m\u001a\u00020\u000e2\u0006\u0010o\u001a\u00020nH\u0016¢\u0006\u0004\bq\u0010rJ\u000f\u0010s\u001a\u00020\u000bH\u0016¢\u0006\u0004\bs\u0010\u0006J\u000f\u0010t\u001a\u00020\u000bH\u0016¢\u0006\u0004\bt\u0010\u0006J\u000f\u0010u\u001a\u00020\u000bH\u0016¢\u0006\u0004\bu\u0010\u0006J!\u0010x\u001a\u00020\u000b2\u0006\u0010v\u001a\u00020\u001b2\b\u0010w\u001a\u0004\u0018\u00010YH\u0016¢\u0006\u0004\bx\u0010yJ'\u0010{\u001a\u00020\u001b2\u0006\u0010R\u001a\u00020\u001b2\u0006\u0010z\u001a\u00020\u000e2\u0006\u0010J\u001a\u00020\u000eH\u0014¢\u0006\u0004\b{\u0010|R\u0019\u0010\u0080\u0001\u001a\u0004\u0018\u00010}8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010\u007fR\u001c\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0081\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0082\u0001\u0010\u0083\u0001R\u001c\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0085\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0086\u0001\u0010\u0087\u0001R\u001c\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u0089\u00018\u0006@\u0006X\u0087\u000e¢\u0006\b\n\u0006\b\u008a\u0001\u0010\u008b\u0001R\u001c\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u008d\u00018\u0006@\u0006X\u0087\u000e¢\u0006\b\n\u0006\b\u008e\u0001\u0010\u008f\u0001R+\u0010\u0097\u0001\u001a\u0005\u0018\u00010\u0091\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bg\u0010\u0092\u0001\u001a\u0006\b\u0093\u0001\u0010\u0094\u0001\"\u0006\b\u0095\u0001\u0010\u0096\u0001R\u001b\u0010\u009a\u0001\u001a\u0004\u0018\u00010]8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0098\u0001\u0010\u0099\u0001R\u0019\u0010\u009d\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009b\u0001\u0010\u009c\u0001R\u001b\u0010\u009f\u0001\u001a\u0004\u0018\u00010]8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u0099\u0001R\u001b\u0010¡\u0001\u001a\u0004\u0018\u00010]8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b \u0001\u0010\u0099\u0001R\u001c\u0010¥\u0001\u001a\u0005\u0018\u00010¢\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b£\u0001\u0010¤\u0001R\u001b\u0010¨\u0001\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¦\u0001\u0010§\u0001R\u0019\u0010ª\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b©\u0001\u0010\u009c\u0001R\u001b\u0010¬\u0001\u001a\u0004\u0018\u00010]8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b«\u0001\u0010\u0099\u0001R\u001b\u0010®\u0001\u001a\u0004\u0018\u00010]8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u00ad\u0001\u0010\u0099\u0001R\u001b\u0010°\u0001\u001a\u0004\u0018\u00010]8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¯\u0001\u0010\u0099\u0001R\u0019\u0010²\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b±\u0001\u0010\u009c\u0001R\u0019\u0010´\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b³\u0001\u0010\u009c\u0001R\u001c\u0010¸\u0001\u001a\u0005\u0018\u00010µ\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¶\u0001\u0010·\u0001R\u001c\u0010¼\u0001\u001a\u0005\u0018\u00010¹\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bº\u0001\u0010»\u0001R!\u0010¿\u0001\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b½\u0001\u0010¾\u0001R\u001e\u0010Ã\u0001\u001a\t\u0012\u0004\u0012\u00020\u00170À\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÁ\u0001\u0010Â\u0001R\u0019\u0010Æ\u0001\u001a\u0004\u0018\u00010]8BX\u0082\u0004¢\u0006\b\u001a\u0006\bÄ\u0001\u0010Å\u0001R\u001a\u0010Ê\u0001\u001a\u0005\u0018\u00010Ç\u00018BX\u0082\u0004¢\u0006\b\u001a\u0006\bÈ\u0001\u0010É\u0001R\u0019\u0010Í\u0001\u001a\u0004\u0018\u00010\u00178BX\u0082\u0004¢\u0006\b\u001a\u0006\bË\u0001\u0010Ì\u0001¨\u0006Ñ\u0001"}, d2 = {"Lcom/snaptube/premium/activity/YtbPlaylistFragment;", "Lcom/snaptube/player_guide/view/BaseSnaptubeFragment;", "Lo/ap6;", "Lo/eg3;", "Lo/p93;", "<init>", "()V", "Ljava/lang/ref/WeakReference;", "Lo/wi3;", "C5", "()Ljava/lang/ref/WeakReference;", "Lo/mg8;", "u4", "b6", "", "z5", "()I", "A5", "Lcom/snaptube/premium/activity/YtbPlaylistTabFragment;", "c6", "()Lcom/snaptube/premium/activity/YtbPlaylistTabFragment;", "T5", "", "Lcom/wandoujia/em/common/protomodel/Card;", "cards", "y5", "(Ljava/util/List;)Ljava/util/List;", "", "J5", "(Ljava/util/List;)Z", "V5", "card", "U5", "(Lcom/wandoujia/em/common/protomodel/Card;)Lcom/wandoujia/em/common/protomodel/Card;", "I5", "", "e", "K5", "(Ljava/lang/Throwable;)Z", "O5", "X5", "Y5", "H5", "Q5", "L5", "W5", "cardId", "B5", "(I)I", "P5", "Landroid/content/Context;", "context", "onAttach", "(Landroid/content/Context;)V", "E2", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Lo/ah3;", "builder", "Y4", "(Lo/ah3;)V", "Landroid/view/View;", "contentView", "isLoading", "b4", "(Landroid/view/View;Z)V", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "u3", "s3", "useCache", "direction", "Lrx/c;", "Lcom/wandoujia/em/common/protomodel/ListPageResponse;", "T4", "(ZI)Lrx/c;", "response", "X4", "(Lcom/wandoujia/em/common/protomodel/ListPageResponse;)Lcom/wandoujia/em/common/protomodel/ListPageResponse;", "hasNext", "swap", "X3", "(Ljava/util/List;ZZI)V", "Z3", "(Ljava/lang/Throwable;)V", "Z2", "Landroid/content/Intent;", "intent", "l0", "(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)Z", "", "recommendUrl", "videoUrl", "Lcom/snaptube/exoplayer/impl/VideoDetailInfo;", "videoDetailInfo", "a6", "(Ljava/lang/String;Ljava/lang/String;Lcom/snaptube/exoplayer/impl/VideoDetailInfo;)V", "W3", "(Landroid/content/Context;)Lo/ap6;", "position", "z0", "(ILcom/wandoujia/em/common/protomodel/Card;)I", "Lcom/trello/rxlifecycle/components/RxFragment;", "fragment", "Landroid/view/ViewGroup;", "parent", "viewType", "Lo/zv4;", PubnativeInsightCrashModel.ERROR_ADAPTER, "Lo/rw4;", "M5", "(Lcom/trello/rxlifecycle/components/RxFragment;Landroid/view/ViewGroup;ILo/zv4;)Lo/rw4;", "onDestroyView", "onDestroy", "Y0", "login", "actionAfterLogin", "O", "(ZLandroid/content/Intent;)V", "oldItemCount", "I3", "(ZII)Z", "Lo/px0;", "f0", "Lo/px0;", "mViewHolderFactory", "Lo/yi3;", "v0", "Lo/yi3;", "videoDetailController", "Lo/kv2;", "w0", "Lo/kv2;", "binding", "Lo/sm1;", "x0", "Lo/sm1;", "detailDataProvider", "Lo/ti3;", "y0", "Lo/ti3;", "userManager", "Lo/qe9;", "Lo/qe9;", "G5", "()Lo/qe9;", "setYoutubePlaylistFetcher", "(Lo/qe9;)V", "youtubePlaylistFetcher", "A0", "Ljava/lang/String;", "currentVideoUrl", "B0", "Z", "isAccountChangeRefresh", "C0", "query", "D0", "queryFrom", "Lo/ah7;", "E0", "Lo/ah7;", "skeletonScreen", "F0", "Landroid/view/View;", "skeletonView", "G0", "showingSkeletonView", "H0", "listTitle", "I0", "videoTitle", "J0", IntentUtil.POS, "K0", "isPlaylistLoadFinished", "L0", "isFirstRecommendLoadFinish", "Lcom/snaptube/premium/playback/PlaylistViewModel;", "M0", "Lcom/snaptube/premium/playback/PlaylistViewModel;", "playlistViewModel", "Lcom/snaptube/premium/youtube/VideoDetailDataHelper$VideoDetailViewModel;", "N0", "Lcom/snaptube/premium/youtube/VideoDetailDataHelper$VideoDetailViewModel;", "videoDetailViewModel", "O0", "Ljava/lang/ref/WeakReference;", "parseListenerRef", "", "P0", "Ljava/util/List;", "playlistCards", "E5", "()Ljava/lang/String;", "pageFrom", "Lo/uf3;", "F5", "()Lo/uf3;", "playbackPresenter", "D5", "()Lcom/wandoujia/em/common/protomodel/Card;", "firstVideoCard", "Q0", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
public final class YtbPlaylistFragment extends BaseSnaptubeFragment implements ap6, eg3, p93 {

    public String currentVideoUrl;

    public boolean isAccountChangeRefresh;

    public String query;

    public String queryFrom;

    public ah7 skeletonScreen;

    public View skeletonView;

    public boolean showingSkeletonView;

    public String listTitle;

    public String videoTitle;

    public String pos;

    public boolean isPlaylistLoadFinished;

    public boolean isFirstRecommendLoadFinish;

    public PlaylistViewModel playlistViewModel;

    public VideoDetailDataHelper.VideoDetailViewModel videoDetailViewModel;

    public WeakReference parseListenerRef;

    public final List playlistCards = new ArrayList();

    public px0 mViewHolderFactory;

    public yi3 videoDetailController;

    public kv2 binding;

    @Inject
    @JvmField
    @Nullable
    public sm1 detailDataProvider;

    @Inject
    @JvmField
    @Nullable
    public ti3 userManager;

    public qe9 youtubePlaylistFetcher;

    public interface b {
        void i0(Card card);

        void u();
    }

    private final int B5(int cardId) {
        if (ri0.I(cardId)) {
            return R.layout.card_ad_unit;
        }
        if (cardId == 1004) {
            return R.layout.card_video_details;
        }
        if (cardId == 1023) {
            return R.layout.card_youtube_video_header_auto_play;
        }
        if (cardId == 1178) {
            return R.layout.youtube_watch_recommend_big_cover_video;
        }
        if (cardId == 1183) {
            return R.layout.card_watch_header_ytb;
        }
        if (cardId != 1206) {
            if (cardId == 2015) {
                return R.layout.card_snaplist_horizontal_play;
            }
            if (cardId != 1174) {
                if (cardId == 1175) {
                    return R.layout.card_playlist_info;
                }
                if (cardId == 1193) {
                    return R.layout.ytb_card_comment_header;
                }
                if (cardId == 1194) {
                    return R.layout.ytb_card_comment_section;
                }
                if (cardId != 1203) {
                    if (cardId != 1204) {
                        switch (cardId) {
                            case 1548:
                                return R.layout.ytb_card_comment_empty;
                            case 1549:
                                return R.layout.ytb_card_comment_fail;
                            case 1550:
                                return R.layout.card_playlist_title;
                            default:
                                return px0.a(cardId);
                        }
                    }
                }
            }
            return R.layout.youtube_card_recommend;
        }
        return R.layout.watch_recommend_card_playlist_big;
    }

    private final String E5() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof YtbPlaylistTabFragment) {
            return ((YtbPlaylistTabFragment) parentFragment).x4();
        }
        return null;
    }

    public static final void N5(YtbPlaylistFragment ytbPlaylistFragment) {
        or3.f(ytbPlaylistFragment, "this$0");
        bh7.a.c(ytbPlaylistFragment.skeletonScreen);
        ytbPlaylistFragment.showingSkeletonView = false;
    }

    public static final void R5(dx2 dx2Var, Object obj) {
        or3.f(dx2Var, "$tmp0");
        dx2Var.invoke(obj);
    }

    public static final void S5(Throwable th) {
        ProductionEnv.logException("RxjavaExecuteException", th);
    }

    public static final void Z5(YtbPlaylistFragment ytbPlaylistFragment) {
        or3.f(ytbPlaylistFragment, "this$0");
        ytbPlaylistFragment.a4();
    }

    private final void b6() {
        AdsPos adsPos = AdsPos.NATIVE_YOUTUBE_DETAILS_BANNER;
        com.snaptube.premium.ads.a.d dVarZ = PhoenixApplication.C().y().Z(adsPos.pos());
        or3.e(dVarZ, "getFeedStreamAdConfig(...)");
        int iZ5 = z5();
        int iA5 = A5();
        if (iA5 != -1) {
            i7.i(o3(), adsPos.pos(), dVarZ, -1, false, iZ5, iA5);
        } else {
            i7.j(o3(), adsPos.pos(), dVarZ, -1, false, iZ5);
        }
        t4(o3(), i7.a, 3);
    }

    public static void t5(Throwable th) {
        S5(th);
    }

    private final void u4() {
        RxBus.d().c(1013, 1014).g(y2()).g(RxBus.f).u0(new lg9(new YtbPlaylistFragment$setupSubscription$1(this)), new mg9());
    }

    public static void u5(YtbPlaylistFragment ytbPlaylistFragment) {
        Z5(ytbPlaylistFragment);
    }

    public static void v5(dx2 dx2Var, Object obj) {
        R5(dx2Var, obj);
    }

    public static void w5(YtbPlaylistFragment ytbPlaylistFragment) {
        N5(ytbPlaylistFragment);
    }

    public static final yi3 x5(YtbPlaylistFragment ytbPlaylistFragment) {
        return ytbPlaylistFragment.videoDetailController;
    }

    public final int A5() {
        List listA;
        Integer num;
        zv4 zv4VarO3 = o3();
        if (zv4VarO3 == null || (listA = zv4VarO3.A()) == null || !(!listA.isEmpty())) {
            return -1;
        }
        int size = listA.size();
        for (int i = 0; i < size; i++) {
            Card card = (Card) listA.get(i);
            if (card != null && (num = card.cardId) != null && num.intValue() == 1) {
                return i;
            }
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final WeakReference C5() {
        for (Fragment parentFragment = getParentFragment(); parentFragment != 0; parentFragment = parentFragment.getParentFragment()) {
            if (parentFragment instanceof wi3) {
                return new WeakReference((wi3) parentFragment);
            }
        }
        return null;
    }

    public final Card D5() {
        Integer num;
        List listA = this.x.A();
        int size = listA != null ? listA.size() : 0;
        for (int i = 0; i < size; i++) {
            or3.c(listA);
            Card card = (Card) listA.get(i);
            Integer num2 = card.cardId;
            if ((num2 != null && num2.intValue() == 1174) || ((num = card.cardId) != null && num.intValue() == 1204)) {
                return card;
            }
        }
        return null;
    }

    @Override
    public int E2() {
        return R.layout.fragment_video_playlist;
    }

    public final uf3 F5() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof YtbPlaylistTabFragment) {
            return ((YtbPlaylistTabFragment) parentFragment).z4();
        }
        return null;
    }

    public final qe9 getYoutubePlaylistFetcher() {
        return this.youtubePlaylistFetcher;
    }

    public final void H5() {
        Bundle arguments = getArguments();
        boolean z = arguments != null ? arguments.getBoolean("key_from_pip", false) : false;
        qe9 qe9Var = this.youtubePlaylistFetcher;
        if (qe9Var != null) {
            or3.c(qe9Var);
            qe9Var.m(null);
        }
        sm1 sm1Var = this.detailDataProvider;
        qe9 qe9VarW = sm1Var != null ? sm1Var.w(m(), this.currentVideoUrl, z) : null;
        this.youtubePlaylistFetcher = qe9VarW;
        if (qe9VarW != null) {
            qe9VarW.m(this);
        }
    }

    @Override
    public boolean I3(boolean hasNext, int oldItemCount, int direction) {
        return this.isPlaylistLoadFinished && !hasNext;
    }

    public final boolean I5(List cards) {
        if (!J5(cards)) {
            return true;
        }
        Iterator it2 = cards.iterator();
        while (it2.hasNext()) {
            Integer num = ((Card) it2.next()).cardId;
            if (num != null && num.intValue() == 1175) {
                return true;
            }
        }
        return false;
    }

    public final boolean J5(List cards) {
        if (!this.isAccountChangeRefresh && this.x.getItemCount() > 0 && !uu0.c(cards)) {
            return false;
        }
        this.isAccountChangeRefresh = false;
        return true;
    }

    public final boolean K5(Throwable e) {
        while (e != null) {
            if (or3.a("cannot find playlist", e.getMessage())) {
                return true;
            }
            e = e.getCause();
        }
        return false;
    }

    public final void L5() {
        Fragment parentFragment = getParentFragment();
        b6 parentFragment2 = parentFragment != null ? parentFragment.getParentFragment() : null;
        if (parentFragment2 instanceof uf3) {
            Intent intent = ((uf3) parentFragment2).getIntent();
            sm1 sm1Var = this.detailDataProvider;
            or3.c(sm1Var);
            sm1Var.f(intent);
        }
        PlaylistViewModel playlistViewModel = this.playlistViewModel;
        if (playlistViewModel != null) {
            sm1 sm1Var2 = this.detailDataProvider;
            or3.c(sm1Var2);
            playlistViewModel.U(sm1Var2, this.parseListenerRef, this.videoDetailViewModel);
        }
    }

    public rw4 M5(RxFragment fragment, ViewGroup parent, int viewType, zv4 adapter) {
        rw4 rp8Var;
        rw4 k7Var;
        or3.f(fragment, "fragment");
        or3.f(parent, "parent");
        or3.f(adapter, PubnativeInsightCrashModel.ERROR_ADAPTER);
        int iB5 = B5(viewType);
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(iB5, parent, false);
        jf1.j(viewInflate, iB5);
        if (viewType == 1175) {
            or3.c(viewInflate);
            k7Var = new zw5(this, viewInflate, this, this.youtubePlaylistFetcher);
        } else if (viewType == 1550) {
            or3.c(viewInflate);
            k7Var = new az5(this, viewInflate, this, adapter);
        } else if (ri0.I(viewType)) {
            k7Var = new k7(this, viewInflate, this);
        } else {
            if (viewType == 1023) {
                rp8Var = new qm1(fragment, viewInflate, this.w);
            } else if (viewType == 1174 || viewType == 1204) {
                rp8Var = new rp8(fragment, viewInflate, this, this.youtubePlaylistFetcher);
            } else if (viewType == 1193) {
                rp8Var = new ta9(fragment, viewInflate, this, null);
            } else if (viewType == 1194) {
                or3.c(viewInflate);
                rp8Var = new YoutubeCommentSectionViewHolder(fragment, viewInflate, this);
            } else if (viewType == 1548) {
                or3.c(viewInflate);
                rp8Var = new YoutubeCommentEmptyViewHolder(fragment, viewInflate, this);
            } else if (viewType == 1549) {
                or3.c(viewInflate);
                rp8Var = new hd9(fragment, viewInflate, this);
            } else if (viewType == 1198) {
                rp8Var = new zf6(fragment, viewInflate, this.w);
            } else if (viewType == 1178) {
                rp8Var = new zb9(fragment, viewInflate, this);
            } else if (viewType == 1203 || viewType == 1206) {
                or3.c(viewInflate);
                je3 je3Var = this.w;
                or3.e(je3Var, "actionListener");
                rp8Var = new lh9(fragment, viewInflate, je3Var);
            } else {
                k7Var = null;
            }
            k7Var = rp8Var;
        }
        if (k7Var != null) {
            k7Var.s(viewType, viewInflate);
        } else {
            px0 px0Var = this.mViewHolderFactory;
            or3.c(px0Var);
            k7Var = px0Var.c(this, parent, viewType, adapter);
        }
        if (k7Var instanceof h42) {
            View view = ((h42) k7Var).itemView;
            view.setBackgroundColor(view.getResources().getColor(R.color.bg_dark));
        }
        return k7Var;
    }

    @Override
    public void O(boolean login, Intent actionAfterLogin) {
        this.isAccountChangeRefresh = true;
        qe9 qe9Var = this.youtubePlaylistFetcher;
        if (qe9Var != null) {
            or3.c(qe9Var);
            qe9Var.O(login, actionAfterLogin);
        }
        P5();
    }

    public final void O5() {
        VideoPlaybackController playbackControl;
        uf3 uf3VarF5 = F5();
        if (uf3VarF5 == null || (playbackControl = uf3VarF5.getPlaybackControl()) == null) {
            return;
        }
        playbackControl.K1();
    }

    public final void P5() {
        if (this.isPlaylistLoadFinished) {
            Q5();
            L5();
        }
    }

    public final void Q5() {
        this.isFirstRecommendLoadFinish = false;
        if (uu0.c(this.playlistCards)) {
            return;
        }
        o3().h0(new ArrayList(this.playlistCards), true);
        a4();
    }

    @Override
    public rx.c T4(boolean useCache, int direction) {
        if (!this.isPlaylistLoadFinished) {
            qe9 qe9Var = this.youtubePlaylistFetcher;
            or3.c(qe9Var);
            return qe9Var.i(useCache, direction);
        }
        if (!this.isFirstRecommendLoadFinish) {
            sm1 sm1Var = this.detailDataProvider;
            or3.c(sm1Var);
            return sm1Var.c(false);
        }
        z34 z34VarS4 = S4();
        sm1 sm1Var2 = this.detailDataProvider;
        or3.c(sm1Var2);
        return z34VarS4.d(sm1Var2.l(), this.V, v3(), direction == 0, useCache ? CacheControl.NORMAL : CacheControl.NO_CACHE);
    }

    public final void T5() {
        ah7 ah7Var = this.skeletonScreen;
        if (ah7Var == null) {
            this.skeletonScreen = bh7.a.d(C2(R.id.list_skeleton_view_place_holder), R.layout.layout_skeleton_ytb_play_list);
        } else {
            or3.c(ah7Var);
            ah7Var.a();
        }
        this.skeletonView = C2(R.id.skeleton_ytb_play_list);
    }

    @Override
    public RecyclerView.a0 U1(RxFragment rxFragment, ViewGroup viewGroup, int i, zv4 zv4Var) {
        return M5(rxFragment, viewGroup, i, zv4Var);
    }

    public final Card U5(Card card) {
        if (TextUtils.isEmpty(this.listTitle)) {
            return card;
        }
        String strD = ri0.D(card);
        if (!TextUtils.isEmpty(strD) && TextUtils.equals(this.listTitle, strD)) {
            return card;
        }
        ArrayList arrayList = new ArrayList(card.annotation);
        Iterator it2 = arrayList.iterator();
        or3.e(it2, "iterator(...)");
        while (it2.hasNext()) {
            Integer num = ((CardAnnotation) it2.next()).annotationId;
            if (num != null && num.intValue() == 20001) {
                it2.remove();
                break;
            }
        }
        arrayList.add(new CardAnnotation.Builder().annotationId(Integer.valueOf(Sdk.SDKError.Reason.AD_SERVER_ERROR_VALUE)).stringValue(this.listTitle).build());
        Card cardBuild = card.newBuilder().annotation(arrayList).build();
        or3.e(cardBuild, "build(...)");
        return cardBuild;
    }

    public final List V5(List cards) {
        if (uu0.c(cards)) {
            return cards;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it2 = cards.iterator();
        while (it2.hasNext()) {
            Card card = (Card) it2.next();
            Integer num = card.cardId;
            if (num != null && num.intValue() == 1175) {
                Card cardBuild = U5(card).newBuilder().cardId(1550).build();
                or3.e(cardBuild, "build(...)");
                arrayList.add(cardBuild);
            } else {
                arrayList.add(card);
            }
        }
        return arrayList;
    }

    @Override
    public ap6 W3(Context context) {
        or3.f(context, "context");
        return this;
    }

    public final void W5() {
        t4(o3(), i7.a, 3);
    }

    @Override
    public void X3(List cards, boolean hasNext, boolean swap, int direction) {
        YtbPlaylistTabFragment ytbPlaylistTabFragmentC6;
        or3.f(cards, "cards");
        if (this.isPlaylistLoadFinished) {
            if (!this.isFirstRecommendLoadFinish) {
                this.isFirstRecommendLoadFinish = true;
            }
            super.X3(y5(cards), hasNext, false, direction);
            b6();
            return;
        }
        List listY5 = y5(cards);
        if (!I5(cards)) {
            swap = false;
            direction = 1;
        }
        super.X3(listY5, hasNext, swap, direction);
        List list = this.playlistCards;
        or3.c(listY5);
        list.addAll(listY5);
        kv2 kv2Var = this.binding;
        or3.c(kv2Var);
        kv2Var.i.setVisibility(0);
        W5();
        Y5();
        X5();
        sm1 sm1Var = this.detailDataProvider;
        or3.c(sm1Var);
        sm1Var.d();
        yi3 yi3Var = this.videoDetailController;
        if (yi3Var != null) {
            or3.c(yi3Var);
            yi3Var.W();
        }
        if (swap && (ytbPlaylistTabFragmentC6 = c6()) != null) {
            ytbPlaylistTabFragmentC6.i0(D5());
        }
        if (!this.isPlaylistLoadFinished) {
            this.isPlaylistLoadFinished = i4();
        }
        if (this.isPlaylistLoadFinished) {
            a4();
        }
    }

    @Override
    public ListPageResponse X4(ListPageResponse response) {
        or3.f(response, "response");
        return response;
    }

    public final void X5() {
        if (this.x.A() == null || this.x.A().isEmpty()) {
            kv2 kv2Var = this.binding;
            or3.c(kv2Var);
            kv2Var.b.setVisibility(8);
        } else {
            kv2 kv2Var2 = this.binding;
            or3.c(kv2Var2);
            kv2Var2.b.setVisibility(0);
        }
    }

    @Override
    public void Y0() {
        if (this.x.C()) {
            a4();
        }
    }

    @Override
    public void Y4(ah3 builder) {
        or3.f(builder, "builder");
        super.Y4(builder);
        builder.setProperty("from", this.pos);
    }

    public final void Y5() {
        qe9 qe9Var = this.youtubePlaylistFetcher;
        or3.c(qe9Var);
        if (qe9Var.h() == null) {
            return;
        }
        qe9 qe9Var2 = this.youtubePlaylistFetcher;
        or3.c(qe9Var2);
        if (qe9Var2.f() > 0 || !this.x.C()) {
            return;
        }
        a58.a.post(new ng9(this));
    }

    @Override
    public void Z2() {
    }

    @Override
    public void Z3(Throwable e) {
        or3.f(e, "e");
        super.Z3(e);
        YtbPlaylistTabFragment ytbPlaylistTabFragmentC6 = c6();
        if (ytbPlaylistTabFragmentC6 != null) {
            ytbPlaylistTabFragmentC6.u();
        }
        if (!K5(e) || getActivity() == null || TextUtils.isEmpty(this.currentVideoUrl)) {
            return;
        }
        Uri uriN = yj8.n(Uri.parse(this.currentVideoUrl), YouTubeApiUtils.LIST);
        or3.e(uriN, "removeQueryParameter(...)");
        NavigationManager.M0(getActivity(), uriN.toString(), "playlist_not_find");
    }

    public final void a6(String recommendUrl, String videoUrl, VideoDetailInfo videoDetailInfo) {
        if (this.x == null || TextUtils.isEmpty(videoUrl) || or3.a(videoUrl, this.currentVideoUrl)) {
            return;
        }
        this.currentVideoUrl = videoUrl;
        if (videoDetailInfo != null) {
            this.listTitle = videoDetailInfo.S;
            this.videoTitle = videoDetailInfo.l;
            this.pos = videoDetailInfo.g;
        }
        H5();
        sm1 sm1Var = this.detailDataProvider;
        or3.c(sm1Var);
        sm1Var.d();
        yi3 yi3Var = this.videoDetailController;
        if (yi3Var != null) {
            or3.c(yi3Var);
            yi3Var.W();
        }
        this.x.V();
        if (this.isPlaylistLoadFinished) {
            Q5();
        }
        L5();
    }

    @Override
    public void b4(View contentView, boolean isLoading) {
        View view;
        List listA;
        or3.f(contentView, "contentView");
        if (isLoading && ((listA = this.x.A()) == null || listA.isEmpty())) {
            T5();
        } else if (this.showingSkeletonView || (view = this.skeletonView) == null) {
            super.b4(contentView, isLoading);
        } else {
            this.showingSkeletonView = true;
            ViewAnimator.i(view).b(1.0f, 0.0f).f(250L).m(new kg9(this)).s(100L).r();
        }
    }

    public final YtbPlaylistTabFragment c6() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof YtbPlaylistTabFragment) {
            return (YtbPlaylistTabFragment) parentFragment;
        }
        return null;
    }

    @Override
    public RecyclerView.a0 j0(Fragment fragment, ViewGroup viewGroup, int i, zv4 zv4Var) {
        return zo6.a(this, fragment, viewGroup, i, zv4Var);
    }

    @Override
    public boolean l0(Context context, Card card, Intent intent) {
        String path;
        or3.f(context, "context");
        or3.f(intent, "intent");
        String action = intent.getAction();
        if (or3.a("android.intent.action.VIEW", action)) {
            if (intent.getData() == null) {
                path = "";
            } else {
                Uri data = intent.getData();
                or3.c(data);
                path = data.getPath();
            }
            if (path != null && cu7.N(path, "/watch", false, 2, null)) {
                intent.putExtra("isPlaylist", true);
            }
        } else if (or3.a("snaptube.intent.action.DOWNLOAD", action)) {
            O5();
        }
        intent.putExtra("from_playlist", true);
        intent.putExtra("query", this.query);
        intent.putExtra("query_from", this.queryFrom);
        if (!intent.hasExtra("from")) {
            intent.putExtra("from", E5());
        }
        return super.l0(context, card, intent);
    }

    @Override
    public void onAttach(Context context) {
        or3.f(context, "context");
        super.onAttach(context);
        ((a) fc1.a(context)).i(this);
        this.playlistViewModel = (PlaylistViewModel) new n(this).a(PlaylistViewModel.class);
        VideoDetailDataHelper.a aVar = VideoDetailDataHelper.a;
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        or3.e(fragmentActivityRequireActivity, "requireActivity(...)");
        this.videoDetailViewModel = aVar.a(fragmentActivityRequireActivity);
        this.parseListenerRef = C5();
        this.mViewHolderFactory = new px0(context, this);
        YtbPlaylistTabFragment ytbPlaylistTabFragmentC6 = c6();
        this.videoDetailController = ytbPlaylistTabFragmentC6 != null ? ytbPlaylistTabFragmentC6.getVideoPlaybackController() : null;
        u4();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        YtbPlaylistTabFragment ytbPlaylistTabFragmentC6 = c6();
        Bundle arguments = ytbPlaylistTabFragmentC6 != null ? ytbPlaylistTabFragmentC6.getArguments() : null;
        if (arguments != null) {
            this.query = arguments.getString("query");
            this.queryFrom = arguments.getString("query_from");
            this.videoTitle = arguments.getString(IntentUtil.VIDEO_TITLE);
            this.listTitle = arguments.getString("playlistTitle");
            this.pos = arguments.getString(IntentUtil.POS);
        }
        H5();
        L5();
    }

    @Override
    public void onDestroy() {
        qe9 qe9Var = this.youtubePlaylistFetcher;
        if (qe9Var != null) {
            or3.c(qe9Var);
            qe9Var.m(null);
            this.youtubePlaylistFetcher = null;
        }
        super.onDestroy();
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        bh7.a.c(this.skeletonScreen);
        this.skeletonScreen = null;
        this.skeletonView = null;
        this.binding = null;
    }

    @Override
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        or3.f(view, MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW);
        super.onViewCreated(view, savedInstanceState);
        this.binding = kv2.a(view);
        RecyclerView recyclerViewW3 = w3();
        if (recyclerViewW3 != null) {
            recyclerViewW3.setVerticalScrollBarEnabled(false);
        }
        Y5();
    }

    @Override
    public int s3() {
        return R.layout.video_detail_no_data_tips_view;
    }

    @Override
    public int u3() {
        return R.layout.no_network_tips_view;
    }

    public final List y5(List cards) {
        if (J5(cards)) {
            return V5(cards);
        }
        this.isAccountChangeRefresh = false;
        ArrayList arrayList = new ArrayList();
        Iterator it2 = cards.iterator();
        while (it2.hasNext()) {
            Card card = (Card) it2.next();
            Integer num = card.cardId;
            if (num == null || num.intValue() != 1175) {
                Integer num2 = card.cardId;
                if (num2 == null || num2.intValue() != 1183) {
                    arrayList.add(card);
                }
            }
        }
        return arrayList;
    }

    @Override
    public int z0(int position, Card card) {
        or3.f(card, "card");
        Integer num = card.cardId;
        or3.e(num, "cardId");
        return num.intValue();
    }

    public final int z5() {
        zv4 zv4VarO3;
        Integer num;
        if (!this.isPlaylistLoadFinished || !this.isFirstRecommendLoadFinish || (zv4VarO3 = o3()) == null) {
            return -1;
        }
        List listA = zv4VarO3.A();
        if (uu0.c(listA)) {
            return -1;
        }
        int size = listA.size();
        for (int i = 0; i < size; i++) {
            Card card = (Card) listA.get(i);
            if (card != null && (num = card.cardId) != null && num.intValue() == 1178) {
                return i;
            }
        }
        return -1;
    }
}
