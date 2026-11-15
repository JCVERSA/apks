package com.transsion.dbdata.source.data.repository.delegate;

import android.net.Uri;
import android.os.SystemClock;
import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.MediatorLiveData;
import com.blankj.utilcode.util.Utils;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.dbdata.beans.LyricData;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.database.AudioAlbum;
import com.transsion.dbdata.database.AudioRoomDatabase;
import com.transsion.dbdata.database.MediaDataMissingItem;
import com.transsion.dbdata.database.PlayListFolderItem;
import com.transsion.dbdata.database.PlayListMediaItem;
import com.transsion.dbdata.source.data.cache.MediaCombineCacheManager;
import com.transsion.dbdata.source.data.ktx.AudioFilterKtxKt;
import com.transsion.dbdata.source.data.ktx.MediaBucketExtKt;
import com.transsion.dbdata.source.data.ktx.MediaDataExtKt;
import com.transsion.dbdata.source.data.repository.AudioMVRepository;
import com.transsion.dbdata.source.data.repository.AudioPlayHistoryRepository;
import com.transsion.dbdata.source.data.repository.MediaConvertRepository;
import com.transsion.dbdata.source.data.repository.MediaDataMissingRepository;
import com.transsion.dbdata.source.data.repository.PlayListRepository;
import com.transsion.dbdata.source.data.repository.SystemAudioQueryRepository;
import com.transsion.dbdata.source.data.repository.UserBehaviorRepository;
import com.transsion.dbdata.source.data.repository.VideoPlayHistoryRepository;
import com.transsion.dbdata.source.data.repository.delegate.AudioRepositoryDelegate;
import com.transsion.dbdata.utils.SortUtil;
import defpackage.abb;
import defpackage.av5;
import defpackage.b15;
import defpackage.c74;
import defpackage.d72;
import defpackage.d82;
import defpackage.dl0;
import defpackage.e74;
import defpackage.ek4;
import defpackage.el0;
import defpackage.i81;
import defpackage.j1a;
import defpackage.ky5;
import defpackage.mc2;
import defpackage.mk0;
import defpackage.ngb;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.qe6;
import defpackage.s74;
import defpackage.se;
import defpackage.t55;
import defpackage.vmb;
import defpackage.wh1;
import defpackage.wn8;
import defpackage.x71;
import defpackage.xk8;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import defpackage.z45;
import defpackage.z71;
import defpackage.zfb;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.b;
import kotlin.c;
import kotlin.comparisons.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.sequences.SequencesKt___SequencesKt;

@Metadata(d1 = {"\u0000Ö\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JC\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0004*\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ+\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006*\b\u0012\u0004\u0012\u00020\u00070\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\n\u0010\fJ\u001d\u0010\u000f\u001a\u00020\u000e2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J)\u0010\u0013\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J!\u0010\u0015\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0004H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J!\u0010\u0017\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0004H\u0002¢\u0006\u0004\b\u0017\u0010\u0016J)\u0010\u0018\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0018\u0010\u0014J1\u0010\u001a\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00042\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJA\u0010\u001f\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\u00060\u0004*\u0014\u0012\u0004\u0012\u00020\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u001c2\b\b\u0002\u0010\u001d\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u001f\u0010 J\u001f\u0010#\u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020\u0007H\u0002¢\u0006\u0004\b#\u0010$J+\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00050\u00062\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b&\u0010'J5\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00050\u00062\b\u0010(\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b)\u0010*J\u0015\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002¢\u0006\u0004\b+\u0010,J\u0015\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002¢\u0006\u0004\b-\u0010,J-\u00100\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00050\u00062\b\u0010/\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b0\u0010\fJ;\u00103\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u00101\u001a\b\u0012\u0004\u0012\u00020\u00050\u00062\f\u00102\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\u0010(\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b3\u00104J3\u00106\u001a\u00020\u00112\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u00101\u001a\b\u0012\u0004\u0012\u00020\u00050\u00062\u0006\u00105\u001a\u00020\u0011H\u0002¢\u0006\u0004\b6\u00107J-\u00108\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006*\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00050\u0006H\u0002¢\u0006\u0004\b8\u00109J[\u0010<\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u00042\u001a\u0010:\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u00042\u001a\u0010;\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u0004H\u0002¢\u0006\u0004\b<\u0010=J7\u0010<\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\u000e\u0010:\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\u000e\u0010;\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0002¢\u0006\u0004\b<\u00109J\u0019\u0010@\u001a\u0004\u0018\u00010?2\u0006\u0010>\u001a\u00020\u0005H\u0002¢\u0006\u0004\b@\u0010AJ\u0019\u0010C\u001a\u0004\u0018\u00010?2\u0006\u0010B\u001a\u00020\bH\u0002¢\u0006\u0004\bC\u0010DJ\u0017\u0010G\u001a\u0004\u0018\u00010\u00072\u0006\u0010F\u001a\u00020E¢\u0006\u0004\bG\u0010HJ)\u0010J\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u00042\u0006\u0010F\u001a\u00020I¢\u0006\u0004\bJ\u0010KJ)\u0010M\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u00042\u0006\u0010F\u001a\u00020L¢\u0006\u0004\bM\u0010NJ)\u0010P\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u00042\u0006\u0010F\u001a\u00020O¢\u0006\u0004\bP\u0010QJ)\u0010S\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u00042\u0006\u0010F\u001a\u00020R¢\u0006\u0004\bS\u0010TJ'\u0010V\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00042\u0006\u0010F\u001a\u00020U¢\u0006\u0004\bV\u0010WJ)\u0010Y\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u00042\u0006\u0010F\u001a\u00020X¢\u0006\u0004\bY\u0010ZJ)\u0010\\\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u00042\u0006\u0010F\u001a\u00020[¢\u0006\u0004\b\\\u0010]J)\u0010_\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u00042\u0006\u0010F\u001a\u00020^¢\u0006\u0004\b_\u0010`J)\u0010b\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u00042\u0006\u0010F\u001a\u00020a¢\u0006\u0004\bb\u0010cJ)\u0010e\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u00042\u0006\u0010F\u001a\u00020d¢\u0006\u0004\be\u0010fJ)\u0010h\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0018\u00010\u00042\u0006\u0010F\u001a\u00020g¢\u0006\u0004\bh\u0010iJ\u0015\u0010k\u001a\u00020\u00052\u0006\u0010F\u001a\u00020j¢\u0006\u0004\bk\u0010lJ\u0015\u0010n\u001a\u00020\u00052\u0006\u0010F\u001a\u00020m¢\u0006\u0004\bn\u0010oJ\u001b\u0010q\u001a\b\u0012\u0004\u0012\u00020\u00050\u00062\u0006\u0010F\u001a\u00020p¢\u0006\u0004\bq\u0010rJ\u0015\u0010t\u001a\u00020\u00052\u0006\u0010F\u001a\u00020s¢\u0006\u0004\bt\u0010uJ\u0015\u0010w\u001a\u00020\u00052\u0006\u0010F\u001a\u00020v¢\u0006\u0004\bw\u0010xJ\u0015\u0010z\u001a\u00020\u00052\u0006\u0010F\u001a\u00020y¢\u0006\u0004\bz\u0010{J\u001b\u0010}\u001a\b\u0012\u0004\u0012\u00020\u00050\u00062\u0006\u0010F\u001a\u00020|¢\u0006\u0004\b}\u0010~J\u0018\u0010\u0080\u0001\u001a\u00020\u00052\u0006\u0010F\u001a\u00020\u007f¢\u0006\u0006\b\u0080\u0001\u0010\u0081\u0001J\u0019\u0010\u0083\u0001\u001a\u00020\u00052\u0007\u0010F\u001a\u00030\u0082\u0001¢\u0006\u0006\b\u0083\u0001\u0010\u0084\u0001J\u001f\u0010\u0086\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050\u00062\u0007\u0010F\u001a\u00030\u0085\u0001¢\u0006\u0006\b\u0086\u0001\u0010\u0087\u0001J\u0019\u0010\u0089\u0001\u001a\u00020\u00052\u0007\u0010F\u001a\u00030\u0088\u0001¢\u0006\u0006\b\u0089\u0001\u0010\u008a\u0001J\u0019\u0010\u008c\u0001\u001a\u00020\u00052\u0007\u0010F\u001a\u00030\u008b\u0001¢\u0006\u0006\b\u008c\u0001\u0010\u008d\u0001J\u0019\u0010\u008f\u0001\u001a\u00020\u00052\u0007\u0010F\u001a\u00030\u008e\u0001¢\u0006\u0006\b\u008f\u0001\u0010\u0090\u0001J\u0013\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0091\u0001¢\u0006\u0006\b\u0092\u0001\u0010\u0093\u0001J\u001c\u0010\u0096\u0001\u001a\u0005\u0018\u00010\u0095\u00012\u0007\u0010F\u001a\u00030\u0094\u0001¢\u0006\u0006\b\u0096\u0001\u0010\u0097\u0001J\u001c\u0010\u0099\u0001\u001a\u0005\u0018\u00010\u0091\u00012\u0007\u0010F\u001a\u00030\u0098\u0001¢\u0006\u0006\b\u0099\u0001\u0010\u009a\u0001J$\u0010\u009b\u0001\u001a\u0017\u0012\u0004\u0012\u00020\u0005\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0091\u00010\u0006\u0018\u00010\u0004¢\u0006\u0005\b\u009b\u0001\u0010\u0016J\u0019\u0010\u009d\u0001\u001a\u00020\u00052\u0007\u0010F\u001a\u00030\u009c\u0001¢\u0006\u0006\b\u009d\u0001\u0010\u009e\u0001J\u0019\u0010 \u0001\u001a\u00020\u00052\u0007\u0010F\u001a\u00030\u009f\u0001¢\u0006\u0006\b \u0001\u0010¡\u0001J\u001f\u0010£\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050\u00062\u0007\u0010F\u001a\u00030¢\u0001¢\u0006\u0006\b£\u0001\u0010¤\u0001J\u0019\u0010¦\u0001\u001a\u00020\u00052\u0007\u0010F\u001a\u00030¥\u0001¢\u0006\u0006\b¦\u0001\u0010§\u0001J\u0019\u0010©\u0001\u001a\u00020\u00052\u0007\u0010F\u001a\u00030¨\u0001¢\u0006\u0006\b©\u0001\u0010ª\u0001J\u001f\u0010¬\u0001\u001a\b\u0012\u0004\u0012\u00020\u00050\u00062\u0007\u0010F\u001a\u00030«\u0001¢\u0006\u0006\b¬\u0001\u0010\u00ad\u0001J\u001b\u0010¯\u0001\u001a\u0004\u0018\u00010?2\u0007\u0010F\u001a\u00030®\u0001¢\u0006\u0006\b¯\u0001\u0010°\u0001J-\u0010±\u0001\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020?0\u0006\u0018\u00010\u00042\u0007\u0010F\u001a\u00030®\u0001¢\u0006\u0006\b±\u0001\u0010²\u0001J\u001d\u0010´\u0001\u001a\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020?0\u00060³\u0001¢\u0006\u0006\b´\u0001\u0010µ\u0001J\u001a\u0010¸\u0001\u001a\u00020\u00052\b\u0010·\u0001\u001a\u00030¶\u0001¢\u0006\u0006\b¸\u0001\u0010¹\u0001J\u001a\u0010»\u0001\u001a\u00020\u00052\b\u0010·\u0001\u001a\u00030º\u0001¢\u0006\u0006\b»\u0001\u0010¼\u0001J\u001b\u0010¾\u0001\u001a\u0004\u0018\u00010\u00072\u0007\u0010F\u001a\u00030½\u0001¢\u0006\u0006\b¾\u0001\u0010¿\u0001J\u001c\u0010Á\u0001\u001a\u0004\u0018\u00010\b2\b\u0010·\u0001\u001a\u00030À\u0001¢\u0006\u0006\bÁ\u0001\u0010Â\u0001J\u001a\u0010Ä\u0001\u001a\u00020\u00052\b\u0010·\u0001\u001a\u00030Ã\u0001¢\u0006\u0006\bÄ\u0001\u0010Å\u0001R\u0017\u0010Æ\u0001\u001a\u00020\b8\u0002X\u0082T¢\u0006\b\n\u0006\bÆ\u0001\u0010Ç\u0001R!\u0010Í\u0001\u001a\u00030È\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÉ\u0001\u0010Ê\u0001\u001a\u0006\bË\u0001\u0010Ì\u0001R!\u0010Ò\u0001\u001a\u00030Î\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÏ\u0001\u0010Ê\u0001\u001a\u0006\bÐ\u0001\u0010Ñ\u0001R!\u0010×\u0001\u001a\u00030Ó\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÔ\u0001\u0010Ê\u0001\u001a\u0006\bÕ\u0001\u0010Ö\u0001R!\u0010Ü\u0001\u001a\u00030Ø\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÙ\u0001\u0010Ê\u0001\u001a\u0006\bÚ\u0001\u0010Û\u0001R!\u0010á\u0001\u001a\u00030Ý\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÞ\u0001\u0010Ê\u0001\u001a\u0006\bß\u0001\u0010à\u0001R!\u0010æ\u0001\u001a\u00030â\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bã\u0001\u0010Ê\u0001\u001a\u0006\bä\u0001\u0010å\u0001R!\u0010ë\u0001\u001a\u00030ç\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bè\u0001\u0010Ê\u0001\u001a\u0006\bé\u0001\u0010ê\u0001R!\u0010ð\u0001\u001a\u00030ì\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bí\u0001\u0010Ê\u0001\u001a\u0006\bî\u0001\u0010ï\u0001¨\u0006ñ\u0001"}, d2 = {"Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;", "", MethodDecl.initName, "()V", "Lkotlin/Pair;", "", "", "Lcom/transsion/dbdata/beans/media/AudioItem;", "", "manual", "finallySortAudioItems", "(Lkotlin/Pair;Ljava/lang/String;)Lkotlin/Pair;", "(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;", "audioItems", "Lzfb;", "processRecentAddedItems", "(Ljava/util/List;)V", "", "combineMVList", "queryAllAudioList", "(Z)Lkotlin/Pair;", "queryAllMVList", "()Lkotlin/Pair;", "queryAllAudioFilteredList", "queryPlayHistory", "playCount", "queryFrequently", "(IZ)Lkotlin/Pair;", "", "keyAsTheName", "Lcom/transsion/dbdata/beans/media/MediaBucket;", "toMediaBuckets", "(Ljava/util/Map;Z)Lkotlin/Pair;", "bucket", "item", "queryAudioItemCover", "(Lcom/transsion/dbdata/beans/media/MediaBucket;Lcom/transsion/dbdata/beans/media/AudioItem;)V", "mediaIds", "handleExclusionCase", "(Ljava/util/List;Z)Ljava/util/List;", "displayName", "handleInclusionCase", "(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;", "getBaseAudioList", "()Ljava/util/List;", "getFullMVList", "ids", "name", "queryAudioItems", "originalIds", "existingItems", "queryMissingMVItems", "(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;", "combineFlag", "needCombineMV", "(Ljava/util/List;Ljava/util/List;Z)Z", "filterNotInIds", "(Ljava/util/List;Ljava/util/List;)Ljava/util/List;", "audio", "mv", "combineResults", "(Lkotlin/Pair;Lkotlin/Pair;)Lkotlin/Pair;", "mediaId", "Lqe6;", "getByMediaId", "(I)Lqe6;", "mediaPath", "getByMediaPath", "(Ljava/lang/String;)Lqe6;", "Lxk8$x;", "action", "querySingle", "(Lxk8$x;)Lcom/transsion/dbdata/beans/media/AudioItem;", "Lxk8$c;", "queryAllMediaList", "(Lxk8$c;)Lkotlin/Pair;", "Lxk8$l;", "queryFilteredMediaList", "(Lxk8$l;)Lkotlin/Pair;", "Lxk8$o;", "queryMediaListByMediaIds", "(Lxk8$o;)Lkotlin/Pair;", "Lxk8$e;", "queryAudioConvertedMediaList", "(Lxk8$e;)Lkotlin/Pair;", "Lxk8$a;", "queryAIList", "(Lxk8$a;)Lkotlin/Pair;", "Lxk8$u;", "queryPlayListMedia", "(Lxk8$u;)Lkotlin/Pair;", "Lxk8$b;", "queryAlbumArtistMediaList", "(Lxk8$b;)Lkotlin/Pair;", "Lxk8$i;", "queryBucketMediaList", "(Lxk8$i;)Lkotlin/Pair;", "Lxk8$p;", "queryParentPathMediaList", "(Lxk8$p;)Lkotlin/Pair;", "Lxk8$r;", "queryTitleMediaList", "(Lxk8$r;)Lkotlin/Pair;", "Lxk8$w;", "search", "(Lxk8$w;)Lkotlin/Pair;", "Lb15$e;", "createPlayList", "(Lb15$e;)I", "Lb15$f;", "addPlayListElement", "(Lb15$f;)I", "Lb15$g;", "addPlayListElements", "(Lb15$g;)Ljava/util/List;", "Lb15$j;", "addAudioMV", "(Lb15$j;)I", "Ld82$g;", "deletePlayList", "(Ld82$g;)I", "Ld82$h;", "deletePlayListElement", "(Ld82$h;)I", "Ld82$i;", "deletePlayListElements", "(Ld82$i;)Ljava/util/List;", "Ld82$m;", "deleteAudioMV", "(Ld82$m;)I", "Ld82$k;", "deleteSystemMediaItem", "(Ld82$k;)I", "Ld82$l;", "deleteSystemMediaItems", "(Ld82$l;)Ljava/util/List;", "Lngb$d;", "updatePlayListName", "(Lngb$d;)I", "Lngb$e;", "updateSystemMediaItemName", "(Lngb$e;)I", "Lngb$a;", "updatePlayRecord", "(Lngb$a;)I", "Lcom/transsion/dbdata/database/PlayListFolderItem;", "queryFavoritePlayListItem", "()Lcom/transsion/dbdata/database/PlayListFolderItem;", "Lxk8$t;", "Lcom/transsion/dbdata/database/PlayListMediaItem;", "queryPlayMediaListItem", "(Lxk8$t;)Lcom/transsion/dbdata/database/PlayListMediaItem;", "Lxk8$s;", "queryPlayListItem", "(Lxk8$s;)Lcom/transsion/dbdata/database/PlayListFolderItem;", "queryAllPlayList", "Ld82$e;", "deletePlayHistoryElement", "(Ld82$e;)I", "Ld82$c;", "deletePlayFrequentlyElement", "(Ld82$c;)I", "Ld82$f;", "deletePlayHistoryElements", "(Ld82$f;)Ljava/util/List;", "Lb15$d;", "smartUpdatePlayCount", "(Lb15$d;)I", "Lngb$b;", "upsertMediaDataMissingSingle", "(Lngb$b;)I", "Lngb$c;", "upsertMediaDataMissingMultiple", "(Lngb$c;)Ljava/util/List;", "Lxk8$n;", "getByMediaIdOrPath", "(Lxk8$n;)Lqe6;", "getAllMissingData", "(Lxk8$n;)Lkotlin/Pair;", "Landroidx/lifecycle/LiveData;", "observeAllMissingData", "()Landroidx/lifecycle/LiveData;", "Ld82$a;", "input", "deleteAudioConvertedElement", "(Ld82$a;)I", "Lb15$a;", "addAudioConvertedElement", "(Lb15$a;)I", "Lxk8$m;", "querySingleMV", "(Lxk8$m;)Lcom/transsion/dbdata/beans/media/AudioItem;", "Lxk8$f;", "queryLyricOffset", "(Lxk8$f;)Ljava/lang/String;", "Lb15$b;", "insertLyricOffset", "(Lb15$b;)I", AbstractID3v1Tag.TAG, "Ljava/lang/String;", "Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;", "mAudioQueryRepository$delegate", "Lyi5;", "getMAudioQueryRepository", "()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;", "mAudioQueryRepository", "Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;", "mAudioMVRepository$delegate", "getMAudioMVRepository", "()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;", "mAudioMVRepository", "Lcom/transsion/dbdata/source/data/repository/PlayListRepository;", "mPlayListRepository$delegate", "getMPlayListRepository", "()Lcom/transsion/dbdata/source/data/repository/PlayListRepository;", "mPlayListRepository", "Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;", "mVideoRecordRepository$delegate", "getMVideoRecordRepository", "()Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;", "mVideoRecordRepository", "Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;", "mAudioPlayRecordRepository$delegate", "getMAudioPlayRecordRepository", "()Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;", "mAudioPlayRecordRepository", "Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;", "mMediaDataMissingRepository$delegate", "getMMediaDataMissingRepository", "()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;", "mMediaDataMissingRepository", "Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;", "mMediaConvertRepository$delegate", "getMMediaConvertRepository", "()Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;", "mMediaConvertRepository", "Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;", "mUserBehaviorRepository$delegate", "getMUserBehaviorRepository", "()Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;", "mUserBehaviorRepository", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AudioRepositoryDelegate {
    private static final String TAG = "AudioRepositoryDelegate";
    public static final AudioRepositoryDelegate INSTANCE = new AudioRepositoryDelegate();

    private static final yi5 mAudioQueryRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return AudioRepositoryDelegate.mAudioQueryRepository_delegate$lambda$0();
        }
    });

    private static final yi5 mAudioMVRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return AudioRepositoryDelegate.mAudioMVRepository_delegate$lambda$1();
        }
    });

    private static final yi5 mPlayListRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return AudioRepositoryDelegate.mPlayListRepository_delegate$lambda$2();
        }
    });

    private static final yi5 mVideoRecordRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return AudioRepositoryDelegate.mVideoRecordRepository_delegate$lambda$3();
        }
    });

    private static final yi5 mAudioPlayRecordRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return AudioRepositoryDelegate.mAudioPlayRecordRepository_delegate$lambda$4();
        }
    });

    private static final yi5 mMediaDataMissingRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return AudioRepositoryDelegate.mMediaDataMissingRepository_delegate$lambda$5();
        }
    });

    private static final yi5 mMediaConvertRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return AudioRepositoryDelegate.mMediaConvertRepository_delegate$lambda$6();
        }
    });

    private static final yi5 mUserBehaviorRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return AudioRepositoryDelegate.mUserBehaviorRepository_delegate$lambda$7();
        }
    });

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lnk1;", "Lkotlin/Pair;", "", "", "Lcom/transsion/dbdata/beans/media/AudioItem;", "<anonymous>", "(Lnk1;)Lkotlin/Pair;"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.dbdata.source.data.repository.delegate.AudioRepositoryDelegate$queryAllAudioList$1", f = "AudioRepositoryDelegate.kt", l = {196, 198}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        final boolean $combineMVList;
        private Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(boolean z, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.$combineMVList = z;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$combineMVList, wh1Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super Pair<Integer, ? extends List<? extends AudioItem>>> wh1Var) {
            return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            d72 d72VarB;
            Pair pairA;
            Pair pair;
            Object objF = z45.f();
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    d72VarB = (d72) this.L$0;
                    c.b(obj);
                } else {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    pair = (Pair) this.L$0;
                    c.b(obj);
                }
                Pair pair2 = (Pair) obj;
                pairA = abb.a(mk0.b(((Number) pair.getFirst()).intValue() + ((Number) pair2.getFirst()).intValue()), i81.J0((Collection) pair.getSecond(), (Iterable) pair2.getSecond()));
                AudioRepositoryDelegate.INSTANCE.processRecentAddedItems((List) pairA.getSecond());
                return pairA;
            }
            c.b(obj);
            nk1 nk1Var = (nk1) this.L$0;
            d72 d72VarB2 = el0.b(nk1Var, mc2.b(), null, new AudioRepositoryDelegate$queryAllAudioList$1$audioDeferred$1(null), 2, null);
            d72VarB = this.$combineMVList ? el0.b(nk1Var, mc2.b(), null, new AudioRepositoryDelegate$queryAllAudioList$1$mvDeferred$1(null), 2, null) : null;
            this.L$0 = d72VarB;
            this.label = 1;
            obj = d72VarB2.o(this);
            if (obj == objF) {
                return objF;
            }
            pairA = (Pair) obj;
            if (d72VarB != null) {
                this.L$0 = pairA;
                this.label = 2;
                Object objO = d72VarB.o(this);
                if (objO == objF) {
                    return objF;
                }
                obj = objO;
                pair = pairA;
                Pair pair3 = (Pair) obj;
                pairA = abb.a(mk0.b(((Number) pair.getFirst()).intValue() + ((Number) pair3.getFirst()).intValue()), i81.J0((Collection) pair.getSecond(), (Iterable) pair3.getSecond()));
            }
            AudioRepositoryDelegate.INSTANCE.processRecentAddedItems((List) pairA.getSecond());
            return pairA;
        }
    }

    private AudioRepositoryDelegate() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Pair<Integer, List<AudioItem>> combineResults(Pair<Integer, ? extends List<? extends AudioItem>> audio, Pair<Integer, ? extends List<? extends AudioItem>> mv) {
        if (audio == 0 || mv == 0) {
            return audio == 0 ? mv : audio;
        }
        return abb.a(Integer.valueOf(((Number) audio.getFirst()).intValue() + ((Number) mv.getFirst()).intValue()), i81.J0((Collection) audio.getSecond(), (Iterable) mv.getSecond()));
    }

    private final List<AudioItem> filterNotInIds(List<? extends AudioItem> list, List<Integer> list2) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!i81.g1(list2).contains(Integer.valueOf(((AudioItem) obj).id))) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final Pair<Integer, List<AudioItem>> finallySortAudioItems(Pair<Integer, ? extends List<? extends AudioItem>> pair, String str) {
        return Pair.copy$default(pair, null, finallySortAudioItems(pair.getSecond(), str), 1, null);
    }

    public static Pair finallySortAudioItems$default(AudioRepositoryDelegate audioRepositoryDelegate, Pair pair, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        return audioRepositoryDelegate.finallySortAudioItems((Pair<Integer, ? extends List<? extends AudioItem>>) pair, str);
    }

    private final List<AudioItem> getBaseAudioList() {
        return (List) AudioFilterKtxKt.filterAudio$default(SystemAudioQueryRepository.queryAll$default(getMAudioQueryRepository(), null, 1, null), false, false, false, 6, null).getSecond();
    }

    private final qe6 getByMediaId(int mediaId) {
        MediaDataMissingItem byMediaId = getMMediaDataMissingRepository().getByMediaId(mediaId);
        if (byMediaId != null) {
            return qe6.m.a(byMediaId);
        }
        return null;
    }

    private final qe6 getByMediaPath(String mediaPath) {
        MediaDataMissingItem byMediaPath = getMMediaDataMissingRepository().getByMediaPath(mediaPath);
        if (byMediaPath != null) {
            return qe6.m.a(byMediaPath);
        }
        return null;
    }

    private final List<AudioItem> getFullMVList() {
        return (List) AudioFilterKtxKt.filterAudio$default(getMAudioMVRepository().queryAllMVList(false), false, false, false, 6, null).getSecond();
    }

    public final AudioMVRepository getMAudioMVRepository() {
        return (AudioMVRepository) mAudioMVRepository.getValue();
    }

    private final AudioPlayHistoryRepository getMAudioPlayRecordRepository() {
        return (AudioPlayHistoryRepository) mAudioPlayRecordRepository.getValue();
    }

    public final SystemAudioQueryRepository getMAudioQueryRepository() {
        return (SystemAudioQueryRepository) mAudioQueryRepository.getValue();
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

    private final UserBehaviorRepository getMUserBehaviorRepository() {
        return (UserBehaviorRepository) mUserBehaviorRepository.getValue();
    }

    private final VideoPlayHistoryRepository getMVideoRecordRepository() {
        return (VideoPlayHistoryRepository) mVideoRecordRepository.getValue();
    }

    private final List<AudioItem> handleExclusionCase(List<Integer> mediaIds, boolean combineMVList) {
        List<AudioItem> baseAudioList = getBaseAudioList();
        if (combineMVList) {
            baseAudioList = i81.J0(baseAudioList, getFullMVList());
        }
        return filterNotInIds(baseAudioList, mediaIds);
    }

    private final List<AudioItem> handleInclusionCase(List<Integer> mediaIds, String displayName, boolean combineMVList) {
        List<AudioItem> listQueryAudioItems = queryAudioItems(mediaIds, displayName);
        return needCombineMV(listQueryAudioItems, mediaIds, combineMVList) ? i81.J0(listQueryAudioItems, queryMissingMVItems(mediaIds, listQueryAudioItems, displayName)) : listQueryAudioItems;
    }

    public static final AudioMVRepository mAudioMVRepository_delegate$lambda$1() {
        return AudioMVRepository.INSTANCE.getInstance();
    }

    public static final AudioPlayHistoryRepository mAudioPlayRecordRepository_delegate$lambda$4() {
        AudioRepositoryDelegate audioRepositoryDelegate = INSTANCE;
        return new AudioPlayHistoryRepository(audioRepositoryDelegate.getMAudioQueryRepository(), audioRepositoryDelegate.getMAudioMVRepository());
    }

    public static final SystemAudioQueryRepository mAudioQueryRepository_delegate$lambda$0() {
        return new SystemAudioQueryRepository();
    }

    public static final MediaConvertRepository mMediaConvertRepository_delegate$lambda$6() {
        return MediaConvertRepository.INSTANCE.getInstance();
    }

    public static final MediaDataMissingRepository mMediaDataMissingRepository_delegate$lambda$5() {
        return new MediaDataMissingRepository();
    }

    public static final PlayListRepository mPlayListRepository_delegate$lambda$2() {
        return new PlayListRepository();
    }

    public static final UserBehaviorRepository mUserBehaviorRepository_delegate$lambda$7() {
        AudioRepositoryDelegate audioRepositoryDelegate = INSTANCE;
        return new UserBehaviorRepository(audioRepositoryDelegate.getMPlayListRepository(), audioRepositoryDelegate.getMVideoRecordRepository(), audioRepositoryDelegate.getMAudioPlayRecordRepository());
    }

    public static final VideoPlayHistoryRepository mVideoRecordRepository_delegate$lambda$3() {
        return new VideoPlayHistoryRepository();
    }

    private final boolean needCombineMV(List<? extends AudioItem> audioItems, List<Integer> originalIds, boolean combineFlag) {
        return combineFlag && audioItems.size() < originalIds.size();
    }

    public static final zfb observeAllMissingData$lambda$53(MediatorLiveData mediatorLiveData, List list) {
        y45.g(list);
        List list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(qe6.m.a((MediaDataMissingItem) it.next()));
        }
        mediatorLiveData.setValue(arrayList);
        return zfb.a;
    }

    public final void processRecentAddedItems(List<? extends AudioItem> audioItems) {
        List<Integer> listC0;
        final long jCurrentTimeMillis = (System.currentTimeMillis() / ((long) 1000)) - ((long) 604800);
        MediaCombineCacheManager companion = MediaCombineCacheManager.INSTANCE.getInstance();
        if (audioItems.size() < 500) {
            List listD = x71.d(audioItems.size());
            for (AudioItem audioItem : audioItems) {
                if (audioItem.dateModified > jCurrentTimeMillis) {
                    listD.add(Integer.valueOf(audioItem.id));
                }
            }
            listC0 = x71.a(listD);
        } else {
            listC0 = SequencesKt___SequencesKt.c0(SequencesKt___SequencesKt.R(SequencesKt___SequencesKt.F(i81.b0(audioItems), new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(AudioRepositoryDelegate.processRecentAddedItems$lambda$11(jCurrentTimeMillis, (AudioItem) obj));
                }
            }), new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return Integer.valueOf(AudioRepositoryDelegate.processRecentAddedItems$lambda$12((AudioItem) obj));
                }
            }));
        }
        companion.updateScanRecentAdd(listC0, false);
    }

    public static final boolean processRecentAddedItems$lambda$11(long j, AudioItem audioItem) {
        y45.j(audioItem, "it");
        return audioItem.dateModified > j;
    }

    public static final int processRecentAddedItems$lambda$12(AudioItem audioItem) {
        y45.j(audioItem, "it");
        return audioItem.id;
    }

    public final Pair<Integer, List<AudioItem>> queryAllAudioFilteredList() {
        Pair pairFilterAudio$default = AudioFilterKtxKt.filterAudio$default(SystemAudioQueryRepository.queryAll$default(getMAudioQueryRepository(), null, 1, null), true, false, false, 6, null);
        Pair pairFilterMVAudio$default = AudioFilterKtxKt.filterMVAudio$default(getMAudioMVRepository().queryAllMVList(false), true, false, 2, null);
        int iIntValue = ((Number) pairFilterAudio$default.getFirst()).intValue() + ((Number) pairFilterMVAudio$default.getFirst()).intValue();
        List listJ0 = i81.J0((Collection) pairFilterAudio$default.getSecond(), (Iterable) pairFilterMVAudio$default.getSecond());
        AudioFilterKtxKt.addFilterLabel(listJ0);
        return abb.a(Integer.valueOf(iIntValue), listJ0);
    }

    public final Pair<Integer, List<AudioItem>> queryAllAudioList(boolean combineMVList) {
        return (Pair) dl0.b(null, new AnonymousClass1(combineMVList, null), 1, null);
    }

    public final Pair<Integer, List<AudioItem>> queryAllMVList() {
        return AudioFilterKtxKt.filterMVAudio$default(getMAudioMVRepository().queryAllMVList(false), false, false, 3, null);
    }

    private final void queryAudioItemCover(MediaBucket bucket, AudioItem item) {
        String str;
        AudioAlbum audioAlbum = AudioRoomDatabase.f(Utils.a()).a().getAudioAlbum(item.id);
        boolean z = (audioAlbum != null ? audioAlbum.imgPath : null) != null && new File(audioAlbum.imgPath).exists();
        bucket.isCustomCover = z;
        if (z) {
            y45.g(audioAlbum);
            str = audioAlbum.imgPath;
        } else {
            str = item.data;
        }
        bucket.setUri(Uri.parse(str));
    }

    private final List<AudioItem> queryAudioItems(List<Integer> ids, String name) {
        return getMAudioQueryRepository().queryBatchByIdsAndName(ids, name);
    }

    public final Pair<Integer, List<AudioItem>> queryFrequently(int playCount, boolean combineMVList) {
        return abb.a(0, getMAudioPlayRecordRepository().queryFrequently(playCount, combineMVList));
    }

    private final List<AudioItem> queryMissingMVItems(List<Integer> originalIds, List<? extends AudioItem> existingItems, String displayName) {
        List<? extends AudioItem> list = existingItems;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((AudioItem) it.next()).id));
        }
        Set setG1 = i81.g1(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : originalIds) {
            if (!setG1.contains(Integer.valueOf(((Number) obj).intValue()))) {
                arrayList2.add(obj);
            }
        }
        return (List) AudioFilterKtxKt.filterAudio$default(getMAudioMVRepository().queryMVList(i81.b1(arrayList2), displayName), false, false, false, 4, null).getSecond();
    }

    public final Pair<Integer, List<AudioItem>> queryPlayHistory(boolean combineMVList) {
        return abb.a(0, getMAudioPlayRecordRepository().queryAll(combineMVList));
    }

    private final Pair<Integer, List<MediaBucket>> toMediaBuckets(Map<String, ? extends List<? extends AudioItem>> map, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, ? extends List<? extends AudioItem>> entry : map.entrySet()) {
            String key = entry.getKey();
            List<? extends AudioItem> value = entry.getValue();
            AudioItem audioItem = (AudioItem) i81.q0(value);
            MediaBucket audioBucket = null;
            if (audioItem != null) {
                int size = value.size();
                if (!z) {
                    key = null;
                }
                audioBucket = MediaBucketExtKt.toAudioBucket(audioItem, size, key);
                INSTANCE.queryAudioItemCover(audioBucket, audioItem);
            }
            if (audioBucket != null) {
                arrayList.add(audioBucket);
            }
        }
        return abb.a(0, arrayList);
    }

    public static Pair toMediaBuckets$default(AudioRepositoryDelegate audioRepositoryDelegate, Map map, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return audioRepositoryDelegate.toMediaBuckets(map, z);
    }

    public final int addAudioConvertedElement(b15.a input) {
        y45.j(input, "input");
        return getMMediaConvertRepository().addConvertedAudioItem(input.b(), input.c(), input.a());
    }

    public final int addAudioMV(b15.j action) {
        y45.j(action, "action");
        boolean zInsertSingleByUser = INSTANCE.getMAudioMVRepository().insertSingleByUser(action.a());
        if (zInsertSingleByUser) {
            return 1;
        }
        if (zInsertSingleByUser) {
            throw new NoWhenBranchMatchedException();
        }
        return -1;
    }

    public final int addPlayListElement(b15.f action) {
        y45.j(action, "action");
        if (action.a()) {
            return -1;
        }
        return getMPlayListRepository().addPlayListElement(action);
    }

    public final List<Integer> addPlayListElements(b15.g action) {
        y45.j(action, "action");
        return (action.a() || action.b().isEmpty()) ? y71.k() : getMPlayListRepository().addPlayListElements(action);
    }

    public final int createPlayList(b15.e action) {
        y45.j(action, "action");
        if (action.a()) {
            return -1;
        }
        return getMPlayListRepository().createPlayList(action.b(), false);
    }

    public final int deleteAudioConvertedElement(d82.a input) {
        y45.j(input, "input");
        return getMMediaConvertRepository().deleteConvertedAudioItem(input.a(), input.b());
    }

    public final int deleteAudioMV(d82.m action) {
        y45.j(action, "action");
        throw null;
    }

    public final int deletePlayFrequentlyElement(d82.c action) {
        y45.j(action, "action");
        return getMAudioPlayRecordRepository().deletePlayFrequentlyElement(action.a(), action.b());
    }

    public final int deletePlayHistoryElement(d82.e action) {
        y45.j(action, "action");
        return getMAudioPlayRecordRepository().deleteByMediaId(action.a(), action.b());
    }

    public final List<Integer> deletePlayHistoryElements(d82.f action) {
        y45.j(action, "action");
        return x71.e(Integer.valueOf(getMAudioPlayRecordRepository().deleteMultiple(action.a())));
    }

    public final int deletePlayList(d82.g action) {
        y45.j(action, "action");
        if (action.a()) {
            return -1;
        }
        return getMPlayListRepository().deletePlayList(action.b());
    }

    public final int deletePlayListElement(d82.h action) {
        y45.j(action, "action");
        if (action.a() || action.b() < 0) {
            return -1;
        }
        return getMPlayListRepository().deletePlayListElement(action);
    }

    public final List<Integer> deletePlayListElements(d82.i action) {
        y45.j(action, "action");
        return (action.a() || action.b().isEmpty()) ? y71.k() : getMPlayListRepository().deletePlayListElements(action);
    }

    public final int deleteSystemMediaItem(d82.k action) {
        y45.j(action, "action");
        return getMUserBehaviorRepository().deleteSystemMediaItem(action);
    }

    public final List<Integer> deleteSystemMediaItems(d82.l action) {
        y45.j(action, "action");
        return getMUserBehaviorRepository().deleteSystemMediaItems(action);
    }

    public final Pair<Integer, List<qe6>> getAllMissingData(xk8.n action) {
        y45.j(action, "action");
        List<MediaDataMissingItem> allMissingData = getMMediaDataMissingRepository().getAllMissingData();
        List<MediaDataMissingItem> list = allMissingData;
        if (list == null || list.isEmpty()) {
            return new Pair<>(0, y71.k());
        }
        List<MediaDataMissingItem> list2 = allMissingData;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(qe6.m.a((MediaDataMissingItem) it.next()));
        }
        return abb.a(Integer.valueOf(arrayList.size()), arrayList);
    }

    public final qe6 getByMediaIdOrPath(xk8.n action) {
        y45.j(action, "action");
        if (action.a() != null) {
            return getByMediaId(action.a().intValue());
        }
        if (action.b() != null) {
            return getByMediaPath(action.b());
        }
        return null;
    }

    public final int insertLyricOffset(b15.b input) {
        y45.j(input, "input");
        try {
            av5 av5VarC = AudioRoomDatabase.f(se.a()).c();
            LyricData lyricData = new LyricData();
            lyricData.media_id = input.a();
            lyricData._data = input.c();
            lyricData.offset = input.b();
            av5VarC.insert(lyricData);
            return 1;
        } catch (Exception unused) {
            return -1;
        }
    }

    public final LiveData<List<qe6>> observeAllMissingData() {
        final MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(getMMediaDataMissingRepository().observeAllMissingData(), new AudioRepositoryDelegate$sam$androidx_lifecycle_Observer$0(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return AudioRepositoryDelegate.observeAllMissingData$lambda$53(mediatorLiveData, (List) obj);
            }
        }));
        return mediatorLiveData;
    }

    public final Pair<Integer, List<AudioItem>> queryAIList(xk8.a action) {
        y45.j(action, "action");
        String strA = action.a();
        String strB = action.b();
        String strC = action.c();
        int iD = action.d();
        List<AudioItem> listQueryAIAudioByMultiConditions = getMAudioQueryRepository().queryAIAudioByMultiConditions(strA, strB, strC, iD);
        return iD == 22 ? finallySortAudioItems$default(this, AudioFilterKtxKt.filterAudio$default(listQueryAIAudioByMultiConditions, false, false, false, 6, null), (String) null, 1, (Object) null) : abb.a(0, finallySortAudioItems$default(this, listQueryAIAudioByMultiConditions, (String) null, 1, (Object) null));
    }

    public final Pair<Integer, List<AudioItem>> queryAlbumArtistMediaList(xk8.b action) {
        y45.j(action, "action");
        String strA = action.a();
        String strB = action.b();
        List<AudioItem> listQueryBatchByAlbumArtist = getMAudioQueryRepository().queryBatchByAlbumArtist(strA, strB);
        Pair<Integer, List<AudioItem>> pairFilterAudio$default = listQueryBatchByAlbumArtist != null ? AudioFilterKtxKt.filterAudio$default(listQueryBatchByAlbumArtist, false, false, false, 7, null) : null;
        if ((action.c() ? action : null) != null) {
            AudioRepositoryDelegate audioRepositoryDelegate = INSTANCE;
            List<AudioItem> listQueryAlbumArtistMVList = audioRepositoryDelegate.getMAudioMVRepository().queryAlbumArtistMVList(strA, strB);
            Pair<Integer, List<AudioItem>> pairCombineResults = audioRepositoryDelegate.combineResults(pairFilterAudio$default, listQueryAlbumArtistMVList != null ? AudioFilterKtxKt.filterMVAudio$default(listQueryAlbumArtistMVList, false, false, 3, null) : null);
            if (pairCombineResults != null) {
                pairFilterAudio$default = pairCombineResults;
            }
        }
        if (pairFilterAudio$default != null) {
            return finallySortAudioItems(pairFilterAudio$default, action.d());
        }
        return null;
    }

    public final Pair<Integer, List<AudioItem>> queryAllMediaList(xk8.c action) {
        Pair<Integer, List<AudioItem>> pairFinallySortAudioItems;
        y45.j(action, "action");
        switch (action.e()) {
            case 517:
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                AudioRepositoryDelegate audioRepositoryDelegate = INSTANCE;
                pairFinallySortAudioItems = audioRepositoryDelegate.finallySortAudioItems((Pair<Integer, ? extends List<? extends AudioItem>>) audioRepositoryDelegate.queryAllAudioList(action.b()), action.d());
                vmb.e(TAG, "The queryAllAudioList function takes " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + " ms");
                break;
            case 518:
                long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                AudioRepositoryDelegate audioRepositoryDelegate2 = INSTANCE;
                Pair<Integer, List<AudioItem>> pairFinallySortAudioItems$default = finallySortAudioItems$default(audioRepositoryDelegate2, audioRepositoryDelegate2.queryAllMVList(), (String) null, 1, (Object) null);
                vmb.e(TAG, "The queryAllMVList function takes " + (SystemClock.elapsedRealtime() - jElapsedRealtime2) + " ms");
                return pairFinallySortAudioItems$default;
            case 519:
                long jElapsedRealtime3 = SystemClock.elapsedRealtime();
                AudioRepositoryDelegate audioRepositoryDelegate3 = INSTANCE;
                Pair<Integer, List<AudioItem>> pairFinallySortAudioItems$default2 = finallySortAudioItems$default(audioRepositoryDelegate3, audioRepositoryDelegate3.queryAllAudioFilteredList(), (String) null, 1, (Object) null);
                vmb.e(TAG, "The queryAllAudioFilteredList function takes " + (SystemClock.elapsedRealtime() - jElapsedRealtime3) + " ms");
                return pairFinallySortAudioItems$default2;
            case 520:
                long jElapsedRealtime4 = SystemClock.elapsedRealtime();
                pairFinallySortAudioItems = INSTANCE.queryPlayHistory(action.b());
                vmb.e(TAG, "The queryPlayHistory function takes " + (SystemClock.elapsedRealtime() - jElapsedRealtime4) + " ms");
                break;
            case 521:
                long jElapsedRealtime5 = SystemClock.elapsedRealtime();
                pairFinallySortAudioItems = INSTANCE.queryFrequently(action.f(), action.b());
                vmb.e(TAG, "The queryFrequently function takes " + (SystemClock.elapsedRealtime() - jElapsedRealtime5) + " ms");
                break;
            default:
                return null;
        }
        return pairFinallySortAudioItems;
    }

    public final Pair<Integer, List<PlayListFolderItem>> queryAllPlayList() {
        List<AudioItem> audioPlayListElement;
        String str;
        List<AudioItem> listJ0 = i81.J0(getMAudioQueryRepository().queryRecent(), getMAudioMVRepository().queryRecentMVList());
        MediaCombineCacheManager companion = MediaCombineCacheManager.INSTANCE.getInstance();
        List<AudioItem> list = listJ0;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((AudioItem) it.next()).id));
        }
        companion.updateScanRecentAdd(arrayList, false);
        ArrayList arrayList2 = new ArrayList();
        List playListFolderSet$default = PlayListRepository.getPlayListFolderSet$default(getMPlayListRepository(), false, false, false, 6, null);
        int i = 0;
        for (Object obj : playListFolderSet$default) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            PlayListFolderItem playListFolderItem = (PlayListFolderItem) obj;
            playListFolderItem.setListFlag(i != 0 ? i != 1 ? 0 : 33 : 41);
            Uri uri = null;
            if (i == 0) {
                playListFolderItem.setCount(listJ0.size());
                audioPlayListElement = listJ0;
            } else {
                audioPlayListElement = INSTANCE.getMPlayListRepository().getAudioPlayListElement(playListFolderItem.getId(), null, true);
            }
            AudioItem audioItem = (AudioItem) i81.q0(audioPlayListElement);
            if (audioItem != null) {
                AudioAlbum audioAlbum = AudioRoomDatabase.f(se.a()).a().getAudioAlbum(audioItem.id);
                if (audioAlbum != null && (str = audioAlbum.imgPath) != null) {
                    uri = Uri.parse(str);
                }
                if (uri != null) {
                    playListFolderItem.setCustomCover(true);
                    playListFolderItem.setUriType(1);
                }
                if (uri == null) {
                    uri = Uri.parse(audioItem.data);
                }
            }
            playListFolderItem.setUri(uri);
            i = i2;
        }
        arrayList2.addAll(playListFolderSet$default);
        return new Pair<>(0, arrayList2);
    }

    public final Pair<Integer, List<AudioItem>> queryAudioConvertedMediaList(xk8.e action) {
        y45.j(action, "action");
        return getMMediaConvertRepository().queryConvertedAudioList(action.a());
    }

    public final Pair<Integer, List<AudioItem>> queryBucketMediaList(xk8.i action) {
        Pair pairCombineResults;
        y45.j(action, "action");
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Long lA = action.a();
        String strE = action.e();
        AudioRepositoryDelegate audioRepositoryDelegate = INSTANCE;
        List<AudioItem> listQueryBatchByBucket = audioRepositoryDelegate.getMAudioQueryRepository().queryBatchByBucket(lA, strE, !action.c());
        List<AudioItem> listQueryBucketMVList = action.b() ? audioRepositoryDelegate.getMAudioMVRepository().queryBucketMVList(lA, strE) : null;
        if (action.c()) {
            pairCombineResults = audioRepositoryDelegate.combineResults(listQueryBatchByBucket != null ? AudioFilterKtxKt.manuallyFilterAudio(listQueryBatchByBucket) : null, (Pair<Integer, ? extends List<? extends AudioItem>>) (listQueryBucketMVList != null ? AudioFilterKtxKt.filterMVAudio$default(listQueryBucketMVList, false, false, 3, null) : null));
        } else {
            pairCombineResults = audioRepositoryDelegate.combineResults((Pair<Integer, ? extends List<? extends AudioItem>>) (listQueryBatchByBucket != null ? AudioFilterKtxKt.filterAudio$default(listQueryBatchByBucket, false, false, false, 7, null) : null), (Pair<Integer, ? extends List<? extends AudioItem>>) (listQueryBucketMVList != null ? AudioFilterKtxKt.filterMVAudio$default(listQueryBucketMVList, false, false, 3, null) : null));
        }
        Pair<Integer, List<AudioItem>> pairFinallySortAudioItems = pairCombineResults != null ? audioRepositoryDelegate.finallySortAudioItems((Pair<Integer, ? extends List<? extends AudioItem>>) pairCombineResults, action.d()) : null;
        vmb.e(TAG, "The queryBucketMediaList function takes " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + " ms");
        return pairFinallySortAudioItems;
    }

    public final PlayListFolderItem queryFavoritePlayListItem() {
        return getMPlayListRepository().queryFavoriteList(false);
    }

    public final Pair<Integer, List<AudioItem>> queryFilteredMediaList(xk8.l action) {
        y45.j(action, "action");
        int iA = action.a();
        if (iA != 769 && iA != 770) {
            return null;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Pair<Integer, List<AudioItem>> pairFilterAudioByFilterType = AudioFilterKtxKt.filterAudioByFilterType(INSTANCE.getMAudioQueryRepository().queryAll(SortUtil.j(false)), iA);
        vmb.e(TAG, "The queryFilteredMediaList function takes " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + " ms");
        return pairFilterAudioByFilterType;
    }

    public final String queryLyricOffset(xk8.f input) {
        y45.j(input, "input");
        LyricData lyricDataQueryLyricData = AudioRoomDatabase.f(se.a()).c().queryLyricData(input.a());
        if (lyricDataQueryLyricData != null) {
            return ek4.i(lyricDataQueryLyricData);
        }
        return null;
    }

    public final Pair<Integer, List<AudioItem>> queryMediaListByMediaIds(xk8.o action) {
        y45.j(action, "action");
        List listC = action.c();
        String strB = action.b();
        if (listC.isEmpty()) {
            return null;
        }
        boolean zA = action.a();
        return abb.a(0, finallySortAudioItems$default(INSTANCE, action.d() ? handleExclusionCase(listC, zA) : handleInclusionCase(listC, strB, zA), (String) null, 1, (Object) null));
    }

    public final Pair<Integer, List<AudioItem>> queryParentPathMediaList(xk8.p action) {
        y45.j(action, "action");
        String strB = action.b();
        List<AudioItem> listQueryBatchByParentPath = getMAudioQueryRepository().queryBatchByParentPath(strB);
        Pair<Integer, List<AudioItem>> pairFilterAudio$default = listQueryBatchByParentPath != null ? AudioFilterKtxKt.filterAudio$default(listQueryBatchByParentPath, false, false, false, 7, null) : null;
        if (action.a()) {
            List<AudioItem> listQueryParentPathMVList = getMAudioMVRepository().queryParentPathMVList(strB);
            pairFilterAudio$default = combineResults(pairFilterAudio$default, listQueryParentPathMVList != null ? AudioFilterKtxKt.filterMVAudio$default(listQueryParentPathMVList, false, false, 3, null) : null);
        }
        if (pairFilterAudio$default != null) {
            return finallySortAudioItems$default(this, pairFilterAudio$default, (String) null, 1, (Object) null);
        }
        return null;
    }

    public final PlayListFolderItem queryPlayListItem(xk8.s action) {
        y45.j(action, "action");
        return null;
    }

    public final Pair<Integer, List<AudioItem>> queryPlayListMedia(xk8.u action) {
        y45.j(action, "action");
        if (action.e()) {
            Pair<Integer, List<AudioItem>> pairFilterAudio$default = AudioFilterKtxKt.filterAudio$default(getMAudioQueryRepository().queryRecent(), false, false, false, 7, null);
            if (action.a()) {
                pairFilterAudio$default = combineResults(pairFilterAudio$default, AudioFilterKtxKt.filterMVAudio$default(getMAudioMVRepository().queryRecentMVList(), false, false, 3, null));
            }
            if (pairFilterAudio$default != null) {
                return finallySortAudioItems(pairFilterAudio$default, action.c());
            }
            return null;
        }
        Long lD = action.d();
        if (lD == null || lD.longValue() < 0) {
            return null;
        }
        List<AudioItem> listFinallySortAudioItems = finallySortAudioItems(getMPlayListRepository().getAudioPlayListElement(lD.longValue(), action.b(), action.a()), action.c());
        return abb.a(Integer.valueOf(listFinallySortAudioItems.size()), listFinallySortAudioItems);
    }

    public final PlayListMediaItem queryPlayMediaListItem(xk8.t action) {
        y45.j(action, "action");
        return getMPlayListRepository().getAudioPlayMediaListElement(action.b(), action.a());
    }

    public final AudioItem querySingle(xk8.x action) {
        y45.j(action, "action");
        AudioItem audioItemQuerySingle = getMAudioQueryRepository().querySingle(action);
        return audioItemQuerySingle == null ? getMAudioMVRepository().querySingleMV(action) : audioItemQuerySingle;
    }

    public final AudioItem querySingleMV(xk8.m action) {
        y45.j(action, "action");
        return getMAudioMVRepository().querySingleMVFromCache(action);
    }

    public final Pair<Integer, List<AudioItem>> queryTitleMediaList(xk8.r action) {
        y45.j(action, "action");
        throw null;
    }

    public final Pair<Integer, List<AudioItem>> search(xk8.w action) {
        y45.j(action, "action");
        String strB = action.b();
        if (strB == null || strB.length() == 0) {
            return null;
        }
        List<AudioItem> audioItems = MediaDataExtKt.toAudioItems(getMMediaDataMissingRepository().getAllByMediaType(1));
        Pair pairFilterAudio$default = AudioFilterKtxKt.filterAudio$default(getMAudioQueryRepository().search(strB), false, false, false, 7, null);
        if (action.a()) {
            Pair pairFilterMVAudio$default = AudioFilterKtxKt.filterMVAudio$default(getMAudioMVRepository().searchMVList(strB), false, false, 3, null);
            pairFilterAudio$default = abb.a(Integer.valueOf(((Number) pairFilterAudio$default.getFirst()).intValue() + ((Number) pairFilterMVAudio$default.getFirst()).intValue()), i81.J0((Collection) pairFilterAudio$default.getSecond(), (Iterable) pairFilterMVAudio$default.getSecond()));
        }
        List list = (List) pairFilterAudio$default.getSecond();
        List<AudioItem> list2 = audioItems;
        if (!list2.isEmpty() && !list.isEmpty()) {
            List list3 = list;
            LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(z71.v(list3, 10)), 16));
            for (Object obj : list3) {
                linkedHashMap.put(((AudioItem) obj).data, obj);
            }
            for (AudioItem audioItem : audioItems) {
                String str = audioItem.artistName;
                if (str == null || str.length() == 0) {
                    AudioItem audioItem2 = (AudioItem) linkedHashMap.get(audioItem.data);
                    String str2 = audioItem2 != null ? audioItem2.artistName : null;
                    if (str2 != null && str2.length() != 0) {
                        audioItem.artistName = str2;
                    }
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = audioItems.iterator();
        while (it.hasNext()) {
            String str3 = ((AudioItem) it.next()).data;
            if (str3 != null) {
                arrayList.add(str3);
            }
        }
        Set setG1 = i81.g1(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : list) {
            if (!setG1.contains(((AudioItem) obj2).data)) {
                arrayList2.add(obj2);
            }
        }
        List listJ0 = i81.J0(list2, arrayList2);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj3 : listJ0) {
            AudioItem audioItem3 = (AudioItem) obj3;
            String str4 = audioItem3.displayName;
            if (str4 != null && str4.length() != 0) {
                String str5 = audioItem3.displayName;
                y45.i(str5, "displayName");
                if (j1a.V(str5, strB, true)) {
                    arrayList3.add(obj3);
                }
            }
        }
        HashSet hashSet = new HashSet();
        ArrayList arrayList4 = new ArrayList();
        for (Object obj4 : arrayList3) {
            if (hashSet.add(((AudioItem) obj4).data)) {
                arrayList4.add(obj4);
            }
        }
        List listT0 = i81.T0(arrayList4, new Comparator() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final int compare(T t, T t2) {
                String str6 = ((AudioItem) t).displayName;
                if (str6 == null) {
                    str6 = "";
                }
                String str7 = ((AudioItem) t2).displayName;
                return a.d(str6, str7 != null ? str7 : "");
            }
        });
        return abb.a(Integer.valueOf(listT0.size()), listT0);
    }

    public final int smartUpdatePlayCount(b15.d action) {
        y45.j(action, "action");
        return getMAudioPlayRecordRepository().smartUpdatePlayCount(action.b(), action.a());
    }

    public final int updatePlayListName(ngb.d action) {
        y45.j(action, "action");
        if (action.a()) {
            return -1;
        }
        return getMPlayListRepository().updatePlayListName(action.b(), action.c());
    }

    public final int updatePlayRecord(ngb.a action) {
        y45.j(action, "action");
        return -1;
    }

    public final int updateSystemMediaItemName(ngb.e action) {
        y45.j(action, "action");
        return 1;
    }

    public final List<Integer> upsertMediaDataMissingMultiple(ngb.c action) {
        y45.j(action, "action");
        getMMediaDataMissingRepository();
        throw null;
    }

    public final int upsertMediaDataMissingSingle(ngb.b action) {
        y45.j(action, "action");
        return getMMediaDataMissingRepository().upsertMediaDataMissingSingle(action.a(), false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final List<AudioItem> combineResults(List<? extends AudioItem> audio, List<? extends AudioItem> mv) {
        if (audio == 0 || mv == 0) {
            return audio == 0 ? mv : audio;
        }
        return i81.J0(audio, mv);
    }

    public static List finallySortAudioItems$default(AudioRepositoryDelegate audioRepositoryDelegate, List list, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        return audioRepositoryDelegate.finallySortAudioItems((List<? extends AudioItem>) list, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final List<AudioItem> finallySortAudioItems(List<? extends AudioItem> list, String str) {
        if (list.isEmpty()) {
            return list;
        }
        if (SortUtil.c() == SortUtil.SortType.MANUAL) {
            ArrayList arrayList = new ArrayList(list);
            if (str != null) {
                t55.n(arrayList, str);
            } else {
                t55.o(arrayList, null, 1, null);
            }
            return arrayList;
        }
        return SortUtil.u(list);
    }
}
