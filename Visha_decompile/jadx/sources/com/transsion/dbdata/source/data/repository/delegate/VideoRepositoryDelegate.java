package com.transsion.dbdata.source.data.repository.delegate;

import android.net.Uri;
import android.text.format.Formatter;
import androidx.core.view.InputDeviceCompat;
import com.transsion.dbdata.beans.SubtitleSettingData;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.SubtitleTrackInfo;
import com.transsion.dbdata.beans.media.VideoInfoTrack;
import com.transsion.dbdata.beans.media.VideoTotalTrack;
import com.transsion.dbdata.database.AudioTrack;
import com.transsion.dbdata.database.PlayListFolderItem;
import com.transsion.dbdata.database.PlayListMediaItem;
import com.transsion.dbdata.database.VideoRoomDatabase;
import com.transsion.dbdata.source.data.cache.MediaCombineCacheManager;
import com.transsion.dbdata.source.data.ktx.ListKtxKt;
import com.transsion.dbdata.source.data.ktx.MediaDataExtKt;
import com.transsion.dbdata.source.data.repository.AudioMVRepository;
import com.transsion.dbdata.source.data.repository.AudioPlayHistoryRepository;
import com.transsion.dbdata.source.data.repository.MediaConvertRepository;
import com.transsion.dbdata.source.data.repository.MediaDataMissingRepository;
import com.transsion.dbdata.source.data.repository.PlayListRepository;
import com.transsion.dbdata.source.data.repository.SubtitleRepository;
import com.transsion.dbdata.source.data.repository.SystemAudioQueryRepository;
import com.transsion.dbdata.source.data.repository.SystemFileQueryRepository;
import com.transsion.dbdata.source.data.repository.SystemVideoQueryRepository;
import com.transsion.dbdata.source.data.repository.UserBehaviorRepository;
import com.transsion.dbdata.source.data.repository.VideoPlayHistoryRepository;
import com.transsion.dbdata.source.data.repository.delegate.VideoRepositoryDelegate;
import defpackage.abb;
import defpackage.b15;
import defpackage.c74;
import defpackage.d82;
import defpackage.e74;
import defpackage.ek4;
import defpackage.i81;
import defpackage.j1a;
import defpackage.ngb;
import defpackage.nm6;
import defpackage.oa1;
import defpackage.q10;
import defpackage.ruc;
import defpackage.se;
import defpackage.vmb;
import defpackage.x71;
import defpackage.xk8;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import defpackage.z71;
import defpackage.ze9;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.b;
import kotlin.comparisons.a;
import kotlin.sequences.SequencesKt___SequencesKt;

@Metadata(d1 = {"\u0000Ô\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J#\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002¢\u0006\u0004\b\b\u0010\tJ-\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J)\u0010\u0014\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J)\u0010\u0017\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020\u0016¢\u0006\u0004\b\u0017\u0010\u0018J)\u0010\u001a\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020\u0019¢\u0006\u0004\b\u001a\u0010\u001bJ)\u0010\u001d\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020\u001c¢\u0006\u0004\b\u001d\u0010\u001eJ)\u0010 \u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020\u001f¢\u0006\u0004\b \u0010!J\u0015\u0010#\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\"¢\u0006\u0004\b#\u0010$J\u0015\u0010&\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020%¢\u0006\u0004\b&\u0010'J\u001b\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u000f\u001a\u00020(¢\u0006\u0004\b)\u0010*J\u0015\u0010,\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020+¢\u0006\u0004\b,\u0010-J\u0015\u0010/\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020.¢\u0006\u0004\b/\u00100J\u001b\u00102\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u000f\u001a\u000201¢\u0006\u0004\b2\u00103J\u0015\u00105\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u000204¢\u0006\u0004\b5\u00106J\u001b\u00108\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u000f\u001a\u000207¢\u0006\u0004\b8\u00109J\u0015\u0010;\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020:¢\u0006\u0004\b;\u0010<J\u0015\u0010>\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020=¢\u0006\u0004\b>\u0010?J\u0015\u0010A\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020@¢\u0006\u0004\bA\u0010BJ\u0015\u0010D\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020C¢\u0006\u0004\bD\u0010EJ\u001b\u0010D\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u000f\u001a\u00020F¢\u0006\u0004\bD\u0010GJ\u0015\u0010I\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020H¢\u0006\u0004\bI\u0010JJ\u0015\u0010L\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020K¢\u0006\u0004\bL\u0010MJ)\u0010O\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020N¢\u0006\u0004\bO\u0010PJ)\u0010R\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020Q¢\u0006\u0004\bR\u0010SJ)\u0010U\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020T¢\u0006\u0004\bU\u0010VJ\u000f\u0010X\u001a\u0004\u0018\u00010W¢\u0006\u0004\bX\u0010YJ\u0015\u0010[\u001a\n\u0012\u0004\u0012\u00020Z\u0018\u00010\u0004¢\u0006\u0004\b[\u0010\\J1\u0010a\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020`0\u0004\u0018\u00010\u00132\u0006\u0010^\u001a\u00020]2\u0006\u0010_\u001a\u00020]¢\u0006\u0004\ba\u0010bJ\u000f\u0010c\u001a\u0004\u0018\u00010`¢\u0006\u0004\bc\u0010dJ\u0017\u0010g\u001a\u0004\u0018\u00010f2\u0006\u0010\u000f\u001a\u00020e¢\u0006\u0004\bg\u0010hJ\u0017\u0010j\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u00020i¢\u0006\u0004\bj\u0010kJ\u0017\u0010m\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u00020l¢\u0006\u0004\bm\u0010nJ\u0015\u0010p\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020o¢\u0006\u0004\bp\u0010qJ\u001b\u0010s\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u000f\u001a\u00020r¢\u0006\u0004\bs\u0010tJ\r\u0010u\u001a\u00020\u0005¢\u0006\u0004\bu\u0010vJ\u0017\u0010x\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000f\u001a\u00020w¢\u0006\u0004\bx\u0010yJ\u0015\u0010{\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020z¢\u0006\u0004\b{\u0010|J!\u0010~\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020}0\u0004\u0018\u00010\u0013¢\u0006\u0004\b~\u0010\u007fJ\u0019\u0010\u0081\u0001\u001a\u00020\u00052\u0007\u0010\u000f\u001a\u00030\u0080\u0001¢\u0006\u0006\b\u0081\u0001\u0010\u0082\u0001J\u0019\u0010\u0084\u0001\u001a\u00020\u00052\u0007\u0010\u000f\u001a\u00030\u0083\u0001¢\u0006\u0006\b\u0084\u0001\u0010\u0085\u0001J-\u0010\u0087\u0001\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020}0\u0004\u0018\u00010\u00132\u0007\u0010\u000f\u001a\u00030\u0086\u0001¢\u0006\u0006\b\u0087\u0001\u0010\u0088\u0001J\u0019\u0010\u008a\u0001\u001a\u00020\u00052\u0007\u0010\u000f\u001a\u00030\u0089\u0001¢\u0006\u0006\b\u008a\u0001\u0010\u008b\u0001J\u0019\u0010\u008d\u0001\u001a\u00020\u00052\u0007\u0010\u000f\u001a\u00030\u008c\u0001¢\u0006\u0006\b\u008d\u0001\u0010\u008e\u0001J\u0019\u0010\u0090\u0001\u001a\u00020\u00052\u0007\u0010\u000f\u001a\u00030\u008f\u0001¢\u0006\u0006\b\u0090\u0001\u0010\u0091\u0001J\u0012\u0010\u0092\u0001\u001a\u0004\u0018\u00010\n¢\u0006\u0006\b\u0092\u0001\u0010\u0093\u0001R!\u0010\u0099\u0001\u001a\u00030\u0094\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0095\u0001\u0010\u0096\u0001\u001a\u0006\b\u0097\u0001\u0010\u0098\u0001R!\u0010\u009e\u0001\u001a\u00030\u009a\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u009b\u0001\u0010\u0096\u0001\u001a\u0006\b\u009c\u0001\u0010\u009d\u0001R!\u0010£\u0001\u001a\u00030\u009f\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b \u0001\u0010\u0096\u0001\u001a\u0006\b¡\u0001\u0010¢\u0001R!\u0010¨\u0001\u001a\u00030¤\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¥\u0001\u0010\u0096\u0001\u001a\u0006\b¦\u0001\u0010§\u0001R!\u0010\u00ad\u0001\u001a\u00030©\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bª\u0001\u0010\u0096\u0001\u001a\u0006\b«\u0001\u0010¬\u0001R!\u0010²\u0001\u001a\u00030®\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¯\u0001\u0010\u0096\u0001\u001a\u0006\b°\u0001\u0010±\u0001R!\u0010·\u0001\u001a\u00030³\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b´\u0001\u0010\u0096\u0001\u001a\u0006\bµ\u0001\u0010¶\u0001R!\u0010¼\u0001\u001a\u00030¸\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¹\u0001\u0010\u0096\u0001\u001a\u0006\bº\u0001\u0010»\u0001R!\u0010Á\u0001\u001a\u00030½\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¾\u0001\u0010\u0096\u0001\u001a\u0006\b¿\u0001\u0010À\u0001R!\u0010Æ\u0001\u001a\u00030Â\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÃ\u0001\u0010\u0096\u0001\u001a\u0006\bÄ\u0001\u0010Å\u0001R!\u0010Ë\u0001\u001a\u00030Ç\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÈ\u0001\u0010\u0096\u0001\u001a\u0006\bÉ\u0001\u0010Ê\u0001¨\u0006Ì\u0001"}, d2 = {"Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;", "", MethodDecl.initName, "()V", "", "", "mediaIds", "Lcom/transsion/dbdata/beans/media/MediaItem;", "handleExclusionCase", "(Ljava/util/List;)Ljava/util/List;", "", "displayName", "handleInclusionCase", "(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;", "Lxk8$x;", "action", "querySingle", "(Lxk8$x;)Lcom/transsion/dbdata/beans/media/MediaItem;", "Lxk8$c;", "Lkotlin/Pair;", "queryAllMediaList", "(Lxk8$c;)Lkotlin/Pair;", "Lxk8$i;", "queryBucketMediaList", "(Lxk8$i;)Lkotlin/Pair;", "Lxk8$o;", "queryMediaListByMediaIds", "(Lxk8$o;)Lkotlin/Pair;", "Lxk8$u;", "queryPlayListMedia", "(Lxk8$u;)Lkotlin/Pair;", "Lxk8$w;", "search", "(Lxk8$w;)Lkotlin/Pair;", "Lb15$e;", "createPlayList", "(Lb15$e;)I", "Lb15$f;", "addPlayListElement", "(Lb15$f;)I", "Lb15$g;", "addPlayListElements", "(Lb15$g;)Ljava/util/List;", "Ld82$g;", "deletePlayList", "(Ld82$g;)I", "Ld82$h;", "deletePlayListElement", "(Ld82$h;)I", "Ld82$i;", "deletePlayListElements", "(Ld82$i;)Ljava/util/List;", "Ld82$k;", "deleteSystemMediaItem", "(Ld82$k;)I", "Ld82$l;", "deleteSystemMediaItems", "(Ld82$l;)Ljava/util/List;", "Lngb$d;", "updatePlayListName", "(Lngb$d;)I", "Lngb$e;", "updateMediaItemName", "(Lngb$e;)I", "Lngb$g;", "updatePlayRecord", "(Lngb$g;)I", "Lb15$l;", "insertVideoConvertingAudio", "(Lb15$l;)I", "Lb15$m;", "(Lb15$m;)Ljava/util/List;", "Ld82$n;", "deleteVideoConvertingAudio", "(Ld82$n;)I", "Lngb$f;", "updateVideoConvertingAudio", "(Lngb$f;)I", "Lxk8$j;", "queryConvertingVideoList", "(Lxk8$j;)Lkotlin/Pair;", "Lxk8$p;", "queryParentPathMediaList", "(Lxk8$p;)Lkotlin/Pair;", "Lxk8$q;", "queryVideoListByPaths", "(Lxk8$q;)Lkotlin/Pair;", "Lcom/transsion/dbdata/beans/media/VideoTotalTrack;", "getVideoTotalTrack", "()Lcom/transsion/dbdata/beans/media/VideoTotalTrack;", "Lcom/transsion/dbdata/beans/media/VideoInfoTrack;", "getVideoInfoTrack", "()Ljava/util/List;", "", "includeRecent", "includeFavorite", "Lcom/transsion/dbdata/database/PlayListFolderItem;", "queryAllPlayList", "(ZZ)Lkotlin/Pair;", "queryFavoritePlayListItem", "()Lcom/transsion/dbdata/database/PlayListFolderItem;", "Lxk8$t;", "Lcom/transsion/dbdata/database/PlayListMediaItem;", "queryPlayMediaListItem", "(Lxk8$t;)Lcom/transsion/dbdata/database/PlayListMediaItem;", "Lxk8$c0;", "queryOnlinePlayHistory", "(Lxk8$c0;)Lcom/transsion/dbdata/beans/media/MediaItem;", "Lxk8$v;", "queryPlayListOnlineElement", "(Lxk8$v;)Lcom/transsion/dbdata/beans/media/MediaItem;", "Ld82$e;", "deleteVideoPlayHistory", "(Ld82$e;)I", "Ld82$f;", "deleteBatchVideoPlayHistory", "(Ld82$f;)Ljava/util/List;", "deleteAllVideoPlayHistory", "()I", "Lxk8$b0;", "queryAudioTrack", "(Lxk8$b0;)Ljava/lang/String;", "Lb15$k;", "insertAudioTrack", "(Lb15$k;)I", "Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;", "querySystemSubtitle", "()Lkotlin/Pair;", "Lb15$c;", "insertDownloadSubtitleRecord", "(Lb15$c;)I", "Ld82$b;", "deleteDownloadSubtitleRecord", "(Ld82$b;)I", "Lxk8$z;", "querySubtitleUsageRecordList", "(Lxk8$z;)Lkotlin/Pair;", "Lb15$i;", "insertSubtitleUsageRecord", "(Lb15$i;)I", "Ld82$j;", "deleteSubtitleUsageRecord", "(Ld82$j;)I", "Lb15$h;", "insertSubtitleSetting", "(Lb15$h;)I", "querySubtitleSetting", "()Ljava/lang/String;", "Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;", "mVideoQueryRepository$delegate", "Lyi5;", "getMVideoQueryRepository", "()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;", "mVideoQueryRepository", "Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;", "mFileQueryRepository$delegate", "getMFileQueryRepository", "()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;", "mFileQueryRepository", "Lcom/transsion/dbdata/source/data/repository/PlayListRepository;", "mPlayListRepository$delegate", "getMPlayListRepository", "()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;", "mPlayListRepository", "Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;", "mVideoRecordRepository$delegate", "getMVideoRecordRepository", "()Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;", "mVideoRecordRepository", "Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;", "mAudioQueryRepository$delegate", "getMAudioQueryRepository", "()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;", "mAudioQueryRepository", "Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;", "mAudioMVRepository$delegate", "getMAudioMVRepository", "()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;", "mAudioMVRepository", "Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;", "mAudioPlayRecordRepository$delegate", "getMAudioPlayRecordRepository", "()Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;", "mAudioPlayRecordRepository", "Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;", "mUserBehaviorRepository$delegate", "getMUserBehaviorRepository", "()Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;", "mUserBehaviorRepository", "Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;", "mMediaConvertRepository$delegate", "getMMediaConvertRepository", "()Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;", "mMediaConvertRepository", "Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;", "mMediaDataMissingRepository$delegate", "getMMediaDataMissingRepository", "()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;", "mMediaDataMissingRepository", "Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;", "mSubtitleRepository$delegate", "getMSubtitleRepository", "()Lcom/transsion/dbdata/source/data/repository/SubtitleRepository;", "mSubtitleRepository", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VideoRepositoryDelegate {
    public static final VideoRepositoryDelegate INSTANCE = new VideoRepositoryDelegate();

    private static final yi5 mVideoQueryRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return VideoRepositoryDelegate.mVideoQueryRepository_delegate$lambda$0();
        }
    });

    private static final yi5 mFileQueryRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return VideoRepositoryDelegate.mFileQueryRepository_delegate$lambda$1();
        }
    });

    private static final yi5 mPlayListRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return VideoRepositoryDelegate.mPlayListRepository_delegate$lambda$2();
        }
    });

    private static final yi5 mVideoRecordRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return VideoRepositoryDelegate.mVideoRecordRepository_delegate$lambda$3();
        }
    });

    private static final yi5 mAudioQueryRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return VideoRepositoryDelegate.mAudioQueryRepository_delegate$lambda$4();
        }
    });

    private static final yi5 mAudioMVRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return VideoRepositoryDelegate.mAudioMVRepository_delegate$lambda$5();
        }
    });

    private static final yi5 mAudioPlayRecordRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return VideoRepositoryDelegate.mAudioPlayRecordRepository_delegate$lambda$6();
        }
    });

    private static final yi5 mUserBehaviorRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return VideoRepositoryDelegate.mUserBehaviorRepository_delegate$lambda$7();
        }
    });

    private static final yi5 mMediaConvertRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return VideoRepositoryDelegate.mMediaConvertRepository_delegate$lambda$8();
        }
    });

    private static final yi5 mMediaDataMissingRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return VideoRepositoryDelegate.mMediaDataMissingRepository_delegate$lambda$9();
        }
    });

    private static final yi5 mSubtitleRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return VideoRepositoryDelegate.mSubtitleRepository_delegate$lambda$10();
        }
    });

    private VideoRepositoryDelegate() {
    }

    private final AudioMVRepository getMAudioMVRepository() {
        return (AudioMVRepository) mAudioMVRepository.getValue();
    }

    private final AudioPlayHistoryRepository getMAudioPlayRecordRepository() {
        return (AudioPlayHistoryRepository) mAudioPlayRecordRepository.getValue();
    }

    private final SystemAudioQueryRepository getMAudioQueryRepository() {
        return (SystemAudioQueryRepository) mAudioQueryRepository.getValue();
    }

    private final SystemFileQueryRepository getMFileQueryRepository() {
        return (SystemFileQueryRepository) mFileQueryRepository.getValue();
    }

    private final MediaConvertRepository getMMediaConvertRepository() {
        return (MediaConvertRepository) mMediaConvertRepository.getValue();
    }

    private final MediaDataMissingRepository getMMediaDataMissingRepository() {
        return (MediaDataMissingRepository) mMediaDataMissingRepository.getValue();
    }

    private final PlayListRepository getMPlayListRepository() {
        return (PlayListRepository) mPlayListRepository.getValue();
    }

    private final SubtitleRepository getMSubtitleRepository() {
        return (SubtitleRepository) mSubtitleRepository.getValue();
    }

    private final UserBehaviorRepository getMUserBehaviorRepository() {
        return (UserBehaviorRepository) mUserBehaviorRepository.getValue();
    }

    private final SystemVideoQueryRepository getMVideoQueryRepository() {
        return (SystemVideoQueryRepository) mVideoQueryRepository.getValue();
    }

    private final VideoPlayHistoryRepository getMVideoRecordRepository() {
        return (VideoPlayHistoryRepository) mVideoRecordRepository.getValue();
    }

    private final List<MediaItem> handleExclusionCase(List<Integer> mediaIds) {
        List<MediaItem> listDistinctAndMergeWithSourceList = ListKtxKt.distinctAndMergeWithSourceList(getMFileQueryRepository().queryAllVideo(), getMVideoQueryRepository().queryAll());
        if (listDistinctAndMergeWithSourceList.isEmpty()) {
            return y71.k();
        }
        Set setG1 = i81.g1(mediaIds);
        if (setG1.isEmpty()) {
            return listDistinctAndMergeWithSourceList;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : listDistinctAndMergeWithSourceList) {
            if (!setG1.contains(Integer.valueOf(((MediaItem) obj).id))) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    private final List<MediaItem> handleInclusionCase(List<Integer> mediaIds, String displayName) {
        List<MediaItem> listQueryBatchByIdsAndName = getMVideoQueryRepository().queryBatchByIdsAndName(mediaIds, displayName);
        if (listQueryBatchByIdsAndName.size() >= mediaIds.size()) {
            return listQueryBatchByIdsAndName;
        }
        Set setG1 = i81.g1(mediaIds);
        HashSet hashSet = new HashSet();
        Iterator<T> it = listQueryBatchByIdsAndName.iterator();
        while (it.hasNext()) {
            hashSet.add(Integer.valueOf(((MediaItem) it.next()).id));
        }
        return i81.J0(listQueryBatchByIdsAndName, getMFileQueryRepository().queryBatchVideoByIdsAndName(i81.b1(ze9.k(setG1, hashSet)), displayName));
    }

    public static final AudioMVRepository mAudioMVRepository_delegate$lambda$5() {
        return AudioMVRepository.INSTANCE.getInstance();
    }

    public static final AudioPlayHistoryRepository mAudioPlayRecordRepository_delegate$lambda$6() {
        VideoRepositoryDelegate videoRepositoryDelegate = INSTANCE;
        return new AudioPlayHistoryRepository(videoRepositoryDelegate.getMAudioQueryRepository(), videoRepositoryDelegate.getMAudioMVRepository());
    }

    public static final SystemAudioQueryRepository mAudioQueryRepository_delegate$lambda$4() {
        return new SystemAudioQueryRepository();
    }

    public static final SystemFileQueryRepository mFileQueryRepository_delegate$lambda$1() {
        return new SystemFileQueryRepository();
    }

    public static final MediaConvertRepository mMediaConvertRepository_delegate$lambda$8() {
        return MediaConvertRepository.INSTANCE.getInstance();
    }

    public static final MediaDataMissingRepository mMediaDataMissingRepository_delegate$lambda$9() {
        return new MediaDataMissingRepository();
    }

    public static final PlayListRepository mPlayListRepository_delegate$lambda$2() {
        return new PlayListRepository();
    }

    public static final SubtitleRepository mSubtitleRepository_delegate$lambda$10() {
        return new SubtitleRepository();
    }

    public static final UserBehaviorRepository mUserBehaviorRepository_delegate$lambda$7() {
        VideoRepositoryDelegate videoRepositoryDelegate = INSTANCE;
        return new UserBehaviorRepository(videoRepositoryDelegate.getMPlayListRepository(), videoRepositoryDelegate.getMVideoRecordRepository(), videoRepositoryDelegate.getMAudioPlayRecordRepository());
    }

    public static final SystemVideoQueryRepository mVideoQueryRepository_delegate$lambda$0() {
        return new SystemVideoQueryRepository();
    }

    public static final VideoPlayHistoryRepository mVideoRecordRepository_delegate$lambda$3() {
        return new VideoPlayHistoryRepository();
    }

    public static final boolean queryAllMediaList$lambda$12(long j, MediaItem mediaItem) {
        y45.j(mediaItem, "it");
        return mediaItem.dateModified > j;
    }

    public static final int queryAllMediaList$lambda$13(MediaItem mediaItem) {
        y45.j(mediaItem, "it");
        return mediaItem.id;
    }

    public final int addPlayListElement(b15.f action) {
        y45.j(action, "action");
        if (action.a()) {
            return getMPlayListRepository().addPlayListElement(action);
        }
        return -1;
    }

    public final List<Integer> addPlayListElements(b15.g action) {
        y45.j(action, "action");
        if (action.a() && !action.b().isEmpty()) {
            return getMPlayListRepository().addPlayListElements(action);
        }
        return y71.k();
    }

    public final int createPlayList(b15.e action) {
        y45.j(action, "action");
        if (action.a()) {
            return getMPlayListRepository().createPlayList(action.b(), true);
        }
        return -1;
    }

    public final int deleteAllVideoPlayHistory() {
        return getMVideoRecordRepository().deleteAllRecords();
    }

    public final List<Integer> deleteBatchVideoPlayHistory(d82.f action) {
        ArrayList arrayList;
        y45.j(action, "action");
        List listA = action.a();
        if (listA != null) {
            List list = listA;
            arrayList = new ArrayList(z71.v(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(((MediaItem) it.next()).id));
            }
        } else {
            arrayList = null;
        }
        Integer numValueOf = arrayList != null ? Integer.valueOf(INSTANCE.getMVideoRecordRepository().deleteBatchRecords(arrayList)) : null;
        return y71.g(Integer.valueOf(numValueOf != null ? numValueOf.intValue() : 0));
    }

    public final int deleteDownloadSubtitleRecord(d82.b action) {
        y45.j(action, "action");
        return getMSubtitleRepository().deleteDownloadRecord(action.a());
    }

    public final int deletePlayList(d82.g action) {
        y45.j(action, "action");
        if (action.a()) {
            return getMPlayListRepository().deletePlayList(action.b());
        }
        return -1;
    }

    public final int deletePlayListElement(d82.h action) {
        y45.j(action, "action");
        if (!action.a() || action.b() < 0) {
            return -1;
        }
        return getMPlayListRepository().deletePlayListElement(action);
    }

    public final List<Integer> deletePlayListElements(d82.i action) {
        y45.j(action, "action");
        return (!action.a() || action.b().isEmpty()) ? y71.k() : getMPlayListRepository().deletePlayListElements(action);
    }

    public final int deleteSubtitleUsageRecord(d82.j action) {
        y45.j(action, "action");
        return getMSubtitleRepository().deleteSubtitleUsageRecord(action.a());
    }

    public final int deleteSystemMediaItem(d82.k action) {
        y45.j(action, "action");
        return getMUserBehaviorRepository().deleteSystemMediaItem(action);
    }

    public final List<Integer> deleteSystemMediaItems(d82.l action) {
        y45.j(action, "action");
        return getMUserBehaviorRepository().deleteSystemMediaItems(action);
    }

    public final int deleteVideoConvertingAudio(d82.n action) {
        y45.j(action, "action");
        return getMMediaConvertRepository().deleteVideoConvertingAudio(action);
    }

    public final int deleteVideoPlayHistory(d82.e action) {
        y45.j(action, "action");
        return getMVideoRecordRepository().deleteRecord((int) action.a(), action.b());
    }

    public final List<VideoInfoTrack> getVideoInfoTrack() {
        try {
            return getMVideoQueryRepository().getVideoInfoTrack();
        } catch (Exception e) {
            vmb.d("VideoRepositoryDelegate", "Error getting video info track: " + e.getMessage(), e);
            return null;
        }
    }

    public final VideoTotalTrack getVideoTotalTrack() {
        Pair<Integer, Long> videoTotalTrack = getMVideoQueryRepository().getVideoTotalTrack();
        int iIntValue = videoTotalTrack.component1().intValue();
        long jLongValue = videoTotalTrack.component2().longValue();
        Pair<Integer, Long> videoTotalTrack2 = getMFileQueryRepository().getVideoTotalTrack();
        int iIntValue2 = iIntValue + videoTotalTrack2.component1().intValue();
        long jLongValue2 = jLongValue + videoTotalTrack2.component2().longValue();
        String strValueOf = String.valueOf(iIntValue2);
        String fileSize = Formatter.formatFileSize(se.a(), jLongValue2);
        y45.i(fileSize, "formatFileSize(...)");
        return new VideoTotalTrack(strValueOf, fileSize, iIntValue2, jLongValue2);
    }

    public final int insertAudioTrack(b15.k action) {
        y45.j(action, "action");
        try {
            q10 q10VarG = VideoRoomDatabase.h(se.a()).g();
            AudioTrack audioTrack = new AudioTrack();
            audioTrack.id = action.b();
            audioTrack.audioId = action.a();
            audioTrack.name = action.c();
            q10VarG.insertAudioTrack(audioTrack);
            return 1;
        } catch (Exception unused) {
            return -1;
        }
    }

    public final int insertDownloadSubtitleRecord(b15.c action) {
        y45.j(action, "action");
        return getMSubtitleRepository().insertDownloadRecord(action.a());
    }

    public final int insertSubtitleSetting(b15.h action) {
        y45.j(action, "action");
        return getMSubtitleRepository().insertSubtitleSetting(action.a());
    }

    public final int insertSubtitleUsageRecord(b15.i action) {
        y45.j(action, "action");
        return getMSubtitleRepository().insertSubtitleUsageRecord(action.a(), action.b());
    }

    public final int insertVideoConvertingAudio(b15.l action) {
        y45.j(action, "action");
        return getMMediaConvertRepository().insertVideoConvertingAudio(action);
    }

    public final Pair<Integer, List<MediaItem>> queryAllMediaList(xk8.c action) {
        List<Integer> listC0;
        Pair<Integer, List<MediaItem>> pair;
        y45.j(action, "action");
        switch (action.e()) {
            case InputDeviceCompat.SOURCE_DPAD:
                List<MediaItem> listQueryAll = getMVideoQueryRepository().queryAll();
                List<MediaItem> listQueryAllVideo = getMFileQueryRepository().queryAllVideo();
                List<MediaItem> listDistinctAndMergeWithSourceList = ListKtxKt.distinctAndMergeWithSourceList(listQueryAllVideo, listQueryAll);
                final long jAbs = Math.abs((System.currentTimeMillis() / ((long) 1000)) - ((long) 604800));
                if (listDistinctAndMergeWithSourceList.size() < 500) {
                    List listD = x71.d(listDistinctAndMergeWithSourceList.size());
                    for (MediaItem mediaItem : listQueryAll) {
                        if (mediaItem.dateModified > jAbs) {
                            listD.add(Integer.valueOf(mediaItem.id));
                        }
                    }
                    for (MediaItem mediaItem2 : listQueryAllVideo) {
                        if (mediaItem2.dateModified > jAbs) {
                            listD.add(Integer.valueOf(mediaItem2.id));
                        }
                    }
                    listC0 = x71.a(listD);
                } else {
                    listC0 = SequencesKt___SequencesKt.c0(SequencesKt___SequencesKt.R(SequencesKt___SequencesKt.F(i81.b0(listDistinctAndMergeWithSourceList), new e74() {
                        @Override
                        public final Object invoke(Object obj) {
                            return Boolean.valueOf(VideoRepositoryDelegate.queryAllMediaList$lambda$12(jAbs, (MediaItem) obj));
                        }
                    }), new e74() {
                        @Override
                        public final Object invoke(Object obj) {
                            return Integer.valueOf(VideoRepositoryDelegate.queryAllMediaList$lambda$13((MediaItem) obj));
                        }
                    }));
                }
                MediaCombineCacheManager.INSTANCE.getInstance().updateScanRecentAdd(listC0, true);
                return new Pair<>(0, listDistinctAndMergeWithSourceList);
            case 514:
                List<MediaItem> listQueryBatchByDuration = getMVideoQueryRepository().queryBatchByDuration(300000L, false);
                ArrayList arrayList = new ArrayList();
                for (Object obj : listQueryBatchByDuration) {
                    if (((MediaItem) obj).duration <= 300000) {
                        arrayList.add(obj);
                    }
                }
                List<MediaItem> listQueryBatchVideoByDuration = getMFileQueryRepository().queryBatchVideoByDuration(300000L, false);
                ArrayList arrayList2 = new ArrayList();
                for (Object obj2 : listQueryBatchVideoByDuration) {
                    if (((MediaItem) obj2).duration <= 300000) {
                        arrayList2.add(obj2);
                    }
                }
                List<MediaItem> listDistinctAndMergeWithSourceList2 = ListKtxKt.distinctAndMergeWithSourceList(arrayList2, arrayList);
                vmb.a("VideoRepositoryDelegate", "the shortVideo size(resultSize:" + listDistinctAndMergeWithSourceList2.size() + "->videoSize:" + arrayList.size() + "->fileVideoSize:" + arrayList2.size());
                pair = new Pair<>(0, listDistinctAndMergeWithSourceList2);
                break;
            case 515:
                List<MediaItem> listQueryBatchByDuration2 = getMVideoQueryRepository().queryBatchByDuration(300000L, true);
                ArrayList arrayList3 = new ArrayList();
                for (Object obj3 : listQueryBatchByDuration2) {
                    if (((MediaItem) obj3).duration > 300000) {
                        arrayList3.add(obj3);
                    }
                }
                List<MediaItem> listQueryBatchVideoByDuration2 = getMFileQueryRepository().queryBatchVideoByDuration(300000L, true);
                ArrayList arrayList4 = new ArrayList();
                for (Object obj4 : listQueryBatchVideoByDuration2) {
                    if (((MediaItem) obj4).duration > 300000) {
                        arrayList4.add(obj4);
                    }
                }
                List<MediaItem> listDistinctAndMergeWithSourceList3 = ListKtxKt.distinctAndMergeWithSourceList(arrayList4, arrayList3);
                vmb.a("VideoRepositoryDelegate", "the longVideo size(resultSize:" + listDistinctAndMergeWithSourceList3.size() + "->videoSize:" + arrayList3.size() + "->fileVideoSize:" + arrayList4.size());
                pair = new Pair<>(0, listDistinctAndMergeWithSourceList3);
                break;
            case 516:
                pair = new Pair<>(0, getMVideoRecordRepository().queryAll(action.c(), action.a(), false));
                break;
            default:
                return null;
        }
        return pair;
    }

    public final Pair<Integer, List<PlayListFolderItem>> queryAllPlayList(boolean includeRecent, boolean includeFavorite) {
        ArrayList arrayList = new ArrayList();
        if (includeRecent) {
            List listJ0 = i81.J0(getMVideoQueryRepository().queryRecent(), getMFileQueryRepository().queryRecentMVList());
            MediaCombineCacheManager companion = MediaCombineCacheManager.INSTANCE.getInstance();
            List list = listJ0;
            ArrayList arrayList2 = new ArrayList(z71.v(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList2.add(Integer.valueOf(((MediaItem) it.next()).id));
            }
            companion.updateScanRecentAdd(arrayList2, true);
            arrayList.addAll(listJ0);
        }
        ArrayList arrayList3 = new ArrayList();
        List<PlayListFolderItem> playListFolderSet = getMPlayListRepository().getPlayListFolderSet(true, includeRecent, includeFavorite);
        int i = 0;
        for (Object obj : playListFolderSet) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            PlayListFolderItem playListFolderItem = (PlayListFolderItem) obj;
            int i3 = 2;
            if (i != 0) {
                if (i != 1 || !includeRecent) {
                    i3 = 0;
                }
            } else if (includeRecent) {
                i3 = 13;
            }
            playListFolderItem.setListFlag(i3);
            Uri uri = null;
            List<MediaItem> videoPlayListElement = (i == 0 && includeRecent) ? arrayList : INSTANCE.getMPlayListRepository().getVideoPlayListElement(playListFolderItem.getId(), null);
            playListFolderItem.setCount(videoPlayListElement.size());
            MediaItem mediaItem = (MediaItem) i81.q0(videoPlayListElement);
            if (mediaItem != null) {
                uri = mediaItem.uri;
            }
            playListFolderItem.setUri(uri);
            i = i2;
        }
        arrayList3.addAll(playListFolderSet);
        return new Pair<>(0, arrayList3);
    }

    public final String queryAudioTrack(xk8.b0 action) {
        y45.j(action, "action");
        AudioTrack audioTrack = VideoRoomDatabase.h(se.a()).g().getAudioTrack(action.a());
        if (audioTrack != null) {
            return ek4.i(audioTrack);
        }
        return null;
    }

    public final Pair<Integer, List<MediaItem>> queryBucketMediaList(xk8.i action) {
        y45.j(action, "action");
        Long lA = action.a();
        String strE = action.e();
        int iE = oa1.e();
        List<MediaItem> listQueryBatchByBucket = getMVideoQueryRepository().queryBatchByBucket(lA, strE);
        if (listQueryBatchByBucket.size() < iE) {
            List<MediaItem> listQueryBatchVideoByParentPath = getMFileQueryRepository().queryBatchVideoByParentPath(strE, listQueryBatchByBucket);
            if (!listQueryBatchVideoByParentPath.isEmpty()) {
                listQueryBatchByBucket = i81.J0(listQueryBatchByBucket, listQueryBatchVideoByParentPath);
            }
        }
        return abb.a(0, listQueryBatchByBucket);
    }

    public final Pair<Integer, List<MediaItem>> queryConvertingVideoList(xk8.j action) {
        y45.j(action, "action");
        if (action.b() <= 0) {
            return null;
        }
        return getMMediaConvertRepository().queryConvertingVideoList(action);
    }

    public final PlayListFolderItem queryFavoritePlayListItem() {
        return getMPlayListRepository().queryFavoriteList(true);
    }

    public final Pair<Integer, List<MediaItem>> queryMediaListByMediaIds(xk8.o action) {
        y45.j(action, "action");
        List listC = action.c();
        String strB = action.b();
        boolean zD = action.d();
        if (zD || !listC.isEmpty()) {
            return abb.a(0, zD ? handleExclusionCase(listC) : handleInclusionCase(listC, strB));
        }
        return null;
    }

    public final MediaItem queryOnlinePlayHistory(xk8.c0 action) {
        y45.j(action, "action");
        return getMVideoRecordRepository().queryOnline(action.a());
    }

    public final Pair<Integer, List<MediaItem>> queryParentPathMediaList(xk8.p action) {
        y45.j(action, "action");
        List<MediaItem> listQueryBatchByParentPath = getMVideoQueryRepository().queryBatchByParentPath(action.b());
        if (listQueryBatchByParentPath == null) {
            listQueryBatchByParentPath = y71.k();
        }
        List<MediaItem> listQueryBatchVideoByParentPath = getMFileQueryRepository().queryBatchVideoByParentPath(action.b(), listQueryBatchByParentPath);
        if (!listQueryBatchVideoByParentPath.isEmpty()) {
            listQueryBatchByParentPath = i81.J0(listQueryBatchByParentPath, listQueryBatchVideoByParentPath);
        }
        if (listQueryBatchByParentPath.isEmpty()) {
            return null;
        }
        return abb.a(0, listQueryBatchByParentPath);
    }

    public final Pair<Integer, List<MediaItem>> queryPlayListMedia(xk8.u action) {
        y45.j(action, "action");
        if (action.e()) {
            return abb.a(0, i81.J0(getMVideoQueryRepository().queryRecent(), getMFileQueryRepository().queryRecentVideo()));
        }
        Long lD = action.d();
        if (lD == null || lD.longValue() < 0) {
            return null;
        }
        return abb.a(0, getMPlayListRepository().getVideoPlayListElement(lD.longValue()));
    }

    public final MediaItem queryPlayListOnlineElement(xk8.v action) {
        y45.j(action, "action");
        return getMPlayListRepository().getVideoOnlinePlayListElement(action.a(), action.b());
    }

    public final PlayListMediaItem queryPlayMediaListItem(xk8.t action) {
        y45.j(action, "action");
        return getMPlayListRepository().getAudioPlayMediaListElement(action.b(), action.a());
    }

    public final MediaItem querySingle(xk8.x action) {
        y45.j(action, "action");
        String strE = action.e();
        return (strE == null || strE.length() == 0) ? getMVideoQueryRepository().querySingle(action) : ruc.a(strE);
    }

    public final String querySubtitleSetting() {
        SubtitleSettingData subtitleSettingDataQuerySubtitleSetting = getMSubtitleRepository().querySubtitleSetting();
        if (subtitleSettingDataQuerySubtitleSetting != null) {
            return ek4.i(subtitleSettingDataQuerySubtitleSetting);
        }
        return null;
    }

    public final Pair<Integer, List<SubtitleTrackInfo>> querySubtitleUsageRecordList(xk8.z action) {
        y45.j(action, "action");
        return abb.a(0, getMSubtitleRepository().querySubtitleUsageRecordList(action.a(), action.b()));
    }

    public final Pair<Integer, List<SubtitleTrackInfo>> querySystemSubtitle() {
        return abb.a(0, getMSubtitleRepository().querySystemSubtitles());
    }

    public final Pair<Integer, List<MediaItem>> queryVideoListByPaths(xk8.q action) {
        y45.j(action, "action");
        if (y45.e(action.a(), nm6.a.b)) {
            return abb.a(0, SystemFileQueryRepository.queryBatchVideoByPaths$default(getMFileQueryRepository(), action.b(), false, false, 2, null));
        }
        return null;
    }

    public final Pair<Integer, List<MediaItem>> search(xk8.w action) {
        y45.j(action, "action");
        String strB = action.b();
        if (strB == null || strB.length() == 0) {
            return null;
        }
        List<MediaItem> mediaItems = MediaDataExtKt.toMediaItems(getMMediaDataMissingRepository().getAllByMediaType(2));
        ArrayList arrayList = new ArrayList();
        for (Object obj : mediaItems) {
            MediaItem mediaItem = (MediaItem) obj;
            String str = mediaItem.data;
            if (str != null && str.length() != 0 && new File(mediaItem.data).exists()) {
                arrayList.add(obj);
            }
        }
        List<MediaItem> listSearch = getMVideoQueryRepository().search(strB);
        List<MediaItem> listSearchVideo = getMFileQueryRepository().searchVideo(strB);
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str2 = ((MediaItem) it.next()).data;
            if (str2 != null) {
                arrayList2.add(str2);
            }
        }
        Set setG1 = i81.g1(arrayList2);
        List listJ0 = i81.J0(listSearch, listSearchVideo);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : listJ0) {
            if (!setG1.contains(((MediaItem) obj2).data)) {
                arrayList3.add(obj2);
            }
        }
        List listJ1 = i81.J0(arrayList, arrayList3);
        ArrayList arrayList4 = new ArrayList();
        for (Object obj3 : listJ1) {
            String str3 = ((MediaItem) obj3).displayName;
            y45.i(str3, "displayName");
            if (j1a.V(str3, strB, true)) {
                arrayList4.add(obj3);
            }
        }
        HashSet hashSet = new HashSet();
        ArrayList arrayList5 = new ArrayList();
        for (Object obj4 : arrayList4) {
            if (hashSet.add(((MediaItem) obj4).data)) {
                arrayList5.add(obj4);
            }
        }
        List listT0 = i81.T0(arrayList5, new Comparator() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final int compare(T t, T t2) {
                return a.d(((MediaItem) t).displayName, ((MediaItem) t2).displayName);
            }
        });
        return abb.a(Integer.valueOf(listT0.size()), listT0);
    }

    public final int updateMediaItemName(ngb.e action) {
        y45.j(action, "action");
        MediaItem mediaItemB = action.b();
        AudioItem audioItem = new AudioItem();
        audioItem.id = mediaItemB.id;
        audioItem.data = mediaItemB.data;
        audioItem.displayName = mediaItemB.displayName;
        audioItem.size = mediaItemB.size;
        audioItem.width = mediaItemB.width;
        audioItem.height = mediaItemB.height;
        audioItem.duration = mediaItemB.duration;
        return getMMediaDataMissingRepository().upsertMediaDataMissingSingle(audioItem, action.a());
    }

    public final int updatePlayListName(ngb.d action) {
        y45.j(action, "action");
        if (action.a()) {
            return getMPlayListRepository().updatePlayListName(action.b(), action.c());
        }
        return -1;
    }

    public final int updatePlayRecord(ngb.g action) {
        y45.j(action, "action");
        return getMVideoRecordRepository().insertOrUpdate(action.c(), action.a(), action.b()) ? 1 : -1;
    }

    public final int updateVideoConvertingAudio(ngb.f action) {
        y45.j(action, "action");
        return getMMediaConvertRepository().updateVideoConvertingAudio(action);
    }

    public final List<Integer> insertVideoConvertingAudio(b15.m action) {
        y45.j(action, "action");
        return getMMediaConvertRepository().insertVideoConvertingAudio(action);
    }
}
