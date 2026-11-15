package com.transsion.cloud.viewmodel;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.MutableLiveData;
import com.google.android.gms.ads.RequestConfiguration;
import com.transsion.cloud.fileoperate.CloudFileOperate;
import com.transsion.cloud.viewmodel.CloudViewModel;
import com.transsion.cloud_drive.base.api.model.SpaceStatistics;
import com.transsion.cloudcore.cache.CloudTaskFinishCacheManager;
import com.transsion.cloudcore.db.CloudTaskDao;
import com.transsion.cloudcore.db.CloudTaskDatabase;
import com.transsion.dbdata.beans.CloudResponseModel;
import com.transsion.dbdata.beans.VideoCloudCache;
import com.transsion.dbdata.beans.VideoCloudData;
import com.transsion.dbdata.beans.VideoCloudDataLocal;
import com.transsion.dbdata.beans.VishaOauthData;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.utils.SortUtil;
import com.transsion.netdisk.R;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.data.CloudRequestData;
import com.transsion.playercommon.vishaapis.appconfig.helper.CloudFeaturesConfigHelper;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineVideoApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.reponse.BaseResponse;
import com.transsion.sniffer_load.GlobalDownloadManger;
import com.transsion.utils.ToastUtils;
import defpackage.a41;
import defpackage.apb;
import defpackage.cl0;
import defpackage.e74;
import defpackage.el0;
import defpackage.fpb;
import defpackage.gec;
import defpackage.hk1;
import defpackage.hw5;
import defpackage.k29;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.oe7;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.ri4;
import defpackage.sq3;
import defpackage.u74;
import defpackage.v6a;
import defpackage.vb;
import defpackage.wh1;
import defpackage.xy0;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Pair;

@Metadata(d1 = {"\u0000Ô\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\b\u0016\u0018\u0000 \u0081\u00012\u00020\u0001:\u0001JB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J \u0010\n\u001a\u00020\t2\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0082@¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u000e\u001a\u00020\t2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0010\u001a\u00020\t2\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\u0010\u0010\u000fJq\u0010\u0019\u001a\u00020\t2\b\b\u0002\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00112:\b\u0002\u0010\u0018\u001a4\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\f\u0012\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0006\u0012\u0004\u0012\u00020\t\u0018\u00010\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001d\u0010\u001cJ\r\u0010\u001e\u001a\u00020\t¢\u0006\u0004\b\u001e\u0010\u001cJ\r\u0010\u001f\u001a\u00020\t¢\u0006\u0004\b\u001f\u0010\u001cJ\u0015\u0010!\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u0011¢\u0006\u0004\b!\u0010\"J\r\u0010#\u001a\u00020\t¢\u0006\u0004\b#\u0010\u001cJ\u0017\u0010&\u001a\u00020\t2\b\u0010%\u001a\u0004\u0018\u00010$¢\u0006\u0004\b&\u0010'J\u0015\u0010*\u001a\u00020\t2\u0006\u0010)\u001a\u00020(¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\tH\u0016¢\u0006\u0004\b,\u0010\u001cJ\u000f\u0010-\u001a\u00020\tH\u0016¢\u0006\u0004\b-\u0010\u001cJ?\u0010/\u001a\u00020\t2\b\b\u0002\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00112\b\b\u0002\u0010.\u001a\u00020\u0013H\u0016¢\u0006\u0004\b/\u00100J!\u00103\u001a\u00020\t2\b\u00101\u001a\u0004\u0018\u00010\u00072\b\u00102\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b3\u00104J\u0017\u00105\u001a\u00020\t2\b\u00101\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b5\u00106J\r\u00107\u001a\u00020\t¢\u0006\u0004\b7\u0010\u001cJ\r\u00108\u001a\u00020\t¢\u0006\u0004\b8\u0010\u001cJ \u00109\u001a\u00020\t2\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0086@¢\u0006\u0004\b9\u0010\u000bJ!\u0010<\u001a\u00020\t2\u0012\u0010;\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\t0:¢\u0006\u0004\b<\u0010=J\r\u0010>\u001a\u00020\t¢\u0006\u0004\b>\u0010\u001cJ\r\u0010?\u001a\u00020\t¢\u0006\u0004\b?\u0010\u001cJ=\u0010@\u001a\u00020\t2\b\b\u0002\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00112\b\b\u0002\u0010.\u001a\u00020\u0013¢\u0006\u0004\b@\u00100J\r\u0010A\u001a\u00020\t¢\u0006\u0004\bA\u0010\u001cJ#\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010B\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0016¢\u0006\u0004\bC\u0010DR\u0014\u0010H\u001a\u00020E8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010GR\u0017\u0010N\u001a\u00020I8\u0006¢\u0006\f\n\u0004\bJ\u0010K\u001a\u0004\bL\u0010MR9\u0010V\u001a$\u0012 \u0012\u001e\u0012\u0004\u0012\u00020Q\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u0011\u0018\u00010P0O8\u0006¢\u0006\f\n\u0004\bR\u0010S\u001a\u0004\bT\u0010UR#\u0010Y\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060O8\u0006¢\u0006\f\n\u0004\bW\u0010S\u001a\u0004\bX\u0010UR#\u0010\\\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u00060O8\u0006¢\u0006\f\n\u0004\bZ\u0010S\u001a\u0004\b[\u0010UR#\u0010_\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060O8\u0006¢\u0006\f\n\u0004\b]\u0010S\u001a\u0004\b^\u0010UR)\u0010c\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020Q\u0012\u0004\u0012\u00020\u00130`0O8\u0006¢\u0006\f\n\u0004\ba\u0010S\u001a\u0004\bb\u0010UR\u001d\u0010g\u001a\b\u0012\u0004\u0012\u00020d0O8\u0006¢\u0006\f\n\u0004\be\u0010S\u001a\u0004\bf\u0010UR\u001d\u0010k\u001a\b\u0012\u0004\u0012\u00020h0O8\u0006¢\u0006\f\n\u0004\bi\u0010S\u001a\u0004\bj\u0010UR\u001d\u0010n\u001a\b\u0012\u0004\u0012\u00020Q0O8\u0006¢\u0006\f\n\u0004\bl\u0010S\u001a\u0004\bm\u0010UR\u001d\u0010r\u001a\b\u0012\u0004\u0012\u00020o0O8\u0006¢\u0006\f\n\u0004\bp\u0010S\u001a\u0004\bq\u0010UR)\u0010u\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020Q\u0012\u0004\u0012\u00020Q0`0O8\u0006¢\u0006\f\n\u0004\bs\u0010S\u001a\u0004\bt\u0010UR\u001d\u0010w\u001a\b\u0012\u0004\u0012\u00020Q0O8\u0006¢\u0006\f\n\u0004\b8\u0010S\u001a\u0004\bv\u0010UR\u001d\u0010y\u001a\b\u0012\u0004\u0012\u00020Q0O8\u0006¢\u0006\f\n\u0004\b\u001b\u0010S\u001a\u0004\bx\u0010UR\u001d\u0010|\u001a\b\u0012\u0004\u0012\u00020z0O8\u0006¢\u0006\f\n\u0004\b?\u0010S\u001a\u0004\b{\u0010UR\u0016\u0010~\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u0010}R\u0016\u0010\u007f\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010}R'\u0010\u0084\u0001\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b\n\u0010\u0080\u0001\u001a\u0006\b\u0081\u0001\u0010\u0082\u0001\"\u0005\b\u0083\u0001\u0010\"R+\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u0085\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b,\u0010\u0086\u0001\u001a\u0006\b\u0080\u0001\u0010\u0087\u0001\"\u0006\b\u0088\u0001\u0010\u0089\u0001R)\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b7\u0010\u008b\u0001\u001a\u0006\b\u008c\u0001\u0010\u008d\u0001\"\u0005\b\u008e\u0001\u00106R)\u0010\u0092\u0001\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b/\u0010\u008b\u0001\u001a\u0006\b\u0090\u0001\u0010\u008d\u0001\"\u0005\b\u0091\u0001\u00106R(\u0010\u0096\u0001\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\b\u0093\u0001\u0010\u0080\u0001\u001a\u0006\b\u0094\u0001\u0010\u0082\u0001\"\u0005\b\u0095\u0001\u0010\"R#\u0010\u009b\u0001\u001a\f\u0012\u0005\u0012\u00030\u0098\u0001\u0018\u00010\u0097\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0099\u0001\u0010\u009a\u0001R'\u0010 \u0001\u001a\u00020Q8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0004\b\u0019\u0010\u0010\u001a\u0006\b\u009c\u0001\u0010\u009d\u0001\"\u0006\b\u009e\u0001\u0010\u009f\u0001R'\u0010£\u0001\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\bA\u0010\u0080\u0001\u001a\u0006\b¡\u0001\u0010\u0082\u0001\"\u0005\b¢\u0001\u0010\"R+\u0010ª\u0001\u001a\u0005\u0018\u00010¤\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b*\u0010¥\u0001\u001a\u0006\b¦\u0001\u0010§\u0001\"\u0006\b¨\u0001\u0010©\u0001R\u001b\u0010\u00ad\u0001\u001a\u0005\u0018\u00010«\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bT\u0010¬\u0001R\u001b\u0010°\u0001\u001a\u0005\u0018\u00010®\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b[\u0010¯\u0001R\u0017\u0010±\u0001\u001a\u00020Q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010\u0010R(\u0010¶\u0001\u001a\u00020o8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bf\u0010\u009c\u0001\u001a\u0006\b²\u0001\u0010³\u0001\"\u0006\b´\u0001\u0010µ\u0001R,\u0010½\u0001\u001a\u0005\u0018\u00010·\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b¦\u0001\u0010¸\u0001\u001a\u0006\b¹\u0001\u0010º\u0001\"\u0006\b»\u0001\u0010¼\u0001R'\u0010À\u0001\u001a\u00020Q8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0004\bL\u0010\u0010\u001a\u0006\b¾\u0001\u0010\u009d\u0001\"\u0006\b¿\u0001\u0010\u009f\u0001¨\u0006Á\u0001"}, d2 = {"Lcom/transsion/cloud/viewmodel/CloudViewModel;", "Landroidx/lifecycle/AndroidViewModel;", "Landroid/app/Application;", MimeTypes.BASE_TYPE_APPLICATION, MethodDecl.initName, "(Landroid/app/Application;)V", "", "Lcom/transsion/dbdata/beans/VideoCloudData;", "videoList", "Lzfb;", "r", "(Ljava/util/List;Lwh1;)Ljava/lang/Object;", "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;", "list", "a0", "(Ljava/util/List;)V", "Z", "", "pageNo", "", "sortField", "sortBy", "dataType", "Lkotlin/Function3;", "onSuccess", "x", "(ILjava/lang/String;Ljava/lang/String;ILu74;)V", "n", "()V", "f0", "Y", "g0", "page", "i0", "(I)V", "q0", "Landroid/app/Activity;", "activity", "d0", "(Landroid/app/Activity;)V", "Landroid/content/Context;", "context", "z", "(Landroid/content/Context;)V", "s", ExifInterface.LONGITUDE_WEST, "searchText", "u", "(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V", "videoCloudData", "nameFileName", "h0", "(Lcom/transsion/dbdata/beans/VideoCloudData;Ljava/lang/String;)V", TtmlNode.TAG_P, "(Lcom/transsion/dbdata/beans/VideoCloudData;)V", "t", CmcdData.OBJECT_TYPE_MANIFEST, "r0", "Lkotlin/Function1;", "onCallback", "X", "(Le74;)V", "p0", "o", "b0", "y", "recentlyList", "q", "(Ljava/util/List;)Ljava/util/List;", "Lhk1;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Lhk1;", "coroutineExceptionHandler", "Lnk1;", "b", "Lnk1;", "F", "()Lnk1;", "mCoroutineScope", "Landroidx/lifecycle/MutableLiveData;", "Lkotlin/Triple;", "", "c", "Landroidx/lifecycle/MutableLiveData;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "()Landroidx/lifecycle/MutableLiveData;", "mCloudDataList", "d", "C", "mCloudRecentlyList", "e", "B", "mCloudFavoriteList", "f", "O", "mLocalList", "Lkotlin/Pair;", GslbInterceptor.HEADER_KEY_GSLB, "P", "mLoginState", "Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;", CmcdData.STREAMING_FORMAT_HLS, "D", "mCloudStorageInfo", "Lcom/transsion/dbdata/beans/FileHandlerData;", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "getMFileHandler", "mFileHandler", "j", "Q", "mNoContentLiveData", "", "k", "U", "mShowStorageNoEnough", CmcdData.STREAM_TYPE_LIVE, ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "mSowNetException", "M", "mLoadingLiveData", "N", "mLoadingNextPageError", "Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;", "H", "mFreeSpaceInfo", "Ljava/lang/String;", "mSortFiled", "mSortType", "I", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "()I", "setMCurrentPage", "mCurrentPage", "Lsq3$a;", "Lsq3$a;", "()Lsq3$a;", "setMIFileOperateListener", "(Lsq3$a;)V", "mIFileOperateListener", "Lcom/transsion/dbdata/beans/VideoCloudData;", "T", "()Lcom/transsion/dbdata/beans/VideoCloudData;", "o0", "mSelectedItemData", "K", "k0", "mLastPlayItemData", "v", "getMLastPlayItemPosition", "l0", "mLastPlayItemPosition", "Lxy0;", "Lcom/transsion/cloud_drive/base/api/model/FileInfo;", "w", "Lxy0;", "mCloudManager", "J", "()Z", "setMIsUploadSelectModel", "(Z)V", "mIsUploadSelectModel", "R", "setMPageSize", "mPageSize", "Lcom/transsion/cloudcore/db/CloudTaskDao;", "Lcom/transsion/cloudcore/db/CloudTaskDao;", ExifInterface.LONGITUDE_EAST, "()Lcom/transsion/cloudcore/db/CloudTaskDao;", "setMCloudTaskDao", "(Lcom/transsion/cloudcore/db/CloudTaskDao;)V", "mCloudTaskDao", "Lapb;", "Lapb;", "mVideoCloudData", "Lhw5;", "Lhw5;", "mFavoriteDao", "mHaveLoadedCache", "L", "()J", "m0", "(J)V", "mLastUpdateTime", "Lcom/transsion/dbdata/beans/CloudResponseModel;", "Lcom/transsion/dbdata/beans/CloudResponseModel;", "getMCloudResponseModel", "()Lcom/transsion/dbdata/beans/CloudResponseModel;", "j0", "(Lcom/transsion/dbdata/beans/CloudResponseModel;)V", "mCloudResponseModel", ExifInterface.LATITUDE_SOUTH, "n0", "mRetryRefreshToken", "clouddrive_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class CloudViewModel extends AndroidViewModel {

    public apb mVideoCloudData;

    public hw5 mFavoriteDao;

    public boolean mHaveLoadedCache;

    public long mLastUpdateTime;

    public CloudResponseModel mCloudResponseModel;

    public boolean mRetryRefreshToken;

    public final hk1 coroutineExceptionHandler;

    public final nk1 mCoroutineScope;

    public final MutableLiveData mCloudDataList;

    public final MutableLiveData mCloudRecentlyList;

    public final MutableLiveData mCloudFavoriteList;

    public final MutableLiveData mLocalList;

    public final MutableLiveData mLoginState;

    public final MutableLiveData mCloudStorageInfo;

    public final MutableLiveData mFileHandler;

    public final MutableLiveData mNoContentLiveData;

    public final MutableLiveData mShowStorageNoEnough;

    public final MutableLiveData mSowNetException;

    public final MutableLiveData mLoadingLiveData;

    public final MutableLiveData mLoadingNextPageError;

    public final MutableLiveData mFreeSpaceInfo;

    public String mSortFiled;

    public String mSortType;

    public int mCurrentPage;

    public sq3.a mIFileOperateListener;

    public VideoCloudData mSelectedItemData;

    public VideoCloudData mLastPlayItemData;

    public int mLastPlayItemPosition;

    public xy0 mCloudManager;

    public boolean mIsUploadSelectModel;

    public int mPageSize;

    public CloudTaskDao mCloudTaskDao;

    public static final class a implements oe7 {
        public a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean a(List list) {
            Long localMediaSize;
            if (list == null) {
                return false;
            }
            CloudViewModel cloudViewModel = CloudViewModel.this;
            Iterator it = list.iterator();
            long jLongValue = 0;
            while (it.hasNext()) {
                VideoCloudDataLocal videoCloudDataLocal = (VideoCloudDataLocal) it.next();
                jLongValue += (videoCloudDataLocal == null || (localMediaSize = videoCloudDataLocal.getLocalMediaSize()) == null) ? 0L : localMediaSize.longValue();
            }
            SpaceStatistics spaceStatistics = (SpaceStatistics) cloudViewModel.getMCloudStorageInfo().getValue();
            long totalSize = spaceStatistics != null ? spaceStatistics.getTotalSize() - spaceStatistics.getUsedSize() : 0L;
            if (jLongValue > totalSize) {
                cloudViewModel.getMShowStorageNoEnough().postValue(Long.valueOf(jLongValue));
            }
            return jLongValue <= totalSize;
        }
    }

    public static final class c extends kotlin.coroutines.a implements hk1 {
        public c(hk1.b bVar) {
            super(bVar);
        }

        @Override
        public void handleException(kotlin.coroutines.d dVar, Throwable th) {
            Log.e("CloudViewModel", "Coroutine Exception: " + th.getMessage());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudViewModel(Application application) {
        super(application);
        y45.j(application, MimeTypes.BASE_TYPE_APPLICATION);
        c cVar = new c(hk1.w1);
        this.coroutineExceptionHandler = cVar;
        this.mCoroutineScope = kotlinx.coroutines.d.a(mc2.a().plus(v6a.b(null, 1, null)).plus(cVar));
        this.mCloudDataList = new MutableLiveData();
        this.mCloudRecentlyList = new MutableLiveData();
        this.mCloudFavoriteList = new MutableLiveData();
        this.mLocalList = new MutableLiveData();
        this.mLoginState = new MutableLiveData();
        this.mCloudStorageInfo = new MutableLiveData();
        this.mFileHandler = new MutableLiveData();
        this.mNoContentLiveData = new MutableLiveData();
        this.mShowStorageNoEnough = new MutableLiveData();
        this.mSowNetException = new MutableLiveData();
        this.mLoadingLiveData = new MutableLiveData();
        this.mLoadingNextPageError = new MutableLiveData();
        this.mFreeSpaceInfo = new MutableLiveData();
        this.mSortFiled = "create_at";
        this.mSortType = "DESC";
        this.mCurrentPage = 1;
        this.mIFileOperateListener = new sq3.a() {
            @Override
            public final void t(boolean z) {
                CloudViewModel.e0(this.b, z);
            }
        };
        this.mLastPlayItemPosition = -1;
        this.mPageSize = 10;
        try {
            this.mCloudManager = a41.a.c(application);
            this.mCloudTaskDao = CloudTaskDatabase.getInstance().cloudTaskDao();
            this.mVideoCloudData = CloudTaskDatabase.getInstance().videoCloudCacheDao();
            this.mFavoriteDao = CloudTaskDatabase.getInstance().miMediaLibraryCacheDao();
            CloudFileOperate.getInstance().setOnCloudStorageInsufficientListener(new a());
        } catch (Exception unused) {
        }
    }

    public static void c0(CloudViewModel cloudViewModel, int i, String str, String str2, int i2, String str3, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadCloudDataSequentially");
        }
        if ((i3 & 1) != 0) {
            i = cloudViewModel.mCurrentPage;
        }
        int i4 = i;
        if ((i3 & 2) != 0) {
            str = cloudViewModel.mSortFiled;
        }
        String str4 = str;
        if ((i3 & 4) != 0) {
            str2 = cloudViewModel.mSortType;
        }
        String str5 = str2;
        if ((i3 & 16) != 0) {
            str3 = "";
        }
        cloudViewModel.b0(i4, str4, str5, i2, str3);
    }

    public static final void e0(CloudViewModel cloudViewModel, boolean z) {
        cloudViewModel.Y();
        cloudViewModel.mCurrentPage = 1;
        v(cloudViewModel, 1, null, null, 2, null, 22, null);
    }

    public static void v(CloudViewModel cloudViewModel, int i, String str, String str2, int i2, String str3, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getCloudVideoDataList");
        }
        if ((i3 & 1) != 0) {
            i = cloudViewModel.mCurrentPage;
        }
        int i4 = i;
        if ((i3 & 2) != 0) {
            str = cloudViewModel.mSortFiled;
        }
        String str4 = str;
        if ((i3 & 4) != 0) {
            str2 = cloudViewModel.mSortType;
        }
        String str5 = str2;
        if ((i3 & 16) != 0) {
            str3 = "";
        }
        cloudViewModel.u(i4, str4, str5, i2, str3);
    }

    public static final zfb w(CloudViewModel cloudViewModel, int i, int i2, List list, List list2, List list3) {
        List list4;
        List list5;
        MutableLiveData mutableLiveData = cloudViewModel.mLoadingLiveData;
        Boolean bool = Boolean.FALSE;
        mutableLiveData.setValue(bool);
        List list6 = list;
        if ((list6 == null || list6.isEmpty()) && (((list4 = list2) == null || list4.isEmpty()) && (((list5 = list3) == null || list5.isEmpty()) && i == 1 && i2 == 0))) {
            if (com.transsion.palmsdk.b.s()) {
                cloudViewModel.mSowNetException.postValue(new Pair(Boolean.TRUE, Boolean.valueOf(MainApp.p())));
                Log.d("CloudViewModel", "getDataFromCache mSowNetException.postValue(true)");
            }
            return zfb.a;
        }
        cloudViewModel.mNoContentLiveData.setValue(bool);
        if (i2 == 0 || i2 == 2) {
            el0.d(cloudViewModel.mCoroutineScope, mc2.c(), null, new CloudViewModel$getCloudVideoDataList$1$1(list, cloudViewModel, list2, i, list3, null), 2, null);
        }
        return zfb.a;
    }

    public final MutableLiveData getMCloudDataList() {
        return this.mCloudDataList;
    }

    public final MutableLiveData getMCloudFavoriteList() {
        return this.mCloudFavoriteList;
    }

    public final MutableLiveData getMCloudRecentlyList() {
        return this.mCloudRecentlyList;
    }

    public final MutableLiveData getMCloudStorageInfo() {
        return this.mCloudStorageInfo;
    }

    public final CloudTaskDao getMCloudTaskDao() {
        return this.mCloudTaskDao;
    }

    public final nk1 getMCoroutineScope() {
        return this.mCoroutineScope;
    }

    public final int getMCurrentPage() {
        return this.mCurrentPage;
    }

    public final MutableLiveData getMFreeSpaceInfo() {
        return this.mFreeSpaceInfo;
    }

    public final sq3.a getMIFileOperateListener() {
        return this.mIFileOperateListener;
    }

    public final boolean getMIsUploadSelectModel() {
        return this.mIsUploadSelectModel;
    }

    public final VideoCloudData getMLastPlayItemData() {
        return this.mLastPlayItemData;
    }

    public final long getMLastUpdateTime() {
        return this.mLastUpdateTime;
    }

    public final MutableLiveData getMLoadingLiveData() {
        return this.mLoadingLiveData;
    }

    public final MutableLiveData getMLoadingNextPageError() {
        return this.mLoadingNextPageError;
    }

    public final MutableLiveData getMLocalList() {
        return this.mLocalList;
    }

    public final MutableLiveData getMLoginState() {
        return this.mLoginState;
    }

    public final MutableLiveData getMNoContentLiveData() {
        return this.mNoContentLiveData;
    }

    public final int getMPageSize() {
        return this.mPageSize;
    }

    public final boolean getMRetryRefreshToken() {
        return this.mRetryRefreshToken;
    }

    public final VideoCloudData getMSelectedItemData() {
        return this.mSelectedItemData;
    }

    public final MutableLiveData getMShowStorageNoEnough() {
        return this.mShowStorageNoEnough;
    }

    public final MutableLiveData getMSowNetException() {
        return this.mSowNetException;
    }

    public void W() {
        ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).getRecentPlayDataList(1, 2, CloudFeaturesConfigHelper.INSTANCE.isSupportMIMediaLibrary()).d0(k29.c()).M(vb.a()).subscribe(new pd7() {

            public static final class a implements gec.d {
                public final CloudViewModel a;

                public a(CloudViewModel cloudViewModel) {
                    this.a = cloudViewModel;
                }

                @Override
                public void a(VishaOauthData vishaOauthData) {
                    this.a.n0(true);
                    Log.d("CloudViewModel", "getRecentPlayList refreshToken success");
                    this.a.W();
                }
            }

            @Override
            public void onNext(BaseResponse baseResponse) {
                y45.j(baseResponse, "response");
                Log.i("CloudViewModel", "getRecentPlayList onNext  " + baseResponse.getMessage() + " " + baseResponse);
                if (!baseResponse.isSuccess()) {
                    if (!gec.c().o(baseResponse.getCode()) || this.b.getMRetryRefreshToken()) {
                        return;
                    }
                    gec.c().k(new a(this.b));
                    return;
                }
                this.b.n0(false);
                Log.d("CloudViewModel", "response.isSuccess");
                List list = (List) baseResponse.getRecords();
                if (list != null) {
                    CloudViewModel cloudViewModel = this.b;
                    el0.d(cloudViewModel.getMCoroutineScope(), mc2.c(), null, new CloudViewModel$getRecentPlayList$1$onNext$1$1(list, cloudViewModel, null), 2, null);
                }
            }

            @Override
            public void onComplete() {
                Log.d("CloudViewModel", "getRecentPlayList onComplete");
            }

            @Override
            public void onError(Throwable th) {
                y45.j(th, "e");
                Log.e("CloudViewModel", "getRecentPlayList onError " + th.getMessage());
            }

            @Override
            public void onSubscribe(rc2 rc2Var) {
                y45.j(rc2Var, "d");
                Log.d("CloudViewModel", "getRecentPlayList onSubscribe");
            }
        });
    }

    public final void X(e74 onCallback) {
        y45.j(onCallback, "onCallback");
        el0.d(this.mCoroutineScope, mc2.b(), null, new CloudViewModel$getShowDownloadTipsCount$1(onCallback, null), 2, null);
    }

    public final void Y() {
        int value = SortUtil.l().getValue();
        String str = "create_at";
        if (value != 0) {
            if (value == 2) {
                str = PlayAudioData.TAG_SIZE;
            } else if (value == 3) {
                str = "duration";
            }
        }
        this.mSortFiled = str;
        this.mSortType = SortUtil.n() ? "ASC" : "DESC";
    }

    public final void Z(List videoList) {
        apb apbVar;
        ArrayList arrayList = new ArrayList();
        if (videoList != null) {
            Iterator it = videoList.iterator();
            while (it.hasNext()) {
                VideoCloudCache videoCloudCacheFromVideoCloudData = VideoCloudCache.fromVideoCloudData((VideoCloudData) it.next());
                if (videoCloudCacheFromVideoCloudData != null) {
                    arrayList.add(videoCloudCacheFromVideoCloudData);
                }
            }
        }
        if (arrayList.isEmpty() || (apbVar = this.mVideoCloudData) == null) {
            return;
        }
        apbVar.insertCaches(arrayList);
    }

    public final void a0(List list) {
        el0.d(this.mCoroutineScope, mc2.b(), null, new CloudViewModel$insertFavoriteToCache$1(this, list, null), 2, null);
    }

    public final void b0(int pageNo, String sortField, String sortBy, int dataType, String searchText) {
        y45.j(sortField, "sortField");
        y45.j(sortBy, "sortBy");
        y45.j(searchText, "searchText");
        el0.d(this.mCoroutineScope, null, null, new CloudViewModel$loadCloudDataSequentially$1(this, pageNo, sortField, sortBy, dataType, searchText, null), 3, null);
    }

    public final void d0(Activity activity) {
        if (activity != null) {
            com.transsion.palmsdk.b.g(activity);
        }
    }

    public final void f0() {
        List list = (List) this.mCloudRecentlyList.getValue();
        if (list == null) {
            return;
        }
        el0.d(this.mCoroutineScope, mc2.b(), null, new CloudViewModel$refreshFilteredCloudRecentlyList$1(this, list, null), 2, null);
    }

    public final void g0() {
        this.mCurrentPage++;
    }

    public final void h0(VideoCloudData videoCloudData, String nameFileName) {
        if (MainApp.p()) {
            el0.d(this.mCoroutineScope, mc2.b(), null, new CloudViewModel$renameFile$1(this, videoCloudData, nameFileName, null), 2, null);
        } else {
            ToastUtils.s(R.string.net_not_connect);
        }
    }

    public final void i0(int page) {
        this.mCurrentPage = page;
    }

    public final void j0(CloudResponseModel cloudResponseModel) {
        this.mCloudResponseModel = cloudResponseModel;
    }

    public final void k0(VideoCloudData videoCloudData) {
        this.mLastPlayItemData = videoCloudData;
    }

    public final void l0(int i) {
        this.mLastPlayItemPosition = i;
    }

    public final void m() {
        el0.d(this.mCoroutineScope, mc2.b(), null, new CloudViewModel$checkAndGetConfig$1(this, null), 2, null);
    }

    public final void m0(long j) {
        this.mLastUpdateTime = j;
    }

    public final void n() {
        apb apbVar = this.mVideoCloudData;
        if (apbVar != null) {
            apbVar.deleteCommonData();
        }
    }

    public final void n0(boolean z) {
        this.mRetryRefreshToken = z;
    }

    public final void o() {
        el0.d(this.mCoroutineScope, mc2.b(), null, new CloudViewModel$deleteAllCloudTaskRecords$1(this, null), 2, null);
        MainApp.s = true;
        ri4.e().l();
        GlobalDownloadManger.B().l();
        CloudTaskFinishCacheManager.a.n().postValue(Boolean.FALSE);
    }

    public final void o0(VideoCloudData videoCloudData) {
        this.mSelectedItemData = videoCloudData;
    }

    public final void p(VideoCloudData videoCloudData) {
        if (MainApp.p()) {
            el0.d(this.mCoroutineScope, mc2.b(), null, new CloudViewModel$deleteFile$1(this, videoCloudData, null), 2, null);
        } else {
            ToastUtils.s(R.string.net_not_connect);
        }
    }

    public final void p0() {
        el0.d(this.mCoroutineScope, mc2.b(), null, new CloudViewModel$setShowDownloadTipsFinish$1(null), 2, null);
    }

    public List q(List recentlyList) {
        y45.j(recentlyList, "recentlyList");
        ArrayList arrayList = new ArrayList();
        for (Object obj : recentlyList) {
            VideoCloudData videoCloudData = (VideoCloudData) obj;
            String fileId = videoCloudData.getFileId();
            if (fileId.length() == 0 ? false : videoCloudData.getDataType() != 1 ? true : fpb.a.h(fileId)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final void q0() {
        if (!com.transsion.palmsdk.b.s()) {
            this.mLoginState.setValue(new Pair(Boolean.FALSE, ""));
        } else {
            this.mLoginState.setValue(new Pair(Boolean.TRUE, com.transsion.palmsdk.b.j()));
        }
    }

    public final Object r(List list, wh1 wh1Var) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return zfb.a;
        }
        Object objG = cl0.g(mc2.b(), new CloudViewModel$filterLocalVideoList$2(list, null), wh1Var);
        return objG == z45.f() ? objG : zfb.a;
    }

    public final Object r0(List list, wh1 wh1Var) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return zfb.a;
        }
        Object objG = cl0.g(mc2.b(), new CloudViewModel$updateVideoCovers$2(list, this, null), wh1Var);
        return objG == z45.f() ? objG : zfb.a;
    }

    public void s() {
        ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).getUserCollectDataList(1, 6).d0(k29.c()).M(vb.a()).subscribe(new pd7() {

            public static final class a implements gec.d {
                public final CloudViewModel a;

                public a(CloudViewModel cloudViewModel) {
                    this.a = cloudViewModel;
                }

                @Override
                public void a(VishaOauthData vishaOauthData) {
                    this.a.n0(true);
                    Log.e("CloudViewModel", "getCloudFavorite refreshToken success");
                    if (CloudFeaturesConfigHelper.INSTANCE.getInstance().getMediaLibraryDataFlag()) {
                        this.a.s();
                    }
                }
            }

            @Override
            public void onNext(BaseResponse baseResponse) {
                y45.j(baseResponse, "response");
                Log.i("CloudViewModel", "getCloudFavorite onNext  " + baseResponse.getMessage() + " " + baseResponse);
                if (!baseResponse.isSuccess()) {
                    if (!gec.c().o(baseResponse.getCode()) || this.b.getMRetryRefreshToken()) {
                        return;
                    }
                    gec.c().k(new a(this.b));
                    return;
                }
                this.b.n0(false);
                Log.d("CloudViewModel", "response.isSuccess");
                List list = (List) baseResponse.getRecords();
                if (list != null) {
                    CloudViewModel cloudViewModel = this.b;
                    el0.d(cloudViewModel.getMCoroutineScope(), mc2.c(), null, new CloudViewModel$getCloudFavorite$1$onNext$1$1(list, cloudViewModel, null), 2, null);
                }
            }

            @Override
            public void onComplete() {
                Log.d("CloudViewModel", "getCloudFavorite onComplete");
            }

            @Override
            public void onError(Throwable th) {
                y45.j(th, "e");
                Log.e("CloudViewModel", "getCloudFavorite onError " + th.getMessage());
            }

            @Override
            public void onSubscribe(rc2 rc2Var) {
                y45.j(rc2Var, "d");
                Log.d("CloudViewModel", "getCloudFavorite onSubscribe");
            }
        });
    }

    public final void t() {
        el0.d(this.mCoroutineScope, mc2.b(), null, new CloudViewModel$getCloudStorageInfo$1(this, null), 2, null);
    }

    public void u(final int pageNo, final String sortField, final String sortBy, final int dataType, final String searchText) {
        Long maxId;
        y45.j(sortField, "sortField");
        y45.j(sortBy, "sortBy");
        y45.j(searchText, "searchText");
        boolean z = dataType == 0 || dataType == 2 || dataType == 3;
        if (z) {
            Y();
        }
        String str = z ? this.mSortFiled : sortField;
        String str2 = z ? this.mSortType : sortBy;
        if (searchText.length() == 0 && !MainApp.p()) {
            x(pageNo, str, str2, dataType, new u74() {
                @Override
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return CloudViewModel.w(this.b, pageNo, dataType, (List) obj, (List) obj2, (List) obj3);
                }
            });
        } else {
            CloudResponseModel cloudResponseModel = this.mCloudResponseModel;
            ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).getVideoList(new CloudRequestData(pageNo, searchText, str, str2, dataType, dataType == 2 ? (cloudResponseModel == null || (maxId = cloudResponseModel.getMaxId()) == null) ? 0L : maxId.longValue() : 0L)).d0(k29.c()).M(vb.a()).subscribe(new pd7() {

                public static final class a implements gec.d {
                    public final CloudViewModel a;
                    public final int b;
                    public final String c;
                    public final String d;
                    public final int e;
                    public final String f;

                    public a(CloudViewModel cloudViewModel, int i, String str, String str2, int i2, String str3) {
                        this.a = cloudViewModel;
                        this.b = i;
                        this.c = str;
                        this.d = str2;
                        this.e = i2;
                        this.f = str3;
                    }

                    @Override
                    public void a(VishaOauthData vishaOauthData) {
                        this.a.n0(true);
                        Log.d("CloudViewModel", "getCloudVideoDataList refreshToken success");
                        this.a.u(this.b, this.c, this.d, this.e, this.f);
                    }
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public void onNext(BaseResponse baseResponse) {
                    y45.j(baseResponse, "response");
                    MutableLiveData mLoadingLiveData = this.getMLoadingLiveData();
                    Boolean bool = Boolean.FALSE;
                    mLoadingLiveData.setValue(bool);
                    Log.i("CloudViewModel", "getVideoList onNext  " + baseResponse.getMessage() + " " + baseResponse);
                    if (baseResponse.isSuccess()) {
                        this.n0(false);
                        Log.d("CloudViewModel", "response.isSuccess");
                        if (pageNo == 1) {
                            Log.d("CloudViewModel", "mSowNetException.postValue(false)");
                            this.getMSowNetException().postValue(new Pair(bool, Boolean.valueOf(MainApp.p())));
                        }
                        CloudResponseModel cloudResponseModel2 = (CloudResponseModel) baseResponse.getData();
                        this.j0(cloudResponseModel2);
                        if (cloudResponseModel2 != null) {
                            CloudViewModel cloudViewModel = this;
                            el0.d(cloudViewModel.getMCoroutineScope(), mc2.c(), null, new CloudViewModel$getCloudVideoDataList$2$onNext$1$1(cloudResponseModel2, cloudViewModel, pageNo, dataType, null), 2, null);
                            return;
                        }
                        return;
                    }
                    if (gec.c().o(baseResponse.getCode()) && !this.getMRetryRefreshToken()) {
                        gec.c().k(new a(this, pageNo, sortField, sortBy, dataType, searchText));
                        return;
                    }
                    Pair pair = (Pair) this.getMLoginState().getValue();
                    Boolean bool2 = pair != null ? (Boolean) pair.getFirst() : null;
                    Log.w("CloudViewModel", "getVideoList onNext failure " + bool2 + " ," + pageNo + " ," + dataType);
                    if (com.transsion.palmsdk.b.s() && pageNo == 1 && dataType != 3) {
                        Log.d("CloudViewModel", "mSowNetException.postValue(true)");
                        this.getMSowNetException().postValue(new Pair(Boolean.TRUE, Boolean.valueOf(MainApp.p())));
                    } else if (dataType == 3) {
                        ToastUtils.s(R.string.network_error);
                    }
                    if (pageNo > 1) {
                        this.getMLoadingNextPageError().postValue(Boolean.TRUE);
                    }
                }

                @Override
                public void onComplete() {
                    Log.d("CloudViewModel", "getVideoList onComplete");
                }

                @Override
                public void onError(Throwable th) {
                    y45.j(th, "e");
                    Log.e("CloudViewModel", "getVideoList onError " + th.getMessage());
                    if (dataType == 3) {
                        ToastUtils.s(R.string.network_error);
                    }
                    this.getMLoadingLiveData().setValue(Boolean.FALSE);
                    if (com.transsion.palmsdk.b.s() && pageNo == 1) {
                        Log.d("CloudViewModel", "onError mSowNetException.postValue(true)");
                        this.getMSowNetException().postValue(new Pair(Boolean.TRUE, Boolean.valueOf(MainApp.p())));
                    } else if (pageNo > 1) {
                        this.getMLoadingNextPageError().postValue(Boolean.TRUE);
                    }
                }

                @Override
                public void onSubscribe(rc2 rc2Var) {
                    y45.j(rc2Var, "d");
                    Log.d("CloudViewModel", "getVideoList onSubscribe");
                }
            });
        }
    }

    public final void x(int pageNo, String sortField, String sortBy, int dataType, u74 onSuccess) {
        el0.d(this.mCoroutineScope, mc2.b(), null, new CloudViewModel$getDataFromCache$1(this, dataType, pageNo, sortField, sortBy, onSuccess, null), 2, null);
    }

    public final void y() {
        el0.d(this.mCoroutineScope, mc2.b(), null, new CloudViewModel$getFreeSpaceInfo$1(this, null), 2, null);
    }

    public final void z(Context context) {
        y45.j(context, "context");
        el0.d(this.mCoroutineScope, mc2.b(), null, new CloudViewModel$getLocalVideoDataList$1(this, null), 2, null);
    }
}
