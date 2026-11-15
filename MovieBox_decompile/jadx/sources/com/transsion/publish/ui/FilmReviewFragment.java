package com.transsion.publish.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.util.Linkify;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.ImageUtils;
import com.blankj.utilcode.util.KeyboardUtils;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.event.EventConstants;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tencent.mmkv.MMKV;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.bubbleview.BubbleTextView;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.dialog.TRDialog;
import com.tn.lib.widget.dialog.TRDialogListener;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.publish.PublishManager;
import com.transsion.publish.PublishService;
import com.transsion.publish.R$drawable;
import com.transsion.publish.R$id;
import com.transsion.publish.R$string;
import com.transsion.publish.api.AudioEntity;
import com.transsion.publish.api.GroupBean;
import com.transsion.publish.api.LinkEntity;
import com.transsion.publish.api.PhotoEntity;
import com.transsion.publish.api.VsMediaInfo;
import com.transsion.publish.api.bean.MediaAudioEntity;
import com.transsion.publish.api.bean.MediaCoverEntity;
import com.transsion.publish.api.bean.MediaImageEntity;
import com.transsion.publish.api.bean.MediaLinkEntity;
import com.transsion.publish.api.bean.MediaVideoEntity;
import com.transsion.publish.api.bean.RequestPostEntity;
import com.transsion.publish.api.bean.RequestPostMediaEntity;
import com.transsion.publish.bean.BigImageBean;
import com.transsion.publish.bean.CoverEntity;
import com.transsion.publish.view.ObservableScrollView;
import com.transsion.publish.view.operation.OperationBarView;
import com.transsion.publish.view.operation.OperationVerticalBarView;
import com.transsion.room.api.bean.LocationPlace;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import org.mvel2.ast.ASTNode;

@Metadata(d1 = {"\u0000¢\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 Ð\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u0005:\u0002Ñ\u0001B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\u0007J\u000f\u0010\n\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u0007J\u000f\u0010\u000b\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\u0007J\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0012\u0010\u0007J\u000f\u0010\u0013\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0013\u0010\u0007J\u000f\u0010\u0014\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0014\u0010\u0007J\u001f\u0010\u0019\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\b2\u0006\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\b!\u0010\"J\u001f\u0010%\u001a\u00020\b2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010$\u001a\u00020#H\u0002¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u000fH\u0002¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\bH\u0003¢\u0006\u0004\b)\u0010\u0007J\u000f\u0010*\u001a\u00020\bH\u0002¢\u0006\u0004\b*\u0010\u0007J\u0017\u0010-\u001a\u00020\b2\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b-\u0010.J\u0017\u0010/\u001a\u00020\b2\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b/\u0010.J\u0017\u00100\u001a\u00020\b2\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b0\u0010.J\u000f\u00101\u001a\u00020\bH\u0002¢\u0006\u0004\b1\u0010\u0007J\u000f\u00102\u001a\u00020\bH\u0002¢\u0006\u0004\b2\u0010\u0007J\u0015\u00104\u001a\b\u0012\u0004\u0012\u00020#03H\u0002¢\u0006\u0004\b4\u00105J\u0015\u00107\u001a\b\u0012\u0004\u0012\u00020603H\u0002¢\u0006\u0004\b7\u00105J\u001f\u00109\u001a\u00020\b2\u000e\u00108\u001a\n\u0012\u0004\u0012\u000206\u0018\u000103H\u0002¢\u0006\u0004\b9\u0010:J\u0017\u0010;\u001a\u00020\b2\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b;\u0010.J\u0017\u0010<\u001a\u00020\b2\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b<\u0010.J\u0017\u0010=\u001a\u00020\b2\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b=\u0010.J\u0017\u0010>\u001a\u00020\b2\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b>\u0010.J\u0017\u0010?\u001a\u00020\b2\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b?\u0010.J\u0017\u0010B\u001a\u00020\b2\u0006\u0010A\u001a\u00020@H\u0002¢\u0006\u0004\bB\u0010CJ\u0017\u0010F\u001a\u00020\b2\u0006\u0010E\u001a\u00020DH\u0002¢\u0006\u0004\bF\u0010GJ\u0019\u0010J\u001a\u00020\b2\b\u0010I\u001a\u0004\u0018\u00010HH\u0002¢\u0006\u0004\bJ\u0010KJ\u0017\u0010L\u001a\u00020\b2\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\bL\u0010.J\u000f\u0010M\u001a\u00020\bH\u0002¢\u0006\u0004\bM\u0010\u0007J\u0017\u0010O\u001a\u00020\b2\u0006\u0010N\u001a\u00020\u0017H\u0002¢\u0006\u0004\bO\u0010PJ\u000f\u0010Q\u001a\u00020\bH\u0002¢\u0006\u0004\bQ\u0010\u0007J\u000f\u0010R\u001a\u00020\bH\u0002¢\u0006\u0004\bR\u0010\u0007J\u000f\u0010S\u001a\u00020\bH\u0002¢\u0006\u0004\bS\u0010\u0007J\u000f\u0010T\u001a\u00020\bH\u0002¢\u0006\u0004\bT\u0010\u0007J\u000f\u0010U\u001a\u00020\bH\u0002¢\u0006\u0004\bU\u0010\u0007J\u0017\u0010X\u001a\u00020\b2\u0006\u0010W\u001a\u00020VH\u0002¢\u0006\u0004\bX\u0010YJ\u000f\u0010Z\u001a\u00020\bH\u0002¢\u0006\u0004\bZ\u0010\u0007J\u0017\u0010]\u001a\u00020\b2\u0006\u0010\\\u001a\u00020[H\u0002¢\u0006\u0004\b]\u0010^J\u000f\u0010_\u001a\u00020\bH\u0002¢\u0006\u0004\b_\u0010\u0007J\u000f\u0010`\u001a\u00020\bH\u0002¢\u0006\u0004\b`\u0010\u0007J\u000f\u0010a\u001a\u00020[H\u0002¢\u0006\u0004\ba\u0010bJ\u000f\u0010c\u001a\u00020\bH\u0002¢\u0006\u0004\bc\u0010\u0007J\u000f\u0010e\u001a\u00020dH\u0016¢\u0006\u0004\be\u0010fJ\u0017\u0010i\u001a\u00020\u00022\u0006\u0010h\u001a\u00020gH\u0016¢\u0006\u0004\bi\u0010jJ!\u0010o\u001a\u00020\b2\u0006\u0010l\u001a\u00020k2\b\u0010n\u001a\u0004\u0018\u00010mH\u0016¢\u0006\u0004\bo\u0010pJ!\u0010q\u001a\u00020\b2\u0006\u0010l\u001a\u00020k2\b\u0010n\u001a\u0004\u0018\u00010mH\u0016¢\u0006\u0004\bq\u0010pJ\r\u0010r\u001a\u00020\b¢\u0006\u0004\br\u0010\u0007J\r\u0010s\u001a\u00020\b¢\u0006\u0004\bs\u0010\u0007J\u000f\u0010t\u001a\u00020\bH\u0016¢\u0006\u0004\bt\u0010\u0007J\u000f\u0010u\u001a\u00020\bH\u0016¢\u0006\u0004\bu\u0010\u0007J\u0017\u0010x\u001a\u00020\b2\u0006\u0010w\u001a\u00020vH\u0016¢\u0006\u0004\bx\u0010yJ\u0017\u0010z\u001a\u00020\b2\u0006\u0010w\u001a\u00020vH\u0016¢\u0006\u0004\bz\u0010yJ\u0017\u0010{\u001a\u00020\b2\u0006\u0010W\u001a\u00020VH\u0016¢\u0006\u0004\b{\u0010YJ\u0017\u0010|\u001a\u00020\b2\u0006\u0010W\u001a\u00020VH\u0016¢\u0006\u0004\b|\u0010YJ\u0017\u0010}\u001a\u00020\b2\u0006\u0010W\u001a\u00020VH\u0016¢\u0006\u0004\b}\u0010YJ\u0017\u0010~\u001a\u00020\b2\u0006\u0010W\u001a\u00020VH\u0016¢\u0006\u0004\b~\u0010YJ\u0017\u0010\u007f\u001a\u00020\b2\u0006\u0010W\u001a\u00020VH\u0016¢\u0006\u0004\b\u007f\u0010YJ\u0019\u0010\u0080\u0001\u001a\u00020\b2\u0006\u0010W\u001a\u00020VH\u0016¢\u0006\u0005\b\u0080\u0001\u0010YJ\u0019\u0010\u0081\u0001\u001a\u00020\b2\u0006\u0010W\u001a\u00020VH\u0016¢\u0006\u0005\b\u0081\u0001\u0010YJ\u0019\u0010\u0082\u0001\u001a\u00020\b2\u0006\u0010W\u001a\u00020VH\u0016¢\u0006\u0005\b\u0082\u0001\u0010YJ\u0011\u0010\u0083\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0083\u0001\u0010\u0007J\u0011\u0010\u0084\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0084\u0001\u0010\u0007J\u0011\u0010\u0085\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0085\u0001\u0010\u0007J\u0011\u0010\u0086\u0001\u001a\u00020\bH\u0016¢\u0006\u0005\b\u0086\u0001\u0010\u0007J\u000f\u0010\u0087\u0001\u001a\u00020\u000f¢\u0006\u0005\b\u0087\u0001\u0010(R\u001c\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u0088\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0089\u0001\u0010\u008a\u0001R\u001c\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008b\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u008d\u0001R\u001c\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u008e\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0090\u0001R\u001b\u0010\u0091\u0001\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0091\u0001\u0010\u0092\u0001R\u001c\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0093\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0094\u0001\u0010\u0095\u0001R\u001c\u0010\u0097\u0001\u001a\u0005\u0018\u00010\u0096\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0097\u0001\u0010\u0098\u0001R\u0019\u0010E\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bE\u0010\u0099\u0001R\u001b\u0010\u009a\u0001\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u009b\u0001R\u001b\u0010\u009c\u0001\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u009d\u0001R\u001b\u0010\u009e\u0001\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u009d\u0001R\u001c\u0010 \u0001\u001a\u0005\u0018\u00010\u009f\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b \u0001\u0010¡\u0001R\u0019\u0010¢\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¢\u0001\u0010£\u0001R\u0019\u0010¤\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¤\u0001\u0010£\u0001R\u0019\u0010¥\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¥\u0001\u0010£\u0001R\u0017\u0010¦\u0001\u001a\u00020\u00178\u0002X\u0082D¢\u0006\b\n\u0006\b¦\u0001\u0010£\u0001R\u0017\u0010§\u0001\u001a\u00020\u00178\u0002X\u0082D¢\u0006\b\n\u0006\b§\u0001\u0010£\u0001R\u0019\u0010¨\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¨\u0001\u0010©\u0001R\u0019\u0010ª\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bª\u0001\u0010£\u0001R\u0019\u0010«\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b«\u0001\u0010©\u0001R\u0019\u0010¬\u0001\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¬\u0001\u0010\u00ad\u0001R\u0019\u0010®\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b®\u0001\u0010©\u0001R\u0019\u0010¯\u0001\u001a\u00020[8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¯\u0001\u0010°\u0001R#\u0010¶\u0001\u001a\u0005\u0018\u00010±\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b²\u0001\u0010³\u0001\u001a\u0006\b´\u0001\u0010µ\u0001R#\u0010»\u0001\u001a\u0005\u0018\u00010·\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¸\u0001\u0010³\u0001\u001a\u0006\b¹\u0001\u0010º\u0001R!\u0010À\u0001\u001a\u00030¼\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b½\u0001\u0010³\u0001\u001a\u0006\b¾\u0001\u0010¿\u0001R#\u0010Ã\u0001\u001a\f\u0012\u0005\u0012\u00030Â\u0001\u0018\u00010Á\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÃ\u0001\u0010Ä\u0001R\u0019\u0010Å\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÅ\u0001\u0010©\u0001R\u001c\u0010Ç\u0001\u001a\u0005\u0018\u00010Æ\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÇ\u0001\u0010È\u0001R\u001c\u0010É\u0001\u001a\u0005\u0018\u00010Æ\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÉ\u0001\u0010È\u0001R\u0019\u0010Ê\u0001\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÊ\u0001\u0010©\u0001R#\u0010Ì\u0001\u001a\f\u0012\u0005\u0012\u00030Ë\u0001\u0018\u00010Á\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÌ\u0001\u0010Ä\u0001R\u0018\u0010Î\u0001\u001a\u00030Í\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÎ\u0001\u0010Ï\u0001¨\u0006Ò\u0001"}, d2 = {"Lcom/transsion/publish/ui/FilmReviewFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Llo/h;", "Lcom/tn/lib/widget/dialog/TRDialogListener;", "Lcom/transsion/publish/adapter/a;", "Lmo/b$b;", "<init>", "()V", "", "getVideoIconView", "getImageIconView", "showActivityTips", "", "timestamp1", "timestamp2", "", "isMoreThanADay", "(JJ)Z", "requestCurrentLocation", "userPost", "userGrade", "Lcom/transsion/publish/api/bean/RequestPostEntity;", "request", "", EventConstants.KEY_SOURCE, "postService", "(Lcom/transsion/publish/api/bean/RequestPostEntity;I)V", "buildRequest", "()Lcom/transsion/publish/api/bean/RequestPostEntity;", "detectionSelect", "(Lcom/transsion/publish/api/bean/RequestPostEntity;)V", "Lcom/transsion/publish/api/bean/RequestPostMediaEntity;", "mediaTypes", "checkCover", "(Lcom/transsion/publish/api/bean/RequestPostMediaEntity;)V", "Lcom/transsion/publish/api/VsMediaInfo;", "vsMediaInfo", "checkVideoCover", "(Lcom/transsion/publish/api/bean/RequestPostMediaEntity;Lcom/transsion/publish/api/VsMediaInfo;)V", "checkLogin", "()Z", "initViewModel", "observe", "Ljo/b;", "it", "disposeOperate", "(Ljo/b;)V", "refreshLocation", "refreshImage", "initImageAdapter", "initVideoAdapter", "", "getAddVideoEntity", "()Ljava/util/List;", "Lcom/transsion/publish/api/PhotoEntity;", "getAddImageEntity", "photoEntity", "selectPhotosDispose", "(Ljava/util/List;)V", "refreshAudio", "refreshVideo", "refreshCover", "refreshLink", "refreshWork", "Lcom/transsion/moviedetailapi/bean/Subject;", "subject", "setSubject", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "Lcom/transsion/publish/api/GroupBean;", "groupBean", "setGroup", "(Lcom/transsion/publish/api/GroupBean;)V", "Lcom/transsion/room/api/bean/LocationPlace;", RequestParameters.SUBRESOURCE_LOCATION, "setLocation", "(Lcom/transsion/room/api/bean/LocationPlace;)V", "refreshGroup", "initManagerAdapter", MimeTypes.BASE_TYPE_TEXT, "setStarTips", "(I)V", "deleteAudio", "deleteLocation", "coverClearDialog", "backSaveDialog", "initRegisterMediaSelector", "Landroid/content/Context;", "context", "showLinkEditInputDialog", "(Landroid/content/Context;)V", "checkBottomMargin", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "clickTrace", "(Ljava/lang/String;)V", "clickPostTrace", "openRoomList", "getPageName", "()Ljava/lang/String;", "hideOpertaionDialog", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "Landroid/view/LayoutInflater;", "inflater", "getViewBinding", "(Landroid/view/LayoutInflater;)Llo/h;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "initView", "closeAffirm", "checkPost", "lazyLoadData", "onDestroy", "Lcom/tn/lib/widget/dialog/TRDialog;", "dialog", "onLeftButtonClick", "(Lcom/tn/lib/widget/dialog/TRDialog;)V", "onRightButtonClick", "startPhoto", "startVideo", "startAudio", "startWork", "startLink", "startLocation", "startGroup", "put", "onPause", "completeLoad", "onStop", "onResume", "isPostEnable", "Lcom/transsion/publish/adapter/g;", "imageAdapter", "Lcom/transsion/publish/adapter/g;", "Lcom/transsion/publish/adapter/r;", "managerAdapter", "Lcom/transsion/publish/adapter/r;", "Lcom/transsion/publish/adapter/v;", "videoAdapter", "Lcom/transsion/publish/adapter/v;", "operationMenu", "Ljo/b;", "Lcom/transsion/publish/viewmodel/d;", "postViewModel", "Lcom/transsion/publish/viewmodel/d;", "Lcom/transsion/publish/bean/CoverEntity;", "coverPath", "Lcom/transsion/publish/bean/CoverEntity;", "Lcom/transsion/publish/api/GroupBean;", "mSubject", "Lcom/transsion/moviedetailapi/bean/Subject;", "locationBean", "Lcom/transsion/room/api/bean/LocationPlace;", "curLocationBean", "Lcom/transsion/publish/api/bean/MediaLinkEntity;", "linkEntity", "Lcom/transsion/publish/api/bean/MediaLinkEntity;", "publishType", "I", "sourceType", "sourceMode", "TITLE_MAX", "DESC_MAX", "requestGroup", "Z", "postStar", "isBold", "showTime", "J", "hasFocus", "TAG", "Ljava/lang/String;", "Lep/f;", "mRoomApi$delegate", "Lkotlin/Lazy;", "getMRoomApi", "()Lep/f;", "mRoomApi", "Lqx/a;", "loginApi$delegate", "getLoginApi", "()Lqx/a;", "loginApi", "Loo/b;", "publishModel$delegate", "getPublishModel", "()Loo/b;", "publishModel", "Landroidx/activity/result/b;", "Landroid/content/Intent;", "loginLaunch", "Landroidx/activity/result/b;", "isNeedShowLoginActivity", "Landroid/widget/ImageView;", "videoIcon", "Landroid/widget/ImageView;", "imageIcon", "underOS33", "Landroidx/activity/result/e;", "videoSelectLauncher", "Ljava/lang/Runnable;", "mRunnable", "Ljava/lang/Runnable;", "Companion", "a", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class FilmReviewFragment extends BaseFragment<lo.h> implements TRDialogListener, com.transsion.publish.adapter.a, mo.b.InterfaceC0816b {

    public static final Companion INSTANCE = new Companion(null);
    public static final String PAGE_NAME = "publish_post";
    private CoverEntity coverPath;
    private LocationPlace curLocationBean;
    private GroupBean groupBean;
    private boolean hasFocus;
    private com.transsion.publish.adapter.g imageAdapter;
    private ImageView imageIcon;
    private boolean isBold;
    private boolean isNeedShowLoginActivity;
    private MediaLinkEntity linkEntity;
    private LocationPlace locationBean;
    private androidx.activity.result.b loginLaunch;
    private final Runnable mRunnable;
    private Subject mSubject;
    private com.transsion.publish.adapter.r managerAdapter;
    private jo.b operationMenu;
    private int postStar;
    private com.transsion.publish.viewmodel.d postViewModel;
    private int publishType;
    private boolean requestGroup;
    private long showTime;
    private int sourceMode;
    private int sourceType;
    private boolean underOS33;
    private com.transsion.publish.adapter.v videoAdapter;
    private ImageView videoIcon;
    private androidx.activity.result.b videoSelectLauncher;
    private final int TITLE_MAX = 100;
    private final int DESC_MAX = 1000;
    private String TAG = PublishManager.TAG;

    private final Lazy mRoomApi = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return FilmReviewFragment.mRoomApi_delegate$lambda$0();
        }
    });

    private final Lazy loginApi = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return FilmReviewFragment.loginApi_delegate$lambda$1();
        }
    });

    private final Lazy publishModel = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return FilmReviewFragment.publishModel_delegate$lambda$2();
        }
    });

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final FilmReviewFragment a(int i10, Subject subject, int i11, GroupBean groupBean) {
            FilmReviewFragment filmReviewFragment = new FilmReviewFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("sourceType", i10);
            bundle.putInt("sourceMode", i11);
            if (subject != null) {
                bundle.putSerializable("subject", subject);
            }
            if (groupBean != null) {
                bundle.putSerializable("group", groupBean);
            }
            filmReviewFragment.setArguments(bundle);
            return filmReviewFragment;
        }

        private Companion() {
        }
    }

    public static final class b implements TextWatcher {

        final Ref.ObjectRef f48383b;

        final Ref.ObjectRef f48384c;

        b(Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2) {
            this.f48383b = objectRef;
            this.f48384c = objectRef2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void afterTextChanged(Editable editable) {
            EditText editText;
            EditText editText2;
            TextView textView;
            EditText editText3;
            EditText editText4;
            TextView textView2;
            TextView textView3;
            EditText editText5;
            EditText editText6;
            int length = editable != null ? editable.length() : 0;
            if (length <= 0) {
                FilmReviewFragment.this.isBold = false;
                lo.h mViewBinding = FilmReviewFragment.this.getMViewBinding();
                if (mViewBinding != null && (editText2 = mViewBinding.f66053d) != null) {
                    editText2.setTypeface((Typeface) this.f48384c.element, 0);
                }
                lo.h mViewBinding2 = FilmReviewFragment.this.getMViewBinding();
                if (mViewBinding2 != null && (editText = mViewBinding2.f66053d) != null) {
                    editText.invalidate();
                }
            } else if (!FilmReviewFragment.this.isBold) {
                lo.h mViewBinding3 = FilmReviewFragment.this.getMViewBinding();
                if (mViewBinding3 != null && (editText6 = mViewBinding3.f66053d) != null) {
                    editText6.setTypeface((Typeface) this.f48383b.element, 1);
                }
                lo.h mViewBinding4 = FilmReviewFragment.this.getMViewBinding();
                if (mViewBinding4 != null && (editText5 = mViewBinding4.f66053d) != null) {
                    editText5.invalidate();
                }
                FilmReviewFragment.this.isBold = true;
            }
            if (length < FilmReviewFragment.this.TITLE_MAX - 20 || length > FilmReviewFragment.this.TITLE_MAX) {
                lo.h mViewBinding5 = FilmReviewFragment.this.getMViewBinding();
                if (mViewBinding5 != null && (textView = mViewBinding5.f66072w) != null) {
                    textView.setVisibility(8);
                }
            } else {
                lo.h mViewBinding6 = FilmReviewFragment.this.getMViewBinding();
                if (mViewBinding6 != null && (textView3 = mViewBinding6.f66072w) != null) {
                    textView3.setVisibility(0);
                }
                lo.h mViewBinding7 = FilmReviewFragment.this.getMViewBinding();
                if (mViewBinding7 != null && (textView2 = mViewBinding7.f66072w) != null) {
                    textView2.setText(String.valueOf(FilmReviewFragment.this.TITLE_MAX - length));
                }
            }
            if (length > FilmReviewFragment.this.TITLE_MAX) {
                com.tn.lib.widget.toast.core.h.f40484a.k(R$string.post_title_length_max);
                if (TextUtils.isEmpty(editable)) {
                    return;
                }
                Integer numValueOf = editable != null ? Integer.valueOf(editable.length()) : null;
                Intrinsics.e(numValueOf);
                if (numValueOf.intValue() > FilmReviewFragment.this.TITLE_MAX) {
                    String string = editable.subSequence(0, FilmReviewFragment.this.TITLE_MAX).toString();
                    lo.h mViewBinding8 = FilmReviewFragment.this.getMViewBinding();
                    if (mViewBinding8 != null && (editText4 = mViewBinding8.f66053d) != null) {
                        editText4.setText(string);
                    }
                    lo.h mViewBinding9 = FilmReviewFragment.this.getMViewBinding();
                    if (mViewBinding9 == null || (editText3 = mViewBinding9.f66053d) == null) {
                        return;
                    }
                    editText3.setSelection(string.length());
                }
            }
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    public static final class c implements TextWatcher {
        c() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            OperationBarView operationBarView;
            OperationBarView operationBarView2;
            OperationBarView operationBarView3;
            lo.h mViewBinding;
            EditText editText;
            EditText editText2;
            OperationBarView operationBarView4;
            EditText editText3;
            Integer numValueOf = editable != null ? Integer.valueOf(editable.length()) : null;
            lo.h mViewBinding2 = FilmReviewFragment.this.getMViewBinding();
            if (mViewBinding2 != null && (editText3 = mViewBinding2.f66052c) != null) {
                Linkify.addLinks(editText3, 1);
            }
            if (numValueOf != null) {
                FragmentActivity activity = FilmReviewFragment.this.getActivity();
                Intrinsics.f(activity, "null cannot be cast to non-null type com.transsion.publish.ui.FilmReviewActivity");
                ((FilmReviewActivity) activity).j0(FilmReviewFragment.this.isPostEnable());
                if (numValueOf.intValue() >= 995) {
                    lo.h mViewBinding3 = FilmReviewFragment.this.getMViewBinding();
                    if (mViewBinding3 != null && (operationBarView4 = mViewBinding3.f66062m) != null) {
                        operationBarView4.setInputLimitColor(R$color.error_50);
                    }
                } else {
                    lo.h mViewBinding4 = FilmReviewFragment.this.getMViewBinding();
                    if (mViewBinding4 != null && (operationBarView2 = mViewBinding4.f66062m) != null) {
                        operationBarView2.setInputLimitColor(R$color.white_80);
                    }
                }
                if (numValueOf.intValue() >= FilmReviewFragment.this.DESC_MAX) {
                    if (TextUtils.isEmpty(editable)) {
                        return;
                    }
                    Integer numValueOf2 = editable != null ? Integer.valueOf(editable.length()) : null;
                    Intrinsics.e(numValueOf2);
                    if (numValueOf2.intValue() > FilmReviewFragment.this.DESC_MAX) {
                        String string = editable != null ? editable.subSequence(0, FilmReviewFragment.this.DESC_MAX).toString() : null;
                        lo.h mViewBinding5 = FilmReviewFragment.this.getMViewBinding();
                        if (mViewBinding5 != null && (editText2 = mViewBinding5.f66052c) != null) {
                            editText2.setText(string);
                        }
                        if (string != null && (mViewBinding = FilmReviewFragment.this.getMViewBinding()) != null && (editText = mViewBinding.f66052c) != null) {
                            editText.setSelection(string.length());
                        }
                        lo.h mViewBinding6 = FilmReviewFragment.this.getMViewBinding();
                        if (mViewBinding6 == null || (operationBarView3 = mViewBinding6.f66062m) == null) {
                            return;
                        }
                        operationBarView3.updateInputNum(string != null ? string.length() : 0);
                        return;
                    }
                    return;
                }
            }
            lo.h mViewBinding7 = FilmReviewFragment.this.getMViewBinding();
            if (mViewBinding7 == null || (operationBarView = mViewBinding7.f66062m) == null) {
                return;
            }
            operationBarView.updateInputNum(numValueOf != null ? numValueOf.intValue() : 0);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    public static final class d extends CountDownTimer {
        d() {
            super(5000L, 1000L);
        }

        @Override
        public void onFinish() {
            BubbleTextView bubbleTextView;
            lo.h mViewBinding = FilmReviewFragment.this.getMViewBinding();
            if (mViewBinding == null || (bubbleTextView = mViewBinding.f66051b) == null) {
                return;
            }
            bubbleTextView.setVisibility(8);
        }

        @Override
        public void onTick(long j10) {
        }
    }

    public FilmReviewFragment() {
        this.underOS33 = Build.VERSION.SDK_INT < 33;
        this.mRunnable = new Runnable() {
            @Override
            public final void run() {
                FilmReviewFragment.mRunnable$lambda$36(this.f48524a);
            }
        };
    }

    private final void backSaveDialog() {
        try {
            TRDialog.a aVar = new TRDialog.a();
            String string = getString(R$string.cover_save_des);
            Intrinsics.g(string, "getString(...)");
            TRDialog.a aVarG = aVar.g(string);
            String string2 = getString(R$string.cover_save_right);
            Intrinsics.g(string2, "getString(...)");
            TRDialog.a aVarE = aVarG.e(string2);
            String string3 = getString(R$string.cover_save_left);
            Intrinsics.g(string3, "getString(...)");
            aVarE.j(string3).h(R$drawable.btn_bg_dialog_edit_selector).c(R$drawable.btn_bg_dialog_edit_selector).i(com.blankj.utilcode.util.h.a(R$color.error_50)).f(this).a().d0(this, "back_save");
            HashMap map = new HashMap();
            map.put("module_name", "back_save_dialog");
            qi.h.f69682a.z(getPageName(), map);
        } catch (Exception unused) {
        }
    }

    private final RequestPostEntity buildRequest() {
        String groupId;
        String name;
        Double lat;
        Double lon;
        EditText editText;
        String subjectId;
        EditText editText2;
        lo.h mViewBinding = getMViewBinding();
        Editable text = null;
        String strQ = StringsKt.Q(StringsKt.Q(String.valueOf((mViewBinding == null || (editText2 = mViewBinding.f66052c) == null) ? null : editText2.getText()), "\\n", "", false, 4, null), "\\t", "", false, 4, null);
        RequestPostEntity requestPostEntity = new RequestPostEntity();
        GroupBean groupBean = this.groupBean;
        String str = "0";
        if (groupBean == null || (groupId = groupBean.getGroupId()) == null) {
            groupId = "0";
        }
        requestPostEntity.setGroupId(groupId);
        requestPostEntity.setScore(String.valueOf(this.postStar));
        requestPostEntity.setLink(this.linkEntity);
        Subject subject = this.mSubject;
        if (subject != null && (subjectId = subject.getSubjectId()) != null) {
            str = subjectId;
        }
        requestPostEntity.setSubjectId(str);
        lo.h mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (editText = mViewBinding2.f66053d) != null) {
            text = editText.getText();
        }
        requestPostEntity.setTitle(String.valueOf(text));
        requestPostEntity.setContent(strQ);
        requestPostEntity.setPublishType(this.sourceType);
        LocationPlace locationPlace = this.locationBean;
        double dDoubleValue = 0.0d;
        requestPostEntity.setLon((locationPlace == null || (lon = locationPlace.getLon()) == null) ? 0.0d : lon.doubleValue());
        LocationPlace locationPlace2 = this.locationBean;
        if (locationPlace2 != null && (lat = locationPlace2.getLat()) != null) {
            dDoubleValue = lat.doubleValue();
        }
        requestPostEntity.setLat(dDoubleValue);
        LocationPlace locationPlace3 = this.locationBean;
        if (locationPlace3 == null || (name = locationPlace3.getName()) == null) {
            name = "";
        }
        requestPostEntity.setPoiName(name);
        detectionSelect(requestPostEntity);
        return requestPostEntity;
    }

    private final void checkBottomMargin() {
    }

    private final void checkCover(RequestPostMediaEntity mediaTypes) {
        Integer height;
        Integer width;
        Long size;
        if (this.coverPath != null) {
            MediaCoverEntity mediaCoverEntity = new MediaCoverEntity();
            CoverEntity coverEntity = this.coverPath;
            mediaCoverEntity.setUrl(coverEntity != null ? coverEntity.getUrl() : null);
            CoverEntity coverEntity2 = this.coverPath;
            mediaCoverEntity.setSize((coverEntity2 == null || (size = coverEntity2.getSize()) == null) ? 0L : size.longValue());
            CoverEntity coverEntity3 = this.coverPath;
            int iIntValue = 0;
            mediaCoverEntity.setWidth((coverEntity3 == null || (width = coverEntity3.getWidth()) == null) ? 0 : width.intValue());
            CoverEntity coverEntity4 = this.coverPath;
            if (coverEntity4 != null && (height = coverEntity4.getHeight()) != null) {
                iIntValue = height.intValue();
            }
            mediaCoverEntity.setHeight(iIntValue);
            mediaTypes.setCover(mediaCoverEntity);
        }
    }

    private final boolean checkLogin() {
        qx.a loginApi = getLoginApi();
        if (loginApi == null || loginApi.a()) {
            return true;
        }
        androidx.activity.result.b bVar = this.loginLaunch;
        if (bVar == null) {
            this.isNeedShowLoginActivity = true;
        }
        if (bVar == null) {
            return false;
        }
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        Intent intentP = loginApi.p(contextRequireContext);
        intentP.putExtra("title_name", getString(R$string.post_login_title));
        bVar.a(intentP);
        return false;
    }

    private final void checkVideoCover(RequestPostMediaEntity mediaTypes, VsMediaInfo vsMediaInfo) {
        if (TextUtils.isEmpty(vsMediaInfo.getImagePath())) {
            return;
        }
        int[] iArrD = ImageUtils.d(vsMediaInfo.getImagePath());
        MediaCoverEntity mediaCoverEntity = new MediaCoverEntity();
        mediaCoverEntity.setUrl(vsMediaInfo.getImagePath());
        mediaCoverEntity.setSize(iArrD[0] * iArrD[1]);
        mediaCoverEntity.setWidth(iArrD[0]);
        mediaCoverEntity.setHeight(iArrD[1]);
        mediaTypes.setCover(mediaCoverEntity);
    }

    private final void clickPostTrace() {
        HashMap map = new HashMap();
        map.put("module_name", "post");
        qi.h.f69682a.o(getPageName(), map);
    }

    private final void clickTrace(String value) {
        HashMap map = new HashMap();
        map.put("click", value);
        qi.h.f69682a.o(getPageName(), map);
    }

    private final void coverClearDialog() {
        try {
            TRDialog.a aVar = new TRDialog.a();
            String string = getString(R$string.cover_clear_des);
            Intrinsics.g(string, "getString(...)");
            TRDialog.a aVarG = aVar.g(string);
            String string2 = getString(R$string.cover_clear_left);
            Intrinsics.g(string2, "getString(...)");
            TRDialog.a aVarE = aVarG.e(string2);
            String string3 = getString(R$string.cover_clear_right);
            Intrinsics.g(string3, "getString(...)");
            aVarE.j(string3).h(R$drawable.btn_bg_dialog_edit_selector).c(R$drawable.btn_bg_dialog_edit_selector).i(com.blankj.utilcode.util.h.a(com.transsion.baseui.R$color.base_color_black)).f(this).a().d0(this, "clear_cover");
        } catch (Exception unused) {
        }
    }

    private final void deleteAudio() {
        OperationBarView operationBarView;
        RelativeLayout relativeLayout;
        RelativeLayout relativeLayout2;
        LinearLayout linearLayout;
        ImageView imageView;
        ImageView imageView2;
        RelativeLayout relativeLayout3;
        RelativeLayout relativeLayout4;
        this.coverPath = null;
        lo.h mViewBinding = getMViewBinding();
        if (mViewBinding != null && (relativeLayout = mViewBinding.f66064o) != null && relativeLayout.getVisibility() == 0) {
            lo.h mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (relativeLayout4 = mViewBinding2.f66064o) != null) {
                relativeLayout4.setVisibility(8);
            }
            if (this.sourceType == 1) {
                lo.h mViewBinding3 = getMViewBinding();
                if (mViewBinding3 != null && (relativeLayout3 = mViewBinding3.f66066q) != null) {
                    relativeLayout3.setVisibility(0);
                }
            } else {
                lo.h mViewBinding4 = getMViewBinding();
                if (mViewBinding4 != null && (relativeLayout2 = mViewBinding4.f66066q) != null) {
                    relativeLayout2.setVisibility(8);
                }
            }
            lo.h mViewBinding5 = getMViewBinding();
            if (mViewBinding5 != null && (imageView2 = mViewBinding5.f66056g) != null) {
                imageView2.setImageResource(0);
            }
            lo.h mViewBinding6 = getMViewBinding();
            if (mViewBinding6 != null && (imageView = mViewBinding6.f66056g) != null) {
                imageView.setBackgroundResource(0);
            }
            lo.h mViewBinding7 = getMViewBinding();
            if (mViewBinding7 != null && (linearLayout = mViewBinding7.f66059j) != null) {
                linearLayout.requestLayout();
            }
        }
        lo.h mViewBinding8 = getMViewBinding();
        if (mViewBinding8 != null && (operationBarView = mViewBinding8.f66062m) != null) {
            operationBarView.resetItem();
        }
        jo.b bVar = this.operationMenu;
        if (bVar != null) {
            if ((bVar != null ? bVar.a() : null) != null) {
                com.transsion.publish.adapter.r rVar = this.managerAdapter;
                if (rVar != null) {
                    jo.b bVar2 = this.operationMenu;
                    AudioEntity audioEntityA = bVar2 != null ? bVar2.a() : null;
                    Intrinsics.e(audioEntityA);
                    rVar.I(audioEntityA);
                }
                this.operationMenu = null;
            }
        }
        com.transsion.publish.adapter.r rVar2 = this.managerAdapter;
        if (rVar2 != null) {
            rVar2.u();
        }
    }

    private final void deleteLocation() {
        jo.b bVar = this.operationMenu;
        if (bVar != null) {
            if ((bVar != null ? bVar.g() : null) != null) {
                com.transsion.publish.adapter.r rVar = this.managerAdapter;
                if (rVar != null) {
                    jo.b bVar2 = this.operationMenu;
                    LocationPlace locationPlaceG = bVar2 != null ? bVar2.g() : null;
                    Intrinsics.e(locationPlaceG);
                    rVar.I(locationPlaceG);
                }
                this.locationBean = null;
                this.operationMenu = null;
            }
        }
    }

    private final void detectionSelect(RequestPostEntity request) {
        List<rm.a> listV;
        List<VsMediaInfo> listM;
        List<PhotoEntity> listM2;
        OperationBarView operationBarView;
        lo.h mViewBinding = getMViewBinding();
        List<Integer> selectItem = (mViewBinding == null || (operationBarView = mViewBinding.f66062m) == null) ? null : operationBarView.getSelectItem();
        RequestPostMediaEntity requestPostMediaEntity = new RequestPostMediaEntity();
        request.setMedia(requestPostMediaEntity);
        if (selectItem != null) {
            Iterator<T> it = selectItem.iterator();
            while (it.hasNext()) {
                int iIntValue = ((Number) it.next()).intValue();
                if (iIntValue == 0) {
                    requestPostMediaEntity.setMediaType(1);
                    ArrayList arrayList = new ArrayList();
                    com.transsion.publish.adapter.g gVar = this.imageAdapter;
                    if (gVar != null && (listM2 = gVar.m()) != null) {
                        for (PhotoEntity photoEntity : listM2) {
                            if (!photoEntity.getIsAdd()) {
                                MediaImageEntity mediaImageEntity = new MediaImageEntity();
                                mediaImageEntity.setUrl(String.valueOf(photoEntity.getLocalPath()));
                                if (photoEntity.getWidth() > 0) {
                                    mediaImageEntity.setWidth(Integer.valueOf(photoEntity.getWidth()));
                                }
                                if (photoEntity.getHeight() > 0) {
                                    mediaImageEntity.setHeight(Integer.valueOf(photoEntity.getHeight()));
                                }
                                if (photoEntity.getImageSize() > 0) {
                                    mediaImageEntity.setSize(Long.valueOf(photoEntity.getImageSize()));
                                }
                                arrayList.add(mediaImageEntity);
                            }
                        }
                    }
                    requestPostMediaEntity.setImage(arrayList);
                } else if (iIntValue == 1) {
                    requestPostMediaEntity.setMediaType(4);
                    requestPostMediaEntity.setVideo(new ArrayList());
                    com.transsion.publish.adapter.v vVar = this.videoAdapter;
                    if (vVar != null && (listM = vVar.m()) != null) {
                        for (VsMediaInfo vsMediaInfo : listM) {
                            if (!vsMediaInfo.getIsAdd()) {
                                MediaVideoEntity mediaVideoEntity = new MediaVideoEntity();
                                mediaVideoEntity.setUrl(String.valueOf(vsMediaInfo.getVideoPath()));
                                mediaVideoEntity.setImagePath(vsMediaInfo.getImagePath());
                                if (vsMediaInfo.getWidth() > 0) {
                                    mediaVideoEntity.setWidth(vsMediaInfo.getWidth());
                                }
                                if (vsMediaInfo.getHeight() > 0) {
                                    mediaVideoEntity.setHeight(vsMediaInfo.getHeight());
                                }
                                if (vsMediaInfo.getVideoDuration() > 0) {
                                    mediaVideoEntity.setDuration(vsMediaInfo.getVideoDuration() / ((long) 1000));
                                }
                                mediaVideoEntity.setSize(vsMediaInfo.getVideoSize());
                                mediaVideoEntity.setFps(0);
                                mediaVideoEntity.setBitrate(0);
                                mediaVideoEntity.setDefinition(0);
                                List<MediaVideoEntity> video = requestPostMediaEntity.getVideo();
                                if (video != null) {
                                    video.add(mediaVideoEntity);
                                }
                                checkVideoCover(requestPostMediaEntity, vsMediaInfo);
                            }
                        }
                    }
                } else if (iIntValue == 2) {
                    requestPostMediaEntity.setMediaType(2);
                    requestPostMediaEntity.setAudio(new ArrayList());
                    com.transsion.publish.adapter.r rVar = this.managerAdapter;
                    if (rVar != null && (listV = rVar.v()) != null) {
                        for (rm.a aVar : listV) {
                            if (aVar instanceof AudioEntity) {
                                MediaAudioEntity mediaAudioEntity = new MediaAudioEntity();
                                AudioEntity audioEntity = (AudioEntity) aVar;
                                mediaAudioEntity.setUrl(String.valueOf(audioEntity.getLocalPath()));
                                mediaAudioEntity.setSize(audioEntity.getSize());
                                Long duration = audioEntity.getDuration();
                                if ((duration != null ? duration.longValue() : 0L) > 0) {
                                    Long duration2 = audioEntity.getDuration();
                                    mediaAudioEntity.setDuration(duration2 != null ? duration2.longValue() / ((long) 1000) : 0L);
                                }
                                mediaAudioEntity.setBitrate(0L);
                                List<MediaAudioEntity> audio = requestPostMediaEntity.getAudio();
                                if (audio != null) {
                                    audio.add(mediaAudioEntity);
                                }
                            }
                        }
                    }
                    checkCover(requestPostMediaEntity);
                }
            }
        }
    }

    private final void disposeOperate(jo.b it) {
        Integer numE;
        this.operationMenu = it;
        hideOpertaionDialog();
        Integer numE2 = it.e();
        if (numE2 != null && numE2.intValue() == 0) {
            refreshImage(it);
        } else if (numE2 != null && numE2.intValue() == 1) {
            refreshVideo(it);
        } else if (numE2 != null && numE2.intValue() == 2) {
            refreshAudio(it);
        } else if (numE2 != null && numE2.intValue() == 5) {
            refreshCover(it);
        } else if (numE2 != null && numE2.intValue() == 3) {
            refreshWork(it);
        } else if (numE2 != null && numE2.intValue() == 6) {
            refreshGroup(it);
        } else if (numE2 != null && numE2.intValue() == 4) {
            refreshLink(it);
        } else if (numE2 != null && numE2.intValue() == 8) {
            refreshLocation(it);
        }
        Integer numE3 = it.e();
        if (numE3 != null && numE3.intValue() == 5 && (numE = it.e()) != null && numE.intValue() == 6) {
            return;
        }
        checkBottomMargin();
    }

    private final List<PhotoEntity> getAddImageEntity() {
        ArrayList arrayList = new ArrayList();
        PhotoEntity photoEntity = new PhotoEntity();
        photoEntity.setAdd(true);
        arrayList.add(photoEntity);
        return arrayList;
    }

    private final List<VsMediaInfo> getAddVideoEntity() {
        ArrayList arrayList = new ArrayList();
        VsMediaInfo vsMediaInfo = new VsMediaInfo();
        vsMediaInfo.setAdd(true);
        arrayList.add(vsMediaInfo);
        return arrayList;
    }

    private final void getImageIconView() {
        OperationBarView operationBarView;
        RecyclerView recyclerView;
        lo.h mViewBinding = getMViewBinding();
        if (mViewBinding == null || (operationBarView = mViewBinding.f66062m) == null || (recyclerView = operationBarView.getCom.mbridge.msdk.foundation.entity.CampaignEx.JSON_KEY_REWARD_TEMPLATE java.lang.String()) == null) {
            return;
        }
        recyclerView.post(new Runnable() {
            @Override
            public final void run() {
                FilmReviewFragment.getImageIconView$lambda$11(this.f48492a);
            }
        });
    }

    public static final void getImageIconView$lambda$11(FilmReviewFragment filmReviewFragment) {
        OperationBarView operationBarView;
        RecyclerView recyclerView;
        lo.h mViewBinding = filmReviewFragment.getMViewBinding();
        RecyclerView.a0 a0VarFindViewHolderForAdapterPosition = (mViewBinding == null || (operationBarView = mViewBinding.f66062m) == null || (recyclerView = operationBarView.getCom.mbridge.msdk.foundation.entity.CampaignEx.JSON_KEY_REWARD_TEMPLATE java.lang.String()) == null) ? null : recyclerView.findViewHolderForAdapterPosition(0);
        if (a0VarFindViewHolderForAdapterPosition instanceof so.f) {
            filmReviewFragment.imageIcon = (ImageView) ((so.f) a0VarFindViewHolderForAdapterPosition).itemView.findViewById(R$id.image);
        }
    }

    private final qx.a getLoginApi() {
        return (qx.a) this.loginApi.getValue();
    }

    private final ep.f getMRoomApi() {
        return (ep.f) this.mRoomApi.getValue();
    }

    private final String getPageName() {
        return PAGE_NAME;
    }

    private final oo.b getPublishModel() {
        return (oo.b) this.publishModel.getValue();
    }

    private final void getVideoIconView() {
        OperationBarView operationBarView;
        RecyclerView recyclerView;
        lo.h mViewBinding = getMViewBinding();
        if (mViewBinding == null || (operationBarView = mViewBinding.f66062m) == null || (recyclerView = operationBarView.getCom.mbridge.msdk.foundation.entity.CampaignEx.JSON_KEY_REWARD_TEMPLATE java.lang.String()) == null) {
            return;
        }
        recyclerView.post(new Runnable() {
            @Override
            public final void run() {
                FilmReviewFragment.getVideoIconView$lambda$10(this.f48490a);
            }
        });
    }

    public static final void getVideoIconView$lambda$10(FilmReviewFragment filmReviewFragment) {
        OperationBarView operationBarView;
        RecyclerView recyclerView;
        lo.h mViewBinding = filmReviewFragment.getMViewBinding();
        RecyclerView.a0 a0VarFindViewHolderForAdapterPosition = (mViewBinding == null || (operationBarView = mViewBinding.f66062m) == null || (recyclerView = operationBarView.getCom.mbridge.msdk.foundation.entity.CampaignEx.JSON_KEY_REWARD_TEMPLATE java.lang.String()) == null) ? null : recyclerView.findViewHolderForAdapterPosition(1);
        if (a0VarFindViewHolderForAdapterPosition instanceof so.f) {
            filmReviewFragment.videoIcon = (ImageView) ((so.f) a0VarFindViewHolderForAdapterPosition).itemView.findViewById(R$id.image);
        }
    }

    private final void hideOpertaionDialog() {
    }

    private final void initImageAdapter() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        if (this.imageAdapter == null) {
            this.imageAdapter = new com.transsion.publish.adapter.g();
            lo.h mViewBinding = getMViewBinding();
            if (mViewBinding != null && (recyclerView3 = mViewBinding.f66068s) != null) {
                recyclerView3.setLayoutManager(new NpaGridLayoutManager(getContext(), 3));
            }
            lo.h mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (recyclerView2 = mViewBinding2.f66068s) != null) {
                recyclerView2.addItemDecoration(new tf.b(com.blankj.utilcode.util.a0.a(2.0f), com.blankj.utilcode.util.a0.a(2.0f), 0, com.blankj.utilcode.util.a0.a(8.0f)));
            }
        }
        lo.h mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (recyclerView = mViewBinding3.f66068s) == null) {
            return;
        }
        recyclerView.setAdapter(this.imageAdapter);
    }

    private final void initManagerAdapter() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        if (this.managerAdapter == null) {
            this.managerAdapter = new com.transsion.publish.adapter.r();
            lo.h mViewBinding = getMViewBinding();
            if (mViewBinding != null && (recyclerView2 = mViewBinding.f66067r) != null) {
                recyclerView2.setLayoutManager(new LinearLayoutManager(getActivity(), 1, false));
            }
            lo.h mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (recyclerView = mViewBinding2.f66067r) == null) {
                return;
            }
            recyclerView.setAdapter(this.managerAdapter);
        }
    }

    private final void initRegisterMediaSelector() {
        if (this.underOS33) {
            return;
        }
        this.videoSelectLauncher = requireActivity().registerForActivityResult(new f.g(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                FilmReviewFragment.initRegisterMediaSelector$lambda$31(this.f48517a, (Uri) obj);
            }
        });
    }

    public static final void initRegisterMediaSelector$lambda$31(FilmReviewFragment filmReviewFragment, Uri uri) {
        if (uri != null) {
            jo.b bVar = new jo.b();
            bVar.o(1);
            bVar.n(1);
            VsMediaInfo vsMediaInfo = new VsMediaInfo();
            qo.g gVar = qo.g.f69926a;
            Context contextRequireContext = filmReviewFragment.requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            ko.a aVarB = gVar.b(contextRequireContext, uri);
            if (aVarB != null) {
                vsMediaInfo.setVideoPath(aVarB.c());
                vsMediaInfo.setVideoTitle(aVarB.e());
                vsMediaInfo.setVideoDuration(aVarB.a());
                vsMediaInfo.setWidth(aVarB.f());
                vsMediaInfo.setHeight(aVarB.b());
                vsMediaInfo.setVideoSize(aVarB.d());
            }
            bVar.u(vsMediaInfo);
            filmReviewFragment.refreshVideo(bVar);
            filmReviewFragment.requireActivity().getContentResolver().takePersistableUriPermission(uri, 1);
        }
    }

    private final void initVideoAdapter() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        if (this.videoAdapter == null) {
            this.videoAdapter = new com.transsion.publish.adapter.v();
            lo.h mViewBinding = getMViewBinding();
            if (mViewBinding != null && (recyclerView3 = mViewBinding.f66068s) != null) {
                recyclerView3.setLayoutManager(new NpaGridLayoutManager(getContext(), 3));
            }
            lo.h mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (recyclerView2 = mViewBinding2.f66068s) != null) {
                recyclerView2.addItemDecoration(new tf.b(com.blankj.utilcode.util.a0.a(2.0f), com.blankj.utilcode.util.a0.a(2.0f), 0, com.blankj.utilcode.util.a0.a(8.0f)));
            }
        }
        lo.h mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (recyclerView = mViewBinding3.f66068s) == null) {
            return;
        }
        recyclerView.setAdapter(this.videoAdapter);
    }

    public static final void initView$lambda$3(FilmReviewFragment filmReviewFragment, RatingBar ratingBar, float f10, boolean z10) {
        filmReviewFragment.postStar = (int) f10;
    }

    public static final void initView$lambda$4(FilmReviewFragment filmReviewFragment, View view) {
        SelectImageActivity.Companion companion = SelectImageActivity.INSTANCE;
        Context contextRequireContext = filmReviewFragment.requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        com.transsion.publish.adapter.g gVar = filmReviewFragment.imageAdapter;
        companion.a(contextRequireContext, 5, 1, gVar != null ? gVar.m() : null);
    }

    public static final void initView$lambda$5(FilmReviewFragment filmReviewFragment, ActivityResult it) {
        Intrinsics.h(it, "it");
        if (it.getResultCode() != -1) {
            wf.a.C0922a.f(wf.a.f74274a, "loginStatus", "登录失败或者取消", false, 4, null);
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "loginStatus", "登录成功", false, 4, null);
        com.tn.lib.widget.toast.core.h hVar = com.tn.lib.widget.toast.core.h.f40484a;
        qx.a loginApi = filmReviewFragment.getLoginApi();
        hVar.l(loginApi != null ? loginApi.b() : null);
    }

    public static final void initView$lambda$6(FilmReviewFragment filmReviewFragment, View view, boolean z10) {
        view.dispatchWindowFocusChanged(z10);
        filmReviewFragment.hasFocus = z10;
        if (z10) {
            filmReviewFragment.hideOpertaionDialog();
        }
    }

    public static final void initView$lambda$8(final FilmReviewFragment filmReviewFragment, View view, boolean z10) {
        lo.h mViewBinding;
        EditText editText;
        EditText editText2;
        view.dispatchWindowFocusChanged(z10);
        if (z10) {
            filmReviewFragment.hideOpertaionDialog();
            lo.h mViewBinding2 = filmReviewFragment.getMViewBinding();
            if (!TextUtils.isEmpty((mViewBinding2 == null || (editText2 = mViewBinding2.f66052c) == null) ? null : editText2.getText()) || (mViewBinding = filmReviewFragment.getMViewBinding()) == null || (editText = mViewBinding.f66052c) == null) {
                return;
            }
            editText.post(new Runnable() {
                @Override
                public final void run() {
                    FilmReviewFragment.initView$lambda$8$lambda$7(this.f48521a);
                }
            });
        }
    }

    public static final void initView$lambda$8$lambda$7(FilmReviewFragment filmReviewFragment) {
        EditText editText;
        EditText editText2;
        EditText editText3;
        lo.h mViewBinding = filmReviewFragment.getMViewBinding();
        if (mViewBinding != null && (editText3 = mViewBinding.f66052c) != null) {
            editText3.setText("");
        }
        lo.h mViewBinding2 = filmReviewFragment.getMViewBinding();
        if (mViewBinding2 != null && (editText2 = mViewBinding2.f66052c) != null) {
            editText2.setSelection(0);
        }
        lo.h mViewBinding3 = filmReviewFragment.getMViewBinding();
        if (mViewBinding3 == null || (editText = mViewBinding3.f66052c) == null) {
            return;
        }
        editText.requestFocus();
    }

    public static final void initView$lambda$9(int i10) {
    }

    @SuppressLint({"InflateParams"})
    private final void initViewModel() {
        observe();
    }

    private final boolean isMoreThanADay(long timestamp1, long timestamp2) {
        return timestamp1 - timestamp2 > ((long) MiniAppConfigHelper.DEFAULT_MINI_SCOPE_REQUEST_DIFF);
    }

    public static final qx.a loginApi_delegate$lambda$1() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    public static final ep.f mRoomApi_delegate$lambda$0() {
        return (ep.f) TheRouter.d(ep.f.class, new Object[0]);
    }

    public static final void mRunnable$lambda$36(FilmReviewFragment filmReviewFragment) {
        EditText editText;
        lo.h mViewBinding = filmReviewFragment.getMViewBinding();
        if (mViewBinding == null || (editText = mViewBinding.f66052c) == null) {
            return;
        }
        editText.clearFocus();
        editText.requestFocus();
        KeyboardUtils.i(editText);
    }

    private final void observe() {
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return FilmReviewFragment.observe$lambda$23(this.f48499a, (jo.b) obj);
            }
        };
        AppScopeVMlProvider appScopeVMlProvider = AppScopeVMlProvider.INSTANCE;
        FlowEventBus flowEventBus = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name = jo.b.class.getName();
        Intrinsics.g(name, "getName(...)");
        Lifecycle.State state = Lifecycle.State.CREATED;
        flowEventBus.observeEvent(this, name, state, kotlinx.coroutines.y0.c().r(), false, function1);
        Function1 function2 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return FilmReviewFragment.observe$lambda$24(this.f48502a, (BigImageBean) obj);
            }
        };
        FlowEventBus flowEventBus2 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = BigImageBean.class.getName();
        Intrinsics.g(name2, "getName(...)");
        flowEventBus2.observeEvent(this, name2, state, kotlinx.coroutines.y0.c().r(), false, function2);
    }

    public static final Unit observe$lambda$23(FilmReviewFragment filmReviewFragment, jo.b it) {
        Intrinsics.h(it, "it");
        filmReviewFragment.disposeOperate(it);
        return Unit.f64096a;
    }

    public static final Unit observe$lambda$24(FilmReviewFragment filmReviewFragment, BigImageBean it) {
        Intrinsics.h(it, "it");
        Integer from = it.getFrom();
        if (from == null || from.intValue() != 2) {
            return Unit.f64096a;
        }
        Integer operator = it.getOperator();
        if (operator != null && operator.intValue() == 1) {
            filmReviewFragment.selectPhotosDispose(it.getSelect());
        }
        return Unit.f64096a;
    }

    private final void openRoomList() {
        Navigator.x(TheRouter.c("/room/list").z("is_select_room", true).F("index", 1), requireContext(), null, 2, null);
    }

    private final void postService(RequestPostEntity request, int source) {
        PublishService.Companion companion = PublishService.INSTANCE;
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        companion.a(contextRequireContext, request, this.sourceType);
    }

    public static final oo.b publishModel_delegate$lambda$2() {
        return new oo.b();
    }

    private final void refreshAudio(jo.b it) {
        RelativeLayout relativeLayout;
        RelativeLayout relativeLayout2;
        RelativeLayout relativeLayout3;
        OperationBarView operationBarView;
        Integer numD = it.d();
        if (numD == null || numD.intValue() != 1) {
            if (numD != null && numD.intValue() == 2) {
                if (this.coverPath != null) {
                    coverClearDialog();
                    return;
                } else {
                    deleteAudio();
                    return;
                }
            }
            return;
        }
        if (it.a() == null) {
            return;
        }
        lo.h mViewBinding = getMViewBinding();
        if (mViewBinding != null && (operationBarView = mViewBinding.f66062m) != null) {
            operationBarView.selectItem(2);
        }
        initManagerAdapter();
        AudioEntity audioEntityA = it.a();
        if (audioEntityA != null) {
            audioEntityA.setType(2);
        }
        com.transsion.publish.adapter.r rVar = this.managerAdapter;
        if (rVar != null) {
            rVar.J(it.a());
        }
        lo.h mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (relativeLayout3 = mViewBinding2.f66064o) == null || relativeLayout3.getVisibility() != 0) {
            lo.h mViewBinding3 = getMViewBinding();
            if (mViewBinding3 != null && (relativeLayout2 = mViewBinding3.f66064o) != null) {
                relativeLayout2.setVisibility(0);
            }
            lo.h mViewBinding4 = getMViewBinding();
            if (mViewBinding4 == null || (relativeLayout = mViewBinding4.f66066q) == null) {
                return;
            }
            relativeLayout.setVisibility(8);
        }
    }

    private final void refreshCover(jo.b it) {
        ImageView imageView;
        if (it.b() == null) {
            return;
        }
        if (this.coverPath == null) {
            this.coverPath = new CoverEntity();
        }
        CoverEntity coverEntity = this.coverPath;
        if (coverEntity != null) {
            PhotoEntity photoEntityB = it.b();
            coverEntity.setUrl(photoEntityB != null ? photoEntityB.getLocalPath() : null);
        }
        CoverEntity coverEntity2 = this.coverPath;
        if (coverEntity2 != null) {
            PhotoEntity photoEntityB2 = it.b();
            coverEntity2.setSize(photoEntityB2 != null ? Long.valueOf(photoEntityB2.getImageSize()) : null);
        }
        CoverEntity coverEntity3 = this.coverPath;
        if (coverEntity3 != null) {
            PhotoEntity photoEntityB3 = it.b();
            coverEntity3.setWidth(photoEntityB3 != null ? Integer.valueOf(photoEntityB3.getWidth()) : null);
        }
        CoverEntity coverEntity4 = this.coverPath;
        if (coverEntity4 != null) {
            PhotoEntity photoEntityB4 = it.b();
            coverEntity4.setHeight(photoEntityB4 != null ? Integer.valueOf(photoEntityB4.getHeight()) : null);
        }
        lo.h mViewBinding = getMViewBinding();
        if (mViewBinding != null && (imageView = mViewBinding.f66056g) != null) {
            imageView.setVisibility(0);
        }
        ni.f.a aVar = ni.f.f67269a;
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        ni.f.b bVarM = aVar.m(contextRequireContext);
        PhotoEntity photoEntityB5 = it.b();
        ni.f.b bVarI = bVarM.g(photoEntityB5 != null ? photoEntityB5.getLocalPath() : null).i(com.transsion.publish.R$color.color_ff999999);
        lo.h mViewBinding2 = getMViewBinding();
        ImageView imageView2 = mViewBinding2 != null ? mViewBinding2.f66056g : null;
        Intrinsics.e(imageView2);
        bVarI.d(imageView2);
    }

    private final void refreshGroup(jo.b it) {
        this.groupBean = it.c();
        Integer numD = it.d();
        if (numD != null && numD.intValue() == 1) {
            GroupBean groupBeanC = it.c();
            if (groupBeanC != null) {
                setGroup(groupBeanC);
            }
        } else if (numD != null && numD.intValue() == 2) {
            jo.b bVar = this.operationMenu;
            if (bVar != null) {
                if ((bVar != null ? bVar.c() : null) != null) {
                    com.transsion.publish.adapter.r rVar = this.managerAdapter;
                    if (rVar != null) {
                        jo.b bVar2 = this.operationMenu;
                        GroupBean groupBeanC2 = bVar2 != null ? bVar2.c() : null;
                        Intrinsics.e(groupBeanC2);
                        rVar.I(groupBeanC2);
                    }
                    this.operationMenu = null;
                }
            }
            this.groupBean = null;
        }
        HashMap map = new HashMap();
        GroupBean groupBean = this.groupBean;
        map.put("group_id", String.valueOf(groupBean != null ? groupBean.getGroupId() : null));
        qi.h.f69682a.o(getPageName(), map);
    }

    /* JADX WARN: Code duplicated, block: B:67:0x00bd  */
    private final void refreshImage(jo.b it) {
        lo.h mViewBinding;
        OperationBarView operationBarView;
        lo.h mViewBinding2;
        OperationBarView operationBarView2;
        List listL;
        List listL2;
        PhotoEntity photoEntity;
        List listL3;
        List listL4;
        List listL5;
        Integer numD = it.d();
        int size = 0;
        if (numD != null && numD.intValue() == 1) {
            com.transsion.publish.adapter.g gVar = this.imageAdapter;
            if (gVar != null && (listL5 = gVar.l()) != null) {
                size = listL5.size();
            }
            if (size < 9) {
                com.transsion.publish.adapter.g gVar2 = this.imageAdapter;
                if (gVar2 != null) {
                    List listH = it.h();
                    if (listH == null) {
                        listH = new ArrayList();
                    }
                    listH.addAll(gVar2.l());
                    it.r(listH);
                }
                selectPhotosDispose(it.h());
            }
        } else {
            Integer numD2 = it.d();
            if (numD2 != null && numD2.intValue() == 2) {
                com.transsion.publish.adapter.g gVar3 = this.imageAdapter;
                if ((gVar3 == null || (listL4 = gVar3.l()) == null || listL4.size() != 0) ? false : true) {
                    mViewBinding = getMViewBinding();
                    if (mViewBinding != null && (operationBarView = mViewBinding.f66062m) != null) {
                        operationBarView.resetItem();
                    }
                } else {
                    com.transsion.publish.adapter.g gVar4 = this.imageAdapter;
                    if ((gVar4 == null || (listL3 = gVar4.l()) == null || listL3.size() != 1) ? false : true) {
                        com.transsion.publish.adapter.g gVar5 = this.imageAdapter;
                        if ((gVar5 == null || (listL2 = gVar5.l()) == null || (photoEntity = (PhotoEntity) listL2.get(0)) == null || !photoEntity.getIsAdd()) ? false : true) {
                            mViewBinding = getMViewBinding();
                            if (mViewBinding != null) {
                                operationBarView.resetItem();
                            }
                        }
                    }
                    com.transsion.publish.adapter.g gVar6 = this.imageAdapter;
                    if (((gVar6 == null || (listL = gVar6.l()) == null) ? 0 : listL.size()) < 9 && (mViewBinding2 = getMViewBinding()) != null && (operationBarView2 = mViewBinding2.f66062m) != null) {
                        operationBarView2.selectItem(0);
                    }
                }
            }
        }
        FragmentActivity activity = getActivity();
        Intrinsics.f(activity, "null cannot be cast to non-null type com.transsion.publish.ui.FilmReviewActivity");
        ((FilmReviewActivity) activity).j0(isPostEnable());
    }

    private final void refreshLink(jo.b it) {
        lo.h mViewBinding;
        OperationBarView operationBarView;
        OperationBarView operationBarView2;
        Integer numD = it.d();
        if (numD == null || numD.intValue() != 1) {
            if (numD == null || numD.intValue() != 2 || (mViewBinding = getMViewBinding()) == null || (operationBarView = mViewBinding.f66062m) == null) {
                return;
            }
            operationBarView.resetItem(true);
            return;
        }
        if (it.f() == null) {
            return;
        }
        lo.h mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (operationBarView2 = mViewBinding2.f66062m) != null) {
            operationBarView2.selectItem(4);
        }
        initManagerAdapter();
        com.transsion.publish.adapter.r rVar = this.managerAdapter;
        if (rVar != null) {
            rVar.J(it.f());
        }
        LinkEntity linkEntityF = it.f();
        this.linkEntity = new MediaLinkEntity(linkEntityF != null ? linkEntityF.getUrl() : null, linkEntityF != null ? linkEntityF.getTitle() : null, linkEntityF != null ? linkEntityF.getCover() : null);
        LinkEntity linkEntityF2 = it.f();
        if (linkEntityF2 == null || !linkEntityF2.getLoading()) {
            return;
        }
        com.tn.lib.widget.toast.core.h.f40484a.k(R$string.postint_state_added);
    }

    private final void refreshLocation(jo.b it) {
        OperationBarView operationBarView;
        this.locationBean = it.g();
        Integer numD = it.d();
        if (numD == null || numD.intValue() != 1) {
            if (numD != null && numD.intValue() == 2) {
                deleteLocation();
                return;
            }
            return;
        }
        if (it.g() == null) {
            return;
        }
        lo.h mViewBinding = getMViewBinding();
        if (mViewBinding != null && (operationBarView = mViewBinding.f66062m) != null) {
            operationBarView.selectItem(8);
        }
        initManagerAdapter();
        LocationPlace locationPlaceG = it.g();
        if (locationPlaceG != null) {
            locationPlaceG.setType(8);
        }
        com.transsion.publish.adapter.r rVar = this.managerAdapter;
        if (rVar != null) {
            rVar.J(it.g());
        }
    }

    private final void refreshVideo(jo.b it) {
        OperationBarView operationBarView;
        ImageView imageView;
        List listL;
        OperationBarView operationBarView2;
        Integer numD = it.d();
        if (numD != null && numD.intValue() == 1) {
            if (it.j() == null) {
                return;
            }
            VsMediaInfo vsMediaInfoJ = it.j();
            if ((vsMediaInfoJ != null ? vsMediaInfoJ.getVideoDuration() : 0L) > 600000) {
                com.tn.lib.widget.toast.core.h.f40484a.l(getString(R$string.publish_video_limit));
                return;
            }
            initVideoAdapter();
            ArrayList arrayList = new ArrayList();
            VsMediaInfo vsMediaInfoJ2 = it.j();
            Intrinsics.e(vsMediaInfoJ2);
            arrayList.add(vsMediaInfoJ2);
            com.transsion.publish.adapter.v vVar = this.videoAdapter;
            if (vVar != null) {
                vVar.setData(arrayList);
            }
            lo.h mViewBinding = getMViewBinding();
            if (mViewBinding != null && (operationBarView2 = mViewBinding.f66062m) != null) {
                operationBarView2.selectItem(1);
            }
            com.transsion.publish.adapter.v vVar2 = this.videoAdapter;
            if (((vVar2 == null || (listL = vVar2.l()) == null) ? 0 : listL.size()) >= 1 && (imageView = this.videoIcon) != null) {
                imageView.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        FilmReviewFragment.refreshVideo$lambda$27(this.f48506a);
                    }
                }, 200L);
            }
        } else if (numD != null && numD.intValue() == 2) {
            this.coverPath = null;
            com.transsion.publish.adapter.v vVar3 = this.videoAdapter;
            if (vVar3 != null) {
                vVar3.t();
            }
            lo.h mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (operationBarView = mViewBinding2.f66062m) != null) {
                operationBarView.resetItem();
            }
        }
        FragmentActivity activity = getActivity();
        Intrinsics.f(activity, "null cannot be cast to non-null type com.transsion.publish.ui.FilmReviewActivity");
        ((FilmReviewActivity) activity).j0(isPostEnable());
    }

    public static final void refreshVideo$lambda$27(FilmReviewFragment filmReviewFragment) {
        ImageView imageView = filmReviewFragment.videoIcon;
        if (imageView != null) {
            imageView.setImageResource(R$drawable.icon_post_video_unable);
        }
    }

    private final void refreshWork(jo.b it) {
        com.transsion.publish.adapter.g gVar;
        com.transsion.publish.adapter.v vVar;
        lo.h mViewBinding;
        OperationBarView operationBarView;
        String subjectId;
        this.mSubject = it.i();
        Integer numD = it.d();
        if (numD != null && numD.intValue() == 1) {
            Subject subjectI = it.i();
            if (subjectI != null) {
                setSubject(subjectI);
            }
            HashMap map = new HashMap();
            Subject subjectI2 = it.i();
            if (subjectI2 == null || (subjectId = subjectI2.getSubjectId()) == null) {
                subjectId = "";
            }
            map.put("subject_id", subjectId);
            qi.h.f69682a.o(getPageName(), map);
            return;
        }
        if (numD == null || numD.intValue() != 2 || (gVar = this.imageAdapter) == null || !gVar.n() || (vVar = this.videoAdapter) == null || !vVar.n() || (mViewBinding = getMViewBinding()) == null || (operationBarView = mViewBinding.f66062m) == null) {
            return;
        }
        operationBarView.resetItem();
    }

    private final void requestCurrentLocation() {
        ep.f mRoomApi;
        FragmentActivity activity = getActivity();
        if (activity == null || !cf.c.f16930a.f(activity, "android.permission.ACCESS_FINE_LOCATION") || (mRoomApi = getMRoomApi()) == null) {
            return;
        }
        mRoomApi.b(activity, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return FilmReviewFragment.requestCurrentLocation$lambda$15(this.f48528a, (LocationPlace) obj);
            }
        });
    }

    public static final Unit requestCurrentLocation$lambda$15(FilmReviewFragment filmReviewFragment, LocationPlace locationPlace) {
        String name = locationPlace != null ? locationPlace.getName() : null;
        if (name == null || name.length() == 0) {
            return Unit.f64096a;
        }
        filmReviewFragment.setLocation(locationPlace);
        return Unit.f64096a;
    }

    private final void selectPhotosDispose(List<PhotoEntity> photoEntity) {
        OperationBarView operationBarView;
        ImageView imageView;
        List listL;
        OperationBarView operationBarView2;
        com.transsion.publish.adapter.g gVar;
        List<PhotoEntity> list = photoEntity;
        if (list == null || list.isEmpty()) {
            com.transsion.publish.adapter.g gVar2 = this.imageAdapter;
            if (gVar2 == null) {
                initImageAdapter();
                return;
            }
            if (gVar2 != null) {
                gVar2.u();
            }
            lo.h mViewBinding = getMViewBinding();
            if (mViewBinding == null || (operationBarView = mViewBinding.f66062m) == null) {
                return;
            }
            operationBarView.resetItem();
            return;
        }
        initImageAdapter();
        com.transsion.publish.adapter.g gVar3 = this.imageAdapter;
        if (gVar3 != null) {
            if (photoEntity == null) {
                photoEntity = new ArrayList<>();
            }
            gVar3.setData(photoEntity);
        }
        com.transsion.publish.adapter.g gVar4 = this.imageAdapter;
        if ((gVar4 != null ? gVar4.getItemCount() : 0) < 9 && (gVar = this.imageAdapter) != null) {
            gVar.addData(getAddImageEntity());
        }
        lo.h mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (operationBarView2 = mViewBinding2.f66062m) != null) {
            operationBarView2.selectItem(0);
        }
        com.transsion.publish.adapter.g gVar5 = this.imageAdapter;
        Integer numValueOf = (gVar5 == null || (listL = gVar5.l()) == null) ? null : Integer.valueOf(listL.size());
        Intrinsics.e(numValueOf);
        if (numValueOf.intValue() < 9 || (imageView = this.imageIcon) == null) {
            return;
        }
        imageView.postDelayed(new Runnable() {
            @Override
            public final void run() {
                FilmReviewFragment.selectPhotosDispose$lambda$26(this.f48519a);
            }
        }, 200L);
    }

    public static final void selectPhotosDispose$lambda$26(FilmReviewFragment filmReviewFragment) {
        ImageView imageView = filmReviewFragment.imageIcon;
        if (imageView != null) {
            imageView.setImageResource(R$drawable.icon_post_select_image_unable);
        }
    }

    private final void setGroup(GroupBean groupBean) {
        if (groupBean == null) {
            return;
        }
        initManagerAdapter();
        groupBean.setType(6);
        com.transsion.publish.adapter.r rVar = this.managerAdapter;
        if (rVar != null) {
            rVar.J(groupBean);
        }
    }

    private final void setLocation(LocationPlace location) {
        this.locationBean = location;
        this.curLocationBean = location;
        initManagerAdapter();
        if (location != null) {
            location.setType(8);
        }
        com.transsion.publish.adapter.r rVar = this.managerAdapter;
        if (rVar != null) {
            rVar.J(location);
        }
    }

    private final void setStarTips(int text) {
        TextView textView;
        lo.h mViewBinding = getMViewBinding();
        if (mViewBinding == null || (textView = mViewBinding.f66071v) == null) {
            return;
        }
        textView.setText(text);
    }

    private final void setSubject(Subject subject) {
        if (subject == null) {
            return;
        }
        initManagerAdapter();
        subject.setType(3);
        if (this.sourceType == 1) {
            subject.setCorrelation(true);
        }
        com.transsion.publish.adapter.r rVar = this.managerAdapter;
        if (rVar != null) {
            rVar.J(subject);
        }
    }

    private final void showActivityTips() {
        BubbleTextView bubbleTextView;
        lo.h mViewBinding = getMViewBinding();
        if (mViewBinding == null || (bubbleTextView = mViewBinding.f66051b) == null) {
            return;
        }
        bubbleTextView.postDelayed(new Runnable() {
            @Override
            public final void run() {
                FilmReviewFragment.showActivityTips$lambda$14(this.f48513a);
            }
        }, 800L);
    }

    public static final void showActivityTips$lambda$14(final FilmReviewFragment filmReviewFragment) {
        OperationBarView operationBarView;
        RecyclerView recyclerView;
        if (filmReviewFragment.isMoreThanADay(System.currentTimeMillis(), com.transsion.baselib.report.launch.b.f42221a.b().getLong("publish_show_guide_time", 0L))) {
            if (filmReviewFragment.groupBean == null && filmReviewFragment.mSubject == null && filmReviewFragment.locationBean != null) {
                return;
            }
            if (filmReviewFragment.mSubject != null || filmReviewFragment.locationBean == null) {
                final d dVar = filmReviewFragment.new d();
                lo.h mViewBinding = filmReviewFragment.getMViewBinding();
                if (mViewBinding == null || (operationBarView = mViewBinding.f66062m) == null || (recyclerView = operationBarView.getCom.mbridge.msdk.foundation.entity.CampaignEx.JSON_KEY_REWARD_TEMPLATE java.lang.String()) == null) {
                    return;
                }
                recyclerView.post(new Runnable() {
                    @Override
                    public final void run() {
                        FilmReviewFragment.showActivityTips$lambda$14$lambda$13(this.f48495a, dVar);
                    }
                });
            }
        }
    }

    public static final void showActivityTips$lambda$14$lambda$13(FilmReviewFragment filmReviewFragment, d dVar) {
        float f10;
        BubbleTextView bubbleTextView;
        OperationBarView operationBarView;
        RecyclerView recyclerView;
        if (!filmReviewFragment.isAdded() || filmReviewFragment.isDetached() || filmReviewFragment.isRemoving()) {
            return;
        }
        String string = filmReviewFragment.getString(R$string.publish_tip_text);
        Intrinsics.g(string, "getString(...)");
        GroupBean groupBean = filmReviewFragment.groupBean;
        int i10 = 3;
        if (groupBean == null && filmReviewFragment.mSubject == null) {
            string = filmReviewFragment.getString(R$string.publish_tip_text);
            Intrinsics.g(string, "getString(...)");
            f10 = 30.0f;
        } else {
            if (filmReviewFragment.mSubject == null) {
                string = filmReviewFragment.getString(R$string.publish_tip_text_no_subject);
                Intrinsics.g(string, "getString(...)");
            } else if (groupBean == null) {
                string = filmReviewFragment.getString(R$string.publish_tip_text_no_group);
                Intrinsics.g(string, "getString(...)");
                i10 = 2;
            } else {
                f10 = 0.0f;
                i10 = 0;
            }
            f10 = 6.0f;
        }
        lo.h mViewBinding = filmReviewFragment.getMViewBinding();
        View childAt = (mViewBinding == null || (operationBarView = mViewBinding.f66062m) == null || (recyclerView = operationBarView.getCom.mbridge.msdk.foundation.entity.CampaignEx.JSON_KEY_REWARD_TEMPLATE java.lang.String()) == null) ? null : recyclerView.getChildAt(i10);
        int[] iArr = new int[2];
        if (childAt != null) {
            childAt.getLocationOnScreen(iArr);
        }
        lo.h mViewBinding2 = filmReviewFragment.getMViewBinding();
        if (mViewBinding2 == null || (bubbleTextView = mViewBinding2.f66051b) == null) {
            return;
        }
        dVar.start();
        bubbleTextView.setVisibility(0);
        com.transsion.baselib.report.launch.b.f42221a.b().putLong("publish_show_guide_time", System.currentTimeMillis());
        bubbleTextView.setText(string);
        int i11 = iArr[0];
        zg.h hVar = zg.h.f76787a;
        Context context = bubbleTextView.getContext();
        Intrinsics.g(context, "getContext(...)");
        bubbleTextView.setArrowPosition(i11 + hVar.a(context, f10));
    }

    private final void showLinkEditInputDialog(Context context) {
        clickTrace("url");
        mo.b.a aVar = new mo.b.a(context);
        lo.h mViewBinding = getMViewBinding();
        mo.b bVarA = aVar.a(this, mViewBinding != null ? mViewBinding.f66065p : null);
        bVarA.show();
        bVarA.setCancelable(true);
        bVarA.setCanceledOnTouchOutside(true);
    }

    public static final Unit startLocation$lambda$33(Context context, FilmReviewFragment filmReviewFragment, boolean z10) {
        if (z10) {
            Intent intent = new Intent(context, (Class<?>) SelectLocationActivity.class);
            LocationPlace locationPlace = filmReviewFragment.curLocationBean;
            if (locationPlace != null) {
                intent.putExtra("location_data", locationPlace);
            }
            intent.setFlags(ASTNode.DEOP);
            context.startActivity(intent);
        }
        return Unit.f64096a;
    }

    private final void userGrade() {
        com.transsion.publish.adapter.r rVar;
        com.transsion.publish.adapter.g gVar;
        com.transsion.publish.adapter.v vVar;
        RatingBar ratingBar;
        EditText editText;
        Editable text;
        this.publishType = 2;
        lo.h mViewBinding = getMViewBinding();
        Float fValueOf = null;
        if (TextUtils.isEmpty((mViewBinding == null || (editText = mViewBinding.f66052c) == null || (text = editText.getText()) == null) ? null : StringsKt.n1(text)) && (rVar = this.managerAdapter) != null && rVar.B() && (((gVar = this.imageAdapter) == null || (gVar != null && gVar.n())) && ((vVar = this.videoAdapter) == null || (vVar != null && vVar.n())))) {
            lo.h mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (ratingBar = mViewBinding2.f66063n) != null) {
                fValueOf = Float.valueOf(ratingBar.getRating());
            }
            Intrinsics.e(fValueOf);
            if (fValueOf.floatValue() > 0.0f && this.coverPath == null) {
                postService(buildRequest(), 2);
                FragmentActivity activity = getActivity();
                if (activity != null) {
                    activity.finish();
                    return;
                }
                return;
            }
        }
        if (checkLogin()) {
            postService(buildRequest(), 2);
            FragmentActivity activity2 = getActivity();
            if (activity2 != null) {
                activity2.finish();
            }
        }
    }

    private final void userPost() {
        this.publishType = 1;
        if (checkLogin()) {
            postService(buildRequest(), 1);
            FragmentActivity activity = getActivity();
            if (activity != null) {
                activity.finish();
            }
        }
    }

    public final void checkPost() {
        String strW;
        if (!yg.l.f76264a.e()) {
            com.tn.lib.widget.toast.core.h.f40484a.k(com.transsion.baseui.R$string.base_network_fail);
            return;
        }
        clickPostTrace();
        KeyboardUtils.d(requireActivity());
        com.transsion.publish.adapter.r rVar = this.managerAdapter;
        if (rVar != null && (strW = rVar.w()) != null) {
            gx.b.f61207a.a().i(1, strW);
        }
        int i10 = this.sourceType;
        if (i10 == 1) {
            userGrade();
        } else {
            if (i10 != 2) {
                return;
            }
            userPost();
        }
    }

    public final void closeAffirm() {
        EditText editText;
        Editable text;
        lo.h mViewBinding = getMViewBinding();
        boolean zIsEmpty = TextUtils.isEmpty((mViewBinding == null || (editText = mViewBinding.f66052c) == null || (text = editText.getText()) == null) ? null : StringsKt.n1(text));
        com.transsion.publish.adapter.r rVar = this.managerAdapter;
        boolean z10 = (rVar == null || rVar.A()) ? false : true;
        com.transsion.publish.adapter.g gVar = this.imageAdapter;
        boolean z11 = (gVar == null || gVar.n()) ? false : true;
        com.transsion.publish.adapter.v vVar = this.videoAdapter;
        boolean z12 = (vVar == null || vVar.n()) ? false : true;
        if (!zIsEmpty || z10 || z11 || z12) {
            backSaveDialog();
            return;
        }
        KeyboardUtils.d(requireActivity());
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    @Override
    public void completeLoad() {
        lo.h mViewBinding;
        OperationBarView operationBarView;
        OperationBarView operationBarView2;
        lo.h mViewBinding2 = getMViewBinding();
        if ((mViewBinding2 != null && (operationBarView2 = mViewBinding2.f66062m) != null && operationBarView2.getVisibility() == 0) || (mViewBinding = getMViewBinding()) == null || (operationBarView = mViewBinding.f66062m) == null) {
            return;
        }
        uf.c.k(operationBarView);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, android.graphics.Typeface] */
    /* JADX WARN: Type inference failed for: r6v3, types: [T, android.graphics.Typeface] */
    @Override
    public void initView(View view, Bundle savedInstanceState) {
        RelativeLayout relativeLayout;
        RatingBar ratingBar;
        TextView textView;
        RatingBar ratingBar2;
        ObservableScrollView observableScrollView;
        EditText editText;
        EditText editText2;
        EditText editText3;
        EditText editText4;
        EditText editText5;
        EditText editText6;
        EditText editText7;
        OperationBarView operationBarView;
        OperationBarView operationBarView2;
        RelativeLayout relativeLayout2;
        RelativeLayout relativeLayout3;
        RatingBar ratingBar3;
        TextView textView2;
        Intrinsics.h(view, "view");
        int i10 = this.sourceType;
        if (i10 == 1) {
            lo.h mViewBinding = getMViewBinding();
            if (mViewBinding != null && (ratingBar2 = mViewBinding.f66063n) != null) {
                ratingBar2.setOnRatingBarChangeListener(new RatingBar.OnRatingBarChangeListener() {
                    @Override
                    public final void onRatingChanged(RatingBar ratingBar4, float f10, boolean z10) {
                        FilmReviewFragment.initView$lambda$3(this.f48465a, ratingBar4, f10, z10);
                    }
                });
            }
            lo.h mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (textView = mViewBinding2.f66070u) != null) {
                textView.setVisibility(0);
            }
            lo.h mViewBinding3 = getMViewBinding();
            if (mViewBinding3 != null && (ratingBar = mViewBinding3.f66063n) != null) {
                ratingBar.setVisibility(0);
            }
            lo.h mViewBinding4 = getMViewBinding();
            if (mViewBinding4 != null && (relativeLayout = mViewBinding4.f66066q) != null) {
                relativeLayout.setVisibility(0);
            }
        } else if (i10 == 2) {
            lo.h mViewBinding5 = getMViewBinding();
            if (mViewBinding5 != null && (textView2 = mViewBinding5.f66070u) != null) {
                textView2.setVisibility(8);
            }
            lo.h mViewBinding6 = getMViewBinding();
            if (mViewBinding6 != null && (ratingBar3 = mViewBinding6.f66063n) != null) {
                ratingBar3.setVisibility(8);
            }
            lo.h mViewBinding7 = getMViewBinding();
            if (mViewBinding7 != null && (relativeLayout3 = mViewBinding7.f66066q) != null) {
                relativeLayout3.setVisibility(8);
            }
            lo.h mViewBinding8 = getMViewBinding();
            if (mViewBinding8 != null && (relativeLayout2 = mViewBinding8.f66064o) != null) {
                relativeLayout2.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view2) {
                        FilmReviewFragment.initView$lambda$4(this.f48468a, view2);
                    }
                });
            }
        }
        lo.h mViewBinding9 = getMViewBinding();
        if (mViewBinding9 != null && (operationBarView2 = mViewBinding9.f66062m) != null) {
            operationBarView2.setClickListener(this);
        }
        lo.h mViewBinding10 = getMViewBinding();
        if (mViewBinding10 != null && (operationBarView = mViewBinding10.f66062m) != null) {
            operationBarView.init(this.sourceType, this.groupBean, this.mSubject);
        }
        this.loginLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                FilmReviewFragment.initView$lambda$5(this.f48471a, (ActivityResult) obj);
            }
        });
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        lo.h mViewBinding11 = getMViewBinding();
        Typeface typeface = null;
        objectRef.element = Typeface.create((mViewBinding11 == null || (editText7 = mViewBinding11.f66053d) == null) ? null : editText7.getTypeface(), 1);
        Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        lo.h mViewBinding12 = getMViewBinding();
        if (mViewBinding12 != null && (editText6 = mViewBinding12.f66053d) != null) {
            typeface = editText6.getTypeface();
        }
        objectRef2.element = Typeface.create(typeface, 0);
        lo.h mViewBinding13 = getMViewBinding();
        if (mViewBinding13 != null && (editText5 = mViewBinding13.f66053d) != null) {
            editText5.addTextChangedListener(new b(objectRef, objectRef2));
        }
        lo.h mViewBinding14 = getMViewBinding();
        if (mViewBinding14 != null && (editText4 = mViewBinding14.f66053d) != null) {
            editText4.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                @Override
                public final void onFocusChange(View view2, boolean z10) {
                    FilmReviewFragment.initView$lambda$6(this.f48473a, view2, z10);
                }
            });
        }
        lo.h mViewBinding15 = getMViewBinding();
        if (mViewBinding15 != null && (editText3 = mViewBinding15.f66052c) != null) {
            editText3.addTextChangedListener(new c());
        }
        lo.h mViewBinding16 = getMViewBinding();
        if (mViewBinding16 != null && (editText2 = mViewBinding16.f66052c) != null) {
            editText2.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                @Override
                public final void onFocusChange(View view2, boolean z10) {
                    FilmReviewFragment.initView$lambda$8(this.f48486a, view2, z10);
                }
            });
        }
        lo.h mViewBinding17 = getMViewBinding();
        if (mViewBinding17 != null && (editText = mViewBinding17.f66052c) != null) {
            editText.postDelayed(this.mRunnable, 500L);
        }
        lo.h mViewBinding18 = getMViewBinding();
        if (mViewBinding18 != null && (observableScrollView = mViewBinding18.f66069t) != null) {
            observableScrollView.setScrollListener(new ObservableScrollView.a() {
                @Override
                public final void a(int i11) {
                    FilmReviewFragment.initView$lambda$9(i11);
                }
            });
        }
        requestCurrentLocation();
        showActivityTips();
        getVideoIconView();
        getImageIconView();
    }

    public final boolean isPostEnable() {
        com.transsion.publish.adapter.v vVar;
        lo.h mViewBinding;
        EditText editText;
        Editable text;
        com.transsion.publish.adapter.g gVar = this.imageAdapter;
        return ((gVar == null || gVar.n()) && ((vVar = this.videoAdapter) == null || vVar.n()) && ((mViewBinding = getMViewBinding()) == null || (editText = mViewBinding.f66052c) == null || (text = editText.getText()) == null || text.length() == 0)) ? false : true;
    }

    @Override
    public void lazyLoadData() {
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b(PAGE_NAME, false, 2, null);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        com.transsion.publish.adapter.r rVar = this.managerAdapter;
        if (rVar != null) {
            rVar.u();
        }
        MMKV mmkvI = MMKV.I("kv_link_record");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        mmkvI.putString("link", "");
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "FilmReviewFragment onDestroy", false, 4, null);
    }

    @Override
    public void onLeftButtonClick(TRDialog dialog) {
        Intrinsics.h(dialog, "dialog");
    }

    @Override
    public void onPause() {
        super.onPause();
        System.currentTimeMillis();
    }

    @Override
    public void onResume() {
        super.onResume();
    }

    @Override
    public void onRightButtonClick(TRDialog dialog) {
        FragmentActivity activity;
        Intrinsics.h(dialog, "dialog");
        String tag = dialog.getTag();
        if (tag != null) {
            int iHashCode = tag.hashCode();
            if (iHashCode == -1257717947) {
                if (tag.equals("clear_cover")) {
                    deleteAudio();
                }
            } else if (iHashCode == 1335127509 && tag.equals("back_save") && (activity = getActivity()) != null) {
                activity.finish();
            }
        }
    }

    @Override
    public void onStop() {
        super.onStop();
        com.transsion.publish.adapter.r rVar = this.managerAdapter;
        if (rVar != null) {
            rVar.H();
        }
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        Bundle arguments = getArguments();
        Integer numValueOf = arguments != null ? Integer.valueOf(arguments.getInt("sourceType", 2)) : null;
        Intrinsics.e(numValueOf);
        this.sourceType = numValueOf.intValue();
        Bundle arguments2 = getArguments();
        Integer numValueOf2 = arguments2 != null ? Integer.valueOf(arguments2.getInt("sourceMode", 0)) : null;
        Intrinsics.e(numValueOf2);
        this.sourceMode = numValueOf2.intValue();
        Bundle arguments3 = getArguments();
        if (arguments3 != null && arguments3.containsKey("subject")) {
            Bundle arguments4 = getArguments();
            Serializable serializable = arguments4 != null ? arguments4.getSerializable("subject") : null;
            if (serializable != null && (serializable instanceof Subject)) {
                this.mSubject = (Subject) serializable;
            }
        }
        Bundle arguments5 = getArguments();
        if (arguments5 != null && arguments5.containsKey("group")) {
            Bundle arguments6 = getArguments();
            Serializable serializable2 = arguments6 != null ? arguments6.getSerializable("group") : null;
            if (serializable2 != null && (serializable2 instanceof GroupBean)) {
                this.groupBean = (GroupBean) serializable2;
            }
        }
        super.onViewCreated(view, savedInstanceState);
        initViewModel();
        initRegisterMediaSelector();
        this.showTime = System.currentTimeMillis();
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "FilmReviewFragment onViewCreated", false, 4, null);
    }

    @Override
    public void put(Context context) {
        EditText editText;
        Intrinsics.h(context, "context");
        lo.h mViewBinding = getMViewBinding();
        if (mViewBinding == null || (editText = mViewBinding.f66052c) == null) {
            return;
        }
        KeyboardUtils.e(editText);
    }

    @Override
    public void startAudio(Context context) {
        Intrinsics.h(context, "context");
        clickTrace(MimeTypes.BASE_TYPE_AUDIO);
        SelectMusicActivity.INSTANCE.a(context);
    }

    @Override
    public void startGroup(Context context) {
        Intrinsics.h(context, "context");
        openRoomList();
    }

    @Override
    public void startLink(Context context) {
        OperationVerticalBarView operationVerticalBarView;
        EditText editText;
        OperationBarView operationBarView;
        Intrinsics.h(context, "context");
        lo.h mViewBinding = getMViewBinding();
        if (mViewBinding == null || (operationVerticalBarView = mViewBinding.f66061l) == null || operationVerticalBarView.getVisibility() != 0) {
            showLinkEditInputDialog(context);
            return;
        }
        lo.h mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (operationBarView = mViewBinding2.f66062m) != null) {
            uf.c.g(operationBarView);
        }
        hideOpertaionDialog();
        showLinkEditInputDialog(context);
        lo.h mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (editText = mViewBinding3.f66052c) == null) {
            return;
        }
        editText.postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.f48526a.completeLoad();
            }
        }, 2000L);
    }

    @Override
    public void startLocation(final Context context) {
        Intrinsics.h(context, "context");
        FragmentActivity activity = getActivity();
        if (activity == null || !isAdded() || isDetached() || isRemoving()) {
            return;
        }
        if (!cf.c.f16930a.f(activity, "android.permission.ACCESS_FINE_LOCATION")) {
            ep.f mRoomApi = getMRoomApi();
            if (mRoomApi != null) {
                mRoomApi.a(activity, true, new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return FilmReviewFragment.startLocation$lambda$33(context, this, ((Boolean) obj).booleanValue());
                    }
                });
                return;
            }
            return;
        }
        Intent intent = new Intent(context, (Class<?>) SelectLocationActivity.class);
        LocationPlace locationPlace = this.curLocationBean;
        if (locationPlace != null) {
            intent.putExtra("location_data", locationPlace);
        }
        intent.setFlags(ASTNode.DEOP);
        context.startActivity(intent);
    }

    @Override
    public void startPhoto(Context context) {
        List listL;
        String string;
        List listL2;
        Intrinsics.h(context, "context");
        com.transsion.publish.adapter.g gVar = this.imageAdapter;
        if (((gVar == null || (listL2 = gVar.l()) == null) ? 0 : listL2.size()) < 9) {
            clickTrace("image");
            SelectImageActivity.Companion companion = SelectImageActivity.INSTANCE;
            com.transsion.publish.adapter.g gVar2 = this.imageAdapter;
            companion.a(context, 0, 9 - ((gVar2 == null || (listL = gVar2.l()) == null) ? 0 : listL.size()), new ArrayList());
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity == null || (string = activity.getString(R$string.add_img_max_tips)) == null) {
            string = "";
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
        String str = String.format(string, Arrays.copyOf(new Object[]{9}, 1));
        Intrinsics.g(str, "format(...)");
        com.tn.lib.widget.toast.core.h.f40484a.l(str);
    }

    @Override
    public void startVideo(Context context) {
        String string;
        List listL;
        Intrinsics.h(context, "context");
        com.transsion.publish.adapter.v vVar = this.videoAdapter;
        if (((vVar == null || (listL = vVar.l()) == null) ? 0 : listL.size()) >= 1) {
            FragmentActivity activity = getActivity();
            if (activity == null || (string = activity.getString(R$string.add_video_max_tips)) == null) {
                string = "";
            }
            StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
            String str = String.format(string, Arrays.copyOf(new Object[]{1}, 1));
            Intrinsics.g(str, "format(...)");
            com.tn.lib.widget.toast.core.h.f40484a.l(str);
            return;
        }
        clickTrace("vidio");
        if (this.underOS33) {
            Intent intent = new Intent(context, (Class<?>) SelectVideoActivity.class);
            intent.setFlags(ASTNode.DEOP);
            startActivity(intent);
        } else {
            androidx.activity.result.b bVar = this.videoSelectLauncher;
            if (bVar != null) {
                bVar.a(androidx.activity.result.f.b(f.g.e.f59873a, 0, false, null, 14, null));
            }
        }
    }

    @Override
    public void startWork(Context context) {
        Intrinsics.h(context, "context");
        clickTrace("choose a subject");
        gj.b bVar = (gj.b) gj.a.f61068a.a(gj.b.class);
        if (bVar != null) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            bVar.e(contextRequireContext);
        }
    }

    @Override
    public lo.h getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        lo.h hVarC = lo.h.c(inflater);
        Intrinsics.g(hVarC, "inflate(...)");
        return hVarC;
    }
}
