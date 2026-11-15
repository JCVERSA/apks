package com.transsion.subtitle_download.task;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.subtitle_download.SubtitleDownloadManager;
import com.transsion.subtitle_download.bean.SubtitleAppType;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.subtitle_download.task.GetInStationSubtitleListTask$download$1", f = "GetInStationSubtitleListTask.kt", l = {67, 72, 73, 78, 84, 100}, m = "invokeSuspend")
final class GetInStationSubtitleListTask$download$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final int $ep;
    final int $episode;
    final String $ops;
    final int $resStreamType;
    final String $resourceId;
    final Function1<Boolean, Unit> $resultCallback;
    final int $se;
    final String $shortTvMiniId;
    final String $subjectId;
    final String $subjectName;
    final String $videoResourceId;
    int I$0;
    int I$1;
    int I$2;
    private Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;

    public class a {

        public static final int[] f52980a;

        static {
            int[] iArr = new int[SubtitleAppType.values().length];
            try {
                iArr[SubtitleAppType.NOVEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SubtitleAppType.MB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f52980a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    GetInStationSubtitleListTask$download$1(int i10, String str, String str2, String str3, int i11, String str4, int i12, Function1<? super Boolean, Unit> function1, String str5, int i13, String str6, Continuation<? super GetInStationSubtitleListTask$download$1> continuation) {
        super(2, continuation);
        this.$resStreamType = i10;
        this.$subjectId = str;
        this.$videoResourceId = str2;
        this.$shortTvMiniId = str3;
        this.$episode = i11;
        this.$resourceId = str4;
        this.$ep = i12;
        this.$resultCallback = function1;
        this.$subjectName = str5;
        this.$se = i13;
        this.$ops = str6;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        GetInStationSubtitleListTask$download$1 getInStationSubtitleListTask$download$1 = new GetInStationSubtitleListTask$download$1(this.$resStreamType, this.$subjectId, this.$videoResourceId, this.$shortTvMiniId, this.$episode, this.$resourceId, this.$ep, this.$resultCallback, this.$subjectName, this.$se, this.$ops, continuation);
        getInStationSubtitleListTask$download$1.L$0 = obj;
        return getInStationSubtitleListTask$download$1;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0378 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:79:0x02c3 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:98:0x0312  */
    /* JADX WARN: Instruction removed from duplicated block: B:98:0x0312, please report this as an issue */
    @Override
    public final Object invokeSuspend(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        Object objM453constructorimpl;
        String str7;
        String str8;
        int i10;
        int i11;
        String str9;
        Function1<Boolean, Unit> function1;
        Throwable thM456exceptionOrNullimpl;
        a2 a2VarC;
        GetInStationSubtitleListTask$download$1$2$1 getInStationSubtitleListTask$download$1$2$1;
        String str10;
        String str11;
        String str12;
        String str13;
        Object objB;
        int i12;
        Function1<Boolean, Unit> function2;
        int i13;
        String str14;
        String str15;
        int i14;
        int i15;
        Object objD;
        Function1<Boolean, Unit> function3;
        int i16;
        int i17;
        String str16;
        String str17;
        String str18;
        Object objC;
        Object objE;
        BaseDto baseDto;
        int i18;
        String str19;
        String str20;
        int i19;
        Function1<Boolean, Unit> function4;
        String str21;
        int i20;
        String str22;
        String str23;
        GetInStationSubtitleListTask getInStationSubtitleListTask;
        String str24;
        String str25;
        String str26;
        String str27;
        Object objF = IntrinsicsKt.f();
        String str28 = " -- resourceId = ";
        String str29 = " --> download() --> 请求接口获取字幕列表并进行处理 --> subjectId = ";
        try {
            try {
                switch (this.label) {
                    case 0:
                        ResultKt.b(obj);
                        int i21 = this.$resStreamType;
                        str10 = this.$subjectId;
                        String str30 = this.$videoResourceId;
                        str11 = this.$shortTvMiniId;
                        int i22 = this.$episode;
                        String str31 = this.$resourceId;
                        int i23 = this.$ep;
                        Function1<Boolean, Unit> function5 = this.$resultCallback;
                        String str32 = this.$subjectName;
                        int i24 = this.$se;
                        str12 = ", shortTvMiniId:";
                        str13 = this.$ops;
                        try {
                            Result.Companion companion = Result.INSTANCE;
                            str6 = " -- ep = ";
                            if (i21 == 2) {
                                ot.a aVarK = GetInStationSubtitleListTask.f52978a.k();
                                String strA = gg.a.f61067a.a();
                                this.L$0 = str10;
                                this.L$1 = str11;
                                this.L$2 = str31;
                                this.L$3 = function5;
                                this.L$4 = str32;
                                this.L$5 = str13;
                                this.I$0 = i21;
                                this.I$1 = i23;
                                this.I$2 = i24;
                                this.label = 1;
                                objB = aVarK.b(strA, str10, str30, this);
                                if (objB == objF) {
                                    return objF;
                                }
                                i12 = i21;
                                function2 = function5;
                                i13 = i24;
                                str14 = str31;
                                str15 = str32;
                                i14 = i23;
                                baseDto = (BaseDto) objB;
                                i18 = i13;
                                str19 = str11;
                                str20 = str13;
                                i19 = i12;
                                function4 = function2;
                                str21 = str10;
                                i20 = i14;
                                String str33 = str14;
                                str22 = str15;
                                str23 = str33;
                                com.transsion.subtitle_download.utils.b bVar = com.transsion.subtitle_download.utils.b.f53009a;
                                getInStationSubtitleListTask = GetInStationSubtitleListTask.f52978a;
                                String strL = getInStationSubtitleListTask.l();
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(strL);
                                str24 = str29;
                                sb2.append(str24);
                                sb2.append(str21);
                                str5 = str24;
                                str25 = str28;
                                sb2.append(str25);
                                sb2.append(str23);
                                str28 = str25;
                                str26 = str6;
                                sb2.append(str26);
                                sb2.append(i20);
                                str6 = str26;
                                sb2.append(",resStreamType:");
                                sb2.append(i19);
                                str27 = str12;
                                sb2.append(str27);
                                sb2.append(str19);
                                sb2.append(" --> subtitles = ");
                                sb2.append(baseDto);
                                bVar.a(sb2.toString());
                                this.L$0 = null;
                                this.L$1 = null;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.L$4 = null;
                                this.L$5 = null;
                                this.label = 5;
                                str = str5;
                                str2 = str28;
                                str3 = str6;
                                str4 = str27;
                                if (getInStationSubtitleListTask.g(baseDto, function4, str23, str21, str22, i19, i20, i18, null, null, str20, this) == objF) {
                                    return objF;
                                }
                                objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                                str7 = this.$subjectId;
                                str8 = this.$resourceId;
                                i10 = this.$ep;
                                i11 = this.$resStreamType;
                                str9 = this.$shortTvMiniId;
                                function1 = this.$resultCallback;
                                thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                                if (thM456exceptionOrNullimpl != null) {
                                    com.transsion.subtitle_download.utils.b.f53009a.b(GetInStationSubtitleListTask.f52978a.l() + str + str7 + str2 + str8 + str3 + i10 + " resStreamType:" + i11 + str4 + str9 + " - --> 请求接口发生异常 --> Throwable.it = " + thM456exceptionOrNullimpl);
                                    a2VarC = y0.c();
                                    getInStationSubtitleListTask$download$1$2$1 = new GetInStationSubtitleListTask$download$1$2$1(function1, null);
                                    this.L$0 = null;
                                    this.L$1 = null;
                                    this.L$2 = null;
                                    this.L$3 = null;
                                    this.L$4 = null;
                                    this.L$5 = null;
                                    this.label = 6;
                                    if (kotlinx.coroutines.i.g(a2VarC, getInStationSubtitleListTask$download$1$2$1, this) == objF) {
                                        return objF;
                                    }
                                }
                                return Unit.f64096a;
                            }
                            if (i21 == 3) {
                                str29 = " --> download() --> 请求接口获取字幕列表并进行处理 --> subjectId = ";
                                str28 = " -- resourceId = ";
                                int i25 = a.f52980a[SubtitleDownloadManager.f52963a.h().ordinal()];
                                if (i25 == 1) {
                                    ot.a aVarK2 = GetInStationSubtitleListTask.f52978a.k();
                                    String strA2 = gg.a.f61067a.a();
                                    this.L$0 = str10;
                                    this.L$1 = str11;
                                    this.L$2 = str31;
                                    this.L$3 = function5;
                                    this.L$4 = str32;
                                    this.L$5 = str13;
                                    this.I$0 = i21;
                                    this.I$1 = i23;
                                    this.I$2 = i24;
                                    this.label = 2;
                                    objC = aVarK2.c(strA2, str11, this);
                                    if (objC == objF) {
                                        return objF;
                                    }
                                    i12 = i21;
                                    function2 = function5;
                                    i13 = i24;
                                    str14 = str31;
                                    str15 = str32;
                                    i14 = i23;
                                    baseDto = (BaseDto) objC;
                                    i18 = i13;
                                    str19 = str11;
                                    str20 = str13;
                                    i19 = i12;
                                    function4 = function2;
                                    str21 = str10;
                                    i20 = i14;
                                    String str34 = str14;
                                    str22 = str15;
                                    str23 = str34;
                                    com.transsion.subtitle_download.utils.b bVar2 = com.transsion.subtitle_download.utils.b.f53009a;
                                    getInStationSubtitleListTask = GetInStationSubtitleListTask.f52978a;
                                    String strL2 = getInStationSubtitleListTask.l();
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append(strL2);
                                    str24 = str29;
                                    sb3.append(str24);
                                    sb3.append(str21);
                                    str5 = str24;
                                    str25 = str28;
                                    sb3.append(str25);
                                    sb3.append(str23);
                                    str28 = str25;
                                    str26 = str6;
                                    sb3.append(str26);
                                    sb3.append(i20);
                                    str6 = str26;
                                    sb3.append(",resStreamType:");
                                    sb3.append(i19);
                                    str27 = str12;
                                    sb3.append(str27);
                                    sb3.append(str19);
                                    sb3.append(" --> subtitles = ");
                                    sb3.append(baseDto);
                                    bVar2.a(sb3.toString());
                                    this.L$0 = null;
                                    this.L$1 = null;
                                    this.L$2 = null;
                                    this.L$3 = null;
                                    this.L$4 = null;
                                    this.L$5 = null;
                                    this.label = 5;
                                    str = str5;
                                    str2 = str28;
                                    str3 = str6;
                                    str4 = str27;
                                    if (getInStationSubtitleListTask.g(baseDto, function4, str23, str21, str22, i19, i20, i18, null, null, str20, this) == objF) {
                                        return objF;
                                    }
                                    objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                                    str7 = this.$subjectId;
                                    str8 = this.$resourceId;
                                    i10 = this.$ep;
                                    i11 = this.$resStreamType;
                                    str9 = this.$shortTvMiniId;
                                    function1 = this.$resultCallback;
                                    thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                                    if (thM456exceptionOrNullimpl != null) {
                                        com.transsion.subtitle_download.utils.b.f53009a.b(GetInStationSubtitleListTask.f52978a.l() + str + str7 + str2 + str8 + str3 + i10 + " resStreamType:" + i11 + str4 + str9 + " - --> 请求接口发生异常 --> Throwable.it = " + thM456exceptionOrNullimpl);
                                        a2VarC = y0.c();
                                        getInStationSubtitleListTask$download$1$2$1 = new GetInStationSubtitleListTask$download$1$2$1(function1, null);
                                        this.L$0 = null;
                                        this.L$1 = null;
                                        this.L$2 = null;
                                        this.L$3 = null;
                                        this.L$4 = null;
                                        this.L$5 = null;
                                        this.label = 6;
                                        if (kotlinx.coroutines.i.g(a2VarC, getInStationSubtitleListTask$download$1$2$1, this) == objF) {
                                            return objF;
                                        }
                                    }
                                    return Unit.f64096a;
                                }
                                if (i25 != 2) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                ot.a aVarK3 = GetInStationSubtitleListTask.f52978a.k();
                                String strA3 = gg.a.f61067a.a();
                                this.L$0 = str10;
                                this.L$1 = str11;
                                this.L$2 = str31;
                                this.L$3 = function5;
                                this.L$4 = str32;
                                this.L$5 = str13;
                                this.I$0 = i21;
                                this.I$1 = i23;
                                this.I$2 = i24;
                                this.label = 3;
                                objE = aVarK3.e(strA3, str11, this);
                                if (objE == objF) {
                                    return objF;
                                }
                                i12 = i21;
                                function2 = function5;
                                i13 = i24;
                                str14 = str31;
                                str15 = str32;
                                i14 = i23;
                                baseDto = (BaseDto) objE;
                                i18 = i13;
                                str19 = str11;
                                str20 = str13;
                                i19 = i12;
                                function4 = function2;
                                str21 = str10;
                                i20 = i14;
                                String str35 = str14;
                                str22 = str15;
                                str23 = str35;
                                com.transsion.subtitle_download.utils.b bVar3 = com.transsion.subtitle_download.utils.b.f53009a;
                                getInStationSubtitleListTask = GetInStationSubtitleListTask.f52978a;
                                String strL3 = getInStationSubtitleListTask.l();
                                StringBuilder sb4 = new StringBuilder();
                                sb4.append(strL3);
                                str24 = str29;
                                sb4.append(str24);
                                sb4.append(str21);
                                str5 = str24;
                                str25 = str28;
                                sb4.append(str25);
                                sb4.append(str23);
                                str28 = str25;
                                str26 = str6;
                                sb4.append(str26);
                                sb4.append(i20);
                                str6 = str26;
                                sb4.append(",resStreamType:");
                                sb4.append(i19);
                                str27 = str12;
                                sb4.append(str27);
                                sb4.append(str19);
                                sb4.append(" --> subtitles = ");
                                sb4.append(baseDto);
                                bVar3.a(sb4.toString());
                                this.L$0 = null;
                                this.L$1 = null;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.L$4 = null;
                                this.L$5 = null;
                                this.label = 5;
                                str = str5;
                                str2 = str28;
                                str3 = str6;
                                str4 = str27;
                                if (getInStationSubtitleListTask.g(baseDto, function4, str23, str21, str22, i19, i20, i18, null, null, str20, this) == objF) {
                                    return objF;
                                }
                                objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                                str7 = this.$subjectId;
                                str8 = this.$resourceId;
                                i10 = this.$ep;
                                i11 = this.$resStreamType;
                                str9 = this.$shortTvMiniId;
                                function1 = this.$resultCallback;
                                thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                                if (thM456exceptionOrNullimpl != null) {
                                    com.transsion.subtitle_download.utils.b.f53009a.b(GetInStationSubtitleListTask.f52978a.l() + str + str7 + str2 + str8 + str3 + i10 + " resStreamType:" + i11 + str4 + str9 + " - --> 请求接口发生异常 --> Throwable.it = " + thM456exceptionOrNullimpl);
                                    a2VarC = y0.c();
                                    getInStationSubtitleListTask$download$1$2$1 = new GetInStationSubtitleListTask$download$1$2$1(function1, null);
                                    this.L$0 = null;
                                    this.L$1 = null;
                                    this.L$2 = null;
                                    this.L$3 = null;
                                    this.L$4 = null;
                                    this.L$5 = null;
                                    this.label = 6;
                                    if (kotlinx.coroutines.i.g(a2VarC, getInStationSubtitleListTask$download$1$2$1, this) == objF) {
                                        return objF;
                                    }
                                }
                                return Unit.f64096a;
                            }
                            try {
                                ot.a aVarK4 = GetInStationSubtitleListTask.f52978a.k();
                                String strA4 = gg.a.f61067a.a();
                                this.L$0 = str10;
                                this.L$1 = str11;
                                this.L$2 = str31;
                                this.L$3 = function5;
                                this.L$4 = str32;
                                this.L$5 = str13;
                                this.I$0 = i21;
                                this.I$1 = i23;
                                this.I$2 = i24;
                                this.label = 4;
                                i15 = i23;
                                objD = aVarK4.d(strA4, str10, str30, i22, this);
                                if (objD == objF) {
                                    return objF;
                                }
                                function3 = function5;
                                i16 = i21;
                                i17 = i24;
                                str16 = str31;
                                str17 = str32;
                                str18 = str13;
                                i18 = i17;
                                str19 = str11;
                                i19 = i16;
                                baseDto = (BaseDto) objD;
                                int i26 = i15;
                                str20 = str18;
                                function4 = function3;
                                str21 = str10;
                                i20 = i26;
                                String str36 = str16;
                                str22 = str17;
                                str23 = str36;
                                com.transsion.subtitle_download.utils.b bVar4 = com.transsion.subtitle_download.utils.b.f53009a;
                                getInStationSubtitleListTask = GetInStationSubtitleListTask.f52978a;
                                String strL4 = getInStationSubtitleListTask.l();
                                StringBuilder sb5 = new StringBuilder();
                                sb5.append(strL4);
                                str24 = str29;
                                try {
                                    sb5.append(str24);
                                    sb5.append(str21);
                                    str5 = str24;
                                    str25 = str28;
                                    try {
                                        sb5.append(str25);
                                        sb5.append(str23);
                                        str28 = str25;
                                        str26 = str6;
                                        try {
                                            sb5.append(str26);
                                            sb5.append(i20);
                                            str6 = str26;
                                            sb5.append(",resStreamType:");
                                            sb5.append(i19);
                                            str27 = str12;
                                            try {
                                                sb5.append(str27);
                                                sb5.append(str19);
                                                sb5.append(" --> subtitles = ");
                                                sb5.append(baseDto);
                                                bVar4.a(sb5.toString());
                                                this.L$0 = null;
                                                this.L$1 = null;
                                                this.L$2 = null;
                                                this.L$3 = null;
                                                this.L$4 = null;
                                                this.L$5 = null;
                                                this.label = 5;
                                                str = str5;
                                                str2 = str28;
                                                str3 = str6;
                                                str4 = str27;
                                                try {
                                                    if (getInStationSubtitleListTask.g(baseDto, function4, str23, str21, str22, i19, i20, i18, null, null, str20, this) == objF) {
                                                        return objF;
                                                    }
                                                    objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    Result.Companion companion2 = Result.INSTANCE;
                                                    objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th));
                                                }
                                            } catch (Throwable th3) {
                                                th = th3;
                                                str4 = str27;
                                                str3 = str6;
                                                str = str5;
                                                str2 = str28;
                                                Result.Companion companion3 = Result.INSTANCE;
                                                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th));
                                            }
                                        } catch (Throwable th4) {
                                            th = th4;
                                            str3 = str26;
                                            str4 = str12;
                                            str = str5;
                                            str2 = str28;
                                            Result.Companion companion4 = Result.INSTANCE;
                                            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th));
                                        }
                                    } catch (Throwable th5) {
                                        th = th5;
                                        str2 = str25;
                                        str4 = str12;
                                        str3 = str6;
                                        str = str5;
                                        Result.Companion companion5 = Result.INSTANCE;
                                        objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th));
                                    }
                                    break;
                                } catch (Throwable th6) {
                                    th = th6;
                                    str = str24;
                                    str4 = str12;
                                    str3 = str6;
                                    str2 = str28;
                                    Result.Companion companion6 = Result.INSTANCE;
                                    objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th));
                                    str7 = this.$subjectId;
                                    str8 = this.$resourceId;
                                    i10 = this.$ep;
                                    i11 = this.$resStreamType;
                                    str9 = this.$shortTvMiniId;
                                    function1 = this.$resultCallback;
                                    thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                                    if (thM456exceptionOrNullimpl != null) {
                                        com.transsion.subtitle_download.utils.b.f53009a.b(GetInStationSubtitleListTask.f52978a.l() + str + str7 + str2 + str8 + str3 + i10 + " resStreamType:" + i11 + str4 + str9 + " - --> 请求接口发生异常 --> Throwable.it = " + thM456exceptionOrNullimpl);
                                        a2VarC = y0.c();
                                        getInStationSubtitleListTask$download$1$2$1 = new GetInStationSubtitleListTask$download$1$2$1(function1, null);
                                        this.L$0 = null;
                                        this.L$1 = null;
                                        this.L$2 = null;
                                        this.L$3 = null;
                                        this.L$4 = null;
                                        this.L$5 = null;
                                        this.label = 6;
                                        if (kotlinx.coroutines.i.g(a2VarC, getInStationSubtitleListTask$download$1$2$1, this) == objF) {
                                            return objF;
                                        }
                                    }
                                    return Unit.f64096a;
                                }
                                str7 = this.$subjectId;
                                str8 = this.$resourceId;
                                i10 = this.$ep;
                                i11 = this.$resStreamType;
                                str9 = this.$shortTvMiniId;
                                function1 = this.$resultCallback;
                                thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                                if (thM456exceptionOrNullimpl != null) {
                                    com.transsion.subtitle_download.utils.b.f53009a.b(GetInStationSubtitleListTask.f52978a.l() + str + str7 + str2 + str8 + str3 + i10 + " resStreamType:" + i11 + str4 + str9 + " - --> 请求接口发生异常 --> Throwable.it = " + thM456exceptionOrNullimpl);
                                    a2VarC = y0.c();
                                    getInStationSubtitleListTask$download$1$2$1 = new GetInStationSubtitleListTask$download$1$2$1(function1, null);
                                    this.L$0 = null;
                                    this.L$1 = null;
                                    this.L$2 = null;
                                    this.L$3 = null;
                                    this.L$4 = null;
                                    this.L$5 = null;
                                    this.label = 6;
                                    if (kotlinx.coroutines.i.g(a2VarC, getInStationSubtitleListTask$download$1$2$1, this) == objF) {
                                        return objF;
                                    }
                                }
                                return Unit.f64096a;
                            } catch (Throwable th7) {
                                th = th7;
                                str5 = " --> download() --> 请求接口获取字幕列表并进行处理 --> subjectId = ";
                                str28 = " -- resourceId = ";
                                str4 = str12;
                                str3 = str6;
                                str = str5;
                                str2 = str28;
                                Result.Companion companion7 = Result.INSTANCE;
                                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th));
                                str7 = this.$subjectId;
                                str8 = this.$resourceId;
                                i10 = this.$ep;
                                i11 = this.$resStreamType;
                                str9 = this.$shortTvMiniId;
                                function1 = this.$resultCallback;
                                thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                                if (thM456exceptionOrNullimpl != null) {
                                    com.transsion.subtitle_download.utils.b.f53009a.b(GetInStationSubtitleListTask.f52978a.l() + str + str7 + str2 + str8 + str3 + i10 + " resStreamType:" + i11 + str4 + str9 + " - --> 请求接口发生异常 --> Throwable.it = " + thM456exceptionOrNullimpl);
                                    a2VarC = y0.c();
                                    getInStationSubtitleListTask$download$1$2$1 = new GetInStationSubtitleListTask$download$1$2$1(function1, null);
                                    this.L$0 = null;
                                    this.L$1 = null;
                                    this.L$2 = null;
                                    this.L$3 = null;
                                    this.L$4 = null;
                                    this.L$5 = null;
                                    this.label = 6;
                                    if (kotlinx.coroutines.i.g(a2VarC, getInStationSubtitleListTask$download$1$2$1, this) == objF) {
                                        return objF;
                                    }
                                }
                                return Unit.f64096a;
                            }
                        } catch (Throwable th8) {
                            th = th8;
                            str = " --> download() --> 请求接口获取字幕列表并进行处理 --> subjectId = ";
                            str2 = " -- resourceId = ";
                            str3 = " -- ep = ";
                            str4 = str12;
                            Result.Companion companion8 = Result.INSTANCE;
                            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th));
                            str7 = this.$subjectId;
                            str8 = this.$resourceId;
                            i10 = this.$ep;
                            i11 = this.$resStreamType;
                            str9 = this.$shortTvMiniId;
                            function1 = this.$resultCallback;
                            thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                            if (thM456exceptionOrNullimpl != null) {
                                com.transsion.subtitle_download.utils.b.f53009a.b(GetInStationSubtitleListTask.f52978a.l() + str + str7 + str2 + str8 + str3 + i10 + " resStreamType:" + i11 + str4 + str9 + " - --> 请求接口发生异常 --> Throwable.it = " + thM456exceptionOrNullimpl);
                                a2VarC = y0.c();
                                getInStationSubtitleListTask$download$1$2$1 = new GetInStationSubtitleListTask$download$1$2$1(function1, null);
                                this.L$0 = null;
                                this.L$1 = null;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.L$4 = null;
                                this.L$5 = null;
                                this.label = 6;
                                if (kotlinx.coroutines.i.g(a2VarC, getInStationSubtitleListTask$download$1$2$1, this) == objF) {
                                    return objF;
                                }
                            }
                            return Unit.f64096a;
                        }
                    case 1:
                        i13 = this.I$2;
                        i14 = this.I$1;
                        int i27 = this.I$0;
                        String str37 = (String) this.L$5;
                        str15 = (String) this.L$4;
                        function2 = (Function1) this.L$3;
                        str14 = (String) this.L$2;
                        str11 = (String) this.L$1;
                        str10 = (String) this.L$0;
                        ResultKt.b(obj);
                        str6 = " -- ep = ";
                        str12 = ", shortTvMiniId:";
                        str13 = str37;
                        i12 = i27;
                        objB = obj;
                        baseDto = (BaseDto) objB;
                        i18 = i13;
                        str19 = str11;
                        str20 = str13;
                        i19 = i12;
                        function4 = function2;
                        str21 = str10;
                        i20 = i14;
                        String str38 = str14;
                        str22 = str15;
                        str23 = str38;
                        com.transsion.subtitle_download.utils.b bVar5 = com.transsion.subtitle_download.utils.b.f53009a;
                        getInStationSubtitleListTask = GetInStationSubtitleListTask.f52978a;
                        String strL5 = getInStationSubtitleListTask.l();
                        StringBuilder sb6 = new StringBuilder();
                        sb6.append(strL5);
                        str24 = str29;
                        sb6.append(str24);
                        sb6.append(str21);
                        str5 = str24;
                        str25 = str28;
                        sb6.append(str25);
                        sb6.append(str23);
                        str28 = str25;
                        str26 = str6;
                        sb6.append(str26);
                        sb6.append(i20);
                        str6 = str26;
                        sb6.append(",resStreamType:");
                        sb6.append(i19);
                        str27 = str12;
                        sb6.append(str27);
                        sb6.append(str19);
                        sb6.append(" --> subtitles = ");
                        sb6.append(baseDto);
                        bVar5.a(sb6.toString());
                        this.L$0 = null;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.L$4 = null;
                        this.L$5 = null;
                        this.label = 5;
                        str = str5;
                        str2 = str28;
                        str3 = str6;
                        str4 = str27;
                        if (getInStationSubtitleListTask.g(baseDto, function4, str23, str21, str22, i19, i20, i18, null, null, str20, this) == objF) {
                            return objF;
                        }
                        objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                        str7 = this.$subjectId;
                        str8 = this.$resourceId;
                        i10 = this.$ep;
                        i11 = this.$resStreamType;
                        str9 = this.$shortTvMiniId;
                        function1 = this.$resultCallback;
                        thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                        if (thM456exceptionOrNullimpl != null) {
                            com.transsion.subtitle_download.utils.b.f53009a.b(GetInStationSubtitleListTask.f52978a.l() + str + str7 + str2 + str8 + str3 + i10 + " resStreamType:" + i11 + str4 + str9 + " - --> 请求接口发生异常 --> Throwable.it = " + thM456exceptionOrNullimpl);
                            a2VarC = y0.c();
                            getInStationSubtitleListTask$download$1$2$1 = new GetInStationSubtitleListTask$download$1$2$1(function1, null);
                            this.L$0 = null;
                            this.L$1 = null;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.L$4 = null;
                            this.L$5 = null;
                            this.label = 6;
                            if (kotlinx.coroutines.i.g(a2VarC, getInStationSubtitleListTask$download$1$2$1, this) == objF) {
                                return objF;
                            }
                        }
                        return Unit.f64096a;
                    case 2:
                        i13 = this.I$2;
                        i14 = this.I$1;
                        int i28 = this.I$0;
                        String str39 = (String) this.L$5;
                        str15 = (String) this.L$4;
                        function2 = (Function1) this.L$3;
                        str14 = (String) this.L$2;
                        str11 = (String) this.L$1;
                        str10 = (String) this.L$0;
                        ResultKt.b(obj);
                        str29 = " --> download() --> 请求接口获取字幕列表并进行处理 --> subjectId = ";
                        str28 = " -- resourceId = ";
                        str6 = " -- ep = ";
                        str12 = ", shortTvMiniId:";
                        str13 = str39;
                        i12 = i28;
                        objC = obj;
                        baseDto = (BaseDto) objC;
                        i18 = i13;
                        str19 = str11;
                        str20 = str13;
                        i19 = i12;
                        function4 = function2;
                        str21 = str10;
                        i20 = i14;
                        String str310 = str14;
                        str22 = str15;
                        str23 = str310;
                        com.transsion.subtitle_download.utils.b bVar6 = com.transsion.subtitle_download.utils.b.f53009a;
                        getInStationSubtitleListTask = GetInStationSubtitleListTask.f52978a;
                        String strL6 = getInStationSubtitleListTask.l();
                        StringBuilder sb7 = new StringBuilder();
                        sb7.append(strL6);
                        str24 = str29;
                        sb7.append(str24);
                        sb7.append(str21);
                        str5 = str24;
                        str25 = str28;
                        sb7.append(str25);
                        sb7.append(str23);
                        str28 = str25;
                        str26 = str6;
                        sb7.append(str26);
                        sb7.append(i20);
                        str6 = str26;
                        sb7.append(",resStreamType:");
                        sb7.append(i19);
                        str27 = str12;
                        sb7.append(str27);
                        sb7.append(str19);
                        sb7.append(" --> subtitles = ");
                        sb7.append(baseDto);
                        bVar6.a(sb7.toString());
                        this.L$0 = null;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.L$4 = null;
                        this.L$5 = null;
                        this.label = 5;
                        str = str5;
                        str2 = str28;
                        str3 = str6;
                        str4 = str27;
                        if (getInStationSubtitleListTask.g(baseDto, function4, str23, str21, str22, i19, i20, i18, null, null, str20, this) == objF) {
                            return objF;
                        }
                        objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                        str7 = this.$subjectId;
                        str8 = this.$resourceId;
                        i10 = this.$ep;
                        i11 = this.$resStreamType;
                        str9 = this.$shortTvMiniId;
                        function1 = this.$resultCallback;
                        thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                        if (thM456exceptionOrNullimpl != null) {
                            com.transsion.subtitle_download.utils.b.f53009a.b(GetInStationSubtitleListTask.f52978a.l() + str + str7 + str2 + str8 + str3 + i10 + " resStreamType:" + i11 + str4 + str9 + " - --> 请求接口发生异常 --> Throwable.it = " + thM456exceptionOrNullimpl);
                            a2VarC = y0.c();
                            getInStationSubtitleListTask$download$1$2$1 = new GetInStationSubtitleListTask$download$1$2$1(function1, null);
                            this.L$0 = null;
                            this.L$1 = null;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.L$4 = null;
                            this.L$5 = null;
                            this.label = 6;
                            if (kotlinx.coroutines.i.g(a2VarC, getInStationSubtitleListTask$download$1$2$1, this) == objF) {
                                return objF;
                            }
                        }
                        return Unit.f64096a;
                    case 3:
                        i13 = this.I$2;
                        i14 = this.I$1;
                        int i29 = this.I$0;
                        String str40 = (String) this.L$5;
                        str15 = (String) this.L$4;
                        function2 = (Function1) this.L$3;
                        str14 = (String) this.L$2;
                        str11 = (String) this.L$1;
                        str10 = (String) this.L$0;
                        ResultKt.b(obj);
                        str29 = " --> download() --> 请求接口获取字幕列表并进行处理 --> subjectId = ";
                        str28 = " -- resourceId = ";
                        str6 = " -- ep = ";
                        str12 = ", shortTvMiniId:";
                        str13 = str40;
                        i12 = i29;
                        objE = obj;
                        baseDto = (BaseDto) objE;
                        i18 = i13;
                        str19 = str11;
                        str20 = str13;
                        i19 = i12;
                        function4 = function2;
                        str21 = str10;
                        i20 = i14;
                        String str311 = str14;
                        str22 = str15;
                        str23 = str311;
                        com.transsion.subtitle_download.utils.b bVar7 = com.transsion.subtitle_download.utils.b.f53009a;
                        getInStationSubtitleListTask = GetInStationSubtitleListTask.f52978a;
                        String strL7 = getInStationSubtitleListTask.l();
                        StringBuilder sb8 = new StringBuilder();
                        sb8.append(strL7);
                        str24 = str29;
                        sb8.append(str24);
                        sb8.append(str21);
                        str5 = str24;
                        str25 = str28;
                        sb8.append(str25);
                        sb8.append(str23);
                        str28 = str25;
                        str26 = str6;
                        sb8.append(str26);
                        sb8.append(i20);
                        str6 = str26;
                        sb8.append(",resStreamType:");
                        sb8.append(i19);
                        str27 = str12;
                        sb8.append(str27);
                        sb8.append(str19);
                        sb8.append(" --> subtitles = ");
                        sb8.append(baseDto);
                        bVar7.a(sb8.toString());
                        this.L$0 = null;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.L$4 = null;
                        this.L$5 = null;
                        this.label = 5;
                        str = str5;
                        str2 = str28;
                        str3 = str6;
                        str4 = str27;
                        if (getInStationSubtitleListTask.g(baseDto, function4, str23, str21, str22, i19, i20, i18, null, null, str20, this) == objF) {
                            return objF;
                        }
                        objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                        str7 = this.$subjectId;
                        str8 = this.$resourceId;
                        i10 = this.$ep;
                        i11 = this.$resStreamType;
                        str9 = this.$shortTvMiniId;
                        function1 = this.$resultCallback;
                        thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                        if (thM456exceptionOrNullimpl != null) {
                            com.transsion.subtitle_download.utils.b.f53009a.b(GetInStationSubtitleListTask.f52978a.l() + str + str7 + str2 + str8 + str3 + i10 + " resStreamType:" + i11 + str4 + str9 + " - --> 请求接口发生异常 --> Throwable.it = " + thM456exceptionOrNullimpl);
                            a2VarC = y0.c();
                            getInStationSubtitleListTask$download$1$2$1 = new GetInStationSubtitleListTask$download$1$2$1(function1, null);
                            this.L$0 = null;
                            this.L$1 = null;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.L$4 = null;
                            this.L$5 = null;
                            this.label = 6;
                            if (kotlinx.coroutines.i.g(a2VarC, getInStationSubtitleListTask$download$1$2$1, this) == objF) {
                                return objF;
                            }
                        }
                        return Unit.f64096a;
                    case 4:
                        i17 = this.I$2;
                        int i30 = this.I$1;
                        i16 = this.I$0;
                        str18 = (String) this.L$5;
                        str17 = (String) this.L$4;
                        function3 = (Function1) this.L$3;
                        str16 = (String) this.L$2;
                        str11 = (String) this.L$1;
                        str10 = (String) this.L$0;
                        ResultKt.b(obj);
                        str6 = " -- ep = ";
                        str12 = ", shortTvMiniId:";
                        i15 = i30;
                        objD = obj;
                        i18 = i17;
                        str19 = str11;
                        i19 = i16;
                        baseDto = (BaseDto) objD;
                        int i210 = i15;
                        str20 = str18;
                        function4 = function3;
                        str21 = str10;
                        i20 = i210;
                        String str312 = str16;
                        str22 = str17;
                        str23 = str312;
                        com.transsion.subtitle_download.utils.b bVar8 = com.transsion.subtitle_download.utils.b.f53009a;
                        getInStationSubtitleListTask = GetInStationSubtitleListTask.f52978a;
                        String strL8 = getInStationSubtitleListTask.l();
                        StringBuilder sb9 = new StringBuilder();
                        sb9.append(strL8);
                        str24 = str29;
                        sb9.append(str24);
                        sb9.append(str21);
                        str5 = str24;
                        str25 = str28;
                        sb9.append(str25);
                        sb9.append(str23);
                        str28 = str25;
                        str26 = str6;
                        sb9.append(str26);
                        sb9.append(i20);
                        str6 = str26;
                        sb9.append(",resStreamType:");
                        sb9.append(i19);
                        str27 = str12;
                        sb9.append(str27);
                        sb9.append(str19);
                        sb9.append(" --> subtitles = ");
                        sb9.append(baseDto);
                        bVar8.a(sb9.toString());
                        this.L$0 = null;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.L$4 = null;
                        this.L$5 = null;
                        this.label = 5;
                        str = str5;
                        str2 = str28;
                        str3 = str6;
                        str4 = str27;
                        if (getInStationSubtitleListTask.g(baseDto, function4, str23, str21, str22, i19, i20, i18, null, null, str20, this) == objF) {
                            return objF;
                        }
                        objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                        str7 = this.$subjectId;
                        str8 = this.$resourceId;
                        i10 = this.$ep;
                        i11 = this.$resStreamType;
                        str9 = this.$shortTvMiniId;
                        function1 = this.$resultCallback;
                        thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                        if (thM456exceptionOrNullimpl != null) {
                            com.transsion.subtitle_download.utils.b.f53009a.b(GetInStationSubtitleListTask.f52978a.l() + str + str7 + str2 + str8 + str3 + i10 + " resStreamType:" + i11 + str4 + str9 + " - --> 请求接口发生异常 --> Throwable.it = " + thM456exceptionOrNullimpl);
                            a2VarC = y0.c();
                            getInStationSubtitleListTask$download$1$2$1 = new GetInStationSubtitleListTask$download$1$2$1(function1, null);
                            this.L$0 = null;
                            this.L$1 = null;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.L$4 = null;
                            this.L$5 = null;
                            this.label = 6;
                            if (kotlinx.coroutines.i.g(a2VarC, getInStationSubtitleListTask$download$1$2$1, this) == objF) {
                                return objF;
                            }
                        }
                        return Unit.f64096a;
                    case 5:
                        ResultKt.b(obj);
                        str = " --> download() --> 请求接口获取字幕列表并进行处理 --> subjectId = ";
                        str2 = " -- resourceId = ";
                        str3 = " -- ep = ";
                        str4 = ", shortTvMiniId:";
                        objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                        str7 = this.$subjectId;
                        str8 = this.$resourceId;
                        i10 = this.$ep;
                        i11 = this.$resStreamType;
                        str9 = this.$shortTvMiniId;
                        function1 = this.$resultCallback;
                        thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                        if (thM456exceptionOrNullimpl != null) {
                            com.transsion.subtitle_download.utils.b.f53009a.b(GetInStationSubtitleListTask.f52978a.l() + str + str7 + str2 + str8 + str3 + i10 + " resStreamType:" + i11 + str4 + str9 + " - --> 请求接口发生异常 --> Throwable.it = " + thM456exceptionOrNullimpl);
                            a2VarC = y0.c();
                            getInStationSubtitleListTask$download$1$2$1 = new GetInStationSubtitleListTask$download$1$2$1(function1, null);
                            this.L$0 = null;
                            this.L$1 = null;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.L$4 = null;
                            this.L$5 = null;
                            this.label = 6;
                            if (kotlinx.coroutines.i.g(a2VarC, getInStationSubtitleListTask$download$1$2$1, this) == objF) {
                                return objF;
                            }
                        }
                        return Unit.f64096a;
                    case 6:
                        ResultKt.b(obj);
                        return Unit.f64096a;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } catch (Throwable th9) {
                th = th9;
            }
        } catch (Throwable th10) {
            th = th10;
            str = " --> download() --> 请求接口获取字幕列表并进行处理 --> subjectId = ";
            str2 = " -- resourceId = ";
            str3 = " -- ep = ";
            str4 = ", shortTvMiniId:";
        }
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((GetInStationSubtitleListTask$download$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
