package com.transsion.dbdata.source.data.ktx;

import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.lzy.okgo.model.Progress;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.source.data.ktx.AudioFilterKtxKt;
import com.transsion.dbdata.utils.AudioFilterUtils;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.MediaMetadataRetrieverUtils;
import defpackage.abb;
import defpackage.bx9;
import defpackage.bya;
import defpackage.e74;
import defpackage.ge6;
import defpackage.i81;
import defpackage.mk0;
import defpackage.nt1;
import defpackage.pc9;
import defpackage.pp3;
import defpackage.s74;
import defpackage.sc9;
import defpackage.tc9;
import defpackage.wh1;
import defpackage.y45;
import defpackage.y71;
import defpackage.z45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.c;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;

@Metadata(d1 = {"\u0000d\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aG\u0010\b\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00000\u0006*\b\u0012\u0004\u0012\u00020\u00010\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\t\u001a)\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00000\u0006*\b\u0012\u0004\u0012\u00020\u00010\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a\u0011\u0010\b\u001a\u00020\u0002*\u00020\u0001¢\u0006\u0004\b\b\u0010\f\u001a\u0011\u0010\b\u001a\u00020\u0002*\u00020\r¢\u0006\u0004\b\b\u0010\u000e\u001a\u0011\u0010\u000f\u001a\u00020\u0002*\u00020\u0001¢\u0006\u0004\b\u000f\u0010\f\u001a\u0011\u0010\u0010\u001a\u00020\u0002*\u00020\u0001¢\u0006\u0004\b\u0010\u0010\f\u001a\u0011\u0010\u000f\u001a\u00020\u0002*\u00020\r¢\u0006\u0004\b\u000f\u0010\u000e\u001a\u0011\u0010\u0010\u001a\u00020\u0002*\u00020\r¢\u0006\u0004\b\u0010\u0010\u000e\u001a=\u0010\u0011\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00000\u0006*\b\u0012\u0004\u0012\u00020\u00010\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012\u001a\u0011\u0010\u0011\u001a\u00020\u0002*\u00020\u0001¢\u0006\u0004\b\u0011\u0010\f\u001a\u0011\u0010\u0011\u001a\u00020\u0002*\u00020\r¢\u0006\u0004\b\u0011\u0010\u000e\u001a1\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00000\u0006*\b\u0012\u0004\u0012\u00020\u00010\u00002\u0006\u0010\u0013\u001a\u00020\u0007¢\u0006\u0004\b\u0014\u0010\u0015\u001aY\u0010\u001f\u001a\u00020\u00192\b\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00022\b\u0010\u001c\u001a\u0004\u0018\u00010\u00012\u001c\b\u0002\u0010\u001e\u001a\u0016\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u001dH\u0000¢\u0006\u0004\b\u001f\u0010 \u001a!\u0010!\u001a\u00020\u00192\b\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0018\u001a\u00020\u0007H\u0002¢\u0006\u0004\b!\u0010\"\u001a\u0017\u0010$\u001a\u00020\u00192\u0006\u0010#\u001a\u00020\u0001H\u0002¢\u0006\u0004\b$\u0010%\u001a\u0019\u0010'\u001a\u00020&*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u0000¢\u0006\u0004\b'\u0010(\u001aK\u0010-\u001a\u00020\u00022\b\u0010)\u001a\u0004\u0018\u00010\u00162\b\u0010*\u001a\u0004\u0018\u00010\u00162\u0006\u0010+\u001a\u00020\u00192\u0006\u0010,\u001a\u00020\u00192\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0000¢\u0006\u0004\b-\u0010.\u001a;\u0010-\u001a\u00020\u00022\b\u0010)\u001a\u0004\u0018\u00010\u00162\b\u0010*\u001a\u0004\u0018\u00010\u00162\u0006\u0010+\u001a\u00020\u00192\u0006\u0010,\u001a\u00020\u00192\u0006\u00100\u001a\u00020/H\u0002¢\u0006\u0004\b-\u00101\u001a;\u00103\u001a\u00020\u00022\b\u0010)\u001a\u0004\u0018\u00010\u00162\b\u0010*\u001a\u0004\u0018\u00010\u00162\u0006\u0010+\u001a\u00020\u00192\u0006\u0010,\u001a\u00020\u00192\u0006\u00102\u001a\u00020\u0007H\u0002¢\u0006\u0004\b3\u00104\u001a[\u00108\u001a\u00020\u0002*\u00020\r2\u0006\u00106\u001a\u0002052\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00022\u001c\b\u0004\u00107\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\u00020\u001dH\u0080\bø\u0001\u0000¢\u0006\u0004\b8\u00109\u001a7\u0010;\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00060:*\u00020\r2\u0006\u00106\u001a\u0002052\b\b\u0002\u00100\u001a\u00020/¢\u0006\u0004\b;\u0010<\"\u0014\u0010=\u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b=\u0010>\"2\u0010@\u001a \u0012\u001c\u0012\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020?\u0012\u0004\u0012\u00020\u00160\u00060\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010A\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006B"}, d2 = {"", "Lcom/transsion/dbdata/beans/media/AudioItem;", "", "filtered", "needFilter", "excludeConvertOutFolder", "Lkotlin/Pair;", "", "filterAudio", "(Ljava/util/List;ZZZ)Lkotlin/Pair;", "manuallyFilterAudio", "(Ljava/util/List;)Lkotlin/Pair;", "(Lcom/transsion/dbdata/beans/media/AudioItem;)Z", "Landroid/database/Cursor;", "(Landroid/database/Cursor;)Z", "filterAudioBucket", "filterAudioMVBucket", "filterMVAudio", "(Ljava/util/List;ZZ)Lkotlin/Pair;", "filterType", "filterAudioByFilterType", "(Ljava/util/List;I)Lkotlin/Pair;", "", "path", "mediaId", "", "rawDuration", "isMusicVideo", "mutateTarget", "Lkotlin/Function2;", "metadataLookup", "resolveDurationMsForFilter", "(Ljava/lang/String;IJZLcom/transsion/dbdata/beans/media/AudioItem;Ls74;)J", "lookupMetadataDurationMs", "(Ljava/lang/String;I)J", "audioItem", "resolveDurationForFilter", "(Lcom/transsion/dbdata/beans/media/AudioItem;)J", "Lzfb;", "addFilterLabel", "(Ljava/util/List;)V", Progress.FILE_PATH, PlayAudioData.TAG_PARENT_PATH, PlayAudioData.TAG_SIZE, "duration", "shouldPassAudioFilter", "(Ljava/lang/String;Ljava/lang/String;JJZZZ)Z", "Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;", "params", "(Ljava/lang/String;Ljava/lang/String;JJLcom/transsion/dbdata/source/data/ktx/AudioFilterParams;)Z", "filterFlags", "fastAudioFilter", "(Ljava/lang/String;Ljava/lang/String;JJI)Z", "Landroid/net/Uri;", "dbUri", "result", "filterAndBuildAudioItem", "(Landroid/database/Cursor;Landroid/net/Uri;ZZZLs74;)Z", "Lpc9;", "batchFilterAndBuildAudioItems", "(Landroid/database/Cursor;Landroid/net/Uri;Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;)Lpc9;", AbstractID3v1Tag.TAG, "Ljava/lang/String;", "Lkotlin/Function1;", "filterLabelActions", "Ljava/util/List;", "dbdata_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class AudioFilterKtxKt {
    private static final String TAG = "AudioFilterKtx";
    private static final List<Pair<e74, String>> filterLabelActions = y71.n(new Pair(new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Boolean.valueOf(AudioFilterKtxKt.filterLabelActions$lambda$8((AudioItem) obj));
        }
    }, "filter_size"), new Pair(new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Boolean.valueOf(AudioFilterKtxKt.filterLabelActions$lambda$9((AudioItem) obj));
        }
    }, "filter_duration"), new Pair(new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Boolean.valueOf(AudioFilterKtxKt.filterLabelActions$lambda$10((AudioItem) obj));
        }
    }, "filter_buckets"), new Pair(new e74() {
        @Override
        public final Object invoke(Object obj) {
            return Boolean.valueOf(AudioFilterKtxKt.filterLabelActions$lambda$11((AudioItem) obj));
        }
    }, "filter_manually"));

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00010\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lsc9;", "Lkotlin/Pair;", "", "Lcom/transsion/dbdata/beans/media/AudioItem;", "Lzfb;", "<anonymous>", "(Lsc9;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.dbdata.source.data.ktx.AudioFilterKtxKt$batchFilterAndBuildAudioItems$1", f = "AudioFilterKtx.kt", l = {TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR, 610, 617, 619, 639}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends RestrictedSuspendLambda implements s74 {
        final Uri $dbUri;
        final AudioFilterParams $params;
        final Cursor $this_batchFilterAndBuildAudioItems;
        private Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Cursor cursor, AudioFilterParams audioFilterParams, Uri uri, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.$this_batchFilterAndBuildAudioItems = cursor;
            this.$params = audioFilterParams;
            this.$dbUri = uri;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_batchFilterAndBuildAudioItems, this.$params, this.$dbUri, wh1Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invoke(sc9 sc9Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(sc9Var, wh1Var)).invokeSuspend(zfb.a);
        }

        /* JADX WARN: Code duplicated, block: B:18:0x006d  */
        /* JADX WARN: Code duplicated, block: B:20:0x0078  */
        /* JADX WARN: Code duplicated, block: B:74:0x01b6  */
        /* JADX WARN: Code duplicated, block: B:80:0x01a1 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:85:0x01b5 A[SYNTHETIC] */
        /* JADX WARN: Instruction removed from duplicated block: B:18:0x006d, please report this as an issue */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00ef -> B:16:0x0065). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x0197 -> B:70:0x019a). Please report as a decompilation issue!!! */
        @Override
        public final Object invokeSuspend(Object obj) {
            sc9 sc9Var;
            Map linkedHashMap;
            Pair pairA;
            Pair pairA2;
            long j;
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                sc9Var = (sc9) this.L$0;
                linkedHashMap = new LinkedHashMap();
            } else if (i != 1) {
                if (i == 2) {
                    linkedHashMap = (Map) this.L$1;
                    sc9Var = (sc9) this.L$0;
                    c.b(obj);
                    this.$this_batchFilterAndBuildAudioItems.moveToNext();
                } else if (i == 3 || i == 4) {
                    linkedHashMap = (Map) this.L$1;
                    sc9Var = (sc9) this.L$0;
                    c.b(obj);
                    this.$this_batchFilterAndBuildAudioItems.moveToNext();
                } else {
                    if (i != 5) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    linkedHashMap = (Map) this.L$1;
                    sc9Var = (sc9) this.L$0;
                    c.b(obj);
                }
                this.$this_batchFilterAndBuildAudioItems.moveToNext();
            } else {
                linkedHashMap = (Map) this.L$1;
                sc9Var = (sc9) this.L$0;
                c.b(obj);
                this.$this_batchFilterAndBuildAudioItems.moveToNext();
            }
            while (!this.$this_batchFilterAndBuildAudioItems.isAfterLast()) {
                String stringSafe = CursorExtKt.getStringSafe(this.$this_batchFilterAndBuildAudioItems, 6);
                if (stringSafe != null || stringSafe.length() == 0) {
                    pairA = abb.a(mk0.a(false), null);
                    this.L$0 = sc9Var;
                    this.L$1 = linkedHashMap;
                    this.label = 1;
                    if (sc9Var.b(pairA, this) == objF) {
                        return objF;
                    }
                    this.$this_batchFilterAndBuildAudioItems.moveToNext();
                } else if (ge6.q(stringSafe, false, 2, null)) {
                    if (pp3.A || AudioFilterUtils.r()) {
                        Object objJ = linkedHashMap.get(stringSafe);
                        if (objJ == null) {
                            objJ = ge6.a.j(stringSafe);
                            linkedHashMap.put(stringSafe, objJ);
                        }
                        String str = (String) objJ;
                        Long longSafe = CursorExtKt.getLongSafe(this.$this_batchFilterAndBuildAudioItems, 8);
                        long jLongValue = longSafe != null ? longSafe.longValue() : -1L;
                        Long longSafe2 = CursorExtKt.getLongSafe(this.$this_batchFilterAndBuildAudioItems, 7);
                        long jLongValue2 = longSafe2 != null ? longSafe2.longValue() : -1L;
                        Integer intSafe = CursorExtKt.getIntSafe(this.$this_batchFilterAndBuildAudioItems, 0);
                        long jResolveDurationMsForFilter$default = AudioFilterKtxKt.resolveDurationMsForFilter$default(stringSafe, intSafe != null ? intSafe.intValue() : 0, jLongValue2, false, null, null, 32, null);
                        if (AudioFilterKtxKt.shouldPassAudioFilter(stringSafe, str, jLongValue, jResolveDurationMsForFilter$default, this.$params)) {
                            if (jResolveDurationMsForFilter$default <= 0) {
                                j = jLongValue2 > 0 ? jLongValue2 : -1L;
                            } else {
                                j = jResolveDurationMsForFilter$default;
                            }
                            pairA2 = abb.a(mk0.a(true), MediaDataExtKt.buildAudioItemInternal(this.$this_batchFilterAndBuildAudioItems, this.$dbUri, stringSafe, str, jLongValue, j));
                        } else {
                            pairA2 = abb.a(mk0.a(true), null);
                        }
                        this.L$0 = sc9Var;
                        this.L$1 = linkedHashMap;
                        this.label = 5;
                        if (sc9Var.b(pairA2, this) == objF) {
                            return objF;
                        }
                        this.$this_batchFilterAndBuildAudioItems.moveToNext();
                        while (!this.$this_batchFilterAndBuildAudioItems.isAfterLast()) {
                            String stringSafe2 = CursorExtKt.getStringSafe(this.$this_batchFilterAndBuildAudioItems, 6);
                            if (stringSafe2 != null) {
                            }
                            pairA = abb.a(mk0.a(false), null);
                            this.L$0 = sc9Var;
                            this.L$1 = linkedHashMap;
                            this.label = 1;
                            if (sc9Var.b(pairA, this) == objF) {
                                return objF;
                            }
                            this.$this_batchFilterAndBuildAudioItems.moveToNext();
                        }
                    } else if (this.$params.getFiltered()) {
                        Pair pairA3 = abb.a(mk0.a(true), null);
                        this.L$0 = sc9Var;
                        this.L$1 = linkedHashMap;
                        this.label = 3;
                        if (sc9Var.b(pairA3, this) == objF) {
                            return objF;
                        }
                    } else {
                        Pair pairA4 = abb.a(mk0.a(true), MediaDataExtKt.buildAudioItemInternal$default(this.$this_batchFilterAndBuildAudioItems, this.$dbUri, stringSafe2, null, 0L, 0L, 28, null));
                        this.L$0 = sc9Var;
                        this.L$1 = linkedHashMap;
                        this.label = 4;
                        if (sc9Var.b(pairA4, this) == objF) {
                            return objF;
                        }
                    }
                    this.$this_batchFilterAndBuildAudioItems.moveToNext();
                    while (!this.$this_batchFilterAndBuildAudioItems.isAfterLast()) {
                        String stringSafe3 = CursorExtKt.getStringSafe(this.$this_batchFilterAndBuildAudioItems, 6);
                        if (stringSafe3 != null) {
                        }
                        pairA = abb.a(mk0.a(false), null);
                        this.L$0 = sc9Var;
                        this.L$1 = linkedHashMap;
                        this.label = 1;
                        if (sc9Var.b(pairA, this) == objF) {
                            return objF;
                        }
                        this.$this_batchFilterAndBuildAudioItems.moveToNext();
                    }
                } else {
                    Pair pairA5 = abb.a(mk0.a(false), null);
                    this.L$0 = sc9Var;
                    this.L$1 = linkedHashMap;
                    this.label = 2;
                    if (sc9Var.b(pairA5, this) == objF) {
                        return objF;
                    }
                    this.$this_batchFilterAndBuildAudioItems.moveToNext();
                }
            }
            return zfb.a;
        }
    }

    public static final void addFilterLabel(List<? extends AudioItem> list) {
        y45.j(list, "<this>");
        for (AudioItem audioItem : list) {
            Iterator<T> it = filterLabelActions.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                e74 e74Var = (e74) pair.component1();
                String str = (String) pair.component2();
                if (((Boolean) e74Var.invoke(audioItem)).booleanValue()) {
                    audioItem.addFilteredType(str);
                }
            }
        }
    }

    public static final pc9 batchFilterAndBuildAudioItems(Cursor cursor, Uri uri, AudioFilterParams audioFilterParams) {
        y45.j(cursor, "<this>");
        y45.j(uri, "dbUri");
        y45.j(audioFilterParams, "params");
        return tc9.b(new AnonymousClass1(cursor, audioFilterParams, uri, null));
    }

    public static pc9 batchFilterAndBuildAudioItems$default(Cursor cursor, Uri uri, AudioFilterParams audioFilterParams, int i, Object obj) {
        if ((i & 2) != 0) {
            audioFilterParams = new AudioFilterParams(false, false, false, 7, null);
        }
        return batchFilterAndBuildAudioItems(cursor, uri, audioFilterParams);
    }

    private static final boolean fastAudioFilter(String str, String str2, long j, long j2, int i) {
        boolean z = (i & 1) != 0;
        boolean z2 = (i & 2) != 0;
        boolean z3 = (i & 4) != 0;
        if (z2) {
            if (z != ((AudioFilterUtils.v(str) || (y45.e(str2, BaseConstant.i) && !AudioFilterUtils.w(str))) ? false : AudioFilterUtils.m(j, j2, str2, str))) {
                return false;
            }
        } else {
            if (!z3) {
                return AudioFilterUtils.v(str);
            }
            if (y45.e(str2, BaseConstant.i)) {
                return false;
            }
        }
        return true;
    }

    public static final boolean filterAndBuildAudioItem(Cursor cursor, Uri uri, boolean z, boolean z2, boolean z3, s74 s74Var) {
        y45.j(cursor, "<this>");
        y45.j(uri, "dbUri");
        y45.j(s74Var, "result");
        String stringSafe = CursorExtKt.getStringSafe(cursor, 6);
        if (stringSafe == null || stringSafe.length() == 0) {
            return ((Boolean) s74Var.invoke(Boolean.FALSE, null)).booleanValue();
        }
        if (!pp3.A && !AudioFilterUtils.r()) {
            return z ? ((Boolean) s74Var.invoke(Boolean.TRUE, null)).booleanValue() : ((Boolean) s74Var.invoke(Boolean.TRUE, MediaDataExtKt.buildAudioItemInternal$default(cursor, uri, stringSafe, null, 0L, 0L, 28, null))).booleanValue();
        }
        String strJ = ge6.a.j(stringSafe);
        Long longSafe = CursorExtKt.getLongSafe(cursor, 8);
        long j = -1;
        long jLongValue = longSafe != null ? longSafe.longValue() : -1L;
        Long longSafe2 = CursorExtKt.getLongSafe(cursor, 7);
        long jLongValue2 = longSafe2 != null ? longSafe2.longValue() : -1L;
        Integer intSafe = CursorExtKt.getIntSafe(cursor, 0);
        long jResolveDurationMsForFilter$default = resolveDurationMsForFilter$default(stringSafe, intSafe != null ? intSafe.intValue() : 0, jLongValue2, false, null, null, 32, null);
        if (!shouldPassAudioFilter(stringSafe, strJ, jLongValue, jResolveDurationMsForFilter$default, z, z2, z3)) {
            return ((Boolean) s74Var.invoke(Boolean.TRUE, null)).booleanValue();
        }
        if (jResolveDurationMsForFilter$default > 0) {
            j = jResolveDurationMsForFilter$default;
        } else if (jLongValue2 > 0) {
            j = jLongValue2;
        }
        return ((Boolean) s74Var.invoke(Boolean.TRUE, MediaDataExtKt.buildAudioItemInternal(cursor, uri, stringSafe, strJ, jLongValue, j))).booleanValue();
    }

    public static boolean filterAndBuildAudioItem$default(Cursor cursor, Uri uri, boolean z, boolean z2, boolean z3, s74 s74Var, int i, Object obj) {
        boolean z4 = (i & 2) != 0 ? false : z;
        boolean z5 = (i & 4) != 0 ? true : z2;
        boolean z6 = (i & 8) != 0 ? true : z3;
        y45.j(cursor, "<this>");
        y45.j(uri, "dbUri");
        y45.j(s74Var, "result");
        String stringSafe = CursorExtKt.getStringSafe(cursor, 6);
        if (stringSafe == null || stringSafe.length() == 0) {
            return ((Boolean) s74Var.invoke(Boolean.FALSE, null)).booleanValue();
        }
        if (!pp3.A && !AudioFilterUtils.r()) {
            return z4 ? ((Boolean) s74Var.invoke(Boolean.TRUE, null)).booleanValue() : ((Boolean) s74Var.invoke(Boolean.TRUE, MediaDataExtKt.buildAudioItemInternal$default(cursor, uri, stringSafe, null, 0L, 0L, 28, null))).booleanValue();
        }
        String strJ = ge6.a.j(stringSafe);
        Long longSafe = CursorExtKt.getLongSafe(cursor, 8);
        long jLongValue = longSafe != null ? longSafe.longValue() : -1L;
        Long longSafe2 = CursorExtKt.getLongSafe(cursor, 7);
        long jLongValue2 = longSafe2 != null ? longSafe2.longValue() : -1L;
        Integer intSafe = CursorExtKt.getIntSafe(cursor, 0);
        long jResolveDurationMsForFilter$default = resolveDurationMsForFilter$default(stringSafe, intSafe != null ? intSafe.intValue() : 0, jLongValue2, false, null, null, 32, null);
        if (!shouldPassAudioFilter(stringSafe, strJ, jLongValue, jResolveDurationMsForFilter$default, z4, z5, z6)) {
            return ((Boolean) s74Var.invoke(Boolean.TRUE, null)).booleanValue();
        }
        if (jResolveDurationMsForFilter$default > 0) {
            jLongValue2 = jResolveDurationMsForFilter$default;
        } else if (jLongValue2 <= 0) {
            jLongValue2 = -1;
        }
        return ((Boolean) s74Var.invoke(Boolean.TRUE, MediaDataExtKt.buildAudioItemInternal(cursor, uri, stringSafe, strJ, jLongValue, jLongValue2))).booleanValue();
    }

    public static final Pair<Integer, List<AudioItem>> filterAudio(List<? extends AudioItem> list, final boolean z, final boolean z2, final boolean z3) {
        y45.j(list, "<this>");
        if (list.isEmpty()) {
            return abb.a(0, y71.k());
        }
        if (!pp3.A && !AudioFilterUtils.r()) {
            return z ? abb.a(0, y71.k()) : abb.a(0, i81.b1(list));
        }
        e74 e74Var = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return Boolean.valueOf(AudioFilterKtxKt.filterAudio$lambda$1(z2, z3, z, (AudioItem) obj));
            }
        };
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((Boolean) e74Var.invoke(obj)).booleanValue()) {
                arrayList.add(obj);
            }
        }
        return abb.a(Integer.valueOf(list.size() - arrayList.size()), arrayList);
    }

    public static Pair filterAudio$default(List list, boolean z, boolean z2, boolean z3, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = true;
        }
        if ((i & 4) != 0) {
            z3 = true;
        }
        return filterAudio(list, z, z2, z3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x004c, code lost:
    
        if (r9 == r7) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:?, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
    
        if (defpackage.y45.e(r10.parentPath, com.transsion.utils.BaseConstant.i) == false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean filterAudio$lambda$1(boolean z, boolean z2, boolean z3, AudioItem audioItem) {
        boolean zM;
        y45.j(audioItem, "item");
        if (!z && !z2) {
            return AudioFilterUtils.v(audioItem.data);
        }
        if (z) {
            if ((!y45.e(audioItem.parentPath, BaseConstant.i) || AudioFilterUtils.w(audioItem.data)) && !AudioFilterUtils.v(audioItem.data)) {
                zM = AudioFilterUtils.m(audioItem.size, resolveDurationForFilter(audioItem), audioItem.parentPath, audioItem.data);
            } else {
                zM = false;
            }
        }
    }

    public static final boolean filterAudioBucket(AudioItem audioItem) {
        y45.j(audioItem, "<this>");
        return filterAudio(audioItem);
    }

    public static final Pair<Integer, List<AudioItem>> filterAudioByFilterType(List<? extends AudioItem> list, final int i) {
        y45.j(list, "<this>");
        if (list.isEmpty()) {
            return abb.a(0, y71.k());
        }
        if (!pp3.A && !AudioFilterUtils.r()) {
            return abb.a(0, y71.k());
        }
        e74 e74Var = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return Boolean.valueOf(AudioFilterKtxKt.filterAudioByFilterType$lambda$7(i, (AudioItem) obj));
            }
        };
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((Boolean) e74Var.invoke(obj)).booleanValue()) {
                arrayList.add(obj);
            }
        }
        return abb.a(Integer.valueOf(list.size() - arrayList.size()), arrayList);
    }

    public static final boolean filterAudioByFilterType$lambda$7(int i, AudioItem audioItem) {
        y45.j(audioItem, "item");
        if (AudioFilterUtils.y(audioItem.parentPath) || AudioFilterUtils.v(audioItem.data)) {
            return false;
        }
        if (i == 769) {
            return AudioFilterUtils.q(audioItem.size);
        }
        if (i != 770) {
            return true;
        }
        long jLookupMetadataDurationMs = audioItem.duration;
        if (jLookupMetadataDurationMs <= 0) {
            jLookupMetadataDurationMs = lookupMetadataDurationMs(audioItem.data, audioItem.id);
            if (jLookupMetadataDurationMs > 0) {
                audioItem.duration = jLookupMetadataDurationMs;
            }
        }
        return AudioFilterUtils.n(jLookupMetadataDurationMs);
    }

    public static final boolean filterAudioMVBucket(AudioItem audioItem) {
        y45.j(audioItem, "<this>");
        String str = audioItem.data;
        return str != null && pp3.A && AudioFilterUtils.w(str);
    }

    public static final boolean filterLabelActions$lambda$10(AudioItem audioItem) {
        y45.j(audioItem, "audioItem");
        return AudioFilterUtils.p(audioItem.parentPath);
    }

    public static final boolean filterLabelActions$lambda$11(AudioItem audioItem) {
        y45.j(audioItem, "audioItem");
        return AudioFilterUtils.o(audioItem.data);
    }

    public static final boolean filterLabelActions$lambda$8(AudioItem audioItem) {
        y45.j(audioItem, "audioItem");
        return AudioFilterUtils.q(audioItem.size);
    }

    public static final boolean filterLabelActions$lambda$9(AudioItem audioItem) {
        y45.j(audioItem, "audioItem");
        return AudioFilterUtils.n(resolveDurationForFilter(audioItem));
    }

    public static final Pair<Integer, List<AudioItem>> filterMVAudio(List<? extends AudioItem> list, boolean z, boolean z2) {
        y45.j(list, "<this>");
        if (list.isEmpty()) {
            return abb.a(0, y71.k());
        }
        if (!pp3.A && !AudioFilterUtils.s()) {
            return z ? abb.a(0, y71.k()) : abb.a(0, i81.b1(list));
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            AudioItem audioItem = (AudioItem) obj;
            if (z2) {
                if (z == AudioFilterUtils.m(audioItem.size, resolveDurationForFilter(audioItem), audioItem.parentPath, audioItem.data)) {
                    arrayList.add(obj);
                }
            } else if (!y45.e(audioItem.parentPath, BaseConstant.i)) {
                arrayList.add(obj);
            }
        }
        return abb.a(Integer.valueOf(list.size() - arrayList.size()), arrayList);
    }

    public static Pair filterMVAudio$default(List list, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = true;
        }
        return filterMVAudio(list, z, z2);
    }

    private static final long lookupMetadataDurationMs(String str, int i) {
        if (str == null || str.length() == 0 || !bx9.t()) {
            return 0L;
        }
        try {
            bya.c();
            MediaMetadataRetrieverUtils.a aVarA = MediaMetadataRetrieverUtils.a(str, i);
            if (aVarA.a <= 0) {
                aVarA = null;
            }
            if (aVarA != null) {
                return aVarA.a;
            }
            return 0L;
        } catch (Throwable th) {
            Log.e(TAG, "lookupMetadataDurationMs metadata failed path=" + str + " mediaId=" + i, th);
            return 0L;
        }
    }

    public static final Pair<Integer, List<AudioItem>> manuallyFilterAudio(List<? extends AudioItem> list) {
        y45.j(list, "<this>");
        if (list.isEmpty()) {
            return abb.a(0, y71.k());
        }
        e74 e74Var = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return Boolean.valueOf(AudioFilterKtxKt.manuallyFilterAudio$lambda$2((AudioItem) obj));
            }
        };
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((Boolean) e74Var.invoke(obj)).booleanValue()) {
                arrayList.add(obj);
            }
        }
        return abb.a(Integer.valueOf(list.size() - arrayList.size()), arrayList);
    }

    public static final boolean manuallyFilterAudio$lambda$2(AudioItem audioItem) {
        y45.j(audioItem, "item");
        return !AudioFilterUtils.w(audioItem.data);
    }

    private static final long resolveDurationForFilter(AudioItem audioItem) {
        return resolveDurationMsForFilter$default(audioItem.data, audioItem.id, audioItem.duration, audioItem.isMusicVideo, audioItem, null, 32, null);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x004d  */
    public static final long resolveDurationMsForFilter(String str, int i, long j, boolean z, AudioItem audioItem, s74 s74Var) {
        if (str == null || str.length() == 0) {
            return j;
        }
        if (s74Var == null) {
            s74Var = new s74() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    return Long.valueOf(AudioFilterKtxKt.resolveDurationMsForFilter$lambda$12((String) obj, ((Integer) obj2).intValue()));
                }
            };
        }
        if (j <= 0) {
            long jLongValue = ((Number) s74Var.invoke(str, Integer.valueOf(i))).longValue();
            if (jLongValue > 0 && audioItem != null) {
                audioItem.duration = jLongValue;
            }
            return jLongValue;
        }
        if (z) {
            long jLongValue2 = ((Number) s74Var.invoke(str, Integer.valueOf(i))).longValue();
            long j2 = 1000 * j;
            if (jLongValue2 > 0) {
                if (Math.abs(j2 - jLongValue2) >= Math.abs(j - jLongValue2)) {
                    j2 = j;
                }
            } else if (1 > j || j >= 86401) {
                j2 = j;
            }
            if (j2 != j && audioItem != null) {
                audioItem.duration = j2;
            }
            return j2;
        }
        if (j > 86400) {
            return j;
        }
        long jLongValue3 = ((Number) s74Var.invoke(str, Integer.valueOf(i))).longValue();
        if (jLongValue3 <= 0) {
            return j;
        }
        long j3 = 1000 * j;
        if (Math.abs(j3 - jLongValue3) >= Math.abs(j - jLongValue3)) {
            j3 = j;
        }
        if (j3 != j && audioItem != null) {
            audioItem.duration = j3;
        }
        return j3;
    }

    public static long resolveDurationMsForFilter$default(String str, int i, long j, boolean z, AudioItem audioItem, s74 s74Var, int i2, Object obj) {
        if ((i2 & 32) != 0) {
            s74Var = null;
        }
        return resolveDurationMsForFilter(str, i, j, z, audioItem, s74Var);
    }

    public static final long resolveDurationMsForFilter$lambda$12(String str, int i) {
        y45.j(str, TtmlNode.TAG_P);
        return lookupMetadataDurationMs(str, i);
    }

    public static final boolean shouldPassAudioFilter(String str, String str2, long j, long j2, boolean z, boolean z2, boolean z3) {
        return fastAudioFilter(str, str2, j, j2, (z2 ? 2 : 0) | (z ? 1 : 0) | (z3 ? 4 : 0));
    }

    public static final boolean filterAudioBucket(Cursor cursor) {
        y45.j(cursor, "<this>");
        return filterAudio(cursor);
    }

    public static final boolean shouldPassAudioFilter(String str, String str2, long j, long j2, AudioFilterParams audioFilterParams) {
        if (audioFilterParams.getIsSimpleMode()) {
            return AudioFilterUtils.v(str);
        }
        return !audioFilterParams.getIsExcludeOnlyMode() ? !AudioFilterUtils.v(str) ? !(!y45.e(str2, BaseConstant.i) || AudioFilterUtils.w(str) ? audioFilterParams.getFiltered() != AudioFilterUtils.m(j, j2, str2, str) : audioFilterParams.getFiltered()) : !audioFilterParams.getFiltered() : y45.e(str2, BaseConstant.i);
    }

    public static final boolean filterAudioMVBucket(Cursor cursor) {
        y45.j(cursor, "<this>");
        String stringSafe = CursorExtKt.getStringSafe(cursor, 6);
        return stringSafe != null && pp3.A && AudioFilterUtils.w(stringSafe);
    }

    public static final boolean filterAudio(AudioItem audioItem) {
        y45.j(audioItem, "<this>");
        if (!pp3.A && !AudioFilterUtils.r()) {
            return false;
        }
        String str = audioItem.data;
        String str2 = audioItem.parentPath;
        if ((!y45.e(BaseConstant.i, str2) || AudioFilterUtils.w(str)) && !AudioFilterUtils.v(str)) {
            return AudioFilterUtils.m(audioItem.size, resolveDurationForFilter(audioItem), str2, str);
        }
        return false;
    }

    public static final boolean filterMVAudio(AudioItem audioItem) {
        y45.j(audioItem, "<this>");
        if (pp3.A || AudioFilterUtils.s()) {
            return AudioFilterUtils.w(audioItem.data);
        }
        return false;
    }

    public static final boolean filterAudio(Cursor cursor) {
        y45.j(cursor, "<this>");
        if (!pp3.A && !AudioFilterUtils.r()) {
            return false;
        }
        String stringSafe = CursorExtKt.getStringSafe(cursor, 6);
        String strJ = stringSafe != null ? ge6.a.j(stringSafe) : null;
        if ((y45.e(BaseConstant.i, strJ) && !AudioFilterUtils.w(stringSafe)) || AudioFilterUtils.v(stringSafe)) {
            return false;
        }
        Long longSafe = CursorExtKt.getLongSafe(cursor, 8);
        long jLongValue = longSafe != null ? longSafe.longValue() : 0L;
        Long longSafe2 = CursorExtKt.getLongSafe(cursor, 7);
        long jLongValue2 = longSafe2 != null ? longSafe2.longValue() : 0L;
        Integer intSafe = CursorExtKt.getIntSafe(cursor, 0);
        return AudioFilterUtils.m(jLongValue, resolveDurationMsForFilter$default(stringSafe, intSafe != null ? intSafe.intValue() : 0, jLongValue2, false, null, null, 32, null), strJ, stringSafe);
    }

    public static final boolean filterMVAudio(Cursor cursor) {
        y45.j(cursor, "<this>");
        if (pp3.A || AudioFilterUtils.s()) {
            return AudioFilterUtils.w(CursorExtKt.getStringSafe(cursor, 6));
        }
        return false;
    }
}
