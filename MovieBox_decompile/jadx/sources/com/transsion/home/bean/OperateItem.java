package com.transsion.home.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.permission.PermissionConfig;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

@Keep
@Metadata(d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b{\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0093\u0003\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f\u0012\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\u0010\b\u0002\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u000f\u0012\u0010\b\u0002\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u000f\u0012\u0010\b\u0002\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u000f\u0012\u0010\b\u0002\u0010\"\u001a\n\u0012\u0004\u0012\u00020#\u0018\u00010\u000f\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%\u0012\u0010\b\u0002\u0010&\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010\u000f\u0012\u0010\b\u0002\u0010(\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010\u000f\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010,\u0012\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\u0000\u0012\n\b\u0002\u00100\u001a\u0004\u0018\u000101¢\u0006\u0004\b2\u00103J\f\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010;J\f\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0092\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010;J\u0011\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010;J\f\u0010\u0094\u0001\u001a\u0004\u0018\u00010\rHÆ\u0003J\u0012\u0010\u0095\u0001\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fHÆ\u0003J\u0012\u0010\u0096\u0001\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u000fHÆ\u0003J\f\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\f\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u0016HÆ\u0003J\f\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u0018HÆ\u0003J\f\u0010\u009a\u0001\u001a\u0004\u0018\u00010\u001aHÆ\u0003J\f\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u001cHÆ\u0003J\u0012\u0010\u009c\u0001\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u000fHÆ\u0003J\u0012\u0010\u009d\u0001\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u000fHÆ\u0003J\u0012\u0010\u009e\u0001\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u000fHÆ\u0003J\u0012\u0010\u009f\u0001\u001a\n\u0012\u0004\u0012\u00020#\u0018\u00010\u000fHÆ\u0003J\f\u0010 \u0001\u001a\u0004\u0018\u00010%HÆ\u0003J\u0012\u0010¡\u0001\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010\u000fHÆ\u0003J\u0012\u0010¢\u0001\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010\u000fHÆ\u0003J\f\u0010£\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010¤\u0001\u001a\u0004\u0018\u00010,HÆ\u0003J\f\u0010¥\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010¦\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010§\u0001\u001a\u0004\u0018\u00010\u0000HÆ\u0003J\f\u0010¨\u0001\u001a\u0004\u0018\u000101HÆ\u0003J\u009c\u0003\u0010©\u0001\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f2\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u000f2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0010\b\u0002\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u000f2\u0010\b\u0002\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u000f2\u0010\b\u0002\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u000f2\u0010\b\u0002\u0010\"\u001a\n\u0012\u0004\u0012\u00020#\u0018\u00010\u000f2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010%2\u0010\b\u0002\u0010&\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010\u000f2\u0010\b\u0002\u0010(\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010\u000f2\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010+\u001a\u0004\u0018\u00010,2\n\b\u0002\u0010-\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010.\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010/\u001a\u0004\u0018\u00010\u00002\n\b\u0002\u00100\u001a\u0004\u0018\u000101HÆ\u0001¢\u0006\u0003\u0010ª\u0001J\u0007\u0010«\u0001\u001a\u00020\u0006J\u0017\u0010¬\u0001\u001a\u00030\u00ad\u00012\n\u0010®\u0001\u001a\u0005\u0018\u00010¯\u0001HÖ\u0003J\n\u0010°\u0001\u001a\u00020\u0006HÖ\u0001J\n\u0010±\u0001\u001a\u00020\u0003HÖ\u0001J\u001b\u0010²\u0001\u001a\u00030³\u00012\b\u0010´\u0001\u001a\u00030µ\u00012\u0007\u0010¶\u0001\u001a\u00020\u0006R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u00105\"\u0004\b9\u00107R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010>\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u00105\"\u0004\b@\u00107R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u00105\"\u0004\bB\u00107R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bC\u00105\"\u0004\bD\u00107R\u001e\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010>\u001a\u0004\bE\u0010;\"\u0004\bF\u0010=R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010>\u001a\u0004\bG\u0010;\"\u0004\bH\u0010=R\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR\"\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bM\u0010N\"\u0004\bO\u0010PR\"\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bQ\u0010N\"\u0004\bR\u0010PR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bS\u0010T\"\u0004\bU\u0010VR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b[\u0010\\\"\u0004\b]\u0010^R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b_\u0010`\"\u0004\ba\u0010bR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bc\u0010d\"\u0004\be\u0010fR\"\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bg\u0010N\"\u0004\bh\u0010PR\"\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bi\u0010N\"\u0004\bj\u0010PR\"\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bk\u0010N\"\u0004\bl\u0010PR\"\u0010\"\u001a\n\u0012\u0004\u0012\u00020#\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bm\u0010N\"\u0004\bn\u0010PR\u001c\u0010$\u001a\u0004\u0018\u00010%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bo\u0010p\"\u0004\bq\u0010rR\"\u0010&\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bs\u0010N\"\u0004\bt\u0010PR\"\u0010(\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bu\u0010N\"\u0004\bv\u0010PR\u001c\u0010*\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bw\u00105\"\u0004\bx\u00107R\"\u0010+\u001a\u0004\u0018\u00010,X\u0086\u000e¢\u0006\u0014\n\u0000\u0012\u0004\by\u0010z\u001a\u0004\b{\u0010|\"\u0004\b}\u0010~R\u001d\u0010-\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000f\n\u0000\u001a\u0004\b\u007f\u00105\"\u0005\b\u0080\u0001\u00107R\u001e\u0010.\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0081\u0001\u00105\"\u0005\b\u0082\u0001\u00107R \u0010/\u001a\u0004\u0018\u00010\u0000X\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u0083\u0001\u0010\u0084\u0001\"\u0006\b\u0085\u0001\u0010\u0086\u0001R'\u00100\u001a\u0004\u0018\u000101X\u0086\u000e¢\u0006\u0019\n\u0000\u0012\u0005\b\u0087\u0001\u0010z\u001a\u0006\b\u0088\u0001\u0010\u0089\u0001\"\u0006\b\u008a\u0001\u0010\u008b\u0001¨\u0006·\u0001"}, d2 = {"Lcom/transsion/home/bean/OperateItem;", "Landroid/os/Parcelable;", CampaignEx.JSON_KEY_TITLE, "", NativeComponentConstants.KEY_COMPONENT_TYPE, RequestParameters.POSITION, "", "deepLink", "opId", "version", "enableDedup", "currentPage", "banner", "Lcom/transsion/home/bean/BannerBean;", "filters", "", "Lcom/transsion/home/bean/FilterItem;", "subjects", "Lcom/transsion/home/bean/AppointSubject;", "customData", "Lcom/transsion/home/bean/CustomData;", "feedsSubject", "Lcom/transsion/moviedetailapi/bean/Subject;", "page", "Lcom/transsion/home/bean/SingleImagePage;", "rankingData", "Lcom/transsion/home/bean/RankingData;", "rankingListData", "Lcom/transsion/home/bean/RankingListData;", "liveList", "Lcom/transsion/home/bean/LiveListItem;", PermissionConfig.GROUPS, "Lcom/transsion/moviedetailapi/bean/Group;", "rankings", "postData", "Lcom/transsion/home/bean/BffCommonOpData;", "feedsUGCVideo", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "contentList", "Lcom/transsion/ugcvideodetail/api/bean/UGCContent;", "hashtagList", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;", "styleTemplate", "nonAdDelegate", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "md5", "ops", "originalOperateItem", "homePreferencesConfig", "Lcom/transsion/home/bean/HomePreferencesConfig;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;)V", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "getType", "setType", "getPosition", "()Ljava/lang/Integer;", "setPosition", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getDeepLink", "setDeepLink", "getOpId", "setOpId", "getVersion", "setVersion", "getEnableDedup", "setEnableDedup", "getCurrentPage", "setCurrentPage", "getBanner", "()Lcom/transsion/home/bean/BannerBean;", "setBanner", "(Lcom/transsion/home/bean/BannerBean;)V", "getFilters", "()Ljava/util/List;", "setFilters", "(Ljava/util/List;)V", "getSubjects", "setSubjects", "getCustomData", "()Lcom/transsion/home/bean/CustomData;", "setCustomData", "(Lcom/transsion/home/bean/CustomData;)V", "getFeedsSubject", "()Lcom/transsion/moviedetailapi/bean/Subject;", "setFeedsSubject", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "getPage", "()Lcom/transsion/home/bean/SingleImagePage;", "setPage", "(Lcom/transsion/home/bean/SingleImagePage;)V", "getRankingData", "()Lcom/transsion/home/bean/RankingData;", "setRankingData", "(Lcom/transsion/home/bean/RankingData;)V", "getRankingListData", "()Lcom/transsion/home/bean/RankingListData;", "setRankingListData", "(Lcom/transsion/home/bean/RankingListData;)V", "getLiveList", "setLiveList", "getGroups", "setGroups", "getRankings", "setRankings", "getPostData", "setPostData", "getFeedsUGCVideo", "()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "setFeedsUGCVideo", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V", "getContentList", "setContentList", "getHashtagList", "setHashtagList", "getStyleTemplate", "setStyleTemplate", "getNonAdDelegate$annotations", "()V", "getNonAdDelegate", "()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "setNonAdDelegate", "(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V", "getMd5", "setMd5", "getOps", "setOps", "getOriginalOperateItem", "()Lcom/transsion/home/bean/OperateItem;", "setOriginalOperateItem", "(Lcom/transsion/home/bean/OperateItem;)V", "getHomePreferencesConfig$annotations", "getHomePreferencesConfig", "()Lcom/transsion/home/bean/HomePreferencesConfig;", "setHomePreferencesConfig", "(Lcom/transsion/home/bean/HomePreferencesConfig;)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/home/bean/BannerBean;Ljava/util/List;Ljava/util/List;Lcom/transsion/home/bean/CustomData;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/bean/SingleImagePage;Lcom/transsion/home/bean/RankingData;Lcom/transsion/home/bean/RankingListData;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/HomePreferencesConfig;)Lcom/transsion/home/bean/OperateItem;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class OperateItem implements Parcelable {
    private BannerBean banner;
    private List<UGCContent> contentList;
    private Integer currentPage;
    private CustomData customData;
    private String deepLink;
    private Integer enableDedup;
    private Subject feedsSubject;
    private UGCVideo feedsUGCVideo;
    private List<FilterItem> filters;
    private List<Group> groups;
    private List<UGCVideoHashTag> hashtagList;
    private transient HomePreferencesConfig homePreferencesConfig;
    private List<LiveListItem> liveList;
    private String md5;
    private transient BiddingNativeManager nonAdDelegate;
    private String opId;
    private transient String ops;
    private transient OperateItem originalOperateItem;
    private SingleImagePage page;
    private Integer position;
    private List<BffCommonOpData> postData;
    private RankingData rankingData;
    private RankingListData rankingListData;
    private List<? extends Subject> rankings;
    private String styleTemplate;
    private List<AppointSubject> subjects;
    private String title;
    private String type;
    private String version;
    public static final Parcelable.Creator<OperateItem> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override
        public final OperateItem createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            ArrayList arrayList2;
            ArrayList arrayList3;
            ArrayList arrayList4;
            ArrayList arrayList5;
            ArrayList arrayList6;
            ArrayList arrayList7;
            ArrayList arrayList8;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            Integer numValueOf = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            String string5 = parcel.readString();
            Integer numValueOf2 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            Integer numValueOf3 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            BannerBean bannerBeanCreateFromParcel = parcel.readInt() == 0 ? null : BannerBean.CREATOR.createFromParcel(parcel);
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i10 = parcel.readInt();
                arrayList = new ArrayList(i10);
                for (int i11 = 0; i11 != i10; i11++) {
                    arrayList.add(FilterItem.CREATOR.createFromParcel(parcel));
                }
            }
            if (parcel.readInt() == 0) {
                arrayList2 = null;
            } else {
                int i12 = parcel.readInt();
                arrayList2 = new ArrayList(i12);
                for (int i13 = 0; i13 != i12; i13++) {
                    arrayList2.add(parcel.readSerializable());
                }
            }
            CustomData customDataCreateFromParcel = parcel.readInt() == 0 ? null : CustomData.CREATOR.createFromParcel(parcel);
            Subject subject = (Subject) parcel.readSerializable();
            SingleImagePage singleImagePageCreateFromParcel = parcel.readInt() == 0 ? null : SingleImagePage.CREATOR.createFromParcel(parcel);
            RankingData rankingDataCreateFromParcel = parcel.readInt() == 0 ? null : RankingData.CREATOR.createFromParcel(parcel);
            RankingListData rankingListDataCreateFromParcel = parcel.readInt() == 0 ? null : RankingListData.CREATOR.createFromParcel(parcel);
            if (parcel.readInt() == 0) {
                arrayList3 = null;
            } else {
                int i14 = parcel.readInt();
                ArrayList arrayList9 = new ArrayList(i14);
                int i15 = 0;
                while (i15 != i14) {
                    arrayList9.add(LiveListItem.CREATOR.createFromParcel(parcel));
                    i15++;
                    i14 = i14;
                }
                arrayList3 = arrayList9;
            }
            if (parcel.readInt() == 0) {
                arrayList4 = null;
            } else {
                int i16 = parcel.readInt();
                ArrayList arrayList10 = new ArrayList(i16);
                int i17 = 0;
                while (i17 != i16) {
                    arrayList10.add(parcel.readSerializable());
                    i17++;
                    i16 = i16;
                }
                arrayList4 = arrayList10;
            }
            if (parcel.readInt() == 0) {
                arrayList5 = null;
            } else {
                int i18 = parcel.readInt();
                ArrayList arrayList11 = new ArrayList(i18);
                int i19 = 0;
                while (i19 != i18) {
                    arrayList11.add(parcel.readSerializable());
                    i19++;
                    i18 = i18;
                }
                arrayList5 = arrayList11;
            }
            if (parcel.readInt() == 0) {
                arrayList6 = null;
            } else {
                int i20 = parcel.readInt();
                ArrayList arrayList12 = new ArrayList(i20);
                int i21 = 0;
                while (i21 != i20) {
                    arrayList12.add(BffCommonOpData.CREATOR.createFromParcel(parcel));
                    i21++;
                    i20 = i20;
                }
                arrayList6 = arrayList12;
            }
            UGCVideo uGCVideo = (UGCVideo) parcel.readSerializable();
            if (parcel.readInt() == 0) {
                arrayList7 = null;
            } else {
                int i22 = parcel.readInt();
                ArrayList arrayList13 = new ArrayList(i22);
                int i23 = 0;
                while (i23 != i22) {
                    arrayList13.add(parcel.readParcelable(OperateItem.class.getClassLoader()));
                    i23++;
                    i22 = i22;
                }
                arrayList7 = arrayList13;
            }
            if (parcel.readInt() == 0) {
                arrayList8 = null;
            } else {
                int i24 = parcel.readInt();
                ArrayList arrayList14 = new ArrayList(i24);
                int i25 = 0;
                while (i25 != i24) {
                    arrayList14.add(parcel.readParcelable(OperateItem.class.getClassLoader()));
                    i25++;
                    i24 = i24;
                }
                arrayList8 = arrayList14;
            }
            return new OperateItem(string, string2, numValueOf, string3, string4, string5, numValueOf2, numValueOf3, bannerBeanCreateFromParcel, arrayList, arrayList2, customDataCreateFromParcel, subject, singleImagePageCreateFromParcel, rankingDataCreateFromParcel, rankingListDataCreateFromParcel, arrayList3, arrayList4, arrayList5, arrayList6, uGCVideo, arrayList7, arrayList8, parcel.readString(), null, parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : OperateItem.CREATOR.createFromParcel(parcel), null, 285212672, null);
        }

        @Override
        public final OperateItem[] newArray(int i10) {
            return new OperateItem[i10];
        }
    }

    public OperateItem() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 536870911, null);
    }

    public static void getHomePreferencesConfig$annotations() {
    }

    public static void getNonAdDelegate$annotations() {
    }

    public final String getTitle() {
        return this.title;
    }

    public final List<FilterItem> component10() {
        return this.filters;
    }

    public final List<AppointSubject> component11() {
        return this.subjects;
    }

    public final CustomData getCustomData() {
        return this.customData;
    }

    public final Subject getFeedsSubject() {
        return this.feedsSubject;
    }

    public final SingleImagePage getPage() {
        return this.page;
    }

    public final RankingData getRankingData() {
        return this.rankingData;
    }

    public final RankingListData getRankingListData() {
        return this.rankingListData;
    }

    public final List<LiveListItem> component17() {
        return this.liveList;
    }

    public final List<Group> component18() {
        return this.groups;
    }

    public final List<Subject> component19() {
        return this.rankings;
    }

    public final String getType() {
        return this.type;
    }

    public final List<BffCommonOpData> component20() {
        return this.postData;
    }

    public final UGCVideo getFeedsUGCVideo() {
        return this.feedsUGCVideo;
    }

    public final List<UGCContent> component22() {
        return this.contentList;
    }

    public final List<UGCVideoHashTag> component23() {
        return this.hashtagList;
    }

    public final String getStyleTemplate() {
        return this.styleTemplate;
    }

    public final BiddingNativeManager getNonAdDelegate() {
        return this.nonAdDelegate;
    }

    public final String getMd5() {
        return this.md5;
    }

    public final String getOps() {
        return this.ops;
    }

    public final OperateItem getOriginalOperateItem() {
        return this.originalOperateItem;
    }

    public final HomePreferencesConfig getHomePreferencesConfig() {
        return this.homePreferencesConfig;
    }

    public final Integer getPosition() {
        return this.position;
    }

    public final String getDeepLink() {
        return this.deepLink;
    }

    public final String getOpId() {
        return this.opId;
    }

    public final String getVersion() {
        return this.version;
    }

    public final Integer getEnableDedup() {
        return this.enableDedup;
    }

    public final Integer getCurrentPage() {
        return this.currentPage;
    }

    public final BannerBean getBanner() {
        return this.banner;
    }

    public final OperateItem copy(String title, String type, Integer position, String deepLink, String opId, String version, Integer enableDedup, Integer currentPage, BannerBean banner, List<FilterItem> filters, List<AppointSubject> subjects, CustomData customData, Subject feedsSubject, SingleImagePage page, RankingData rankingData, RankingListData rankingListData, List<LiveListItem> liveList, List<Group> groups, List<? extends Subject> rankings, List<BffCommonOpData> postData, UGCVideo feedsUGCVideo, List<UGCContent> contentList, List<UGCVideoHashTag> hashtagList, String styleTemplate, BiddingNativeManager nonAdDelegate, String md5, String ops, OperateItem originalOperateItem, HomePreferencesConfig homePreferencesConfig) {
        return new OperateItem(title, type, position, deepLink, opId, version, enableDedup, currentPage, banner, filters, subjects, customData, feedsSubject, page, rankingData, rankingListData, liveList, groups, rankings, postData, feedsUGCVideo, contentList, hashtagList, styleTemplate, nonAdDelegate, md5, ops, originalOperateItem, homePreferencesConfig);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OperateItem)) {
            return false;
        }
        OperateItem operateItem = (OperateItem) other;
        return Intrinsics.c(this.title, operateItem.title) && Intrinsics.c(this.type, operateItem.type) && Intrinsics.c(this.position, operateItem.position) && Intrinsics.c(this.deepLink, operateItem.deepLink) && Intrinsics.c(this.opId, operateItem.opId) && Intrinsics.c(this.version, operateItem.version) && Intrinsics.c(this.enableDedup, operateItem.enableDedup) && Intrinsics.c(this.currentPage, operateItem.currentPage) && Intrinsics.c(this.banner, operateItem.banner) && Intrinsics.c(this.filters, operateItem.filters) && Intrinsics.c(this.subjects, operateItem.subjects) && Intrinsics.c(this.customData, operateItem.customData) && Intrinsics.c(this.feedsSubject, operateItem.feedsSubject) && Intrinsics.c(this.page, operateItem.page) && Intrinsics.c(this.rankingData, operateItem.rankingData) && Intrinsics.c(this.rankingListData, operateItem.rankingListData) && Intrinsics.c(this.liveList, operateItem.liveList) && Intrinsics.c(this.groups, operateItem.groups) && Intrinsics.c(this.rankings, operateItem.rankings) && Intrinsics.c(this.postData, operateItem.postData) && Intrinsics.c(this.feedsUGCVideo, operateItem.feedsUGCVideo) && Intrinsics.c(this.contentList, operateItem.contentList) && Intrinsics.c(this.hashtagList, operateItem.hashtagList) && Intrinsics.c(this.styleTemplate, operateItem.styleTemplate) && Intrinsics.c(this.nonAdDelegate, operateItem.nonAdDelegate) && Intrinsics.c(this.md5, operateItem.md5) && Intrinsics.c(this.ops, operateItem.ops) && Intrinsics.c(this.originalOperateItem, operateItem.originalOperateItem) && Intrinsics.c(this.homePreferencesConfig, operateItem.homePreferencesConfig);
    }

    public final BannerBean getBanner() {
        return this.banner;
    }

    public final List<UGCContent> getContentList() {
        return this.contentList;
    }

    public final Integer getCurrentPage() {
        return this.currentPage;
    }

    public final CustomData getCustomData() {
        return this.customData;
    }

    public final String getDeepLink() {
        return this.deepLink;
    }

    public final Integer getEnableDedup() {
        return this.enableDedup;
    }

    public final Subject getFeedsSubject() {
        return this.feedsSubject;
    }

    public final UGCVideo getFeedsUGCVideo() {
        return this.feedsUGCVideo;
    }

    public final List<FilterItem> getFilters() {
        return this.filters;
    }

    public final List<Group> getGroups() {
        return this.groups;
    }

    public final List<UGCVideoHashTag> getHashtagList() {
        return this.hashtagList;
    }

    public final HomePreferencesConfig getHomePreferencesConfig() {
        return this.homePreferencesConfig;
    }

    public final List<LiveListItem> getLiveList() {
        return this.liveList;
    }

    public final String getMd5() {
        return this.md5;
    }

    public final BiddingNativeManager getNonAdDelegate() {
        return this.nonAdDelegate;
    }

    public final String getOpId() {
        return this.opId;
    }

    public final String getOps() {
        return this.ops;
    }

    public final OperateItem getOriginalOperateItem() {
        return this.originalOperateItem;
    }

    public final SingleImagePage getPage() {
        return this.page;
    }

    public final Integer getPosition() {
        return this.position;
    }

    public final List<BffCommonOpData> getPostData() {
        return this.postData;
    }

    public final RankingData getRankingData() {
        return this.rankingData;
    }

    public final RankingListData getRankingListData() {
        return this.rankingListData;
    }

    public final List<Subject> getRankings() {
        return this.rankings;
    }

    public final String getStyleTemplate() {
        return this.styleTemplate;
    }

    public final List<AppointSubject> getSubjects() {
        return this.subjects;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getType() {
        return this.type;
    }

    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        String str = this.title;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.type;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.position;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        String str3 = this.deepLink;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.opId;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.version;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Integer num2 = this.enableDedup;
        int iHashCode7 = (iHashCode6 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.currentPage;
        int iHashCode8 = (iHashCode7 + (num3 == null ? 0 : num3.hashCode())) * 31;
        BannerBean bannerBean = this.banner;
        int iHashCode9 = (iHashCode8 + (bannerBean == null ? 0 : bannerBean.hashCode())) * 31;
        List<FilterItem> list = this.filters;
        int iHashCode10 = (iHashCode9 + (list == null ? 0 : list.hashCode())) * 31;
        List<AppointSubject> list2 = this.subjects;
        int iHashCode11 = (iHashCode10 + (list2 == null ? 0 : list2.hashCode())) * 31;
        CustomData customData = this.customData;
        int iHashCode12 = (iHashCode11 + (customData == null ? 0 : customData.hashCode())) * 31;
        Subject subject = this.feedsSubject;
        int iHashCode13 = (iHashCode12 + (subject == null ? 0 : subject.hashCode())) * 31;
        SingleImagePage singleImagePage = this.page;
        int iHashCode14 = (iHashCode13 + (singleImagePage == null ? 0 : singleImagePage.hashCode())) * 31;
        RankingData rankingData = this.rankingData;
        int iHashCode15 = (iHashCode14 + (rankingData == null ? 0 : rankingData.hashCode())) * 31;
        RankingListData rankingListData = this.rankingListData;
        int iHashCode16 = (iHashCode15 + (rankingListData == null ? 0 : rankingListData.hashCode())) * 31;
        List<LiveListItem> list3 = this.liveList;
        int iHashCode17 = (iHashCode16 + (list3 == null ? 0 : list3.hashCode())) * 31;
        List<Group> list4 = this.groups;
        int iHashCode18 = (iHashCode17 + (list4 == null ? 0 : list4.hashCode())) * 31;
        List<? extends Subject> list5 = this.rankings;
        int iHashCode19 = (iHashCode18 + (list5 == null ? 0 : list5.hashCode())) * 31;
        List<BffCommonOpData> list6 = this.postData;
        int iHashCode20 = (iHashCode19 + (list6 == null ? 0 : list6.hashCode())) * 31;
        UGCVideo uGCVideo = this.feedsUGCVideo;
        int iHashCode21 = (iHashCode20 + (uGCVideo == null ? 0 : uGCVideo.hashCode())) * 31;
        List<UGCContent> list7 = this.contentList;
        int iHashCode22 = (iHashCode21 + (list7 == null ? 0 : list7.hashCode())) * 31;
        List<UGCVideoHashTag> list8 = this.hashtagList;
        int iHashCode23 = (iHashCode22 + (list8 == null ? 0 : list8.hashCode())) * 31;
        String str6 = this.styleTemplate;
        int iHashCode24 = (iHashCode23 + (str6 == null ? 0 : str6.hashCode())) * 31;
        BiddingNativeManager biddingNativeManager = this.nonAdDelegate;
        int iHashCode25 = (iHashCode24 + (biddingNativeManager == null ? 0 : biddingNativeManager.hashCode())) * 31;
        String str7 = this.md5;
        int iHashCode26 = (iHashCode25 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.ops;
        int iHashCode27 = (iHashCode26 + (str8 == null ? 0 : str8.hashCode())) * 31;
        OperateItem operateItem = this.originalOperateItem;
        int iHashCode28 = (iHashCode27 + (operateItem == null ? 0 : operateItem.hashCode())) * 31;
        HomePreferencesConfig homePreferencesConfig = this.homePreferencesConfig;
        return iHashCode28 + (homePreferencesConfig != null ? homePreferencesConfig.hashCode() : 0);
    }

    public final void setBanner(BannerBean bannerBean) {
        this.banner = bannerBean;
    }

    public final void setContentList(List<UGCContent> list) {
        this.contentList = list;
    }

    public final void setCurrentPage(Integer num) {
        this.currentPage = num;
    }

    public final void setCustomData(CustomData customData) {
        this.customData = customData;
    }

    public final void setDeepLink(String str) {
        this.deepLink = str;
    }

    public final void setEnableDedup(Integer num) {
        this.enableDedup = num;
    }

    public final void setFeedsSubject(Subject subject) {
        this.feedsSubject = subject;
    }

    public final void setFeedsUGCVideo(UGCVideo uGCVideo) {
        this.feedsUGCVideo = uGCVideo;
    }

    public final void setFilters(List<FilterItem> list) {
        this.filters = list;
    }

    public final void setGroups(List<Group> list) {
        this.groups = list;
    }

    public final void setHashtagList(List<UGCVideoHashTag> list) {
        this.hashtagList = list;
    }

    public final void setHomePreferencesConfig(HomePreferencesConfig homePreferencesConfig) {
        this.homePreferencesConfig = homePreferencesConfig;
    }

    public final void setLiveList(List<LiveListItem> list) {
        this.liveList = list;
    }

    public final void setMd5(String str) {
        this.md5 = str;
    }

    public final void setNonAdDelegate(BiddingNativeManager biddingNativeManager) {
        this.nonAdDelegate = biddingNativeManager;
    }

    public final void setOpId(String str) {
        this.opId = str;
    }

    public final void setOps(String str) {
        this.ops = str;
    }

    public final void setOriginalOperateItem(OperateItem operateItem) {
        this.originalOperateItem = operateItem;
    }

    public final void setPage(SingleImagePage singleImagePage) {
        this.page = singleImagePage;
    }

    public final void setPosition(Integer num) {
        this.position = num;
    }

    public final void setPostData(List<BffCommonOpData> list) {
        this.postData = list;
    }

    public final void setRankingData(RankingData rankingData) {
        this.rankingData = rankingData;
    }

    public final void setRankingListData(RankingListData rankingListData) {
        this.rankingListData = rankingListData;
    }

    public final void setRankings(List<? extends Subject> list) {
        this.rankings = list;
    }

    public final void setStyleTemplate(String str) {
        this.styleTemplate = str;
    }

    public final void setSubjects(List<AppointSubject> list) {
        this.subjects = list;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setType(String str) {
        this.type = str;
    }

    public final void setVersion(String str) {
        this.version = str;
    }

    public String toString() {
        return "OperateItem(title=" + this.title + ", type=" + this.type + ", position=" + this.position + ", deepLink=" + this.deepLink + ", opId=" + this.opId + ", version=" + this.version + ", enableDedup=" + this.enableDedup + ", currentPage=" + this.currentPage + ", banner=" + this.banner + ", filters=" + this.filters + ", subjects=" + this.subjects + ", customData=" + this.customData + ", feedsSubject=" + this.feedsSubject + ", page=" + this.page + ", rankingData=" + this.rankingData + ", rankingListData=" + this.rankingListData + ", liveList=" + this.liveList + ", groups=" + this.groups + ", rankings=" + this.rankings + ", postData=" + this.postData + ", feedsUGCVideo=" + this.feedsUGCVideo + ", contentList=" + this.contentList + ", hashtagList=" + this.hashtagList + ", styleTemplate=" + this.styleTemplate + ", nonAdDelegate=" + this.nonAdDelegate + ", md5=" + this.md5 + ", ops=" + this.ops + ", originalOperateItem=" + this.originalOperateItem + ", homePreferencesConfig=" + this.homePreferencesConfig + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.title);
        dest.writeString(this.type);
        Integer num = this.position;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        dest.writeString(this.deepLink);
        dest.writeString(this.opId);
        dest.writeString(this.version);
        Integer num2 = this.enableDedup;
        if (num2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num2.intValue());
        }
        Integer num3 = this.currentPage;
        if (num3 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num3.intValue());
        }
        BannerBean bannerBean = this.banner;
        if (bannerBean == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            bannerBean.writeToParcel(dest, flags);
        }
        List<FilterItem> list = this.filters;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<FilterItem> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(dest, flags);
            }
        }
        List<AppointSubject> list2 = this.subjects;
        if (list2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list2.size());
            Iterator<AppointSubject> it2 = list2.iterator();
            while (it2.hasNext()) {
                dest.writeSerializable(it2.next());
            }
        }
        CustomData customData = this.customData;
        if (customData == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            customData.writeToParcel(dest, flags);
        }
        dest.writeSerializable(this.feedsSubject);
        SingleImagePage singleImagePage = this.page;
        if (singleImagePage == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            singleImagePage.writeToParcel(dest, flags);
        }
        RankingData rankingData = this.rankingData;
        if (rankingData == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            rankingData.writeToParcel(dest, flags);
        }
        RankingListData rankingListData = this.rankingListData;
        if (rankingListData == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            rankingListData.writeToParcel(dest, flags);
        }
        List<LiveListItem> list3 = this.liveList;
        if (list3 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list3.size());
            Iterator<LiveListItem> it3 = list3.iterator();
            while (it3.hasNext()) {
                it3.next().writeToParcel(dest, flags);
            }
        }
        List<Group> list4 = this.groups;
        if (list4 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list4.size());
            Iterator<Group> it4 = list4.iterator();
            while (it4.hasNext()) {
                dest.writeSerializable(it4.next());
            }
        }
        List<? extends Subject> list5 = this.rankings;
        if (list5 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list5.size());
            Iterator<? extends Subject> it5 = list5.iterator();
            while (it5.hasNext()) {
                dest.writeSerializable(it5.next());
            }
        }
        List<BffCommonOpData> list6 = this.postData;
        if (list6 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list6.size());
            Iterator<BffCommonOpData> it6 = list6.iterator();
            while (it6.hasNext()) {
                it6.next().writeToParcel(dest, flags);
            }
        }
        dest.writeSerializable(this.feedsUGCVideo);
        List<UGCContent> list7 = this.contentList;
        if (list7 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list7.size());
            Iterator<UGCContent> it7 = list7.iterator();
            while (it7.hasNext()) {
                dest.writeParcelable(it7.next(), flags);
            }
        }
        List<UGCVideoHashTag> list8 = this.hashtagList;
        if (list8 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list8.size());
            Iterator<UGCVideoHashTag> it8 = list8.iterator();
            while (it8.hasNext()) {
                dest.writeParcelable(it8.next(), flags);
            }
        }
        dest.writeString(this.styleTemplate);
        dest.writeString(this.md5);
        dest.writeString(this.ops);
        OperateItem operateItem = this.originalOperateItem;
        if (operateItem == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            operateItem.writeToParcel(dest, flags);
        }
    }

    public OperateItem(String str, String str2, Integer num, String str3, String str4, String str5, Integer num2, Integer num3, BannerBean bannerBean, List<FilterItem> list, List<AppointSubject> list2, CustomData customData, Subject subject, SingleImagePage singleImagePage, RankingData rankingData, RankingListData rankingListData, List<LiveListItem> list3, List<Group> list4, List<? extends Subject> list5, List<BffCommonOpData> list6, UGCVideo uGCVideo, List<UGCContent> list7, List<UGCVideoHashTag> list8, String str6, BiddingNativeManager biddingNativeManager, String str7, String str8, OperateItem operateItem, HomePreferencesConfig homePreferencesConfig) {
        this.title = str;
        this.type = str2;
        this.position = num;
        this.deepLink = str3;
        this.opId = str4;
        this.version = str5;
        this.enableDedup = num2;
        this.currentPage = num3;
        this.banner = bannerBean;
        this.filters = list;
        this.subjects = list2;
        this.customData = customData;
        this.feedsSubject = subject;
        this.page = singleImagePage;
        this.rankingData = rankingData;
        this.rankingListData = rankingListData;
        this.liveList = list3;
        this.groups = list4;
        this.rankings = list5;
        this.postData = list6;
        this.feedsUGCVideo = uGCVideo;
        this.contentList = list7;
        this.hashtagList = list8;
        this.styleTemplate = str6;
        this.nonAdDelegate = biddingNativeManager;
        this.md5 = str7;
        this.ops = str8;
        this.originalOperateItem = operateItem;
        this.homePreferencesConfig = homePreferencesConfig;
    }

    public OperateItem(String str, String str2, Integer num, String str3, String str4, String str5, Integer num2, Integer num3, BannerBean bannerBean, List list, List list2, CustomData customData, Subject subject, SingleImagePage singleImagePage, RankingData rankingData, RankingListData rankingListData, List list3, List list4, List list5, List list6, UGCVideo uGCVideo, List list7, List list8, String str6, BiddingNativeManager biddingNativeManager, String str7, String str8, OperateItem operateItem, HomePreferencesConfig homePreferencesConfig, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) == 0 ? str2 : "", (i10 & 4) != 0 ? 0 : num, (i10 & 8) != 0 ? null : str3, (i10 & 16) != 0 ? null : str4, (i10 & 32) != 0 ? null : str5, (i10 & 64) != 0 ? null : num2, (i10 & 128) != 0 ? null : num3, (i10 & 256) != 0 ? null : bannerBean, (i10 & 512) != 0 ? null : list, (i10 & 1024) != 0 ? null : list2, (i10 & 2048) != 0 ? null : customData, (i10 & 4096) != 0 ? null : subject, (i10 & 8192) != 0 ? null : singleImagePage, (i10 & 16384) != 0 ? null : rankingData, (i10 & 32768) != 0 ? null : rankingListData, (i10 & 65536) != 0 ? null : list3, (i10 & 131072) != 0 ? null : list4, (i10 & 262144) != 0 ? null : list5, (i10 & 524288) != 0 ? null : list6, (i10 & 1048576) != 0 ? null : uGCVideo, (i10 & 2097152) != 0 ? null : list7, (i10 & 4194304) != 0 ? null : list8, (i10 & 8388608) != 0 ? null : str6, (i10 & 16777216) != 0 ? null : biddingNativeManager, (i10 & ASTNode.PCTX_STORED) != 0 ? null : str7, (i10 & 67108864) != 0 ? null : str8, (i10 & ASTNode.NOJIT) != 0 ? null : operateItem, (i10 & ASTNode.DEOP) != 0 ? null : homePreferencesConfig);
    }
}
