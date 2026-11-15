.class public final Lcom/transsnet/downloader/util/DownloadUtil;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsnet/downloader/util/DownloadUtil;

.field private static final b:Lkotlin/Lazy;

.field private static final c:Lkotlin/Lazy;

.field private static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsnet/downloader/util/DownloadUtil;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/downloader/util/DownloadUtil;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    .line 7
    .line 8
    new-instance v0, Lcom/transsnet/downloader/util/l;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsnet/downloader/util/l;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/transsnet/downloader/util/DownloadUtil;->b:Lkotlin/Lazy;

    .line 18
    .line 19
    new-instance v0, Lcom/transsnet/downloader/util/m;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/transsnet/downloader/util/m;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/transsnet/downloader/util/DownloadUtil;->c:Lkotlin/Lazy;

    .line 29
    .line 30
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 31
    .line 32
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 33
    .line 34
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lcom/transsnet/downloader/util/DownloadUtil;->d:[Ljava/lang/String;

    .line 39
    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic K(Lcom/transsnet/downloader/util/DownloadUtil;Landroid/content/Context;ZLcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 15

    move/from16 v0, p12

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v11, v2

    goto :goto_0

    :cond_0
    move-object/from16 v11, p8

    :goto_0
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_1

    move-object v12, v2

    goto :goto_1

    :cond_1
    move-object/from16 v12, p9

    :goto_1
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v13, v0

    goto :goto_2

    :cond_2
    move/from16 v13, p10

    :goto_2
    move-object v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v14, p11

    .line 1
    invoke-virtual/range {v3 .. v14}, Lcom/transsnet/downloader/util/DownloadUtil;->J(Landroid/content/Context;ZLcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final L(Lkotlin/jvm/functions/Function2;JJ)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method private static final M(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "newPath"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 7
    .line 8
    sget-object p0, Lwf/a;->a:Lwf/a$a;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "\u8f6c\u5b58\u5230\u76f8\u518c newPath = "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v0, 0x1

    .line 28
    const-string v1, "resource_save"

    .line 29
    .line 30
    invoke-virtual {p0, v1, p1, v0}, Lwf/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0
.end method

.method private static final N(Lkotlin/jvm/functions/Function2;JJ)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method private static final O(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "newPath"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 7
    .line 8
    sget-object p0, Lwf/a;->a:Lwf/a$a;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "\u8f6c\u5b58\u5230sdcard newPath = "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v0, 0x1

    .line 28
    const-string v1, "resource_save"

    .line 29
    .line 30
    invoke-virtual {p0, v1, p1, v0}, Lwf/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0
.end method

.method private final P(Lcom/transsion/baselib/db/download/DownloadBean;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, p2}, Lcom/transsion/baselib/db/download/DownloadBean;->setTransferFailed(Z)V

    .line 8
    .line 9
    .line 10
    sget-object p2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2, p1, p3}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->b0(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-ne p1, p2, :cond_1

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p1
.end method

.method private final Q(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move/from16 v0, p4

    move-object/from16 v2, p9

    instance-of v3, v2, Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;

    iget v4, v3, Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;->label:I

    move-object/from16 v9, p0

    :goto_0
    move-object v10, v3

    goto :goto_1

    :cond_0
    new-instance v3, Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;

    move-object/from16 v9, p0

    invoke-direct {v3, v9, v2}, Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;-><init>(Lcom/transsnet/downloader/util/DownloadUtil;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object v2, v10, Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v11

    .line 1
    iget v3, v10, Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;->label:I

    const/4 v12, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v12, :cond_1

    iget-object v0, v10, Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 2
    const-string v13, "\uff0c new path = "

    const-string v14, " old path = "

    const-string v15, "resource_save"

    if-eqz p8, :cond_b

    .line 3
    const-string v2, "content"

    const/4 v7, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v8, v2, v7, v3, v4}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lk1/a;->g(Landroid/content/Context;Landroid/net/Uri;)Lk1/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Lk1/a;->d()Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 6
    :cond_3
    :goto_2
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DocumentFile ,\u5220\u9664\u7ed3\u679c = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2, v12}, Lwf/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 7
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 8
    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 10
    const-string v4, "getApp(...)"

    const/16 v5, 0x1d

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    goto :goto_4

    .line 11
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_7

    .line 12
    sget-object v0, Lcom/transsnet/downloader/y;->a:Lcom/transsnet/downloader/y;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v8}, Lcom/transsnet/downloader/y;->d(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_4

    .line 13
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_7

    .line 14
    sget-object v0, Lcom/transsnet/downloader/y;->a:Lcom/transsnet/downloader/y;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v8}, Lcom/transsnet/downloader/y;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 15
    :cond_7
    :goto_4
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 16
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8f6c\u5b58\u5230\u6210\u529f ,\u5220\u9664\u7ed3\u679c = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", videoPath = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {v2, v15, v0, v12}, Lwf/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 20
    :cond_8
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    const-string v2, "\u8f6c\u5b58\u5230\u6210\u529f ,\u6e90\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c\u65e0\u6cd5\u5220\u9664"

    invoke-virtual {v0, v15, v2, v12}, Lwf/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 21
    :goto_5
    invoke-interface/range {p7 .. p7}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    const/4 v6, 0x4

    const/4 v0, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move v12, v7

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_9
    move v12, v7

    move-object/from16 v0, p7

    :goto_6
    invoke-virtual {v1, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setPath(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1, v12}, Lcom/transsion/baselib/db/download/DownloadBean;->setTransferFailed(Z)V

    move/from16 v2, p6

    .line 23
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPathType(I)V

    move-object/from16 v2, p5

    .line 24
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPath(Ljava/lang/String;)V

    .line 25
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8f6c\u5b58\u5230\u6210\u529f, resourceId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 27
    invoke-virtual {v0, v15, v2, v3}, Lwf/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 28
    sget-object v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v0

    iput-object v1, v10, Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;->L$0:Ljava/lang/Object;

    iput v3, v10, Lcom/transsnet/downloader/util/DownloadUtil$transferFileSuccessNext$1;->label:I

    invoke-virtual {v0, v1, v10}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->b0(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_a

    return-object v11

    :cond_a
    move-object v0, v1

    .line 29
    :goto_7
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isDownloadingPlay()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 30
    invoke-direct/range {p0 .. p0}, Lcom/transsnet/downloader/util/DownloadUtil;->p()Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsnet/downloader/manager/g;->q()V

    goto :goto_8

    .line 31
    :cond_b
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save to\u6210\u529f, resourceId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 33
    invoke-virtual {v0, v15, v1, v2}, Lwf/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 34
    :cond_c
    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public static synthetic a(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/util/DownloadUtil;->O(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b()Lui/n0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/util/DownloadUtil;->n()Lui/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Lcom/transsnet/downloader/manager/g;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/util/DownloadUtil;->m()Lcom/transsnet/downloader/manager/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d(Lkotlin/jvm/functions/Function2;JJ)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/util/DownloadUtil;->L(Lkotlin/jvm/functions/Function2;JJ)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/util/DownloadUtil;->M(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lkotlin/jvm/functions/Function2;JJ)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/util/DownloadUtil;->N(Lkotlin/jvm/functions/Function2;JJ)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Lcom/transsnet/downloader/util/DownloadUtil;)Lui/n0;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/util/DownloadUtil;->q()Lui/n0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h(Lcom/transsnet/downloader/util/DownloadUtil;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/transsnet/downloader/util/DownloadUtil;->Q(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final m()Lcom/transsnet/downloader/manager/g;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private static final n()Lui/n0;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApp(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->p1()Lui/n0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method private final p()Lcom/transsnet/downloader/manager/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsnet/downloader/util/DownloadUtil;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsnet/downloader/manager/g;

    .line 8
    .line 9
    return-object v0
.end method

.method private final q()Lui/n0;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsnet/downloader/util/DownloadUtil;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lui/n0;

    .line 8
    .line 9
    return-object v0
.end method

.method private final u(Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-ne v3, v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    invoke-static {v0}, Lkotlin/io/FilesKt;->x(Ljava/io/File;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v0}, Lkotlin/io/FilesKt;->w(Ljava/io/File;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v5, Ljava/io/File;

    .line 38
    .line 39
    invoke-direct {v5, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v5, "_"

    .line 57
    .line 58
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v5, "."

    .line 65
    .line 66
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    new-instance v5, Ljava/io/File;

    .line 77
    .line 78
    invoke-direct {v5, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    return-object v5

    .line 85
    :catchall_0
    new-instance v0, Ljava/io/File;

    .line 86
    .line 87
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-object v0
.end method

.method public static synthetic y(Lcom/transsnet/downloader/util/DownloadUtil;Lcom/transsnet/downloader/bean/DownloadListBean;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;
    .locals 12

    .line 1
    move/from16 v0, p9

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x4

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v6, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v6, p3

    .line 11
    :goto_0
    and-int/lit8 v1, v0, 0x8

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    move-object v7, v2

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-object/from16 v7, p4

    .line 18
    .line 19
    :goto_1
    and-int/lit8 v1, v0, 0x10

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    move-object v8, v2

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move-object/from16 v8, p5

    .line 26
    .line 27
    :goto_2
    and-int/lit8 v1, v0, 0x20

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    move-object v9, v2

    .line 32
    goto :goto_3

    .line 33
    :cond_3
    move-object/from16 v9, p6

    .line 34
    .line 35
    :goto_3
    and-int/lit8 v1, v0, 0x40

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    move-object v10, v2

    .line 40
    goto :goto_4

    .line 41
    :cond_4
    move-object/from16 v10, p7

    .line 42
    .line 43
    :goto_4
    and-int/lit16 v0, v0, 0x80

    .line 44
    .line 45
    if-eqz v0, :cond_5

    .line 46
    .line 47
    move-object v11, v2

    .line 48
    goto :goto_5

    .line 49
    :cond_5
    move-object/from16 v11, p8

    .line 50
    .line 51
    :goto_5
    move-object v3, p0

    .line 52
    move-object v4, p1

    .line 53
    move-object v5, p2

    .line 54
    invoke-virtual/range {v3 .. v11}, Lcom/transsnet/downloader/util/DownloadUtil;->x(Lcom/transsnet/downloader/bean/DownloadListBean;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0
.end method

.method private final z(Lcom/transsnet/downloader/bean/DownloadListBean;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/moviedetailapi/DownloadItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 95

    .line 1
    new-instance v4, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v92, ""

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    move-object/from16 v1, v92

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v1, v0

    .line 15
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/DownloadItem;->getResourceId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    move-object/from16 v2, v92

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move-object v2, v0

    .line 25
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/DownloadItem;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    move-object/from16 v3, v92

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    move-object v3, v0

    .line 35
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_3
    move-object/from16 v93, v0

    .line 49
    .line 50
    goto :goto_4

    .line 51
    :cond_4
    :goto_3
    move-object/from16 v93, v92

    .line 52
    .line 53
    :goto_4
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/DownloadItem;->getSize()Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const v90, 0xffff

    .line 58
    .line 59
    .line 60
    const/16 v91, 0x0

    .line 61
    .line 62
    const/4 v6, 0x0

    .line 63
    const/4 v7, 0x0

    .line 64
    const/4 v8, 0x0

    .line 65
    const/4 v9, 0x0

    .line 66
    const/4 v10, 0x0

    .line 67
    const-wide/16 v11, 0x0

    .line 68
    .line 69
    const/4 v13, 0x0

    .line 70
    const/4 v14, 0x0

    .line 71
    const/4 v15, 0x0

    .line 72
    const-wide/16 v16, 0x0

    .line 73
    .line 74
    const-wide/16 v18, 0x0

    .line 75
    .line 76
    const/16 v20, 0x0

    .line 77
    .line 78
    const/16 v21, 0x0

    .line 79
    .line 80
    const/16 v22, 0x0

    .line 81
    .line 82
    const/16 v23, 0x0

    .line 83
    .line 84
    const/16 v24, 0x0

    .line 85
    .line 86
    const/16 v25, 0x0

    .line 87
    .line 88
    const/16 v26, 0x0

    .line 89
    .line 90
    const/16 v27, 0x0

    .line 91
    .line 92
    const/16 v28, 0x0

    .line 93
    .line 94
    const/16 v29, 0x0

    .line 95
    .line 96
    const/16 v30, 0x0

    .line 97
    .line 98
    const/16 v31, 0x0

    .line 99
    .line 100
    const/16 v32, 0x0

    .line 101
    .line 102
    const/16 v33, 0x0

    .line 103
    .line 104
    const/16 v34, 0x0

    .line 105
    .line 106
    const-wide/16 v35, 0x0

    .line 107
    .line 108
    const/16 v37, 0x0

    .line 109
    .line 110
    const/16 v38, 0x0

    .line 111
    .line 112
    const/16 v39, 0x0

    .line 113
    .line 114
    const/16 v40, 0x0

    .line 115
    .line 116
    const-wide/16 v41, 0x0

    .line 117
    .line 118
    const/16 v43, 0x0

    .line 119
    .line 120
    const/16 v44, 0x0

    .line 121
    .line 122
    const-wide/16 v45, 0x0

    .line 123
    .line 124
    const/16 v47, 0x0

    .line 125
    .line 126
    const-wide/16 v48, 0x0

    .line 127
    .line 128
    const/16 v50, 0x0

    .line 129
    .line 130
    const/16 v51, 0x0

    .line 131
    .line 132
    const/16 v52, 0x0

    .line 133
    .line 134
    const/16 v53, 0x0

    .line 135
    .line 136
    const/16 v54, 0x0

    .line 137
    .line 138
    const/16 v55, 0x0

    .line 139
    .line 140
    const/16 v56, 0x0

    .line 141
    .line 142
    const/16 v57, 0x0

    .line 143
    .line 144
    const/16 v58, 0x0

    .line 145
    .line 146
    const/16 v59, 0x0

    .line 147
    .line 148
    const/16 v60, 0x0

    .line 149
    .line 150
    const/16 v61, 0x0

    .line 151
    .line 152
    const/16 v62, 0x0

    .line 153
    .line 154
    const/16 v63, 0x0

    .line 155
    .line 156
    const/16 v64, 0x0

    .line 157
    .line 158
    const/16 v65, 0x0

    .line 159
    .line 160
    const/16 v66, 0x0

    .line 161
    .line 162
    const/16 v67, 0x0

    .line 163
    .line 164
    const/16 v68, 0x0

    .line 165
    .line 166
    const/16 v69, 0x0

    .line 167
    .line 168
    const/16 v70, 0x0

    .line 169
    .line 170
    const/16 v71, 0x0

    .line 171
    .line 172
    const/16 v72, 0x0

    .line 173
    .line 174
    const/16 v73, 0x0

    .line 175
    .line 176
    const/16 v74, 0x0

    .line 177
    .line 178
    const/16 v75, 0x0

    .line 179
    .line 180
    const/16 v76, 0x0

    .line 181
    .line 182
    const/16 v77, 0x0

    .line 183
    .line 184
    const/16 v78, 0x0

    .line 185
    .line 186
    const/16 v79, 0x0

    .line 187
    .line 188
    const/16 v80, 0x0

    .line 189
    .line 190
    const/16 v81, 0x0

    .line 191
    .line 192
    const/16 v82, 0x0

    .line 193
    .line 194
    const/16 v83, 0x0

    .line 195
    .line 196
    const/16 v84, 0x0

    .line 197
    .line 198
    const/16 v85, 0x0

    .line 199
    .line 200
    const/16 v86, 0x0

    .line 201
    .line 202
    const/16 v87, 0x0

    .line 203
    .line 204
    const/16 v88, -0x20

    .line 205
    .line 206
    const/16 v89, -0x1

    .line 207
    .line 208
    move-object v0, v4

    .line 209
    move-object/from16 v94, v4

    .line 210
    .line 211
    move-object/from16 v4, v93

    .line 212
    .line 213
    invoke-direct/range {v0 .. v91}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 214
    .line 215
    .line 216
    if-eqz p2, :cond_6

    .line 217
    .line 218
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    if-nez v0, :cond_5

    .line 223
    .line 224
    goto :goto_6

    .line 225
    :cond_5
    :goto_5
    move-object/from16 v1, v94

    .line 226
    .line 227
    goto :goto_7

    .line 228
    :cond_6
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getGenre()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    goto :goto_5

    .line 233
    :goto_7
    invoke-virtual {v1, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setGenre(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 237
    .line 238
    .line 239
    move-result-wide v2

    .line 240
    invoke-virtual {v1, v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setCreateAt(J)V

    .line 241
    .line 242
    .line 243
    const/4 v0, 0x0

    .line 244
    if-eqz p2, :cond_7

    .line 245
    .line 246
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    if-eqz v2, :cond_7

    .line 251
    .line 252
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    if-nez v2, :cond_9

    .line 257
    .line 258
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    if-eqz v2, :cond_8

    .line 263
    .line 264
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    goto :goto_8

    .line 269
    :cond_8
    move-object v2, v0

    .line 270
    :goto_8
    if-nez v2, :cond_9

    .line 271
    .line 272
    move-object/from16 v2, v92

    .line 273
    .line 274
    :cond_9
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setThumbnail(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    if-eqz p2, :cond_a

    .line 278
    .line 279
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    if-nez v2, :cond_b

    .line 284
    .line 285
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getReleaseDate()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    :cond_b
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setReleaseDate(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    if-eqz p2, :cond_c

    .line 293
    .line 294
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    if-nez v2, :cond_d

    .line 299
    .line 300
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getCountryName()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    :cond_d
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setCountryName(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    if-eqz p2, :cond_e

    .line 308
    .line 309
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getRestrictLevel()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    goto :goto_9

    .line 314
    :cond_e
    move-object v2, v0

    .line 315
    :goto_9
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setRestrictLevel(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    if-eqz p2, :cond_f

    .line 319
    .line 320
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getImdbRate()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    goto :goto_a

    .line 325
    :cond_f
    move-object v2, v0

    .line 326
    :goto_a
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setImdbRate(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    if-eqz p2, :cond_10

    .line 330
    .line 331
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSeNum()Ljava/lang/Integer;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    goto :goto_b

    .line 336
    :cond_10
    move-object v2, v0

    .line 337
    :goto_b
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setSeNum(Ljava/lang/Integer;)V

    .line 338
    .line 339
    .line 340
    if-eqz p2, :cond_11

    .line 341
    .line 342
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubtitles()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    goto :goto_c

    .line 347
    :cond_11
    move-object v2, v0

    .line 348
    :goto_c
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubtitles(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/DownloadItem;->getDuration()Ljava/lang/Long;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setDuration(Ljava/lang/Long;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    if-eqz v2, :cond_12

    .line 363
    .line 364
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getAverageHueLight()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    goto :goto_d

    .line 369
    :cond_12
    move-object v2, v0

    .line 370
    :goto_d
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setAverageHueLight(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/DownloadItem;->getUploadBy()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    if-nez v2, :cond_13

    .line 378
    .line 379
    move-object/from16 v2, v92

    .line 380
    .line 381
    :cond_13
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setUploadBy(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/DownloadItem;->getPostId()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setPostId(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/DownloadItem;->getEpse()Ljava/lang/Integer;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    const/4 v3, 0x0

    .line 396
    if-eqz v2, :cond_14

    .line 397
    .line 398
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 399
    .line 400
    .line 401
    move-result v2

    .line 402
    goto :goto_e

    .line 403
    :cond_14
    move v2, v3

    .line 404
    :goto_e
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setEpse(I)V

    .line 405
    .line 406
    .line 407
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/DownloadItem;->getEp()I

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setEp(I)V

    .line 412
    .line 413
    .line 414
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/DownloadItem;->getSe()I

    .line 415
    .line 416
    .line 417
    move-result v2

    .line 418
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setSe(I)V

    .line 419
    .line 420
    .line 421
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/DownloadItem;->getResolution()Ljava/lang/Integer;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    if-eqz v2, :cond_15

    .line 426
    .line 427
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 428
    .line 429
    .line 430
    move-result v3

    .line 431
    :cond_15
    invoke-virtual {v1, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setResolution(I)V

    .line 432
    .line 433
    .line 434
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getSubjectId()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectId(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    if-nez p4, :cond_16

    .line 442
    .line 443
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getGroupId()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    goto :goto_f

    .line 448
    :cond_16
    move-object/from16 v2, p4

    .line 449
    .line 450
    :goto_f
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setGroupId(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    if-eqz p8, :cond_18

    .line 454
    .line 455
    invoke-interface/range {p8 .. p8}, Ljava/lang/CharSequence;->length()I

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    if-nez v2, :cond_17

    .line 460
    .line 461
    goto :goto_10

    .line 462
    :cond_17
    move-object/from16 v2, p8

    .line 463
    .line 464
    goto :goto_11

    .line 465
    :cond_18
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getTitle()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    :goto_11
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectName(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    move-object/from16 v2, p5

    .line 473
    .line 474
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setPageFrom(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    move-object/from16 v2, p6

    .line 478
    .line 479
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setLastPageFrom(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    move-object/from16 v2, p7

    .line 483
    .line 484
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setOps(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/DownloadItem;->getSourceUrl()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    if-nez v2, :cond_19

    .line 492
    .line 493
    move-object/from16 v2, v92

    .line 494
    .line 495
    :cond_19
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setSourceUrl(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/moviedetailapi/DownloadItem;->getRequireMemberType()Ljava/lang/Integer;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setRequireMemberType(Ljava/lang/Integer;)V

    .line 503
    .line 504
    .line 505
    sget-object v2, Lcom/transsion/baselib/db/download/DownloadBean;->Companion:Lcom/transsion/baselib/db/download/DownloadBean$a;

    .line 506
    .line 507
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getSubjectType()I

    .line 508
    .line 509
    .line 510
    move-result v3

    .line 511
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 512
    .line 513
    .line 514
    move-result-object v3

    .line 515
    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean$a;->c(Ljava/lang/Integer;)I

    .line 516
    .line 517
    .line 518
    move-result v2

    .line 519
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setType(I)V

    .line 520
    .line 521
    .line 522
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getSubjectType()I

    .line 523
    .line 524
    .line 525
    move-result v2

    .line 526
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectType(I)V

    .line 527
    .line 528
    .line 529
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getDurationSeconds()Ljava/lang/Integer;

    .line 530
    .line 531
    .line 532
    move-result-object v2

    .line 533
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectDurationSeconds(Ljava/lang/Integer;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getTotalEpisode()Ljava/lang/Integer;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    const/4 v3, 0x1

    .line 541
    if-eqz v2, :cond_1a

    .line 542
    .line 543
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 544
    .line 545
    .line 546
    move-result v2

    .line 547
    goto :goto_12

    .line 548
    :cond_1a
    move v2, v3

    .line 549
    :goto_12
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setTotalEpisode(I)V

    .line 550
    .line 551
    .line 552
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getItems()Ljava/util/List;

    .line 553
    .line 554
    .line 555
    move-result-object v2

    .line 556
    if-eqz v2, :cond_1b

    .line 557
    .line 558
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 559
    .line 560
    .line 561
    move-result v0

    .line 562
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    :cond_1b
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 570
    .line 571
    .line 572
    move-result v0

    .line 573
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalEpisode()I

    .line 574
    .line 575
    .line 576
    move-result v2

    .line 577
    if-le v0, v2, :cond_1c

    .line 578
    .line 579
    invoke-virtual {v1, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setMultiresolution(I)V

    .line 580
    .line 581
    .line 582
    :cond_1c
    return-object v1
.end method


# virtual methods
.method public final A(Ljava/util/List;II)Lkotlin/Pair;
    .locals 11

    .line 1
    const-string v0, "seasons"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Iterable;

    .line 7
    .line 8
    new-instance v0, Lcom/transsnet/downloader/util/DownloadUtil$initGetPositions$$inlined$sortedBy$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsnet/downloader/util/DownloadUtil$initGetPositions$$inlined$sortedBy$1;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v0, 0x0

    .line 21
    move v1, v0

    .line 22
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    if-eqz v2, :cond_a

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    .line 34
    .line 35
    const-string v4, " "

    .line 36
    .line 37
    const-string v5, "DownloadRes"

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    if-nez p3, :cond_6

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getResolutions()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    if-eqz v7, :cond_0

    .line 47
    .line 48
    check-cast v7, Ljava/lang/Iterable;

    .line 49
    .line 50
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-nez v8, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    if-nez v8, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    move-object v8, v6

    .line 73
    check-cast v8, Lcom/transsion/moviedetailapi/bean/ResolutionItem;

    .line 74
    .line 75
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->getEpNum()I

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    move-object v10, v9

    .line 84
    check-cast v10, Lcom/transsion/moviedetailapi/bean/ResolutionItem;

    .line 85
    .line 86
    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->getEpNum()I

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    if-ge v8, v10, :cond_4

    .line 91
    .line 92
    move-object v6, v9

    .line 93
    move v8, v10

    .line 94
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    if-nez v9, :cond_3

    .line 99
    .line 100
    :goto_1
    check-cast v6, Lcom/transsion/moviedetailapi/bean/ResolutionItem;

    .line 101
    .line 102
    if-eqz v6, :cond_0

    .line 103
    .line 104
    sget-object v7, Lwf/a;->a:Lwf/a$a;

    .line 105
    .line 106
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->getEpNum()I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    new-instance v9, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v10, "initGetPositions,\u5206\u8fa8\u73870  it.epNum:"

    .line 116
    .line 117
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v7, v5, v4, v3}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getSe()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-ge v3, p2, :cond_5

    .line 138
    .line 139
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->getEpNum()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    add-int/2addr v0, v3

    .line 144
    :cond_5
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getSe()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-gt v2, p2, :cond_0

    .line 149
    .line 150
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->getEpNum()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    :goto_2
    add-int/2addr v1, v2

    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_6
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getResolutions()Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    if-eqz v7, :cond_0

    .line 162
    .line 163
    check-cast v7, Ljava/lang/Iterable;

    .line 164
    .line 165
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    if-eqz v8, :cond_8

    .line 174
    .line 175
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    move-object v9, v8

    .line 180
    check-cast v9, Lcom/transsion/moviedetailapi/bean/ResolutionItem;

    .line 181
    .line 182
    invoke-virtual {v9}, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->getResolution()I

    .line 183
    .line 184
    .line 185
    move-result v9

    .line 186
    if-ne v9, p3, :cond_7

    .line 187
    .line 188
    move-object v6, v8

    .line 189
    :cond_8
    check-cast v6, Lcom/transsion/moviedetailapi/bean/ResolutionItem;

    .line 190
    .line 191
    if-eqz v6, :cond_0

    .line 192
    .line 193
    sget-object v7, Lwf/a;->a:Lwf/a$a;

    .line 194
    .line 195
    new-instance v8, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    const-string v9, "initGetPositions,\u5206\u8fa8\u73870  resolution:"

    .line 201
    .line 202
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-virtual {v7, v5, v4, v3}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getSe()I

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    if-ge v3, p2, :cond_9

    .line 223
    .line 224
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->getEpNum()I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    add-int/2addr v0, v3

    .line 229
    :cond_9
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getSe()I

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-gt v2, p2, :cond_0

    .line 234
    .line 235
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->getEpNum()I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    goto :goto_2

    .line 240
    :cond_a
    add-int/2addr v0, v3

    .line 241
    if-ge v1, v0, :cond_b

    .line 242
    .line 243
    move v1, v0

    .line 244
    :cond_b
    new-instance p1, Lkotlin/Pair;

    .line 245
    .line 246
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object p3

    .line 254
    invoke-direct {p1, p2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    return-object p1
.end method

.method public final B(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 7

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v4, Lcom/transsnet/downloader/util/DownloadUtil$initSetDownloadInfoAndRanges$1;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-direct {v4, p1, v0}, Lcom/transsnet/downloader/util/DownloadUtil$initSetDownloadInfoAndRanges$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V

    .line 28
    .line 29
    .line 30
    const/4 v5, 0x3

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final C(Lcom/transsion/baselib/db/download/DownloadBean;)Z
    .locals 2

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeriesCollection()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeriesList()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/Iterable;

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isCheck()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    move v1, v0

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return v1
.end method

.method public final D()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-gt v0, v1, :cond_0

    .line 6
    .line 7
    :try_start_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 8
    .line 9
    filled-new-array {v0}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->s([Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    const/4 v0, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    :goto_0
    return v0
.end method

.method public final E(Lcom/transsion/baselib/db/download/DownloadBean;)Z
    .locals 5

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isVideo()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v0, :cond_6

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_6

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_6

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    sget-object v0, Lcm/f;->c:Lcm/f$a;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcm/f$a;->a()Lcm/f;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v3, "download_error_opt_off"

    .line 50
    .line 51
    invoke-virtual {v0, v3, v1}, Lcm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    :cond_2
    move-object v0, v2

    .line 64
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getException()Lcom/transsion/baselib/db/download/DownloadException;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-eqz v3, :cond_4

    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadException;->getCode()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPreErrorCode()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-ne v3, v4, :cond_4

    .line 79
    .line 80
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    return v1

    .line 87
    :cond_4
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isCNDError()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_5

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->is4xxError()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_6

    .line 98
    .line 99
    :cond_5
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getRequestNewSourceCount()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    const/4 v0, 0x5

    .line 104
    if-ge p1, v0, :cond_6

    .line 105
    .line 106
    const/4 p1, 0x1

    .line 107
    return p1

    .line 108
    :cond_6
    :goto_0
    return v1
.end method

.method public final F(Landroidx/fragment/app/Fragment;)Z
    .locals 5

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsnet/downloader/util/DownloadUtil;->d:[Ljava/lang/String;

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    .line 13
    aget-object v4, v0, v2

    .line 14
    .line 15
    invoke-virtual {p1, v4}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    return v3
.end method

.method public final G(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 96

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "item"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v1, v2

    .line 21
    :goto_0
    sget-object v3, Lcom/transsion/moviedetailapi/bean/MediaType;->VIDEO:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move-object v1, v2

    .line 45
    :goto_1
    const-string v3, "VIDEO"

    .line 46
    .line 47
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    return-object v2

    .line 54
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getVideo()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lcom/transsion/moviedetailapi/bean/Video;

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    move-object v1, v2

    .line 74
    :goto_2
    if-eqz v1, :cond_4

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    move-object v5, v3

    .line 81
    goto :goto_3

    .line 82
    :cond_4
    move-object v5, v2

    .line 83
    :goto_3
    if-eqz v5, :cond_13

    .line 84
    .line 85
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-nez v3, :cond_5

    .line 90
    .line 91
    goto/16 :goto_e

    .line 92
    .line 93
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    if-eqz v3, :cond_7

    .line 98
    .line 99
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-nez v3, :cond_6

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    :goto_4
    move-object v7, v3

    .line 111
    goto :goto_7

    .line 112
    :cond_7
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    if-eqz v3, :cond_9

    .line 117
    .line 118
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-nez v3, :cond_8

    .line 123
    .line 124
    goto :goto_6

    .line 125
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    goto :goto_4

    .line 130
    :cond_9
    :goto_6
    const-string v3, ""

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    if-nez v3, :cond_a

    .line 138
    .line 139
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    :cond_a
    move-object v6, v3

    .line 148
    const/4 v3, 0x0

    .line 149
    invoke-virtual {v0, v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getCoverUrl(Z)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    const-wide/16 v9, 0x0

    .line 154
    .line 155
    if-eqz v1, :cond_b

    .line 156
    .line 157
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getSize()Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    if-eqz v4, :cond_b

    .line 162
    .line 163
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    int-to-long v11, v4

    .line 168
    goto :goto_8

    .line 169
    :cond_b
    move-wide v11, v9

    .line 170
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v28

    .line 174
    if-eqz v1, :cond_c

    .line 175
    .line 176
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getDuration()Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    if-eqz v4, :cond_c

    .line 181
    .line 182
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    int-to-long v9, v4

    .line 187
    :cond_c
    const-wide/16 v13, 0x3e8

    .line 188
    .line 189
    mul-long/2addr v13, v9

    .line 190
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    if-eqz v4, :cond_d

    .line 195
    .line 196
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    move-object/from16 v35, v4

    .line 201
    .line 202
    goto :goto_9

    .line 203
    :cond_d
    move-object/from16 v35, v2

    .line 204
    .line 205
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    if-eqz v4, :cond_e

    .line 210
    .line 211
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    move-object/from16 v38, v4

    .line 216
    .line 217
    goto :goto_a

    .line 218
    :cond_e
    move-object/from16 v38, v2

    .line 219
    .line 220
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    if-eqz v4, :cond_f

    .line 225
    .line 226
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/User;->getNickname()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    :cond_f
    move-object/from16 v43, v2

    .line 231
    .line 232
    if-eqz v1, :cond_10

    .line 233
    .line 234
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getWidth()Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    if-eqz v2, :cond_10

    .line 239
    .line 240
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    move/from16 v31, v2

    .line 245
    .line 246
    goto :goto_b

    .line 247
    :cond_10
    move/from16 v31, v3

    .line 248
    .line 249
    :goto_b
    if-eqz v1, :cond_11

    .line 250
    .line 251
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getHeight()Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    if-eqz v2, :cond_11

    .line 256
    .line 257
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    move/from16 v32, v2

    .line 262
    .line 263
    goto :goto_c

    .line 264
    :cond_11
    move/from16 v32, v3

    .line 265
    .line 266
    :goto_c
    if-eqz v1, :cond_12

    .line 267
    .line 268
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Video;->getHeight()Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    if-eqz v1, :cond_12

    .line 273
    .line 274
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    goto :goto_d

    .line 279
    :cond_12
    move v1, v3

    .line 280
    :goto_d
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v65

    .line 284
    const/4 v2, 0x1

    .line 285
    invoke-virtual {v0, v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getCoverUrl(Z)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v56

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 290
    .line 291
    .line 292
    move-result-wide v22

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 294
    .line 295
    .line 296
    move-result-wide v2

    .line 297
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v48

    .line 305
    new-instance v10, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 306
    .line 307
    move-object v4, v10

    .line 308
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 309
    .line 310
    .line 311
    move-result-object v9

    .line 312
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 313
    .line 314
    .line 315
    move-result-object v13

    .line 316
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 317
    .line 318
    .line 319
    move-result-object v14

    .line 320
    const v94, 0xffff

    .line 321
    .line 322
    .line 323
    const/16 v95, 0x0

    .line 324
    .line 325
    const/4 v11, 0x0

    .line 326
    const-wide/16 v15, 0x0

    .line 327
    .line 328
    const/16 v17, 0x0

    .line 329
    .line 330
    const/16 v18, 0x0

    .line 331
    .line 332
    const/16 v19, 0x9

    .line 333
    .line 334
    const-wide/16 v20, 0x0

    .line 335
    .line 336
    const/16 v24, 0x0

    .line 337
    .line 338
    const/16 v25, 0x0

    .line 339
    .line 340
    const/16 v26, 0x0

    .line 341
    .line 342
    const/16 v27, 0x0

    .line 343
    .line 344
    const/16 v29, 0x0

    .line 345
    .line 346
    const/16 v30, 0x0

    .line 347
    .line 348
    const/16 v33, 0x0

    .line 349
    .line 350
    const/16 v34, 0x0

    .line 351
    .line 352
    const/16 v36, 0x0

    .line 353
    .line 354
    const/16 v37, 0x0

    .line 355
    .line 356
    const-wide/16 v39, 0x0

    .line 357
    .line 358
    const/16 v41, 0x1

    .line 359
    .line 360
    const/16 v42, 0x0

    .line 361
    .line 362
    const/16 v44, 0x0

    .line 363
    .line 364
    const-wide/16 v45, 0x0

    .line 365
    .line 366
    const/16 v47, 0x0

    .line 367
    .line 368
    const-wide/16 v49, 0x0

    .line 369
    .line 370
    const/16 v51, 0x0

    .line 371
    .line 372
    const-wide/16 v52, 0x0

    .line 373
    .line 374
    const/16 v54, 0x0

    .line 375
    .line 376
    const/16 v55, 0x0

    .line 377
    .line 378
    const/16 v57, 0x0

    .line 379
    .line 380
    const/16 v58, 0x0

    .line 381
    .line 382
    const/16 v59, 0x0

    .line 383
    .line 384
    const/16 v60, 0x1

    .line 385
    .line 386
    const/16 v61, 0x0

    .line 387
    .line 388
    const/16 v62, 0x0

    .line 389
    .line 390
    const/16 v63, 0x0

    .line 391
    .line 392
    const/16 v64, 0x0

    .line 393
    .line 394
    const/16 v66, 0x0

    .line 395
    .line 396
    const/16 v67, 0x0

    .line 397
    .line 398
    const/16 v68, 0x0

    .line 399
    .line 400
    const/16 v69, 0x0

    .line 401
    .line 402
    const/16 v70, 0x0

    .line 403
    .line 404
    const/16 v71, 0x0

    .line 405
    .line 406
    const/16 v72, 0x0

    .line 407
    .line 408
    const/16 v73, 0x0

    .line 409
    .line 410
    const/16 v74, 0x0

    .line 411
    .line 412
    const/16 v75, 0x0

    .line 413
    .line 414
    const/16 v76, 0x0

    .line 415
    .line 416
    const/16 v77, 0x0

    .line 417
    .line 418
    const/16 v78, 0x0

    .line 419
    .line 420
    const/16 v79, 0x0

    .line 421
    .line 422
    const/16 v80, 0x0

    .line 423
    .line 424
    const/16 v81, 0x0

    .line 425
    .line 426
    const/16 v82, 0x0

    .line 427
    .line 428
    const/16 v83, 0x0

    .line 429
    .line 430
    const/16 v84, 0x0

    .line 431
    .line 432
    const/16 v85, 0x0

    .line 433
    .line 434
    const/16 v86, 0x0

    .line 435
    .line 436
    const/16 v87, 0x0

    .line 437
    .line 438
    const/16 v88, 0x0

    .line 439
    .line 440
    const/16 v89, 0x0

    .line 441
    .line 442
    const/16 v90, 0x0

    .line 443
    .line 444
    const/16 v91, 0x0

    .line 445
    .line 446
    const v92, -0x4990b3c0

    .line 447
    .line 448
    .line 449
    const v93, -0x211046

    .line 450
    .line 451
    .line 452
    const-string v12, ""

    .line 453
    .line 454
    move-object v2, v10

    .line 455
    move-object/from16 v10, v28

    .line 456
    .line 457
    move/from16 v28, v1

    .line 458
    .line 459
    invoke-direct/range {v4 .. v95}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 460
    .line 461
    .line 462
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    invoke-virtual {v2, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setOriginData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    .line 468
    .line 469
    goto :goto_e

    .line 470
    :catch_0
    move-exception v0

    .line 471
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 472
    .line 473
    .line 474
    :cond_13
    :goto_e
    return-object v2
.end method

.method public final H(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 3

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setProgress(J)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Iterable;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/transsion/baselib/db/download/DownloadRange;

    .line 32
    .line 33
    invoke-virtual {v2, v0, v1}, Lcom/transsion/baselib/db/download/DownloadRange;->setProgress(J)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public final I(ZLcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 1

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeriesCollection()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p2, p1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSeriesAllCheck(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeriesList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Ljava/lang/Iterable;

    .line 21
    .line 22
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/transsion/baselib/db/download/DownloadBean;->setCheck(Z)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method

.method public final J(Landroid/content/Context;ZLcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v10, p0

    move/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v9, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v2, p8

    move-object/from16 v14, p9

    move-object/from16 v3, p11

    instance-of v4, v3, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;

    iget v5, v4, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->label:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->label:I

    :goto_0
    move-object v15, v4

    goto :goto_1

    :cond_0
    new-instance v4, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;

    invoke-direct {v4, v10, v3}, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;-><init>(Lcom/transsnet/downloader/util/DownloadUtil;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object v3, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v8

    .line 1
    iget v4, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->label:I

    const/16 v16, 0x0

    const/4 v5, 0x2

    const-string v7, "resource_save"

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    if-eq v4, v6, :cond_4

    if-eq v4, v5, :cond_3

    const/4 v0, 0x3

    if-eq v4, v0, :cond_2

    const/4 v0, 0x4

    if-ne v4, v0, :cond_1

    iget-object v0, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v14, v0

    move-object v0, v10

    move-object v10, v1

    move-object v1, v7

    goto/16 :goto_9

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v10, v0

    goto/16 :goto_8

    :cond_3
    iget-object v0, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v14, v1

    move-object v1, v7

    goto/16 :goto_7

    :cond_4
    iget-object v0, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v14, v0

    goto/16 :goto_5

    :cond_5
    const/16 v18, 0x4

    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 2
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    :cond_6
    move-object v0, v10

    goto/16 :goto_b

    .line 3
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    if-eqz v0, :cond_8

    .line 4
    const-string v3, "\u4e0b\u8f7d\u5b8c\u6210"

    :goto_2
    move-object v4, v3

    goto :goto_3

    :cond_8
    const-string v3, "\u4e0b\u8f7d\u76ee\u5f55\u8f6c\u5b58"

    goto :goto_2

    .line 5
    :goto_3
    const-string v3, ", targetRootPath = "

    const-string v5, " targetRootPathType:"

    move-object/from16 v20, v8

    const-string v8, ", beforeRootPath = "

    const-string v0, " \uff0c\u8f6c\u5b58\u5230\u76f8\u518c \u6210\u529f beforeRootPathType:"

    const-string v6, ""

    move-object/from16 v21, v5

    const/4 v5, 0x2

    if-eq v13, v5, :cond_f

    move-object/from16 p11, v7

    const/4 v7, 0x3

    if-eq v13, v7, :cond_9

    :goto_4
    move-object v0, v10

    goto/16 :goto_a

    .line 6
    :cond_9
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v6, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 7
    sget-object v6, Lcom/transsnet/downloader/y;->a:Lcom/transsnet/downloader/y;

    new-instance v1, Lcom/transsnet/downloader/util/n;

    invoke-direct {v1, v2}, Lcom/transsnet/downloader/util/n;-><init>(Lkotlin/jvm/functions/Function2;)V

    new-instance v2, Lcom/transsnet/downloader/util/o;

    invoke-direct {v2, v7}, Lcom/transsnet/downloader/util/o;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object/from16 v17, v2

    move-object v2, v6

    move-object v6, v3

    move-object/from16 v3, p1

    move-object v10, v4

    move-object/from16 v4, v19

    move-object/from16 v14, v21

    move-object/from16 v5, p4

    move-object/from16 v21, v15

    move-object v15, v6

    move-object v6, v1

    move-object/from16 v1, p11

    move-object/from16 v22, v7

    move-object/from16 v7, v17

    invoke-virtual/range {v2 .. v7}, Lcom/transsnet/downloader/y;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 8
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    .line 10
    invoke-virtual {v2, v1, v0, v3}, Lwf/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    move-object/from16 v0, v22

    .line 11
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    move-object/from16 v14, p9

    move-object/from16 v15, v21

    .line 12
    iput-object v14, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->L$0:Ljava/lang/Object;

    iput v3, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->label:I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v19

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v11, v20

    move/from16 v8, p10

    move-object v9, v15

    invoke-direct/range {v0 .. v9}, Lcom/transsnet/downloader/util/DownloadUtil;->Q(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_a

    return-object v11

    :cond_a
    :goto_5
    if-eqz v14, :cond_b

    const/4 v0, 0x1

    .line 13
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v14, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_6
    move-object/from16 v0, p0

    goto/16 :goto_a

    :cond_c
    move-object/from16 v14, p9

    move-object/from16 v11, v20

    move-object/from16 v15, v21

    .line 14
    iput-object v14, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->L$0:Ljava/lang/Object;

    iput-object v10, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->L$1:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->label:I

    move/from16 v0, p2

    move-object/from16 v5, p3

    move-object v4, v10

    move-object/from16 v10, p0

    invoke-direct {v10, v5, v0, v15}, Lcom/transsnet/downloader/util/DownloadUtil;->P(Lcom/transsion/baselib/db/download/DownloadBean;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_d

    return-object v11

    :cond_d
    move-object v0, v4

    :goto_7
    if-eqz v14, :cond_e

    .line 15
    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v14, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_e
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \uff0c\u8f6c\u5b58\u5230\u76f8\u518c \u5931\u8d25"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lwf/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_f
    move-object v10, v0

    move-object v5, v1

    move-object v1, v7

    move-object/from16 v0, v21

    const/4 v7, 0x3

    move-object/from16 v24, v15

    move-object v15, v3

    move-object/from16 v3, v24

    .line 17
    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v6, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 18
    sget-object v6, Lcom/transsnet/downloader/y;->a:Lcom/transsnet/downloader/y;

    new-instance v7, Lcom/transsnet/downloader/util/p;

    invoke-direct {v7, v2}, Lcom/transsnet/downloader/util/p;-><init>(Lkotlin/jvm/functions/Function2;)V

    new-instance v2, Lcom/transsnet/downloader/util/q;

    invoke-direct {v2, v14}, Lcom/transsnet/downloader/util/q;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object/from16 v21, v2

    move-object v2, v6

    move-object v6, v3

    move-object/from16 v3, p1

    move-object/from16 p11, v14

    move-object v14, v4

    move-object/from16 v4, v19

    move-object/from16 v5, p4

    move-object/from16 v23, v6

    move-object/from16 v6, p6

    move-object/from16 v17, v1

    move-object v1, v8

    move-object/from16 v8, v21

    invoke-virtual/range {v2 .. v8}, Lcom/transsnet/downloader/y;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 19
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v17

    const/4 v3, 0x1

    .line 21
    invoke-virtual {v2, v1, v0, v3}, Lwf/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    move-object/from16 v0, p11

    .line 22
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    move-object/from16 v10, p9

    move-object/from16 v15, v23

    .line 23
    iput-object v10, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->L$0:Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->label:I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v19

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v8, p10

    move-object v9, v15

    invoke-direct/range {v0 .. v9}, Lcom/transsnet/downloader/util/DownloadUtil;->Q(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v2, v20

    if-ne v0, v2, :cond_10

    return-object v2

    :cond_10
    :goto_8
    if-eqz v10, :cond_b

    const/4 v0, 0x1

    .line 24
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v10, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_11
    move-object/from16 v10, p9

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move-object/from16 v15, v23

    .line 25
    iput-object v10, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->L$0:Ljava/lang/Object;

    iput-object v14, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->L$1:Ljava/lang/Object;

    const/4 v0, 0x4

    iput v0, v15, Lcom/transsnet/downloader/util/DownloadUtil$transferFile$1;->label:I

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object v4, v2

    move/from16 v2, p2

    invoke-direct {v0, v3, v2, v15}, Lcom/transsnet/downloader/util/DownloadUtil;->P(Lcom/transsion/baselib/db/download/DownloadBean;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_12

    return-object v4

    :cond_12
    :goto_9
    if-eqz v10, :cond_13

    .line 26
    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v10, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_13
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \uff0c\u8f6c\u5b58\u5230sdcard\uff0c\u8f6c\u5b58\u5931\u8d25"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lwf/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 28
    :goto_a
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1

    .line 29
    :goto_b
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method

.method public final i(Lcom/transsion/baselib/db/download/DownloadBean;)Z
    .locals 14

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long v0, v0, v2

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-wide v4, v2

    .line 29
    :goto_0
    const-wide/32 v6, 0x1e00000

    .line 30
    .line 31
    .line 32
    cmp-long v0, v4, v6

    .line 33
    .line 34
    if-gtz v0, :cond_1

    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    new-instance v4, Ljava/io/File;

    .line 45
    .line 46
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 50
    .line 51
    .line 52
    move-result-wide v5

    .line 53
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    const-string v7, "\uff0cpath = "

    .line 58
    .line 59
    const-string v8, ",progress = "

    .line 60
    .line 61
    const-string v9, "download"

    .line 62
    .line 63
    const/4 v10, 0x1

    .line 64
    if-eqz v4, :cond_3

    .line 65
    .line 66
    cmp-long v2, v5, v2

    .line 67
    .line 68
    if-lez v2, :cond_3

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    .line 71
    .line 72
    .line 73
    move-result-wide v2

    .line 74
    sub-long/2addr v2, v5

    .line 75
    const-wide/16 v11, 0x1400

    .line 76
    .line 77
    cmp-long v4, v2, v11

    .line 78
    .line 79
    if-lez v4, :cond_2

    .line 80
    .line 81
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTitleName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    new-instance v12, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v13, "\u6587\u4ef6\u5df2\u7ecf\u5f00\u59cb\u51fa\u73b0\u5f02\u5e38 name\uff1a"

    .line 93
    .line 94
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    invoke-virtual {v4, v9, v11, v10}, Lwf/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 105
    .line 106
    .line 107
    :cond_2
    const-wide/32 v11, 0xa00000

    .line 108
    .line 109
    .line 110
    cmp-long v4, v2, v11

    .line 111
    .line 112
    if-lez v4, :cond_4

    .line 113
    .line 114
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    .line 117
    .line 118
    .line 119
    move-result-wide v11

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v4, "\u91cd\u65b0\u4e0b\u8f7d\uff0cfileLength = "

    .line 126
    .line 127
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v4, ",extra = "

    .line 140
    .line 141
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {v1, v9, p1, v10}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 158
    .line 159
    .line 160
    return v10

    .line 161
    :cond_3
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    .line 164
    .line 165
    .line 166
    move-result-wide v2

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v4, "\u6587\u4ef6\u4e0d\u5b58\u5728\uff0c\u91cd\u65b0\u4e0b\u8f7d\uff0cfileLength = "

    .line 173
    .line 174
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {v1, v9, p1, v10}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 197
    .line 198
    .line 199
    return v10

    .line 200
    :cond_4
    :goto_1
    return v1
.end method

.method public final j(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 101

    .line 1
    sget-object v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-nez v3, :cond_2

    .line 23
    .line 24
    :cond_0
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getDownloadUrl()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move-object v3, v2

    .line 38
    :goto_0
    if-nez v3, :cond_2

    .line 39
    .line 40
    move-object v3, v1

    .line 41
    :cond_2
    invoke-virtual {v0, v3}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->q(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 48
    .line 49
    const/4 v7, 0x4

    .line 50
    const/4 v8, 0x0

    .line 51
    const-string v4, "downloadAna"

    .line 52
    .line 53
    const-string v5, "single\uff0c get download bean from database"

    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_1a

    .line 60
    .line 61
    :cond_3
    new-instance v0, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 62
    .line 63
    if-eqz p1, :cond_5

    .line 64
    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    if-eqz v3, :cond_5

    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getDownloadUrl()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    if-nez v3, :cond_4

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    move-object v10, v3

    .line 79
    goto :goto_2

    .line 80
    :cond_5
    :goto_1
    move-object v10, v1

    .line 81
    :goto_2
    if-eqz p1, :cond_7

    .line 82
    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    if-eqz v3, :cond_7

    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceId()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    if-nez v3, :cond_6

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_6
    move-object v11, v3

    .line 97
    goto :goto_4

    .line 98
    :cond_7
    :goto_3
    move-object v11, v1

    .line 99
    :goto_4
    if-eqz p1, :cond_9

    .line 100
    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    if-nez v3, :cond_8

    .line 106
    .line 107
    goto :goto_5

    .line 108
    :cond_8
    move-object v12, v3

    .line 109
    goto :goto_6

    .line 110
    :cond_9
    :goto_5
    move-object v12, v1

    .line 111
    :goto_6
    if-eqz p1, :cond_a

    .line 112
    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    if-eqz v3, :cond_a

    .line 118
    .line 119
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    move-object v13, v3

    .line 124
    goto :goto_7

    .line 125
    :cond_a
    move-object v13, v2

    .line 126
    :goto_7
    if-eqz p1, :cond_b

    .line 127
    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    if-eqz v3, :cond_b

    .line 133
    .line 134
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getTotalSize()Ljava/lang/Long;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    move-object v14, v3

    .line 139
    goto :goto_8

    .line 140
    :cond_b
    move-object v14, v2

    .line 141
    :goto_8
    if-eqz p1, :cond_c

    .line 142
    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    move-object/from16 v66, v3

    .line 148
    .line 149
    goto :goto_9

    .line 150
    :cond_c
    move-object/from16 v66, v2

    .line 151
    .line 152
    :goto_9
    const v99, 0xffff

    .line 153
    .line 154
    .line 155
    const/16 v100, 0x0

    .line 156
    .line 157
    const/4 v15, 0x0

    .line 158
    const/16 v16, 0x0

    .line 159
    .line 160
    const/16 v17, 0x0

    .line 161
    .line 162
    const/16 v18, 0x0

    .line 163
    .line 164
    const/16 v19, 0x0

    .line 165
    .line 166
    const-wide/16 v20, 0x0

    .line 167
    .line 168
    const/16 v22, 0x0

    .line 169
    .line 170
    const/16 v23, 0x0

    .line 171
    .line 172
    const/16 v24, 0x0

    .line 173
    .line 174
    const-wide/16 v25, 0x0

    .line 175
    .line 176
    const-wide/16 v27, 0x0

    .line 177
    .line 178
    const/16 v29, 0x0

    .line 179
    .line 180
    const/16 v30, 0x0

    .line 181
    .line 182
    const/16 v31, 0x0

    .line 183
    .line 184
    const/16 v32, 0x0

    .line 185
    .line 186
    const/16 v33, 0x0

    .line 187
    .line 188
    const/16 v34, 0x0

    .line 189
    .line 190
    const/16 v35, 0x0

    .line 191
    .line 192
    const/16 v36, 0x0

    .line 193
    .line 194
    const/16 v37, 0x0

    .line 195
    .line 196
    const/16 v38, 0x0

    .line 197
    .line 198
    const/16 v39, 0x0

    .line 199
    .line 200
    const/16 v40, 0x0

    .line 201
    .line 202
    const/16 v41, 0x0

    .line 203
    .line 204
    const/16 v42, 0x0

    .line 205
    .line 206
    const/16 v43, 0x0

    .line 207
    .line 208
    const-wide/16 v44, 0x0

    .line 209
    .line 210
    const/16 v46, 0x0

    .line 211
    .line 212
    const/16 v47, 0x0

    .line 213
    .line 214
    const/16 v48, 0x0

    .line 215
    .line 216
    const/16 v49, 0x0

    .line 217
    .line 218
    const-wide/16 v50, 0x0

    .line 219
    .line 220
    const/16 v52, 0x0

    .line 221
    .line 222
    const/16 v53, 0x0

    .line 223
    .line 224
    const-wide/16 v54, 0x0

    .line 225
    .line 226
    const/16 v56, 0x0

    .line 227
    .line 228
    const-wide/16 v57, 0x0

    .line 229
    .line 230
    const/16 v59, 0x0

    .line 231
    .line 232
    const/16 v60, 0x0

    .line 233
    .line 234
    const/16 v61, 0x0

    .line 235
    .line 236
    const/16 v62, 0x0

    .line 237
    .line 238
    const/16 v63, 0x0

    .line 239
    .line 240
    const/16 v64, 0x0

    .line 241
    .line 242
    const/16 v65, 0x0

    .line 243
    .line 244
    const/16 v67, 0x0

    .line 245
    .line 246
    const/16 v68, 0x0

    .line 247
    .line 248
    const/16 v69, 0x0

    .line 249
    .line 250
    const/16 v70, 0x0

    .line 251
    .line 252
    const/16 v71, 0x0

    .line 253
    .line 254
    const/16 v72, 0x0

    .line 255
    .line 256
    const/16 v73, 0x0

    .line 257
    .line 258
    const/16 v74, 0x0

    .line 259
    .line 260
    const/16 v75, 0x0

    .line 261
    .line 262
    const/16 v76, 0x0

    .line 263
    .line 264
    const/16 v77, 0x0

    .line 265
    .line 266
    const/16 v78, 0x0

    .line 267
    .line 268
    const/16 v79, 0x0

    .line 269
    .line 270
    const/16 v80, 0x0

    .line 271
    .line 272
    const/16 v81, 0x0

    .line 273
    .line 274
    const/16 v82, 0x0

    .line 275
    .line 276
    const/16 v83, 0x0

    .line 277
    .line 278
    const/16 v84, 0x0

    .line 279
    .line 280
    const/16 v85, 0x0

    .line 281
    .line 282
    const/16 v86, 0x0

    .line 283
    .line 284
    const/16 v87, 0x0

    .line 285
    .line 286
    const/16 v88, 0x0

    .line 287
    .line 288
    const/16 v89, 0x0

    .line 289
    .line 290
    const/16 v90, 0x0

    .line 291
    .line 292
    const/16 v91, 0x0

    .line 293
    .line 294
    const/16 v92, 0x0

    .line 295
    .line 296
    const/16 v93, 0x0

    .line 297
    .line 298
    const/16 v94, 0x0

    .line 299
    .line 300
    const/16 v95, 0x0

    .line 301
    .line 302
    const/16 v96, 0x0

    .line 303
    .line 304
    const/16 v97, -0x20

    .line 305
    .line 306
    const v98, -0x20001

    .line 307
    .line 308
    .line 309
    move-object v9, v0

    .line 310
    invoke-direct/range {v9 .. v100}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 311
    .line 312
    .line 313
    if-eqz p1, :cond_d

    .line 314
    .line 315
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    goto :goto_a

    .line 320
    :cond_d
    move-object v3, v2

    .line 321
    :goto_a
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setGenre(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    if-eqz p1, :cond_e

    .line 325
    .line 326
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getRestrictLevel()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    goto :goto_b

    .line 331
    :cond_e
    move-object v3, v2

    .line 332
    :goto_b
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setRestrictLevel(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    if-eqz p1, :cond_f

    .line 336
    .line 337
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    goto :goto_c

    .line 342
    :cond_f
    move-object v3, v2

    .line 343
    :goto_c
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setReleaseDate(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    if-eqz p1, :cond_10

    .line 347
    .line 348
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getImdbRate()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    goto :goto_d

    .line 353
    :cond_10
    move-object v3, v2

    .line 354
    :goto_d
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setImdbRate(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    if-eqz p1, :cond_11

    .line 358
    .line 359
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    goto :goto_e

    .line 364
    :cond_11
    move-object v3, v2

    .line 365
    :goto_e
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setCountryName(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    if-eqz p1, :cond_12

    .line 369
    .line 370
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSeNum()Ljava/lang/Integer;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    goto :goto_f

    .line 375
    :cond_12
    move-object v3, v2

    .line 376
    :goto_f
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setSeNum(Ljava/lang/Integer;)V

    .line 377
    .line 378
    .line 379
    if-eqz p1, :cond_13

    .line 380
    .line 381
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubtitles()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    goto :goto_10

    .line 386
    :cond_13
    move-object v3, v2

    .line 387
    :goto_10
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubtitles(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    if-eqz p1, :cond_14

    .line 391
    .line 392
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    if-eqz v3, :cond_14

    .line 397
    .line 398
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    goto :goto_11

    .line 403
    :cond_14
    move-object v3, v2

    .line 404
    :goto_11
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setThumbnail(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    if-eqz p1, :cond_15

    .line 408
    .line 409
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    if-eqz v3, :cond_15

    .line 414
    .line 415
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getPostId()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    goto :goto_12

    .line 420
    :cond_15
    move-object v3, v2

    .line 421
    :goto_12
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setPostId(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    if-eqz p1, :cond_16

    .line 425
    .line 426
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    goto :goto_13

    .line 431
    :cond_16
    move-object v3, v2

    .line 432
    :goto_13
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectId(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    move-object/from16 v3, p5

    .line 436
    .line 437
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setGroupId(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    if-eqz p1, :cond_17

    .line 441
    .line 442
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    goto :goto_14

    .line 447
    :cond_17
    move-object v3, v2

    .line 448
    :goto_14
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectName(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    if-eqz p1, :cond_18

    .line 452
    .line 453
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 454
    .line 455
    .line 456
    move-result-object v3

    .line 457
    if-eqz v3, :cond_18

    .line 458
    .line 459
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResolution()Ljava/lang/Integer;

    .line 460
    .line 461
    .line 462
    move-result-object v3

    .line 463
    if-eqz v3, :cond_18

    .line 464
    .line 465
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 466
    .line 467
    .line 468
    move-result v3

    .line 469
    goto :goto_15

    .line 470
    :cond_18
    const/4 v3, 0x0

    .line 471
    :goto_15
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setResolution(I)V

    .line 472
    .line 473
    .line 474
    sget-object v3, Lcom/transsion/baselib/db/download/DownloadBean;->Companion:Lcom/transsion/baselib/db/download/DownloadBean$a;

    .line 475
    .line 476
    if-eqz p1, :cond_19

    .line 477
    .line 478
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 479
    .line 480
    .line 481
    move-result-object v4

    .line 482
    goto :goto_16

    .line 483
    :cond_19
    move-object v4, v2

    .line 484
    :goto_16
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean$a;->c(Ljava/lang/Integer;)I

    .line 485
    .line 486
    .line 487
    move-result v3

    .line 488
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setType(I)V

    .line 489
    .line 490
    .line 491
    if-eqz p1, :cond_1a

    .line 492
    .line 493
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 494
    .line 495
    .line 496
    move-result-object v3

    .line 497
    if-eqz v3, :cond_1a

    .line 498
    .line 499
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 500
    .line 501
    .line 502
    move-result v3

    .line 503
    goto :goto_17

    .line 504
    :cond_1a
    sget-object v3, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    .line 505
    .line 506
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 507
    .line 508
    .line 509
    move-result v3

    .line 510
    :goto_17
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectType(I)V

    .line 511
    .line 512
    .line 513
    if-eqz p1, :cond_1b

    .line 514
    .line 515
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 516
    .line 517
    .line 518
    move-result-object v3

    .line 519
    if-eqz v3, :cond_1b

    .line 520
    .line 521
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getUploadBy()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    if-nez v3, :cond_1d

    .line 526
    .line 527
    :cond_1b
    if-nez p6, :cond_1c

    .line 528
    .line 529
    move-object v3, v1

    .line 530
    goto :goto_18

    .line 531
    :cond_1c
    move-object/from16 v3, p6

    .line 532
    .line 533
    :cond_1d
    :goto_18
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setUploadBy(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    if-eqz p1, :cond_1f

    .line 537
    .line 538
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 539
    .line 540
    .line 541
    move-result-object v3

    .line 542
    if-eqz v3, :cond_1f

    .line 543
    .line 544
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceLink()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v3

    .line 548
    if-nez v3, :cond_1e

    .line 549
    .line 550
    goto :goto_19

    .line 551
    :cond_1e
    move-object v1, v3

    .line 552
    :cond_1f
    :goto_19
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSourceUrl(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    :goto_1a
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 556
    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 560
    .line 561
    .line 562
    const-string v4, "single\uff0c add download task\uff0c "

    .line 563
    .line 564
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v5

    .line 574
    const/4 v7, 0x4

    .line 575
    const/4 v8, 0x0

    .line 576
    const-string v4, "downloadAna"

    .line 577
    .line 578
    const/4 v6, 0x0

    .line 579
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 580
    .line 581
    .line 582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 583
    .line 584
    .line 585
    move-result-wide v3

    .line 586
    invoke-virtual {v0, v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setCreateAt(J)V

    .line 587
    .line 588
    .line 589
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 590
    .line 591
    .line 592
    move-result-wide v3

    .line 593
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 594
    .line 595
    .line 596
    move-result-object v1

    .line 597
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setUpdateTimeStamp(Ljava/lang/Long;)V

    .line 598
    .line 599
    .line 600
    move-object/from16 v1, p2

    .line 601
    .line 602
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setPageFrom(Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    move-object/from16 v1, p3

    .line 606
    .line 607
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setLastPageFrom(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    move-object/from16 v1, p4

    .line 611
    .line 612
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setOps(Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 616
    .line 617
    .line 618
    move-result-object v1

    .line 619
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    const-string v3, "toString(...)"

    .line 624
    .line 625
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setTaskId(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    if-eqz p1, :cond_20

    .line 632
    .line 633
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceAboutDuration()J

    .line 634
    .line 635
    .line 636
    move-result-wide v1

    .line 637
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 638
    .line 639
    .line 640
    move-result-object v2

    .line 641
    :cond_20
    invoke-virtual {v0, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setDuration(Ljava/lang/Long;)V

    .line 642
    .line 643
    .line 644
    return-object v0
.end method

.method public final k(Lcom/transsnet/downloader/bean/DownloadUrlBean;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 99

    .line 1
    const-string v0, "urlBean"

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadUrlBean;->getResource()Lcom/transsion/moviedetailapi/DownloadItem;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadUrlBean;->getTotalEpisode()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    new-instance v8, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 17
    .line 18
    const-string v95, ""

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v4, v3

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    move-object/from16 v4, v95

    .line 32
    .line 33
    :goto_1
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/DownloadItem;->getResourceId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    if-nez v3, :cond_2

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move-object v5, v3

    .line 43
    goto :goto_3

    .line 44
    :cond_3
    :goto_2
    move-object/from16 v5, v95

    .line 45
    .line 46
    :goto_3
    if-eqz v0, :cond_5

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/DownloadItem;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    if-nez v3, :cond_4

    .line 53
    .line 54
    goto :goto_4

    .line 55
    :cond_4
    move-object v6, v3

    .line 56
    goto :goto_5

    .line 57
    :cond_5
    :goto_4
    move-object/from16 v6, v95

    .line 58
    .line 59
    :goto_5
    const/16 v96, 0x0

    .line 60
    .line 61
    if-eqz p2, :cond_6

    .line 62
    .line 63
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-eqz v3, :cond_6

    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    move-object v7, v3

    .line 74
    goto :goto_6

    .line 75
    :cond_6
    move-object/from16 v7, v96

    .line 76
    .line 77
    :goto_6
    if-eqz v0, :cond_7

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/DownloadItem;->getSize()Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    move-object/from16 v60, v3

    .line 84
    .line 85
    goto :goto_7

    .line 86
    :cond_7
    move-object/from16 v60, v96

    .line 87
    .line 88
    :goto_7
    if-eqz p2, :cond_8

    .line 89
    .line 90
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    move-object/from16 v97, v3

    .line 95
    .line 96
    goto :goto_8

    .line 97
    :cond_8
    move-object/from16 v97, v96

    .line 98
    .line 99
    :goto_8
    const v93, 0xffff

    .line 100
    .line 101
    .line 102
    const/16 v94, 0x0

    .line 103
    .line 104
    const/4 v9, 0x0

    .line 105
    const/4 v10, 0x0

    .line 106
    const/4 v11, 0x0

    .line 107
    const/4 v12, 0x0

    .line 108
    const/4 v13, 0x0

    .line 109
    const-wide/16 v14, 0x0

    .line 110
    .line 111
    const/16 v16, 0x0

    .line 112
    .line 113
    const/16 v17, 0x0

    .line 114
    .line 115
    const/16 v18, 0x0

    .line 116
    .line 117
    const-wide/16 v19, 0x0

    .line 118
    .line 119
    const-wide/16 v21, 0x0

    .line 120
    .line 121
    const/16 v23, 0x0

    .line 122
    .line 123
    const/16 v24, 0x0

    .line 124
    .line 125
    const/16 v25, 0x0

    .line 126
    .line 127
    const/16 v26, 0x0

    .line 128
    .line 129
    const/16 v27, 0x0

    .line 130
    .line 131
    const/16 v28, 0x0

    .line 132
    .line 133
    const/16 v29, 0x0

    .line 134
    .line 135
    const/16 v30, 0x0

    .line 136
    .line 137
    const/16 v31, 0x0

    .line 138
    .line 139
    const/16 v32, 0x0

    .line 140
    .line 141
    const/16 v33, 0x0

    .line 142
    .line 143
    const/16 v34, 0x0

    .line 144
    .line 145
    const/16 v35, 0x0

    .line 146
    .line 147
    const/16 v36, 0x0

    .line 148
    .line 149
    const/16 v37, 0x0

    .line 150
    .line 151
    const-wide/16 v38, 0x0

    .line 152
    .line 153
    const/16 v40, 0x0

    .line 154
    .line 155
    const/16 v41, 0x0

    .line 156
    .line 157
    const/16 v42, 0x0

    .line 158
    .line 159
    const/16 v43, 0x0

    .line 160
    .line 161
    const-wide/16 v44, 0x0

    .line 162
    .line 163
    const/16 v46, 0x0

    .line 164
    .line 165
    const/16 v47, 0x0

    .line 166
    .line 167
    const-wide/16 v48, 0x0

    .line 168
    .line 169
    const/16 v50, 0x0

    .line 170
    .line 171
    const-wide/16 v51, 0x0

    .line 172
    .line 173
    const/16 v53, 0x0

    .line 174
    .line 175
    const/16 v54, 0x0

    .line 176
    .line 177
    const/16 v55, 0x0

    .line 178
    .line 179
    const/16 v56, 0x0

    .line 180
    .line 181
    const/16 v57, 0x0

    .line 182
    .line 183
    const/16 v58, 0x0

    .line 184
    .line 185
    const/16 v59, 0x0

    .line 186
    .line 187
    const/16 v61, 0x0

    .line 188
    .line 189
    const/16 v62, 0x0

    .line 190
    .line 191
    const/16 v63, 0x0

    .line 192
    .line 193
    const/16 v64, 0x0

    .line 194
    .line 195
    const/16 v65, 0x0

    .line 196
    .line 197
    const/16 v66, 0x0

    .line 198
    .line 199
    const/16 v67, 0x0

    .line 200
    .line 201
    const/16 v68, 0x0

    .line 202
    .line 203
    const/16 v69, 0x0

    .line 204
    .line 205
    const/16 v70, 0x0

    .line 206
    .line 207
    const/16 v71, 0x0

    .line 208
    .line 209
    const/16 v72, 0x0

    .line 210
    .line 211
    const/16 v73, 0x0

    .line 212
    .line 213
    const/16 v74, 0x0

    .line 214
    .line 215
    const/16 v75, 0x0

    .line 216
    .line 217
    const/16 v76, 0x0

    .line 218
    .line 219
    const/16 v77, 0x0

    .line 220
    .line 221
    const/16 v78, 0x0

    .line 222
    .line 223
    const/16 v79, 0x0

    .line 224
    .line 225
    const/16 v80, 0x0

    .line 226
    .line 227
    const/16 v81, 0x0

    .line 228
    .line 229
    const/16 v82, 0x0

    .line 230
    .line 231
    const/16 v83, 0x0

    .line 232
    .line 233
    const/16 v84, 0x0

    .line 234
    .line 235
    const/16 v85, 0x0

    .line 236
    .line 237
    const/16 v86, 0x0

    .line 238
    .line 239
    const/16 v87, 0x0

    .line 240
    .line 241
    const/16 v88, 0x0

    .line 242
    .line 243
    const/16 v89, 0x0

    .line 244
    .line 245
    const/16 v90, 0x0

    .line 246
    .line 247
    const/16 v91, -0x20

    .line 248
    .line 249
    const v92, -0x20001

    .line 250
    .line 251
    .line 252
    move-object v3, v8

    .line 253
    move-object/from16 v98, v8

    .line 254
    .line 255
    move-object/from16 v8, v60

    .line 256
    .line 257
    move-object/from16 v60, v97

    .line 258
    .line 259
    invoke-direct/range {v3 .. v94}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 260
    .line 261
    .line 262
    if-eqz p2, :cond_9

    .line 263
    .line 264
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    if-eqz v3, :cond_9

    .line 269
    .line 270
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    :goto_9
    move-object/from16 v4, v98

    .line 275
    .line 276
    goto :goto_a

    .line 277
    :cond_9
    move-object/from16 v3, v96

    .line 278
    .line 279
    goto :goto_9

    .line 280
    :goto_a
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setThumbnail(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    if-eqz p2, :cond_a

    .line 284
    .line 285
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    goto :goto_b

    .line 290
    :cond_a
    move-object/from16 v3, v96

    .line 291
    .line 292
    :goto_b
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setGenre(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    if-eqz p2, :cond_b

    .line 296
    .line 297
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getRestrictLevel()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    goto :goto_c

    .line 302
    :cond_b
    move-object/from16 v3, v96

    .line 303
    .line 304
    :goto_c
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setRestrictLevel(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    if-eqz p2, :cond_c

    .line 308
    .line 309
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    goto :goto_d

    .line 314
    :cond_c
    move-object/from16 v3, v96

    .line 315
    .line 316
    :goto_d
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setReleaseDate(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    if-eqz p2, :cond_d

    .line 320
    .line 321
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getImdbRate()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    goto :goto_e

    .line 326
    :cond_d
    move-object/from16 v3, v96

    .line 327
    .line 328
    :goto_e
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setImdbRate(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    if-eqz p2, :cond_e

    .line 332
    .line 333
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    goto :goto_f

    .line 338
    :cond_e
    move-object/from16 v3, v96

    .line 339
    .line 340
    :goto_f
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setCountryName(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    if-eqz p2, :cond_f

    .line 344
    .line 345
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSeNum()Ljava/lang/Integer;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    goto :goto_10

    .line 350
    :cond_f
    move-object/from16 v3, v96

    .line 351
    .line 352
    :goto_10
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setSeNum(Ljava/lang/Integer;)V

    .line 353
    .line 354
    .line 355
    if-eqz p2, :cond_10

    .line 356
    .line 357
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubtitles()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    goto :goto_11

    .line 362
    :cond_10
    move-object/from16 v3, v96

    .line 363
    .line 364
    :goto_11
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubtitles(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    if-eqz p2, :cond_11

    .line 368
    .line 369
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    if-eqz v3, :cond_11

    .line 374
    .line 375
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getAverageHueLight()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    goto :goto_12

    .line 380
    :cond_11
    move-object/from16 v3, v96

    .line 381
    .line 382
    :goto_12
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setAverageHueLight(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    if-eqz p2, :cond_12

    .line 386
    .line 387
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getDurationSeconds()Ljava/lang/Integer;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    goto :goto_13

    .line 392
    :cond_12
    move-object/from16 v3, v96

    .line 393
    .line 394
    :goto_13
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectDurationSeconds(Ljava/lang/Integer;)V

    .line 395
    .line 396
    .line 397
    if-eqz v0, :cond_13

    .line 398
    .line 399
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/DownloadItem;->getUploadBy()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    if-nez v3, :cond_14

    .line 404
    .line 405
    :cond_13
    move-object/from16 v3, v95

    .line 406
    .line 407
    :cond_14
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setUploadBy(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    if-eqz v0, :cond_15

    .line 411
    .line 412
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/DownloadItem;->getSourceUrl()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    if-nez v3, :cond_16

    .line 417
    .line 418
    :cond_15
    move-object/from16 v3, v95

    .line 419
    .line 420
    :cond_16
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setSourceUrl(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    if-eqz v0, :cond_17

    .line 424
    .line 425
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/DownloadItem;->getPostId()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    goto :goto_14

    .line 430
    :cond_17
    move-object/from16 v3, v96

    .line 431
    .line 432
    :goto_14
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setPostId(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    const/4 v3, 0x0

    .line 436
    if-eqz v0, :cond_18

    .line 437
    .line 438
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/DownloadItem;->getEpse()Ljava/lang/Integer;

    .line 439
    .line 440
    .line 441
    move-result-object v5

    .line 442
    if-eqz v5, :cond_18

    .line 443
    .line 444
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 445
    .line 446
    .line 447
    move-result v5

    .line 448
    goto :goto_15

    .line 449
    :cond_18
    move v5, v3

    .line 450
    :goto_15
    invoke-virtual {v4, v5}, Lcom/transsion/baselib/db/download/DownloadBean;->setEpse(I)V

    .line 451
    .line 452
    .line 453
    if-eqz v0, :cond_19

    .line 454
    .line 455
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/DownloadItem;->getEp()I

    .line 456
    .line 457
    .line 458
    move-result v5

    .line 459
    goto :goto_16

    .line 460
    :cond_19
    move v5, v3

    .line 461
    :goto_16
    invoke-virtual {v4, v5}, Lcom/transsion/baselib/db/download/DownloadBean;->setEp(I)V

    .line 462
    .line 463
    .line 464
    if-eqz v0, :cond_1a

    .line 465
    .line 466
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/DownloadItem;->getSe()I

    .line 467
    .line 468
    .line 469
    move-result v5

    .line 470
    goto :goto_17

    .line 471
    :cond_1a
    move v5, v3

    .line 472
    :goto_17
    invoke-virtual {v4, v5}, Lcom/transsion/baselib/db/download/DownloadBean;->setSe(I)V

    .line 473
    .line 474
    .line 475
    if-eqz v0, :cond_1b

    .line 476
    .line 477
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/DownloadItem;->getResolution()Ljava/lang/Integer;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    if-eqz v0, :cond_1b

    .line 482
    .line 483
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 484
    .line 485
    .line 486
    move-result v3

    .line 487
    :cond_1b
    invoke-virtual {v4, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setResolution(I)V

    .line 488
    .line 489
    .line 490
    if-eqz p2, :cond_1c

    .line 491
    .line 492
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    goto :goto_18

    .line 497
    :cond_1c
    move-object/from16 v0, v96

    .line 498
    .line 499
    :goto_18
    invoke-virtual {v4, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectId(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    sget-object v0, Lcom/transsion/baselib/db/download/DownloadBean;->Companion:Lcom/transsion/baselib/db/download/DownloadBean$a;

    .line 503
    .line 504
    if-eqz p2, :cond_1d

    .line 505
    .line 506
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 507
    .line 508
    .line 509
    move-result-object v3

    .line 510
    goto :goto_19

    .line 511
    :cond_1d
    move-object/from16 v3, v96

    .line 512
    .line 513
    :goto_19
    invoke-virtual {v0, v3}, Lcom/transsion/baselib/db/download/DownloadBean$a;->c(Ljava/lang/Integer;)I

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    invoke-virtual {v4, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setType(I)V

    .line 518
    .line 519
    .line 520
    if-eqz p2, :cond_1e

    .line 521
    .line 522
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    if-eqz v0, :cond_1e

    .line 527
    .line 528
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 529
    .line 530
    .line 531
    move-result v0

    .line 532
    goto :goto_1a

    .line 533
    :cond_1e
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    .line 534
    .line 535
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 536
    .line 537
    .line 538
    move-result v0

    .line 539
    :goto_1a
    invoke-virtual {v4, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectType(I)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v4, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setTotalEpisode(I)V

    .line 543
    .line 544
    .line 545
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 546
    .line 547
    .line 548
    move-result-wide v2

    .line 549
    invoke-virtual {v4, v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setCreateAt(J)V

    .line 550
    .line 551
    .line 552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 553
    .line 554
    .line 555
    move-result-wide v2

    .line 556
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    invoke-virtual {v4, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setUpdateTimeStamp(Ljava/lang/Long;)V

    .line 561
    .line 562
    .line 563
    if-eqz p2, :cond_1f

    .line 564
    .line 565
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    goto :goto_1b

    .line 570
    :cond_1f
    move-object/from16 v0, v96

    .line 571
    .line 572
    :goto_1b
    if-eqz v0, :cond_22

    .line 573
    .line 574
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    if-nez v0, :cond_20

    .line 579
    .line 580
    goto :goto_1c

    .line 581
    :cond_20
    if-eqz p2, :cond_21

    .line 582
    .line 583
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    goto :goto_1d

    .line 588
    :cond_21
    move-object/from16 v0, v96

    .line 589
    .line 590
    goto :goto_1d

    .line 591
    :cond_22
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/DownloadUrlBean;->getName()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    :goto_1d
    invoke-virtual {v4, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectName(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    move-object/from16 v0, p3

    .line 599
    .line 600
    invoke-virtual {v4, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setPageFrom(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    move-object/from16 v0, p4

    .line 604
    .line 605
    invoke-virtual {v4, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setLastPageFrom(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    move-object/from16 v0, p5

    .line 609
    .line 610
    invoke-virtual {v4, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setOps(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    const-string v1, "toString(...)"

    .line 622
    .line 623
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v4, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setTaskId(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    if-eqz p2, :cond_23

    .line 630
    .line 631
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceAboutDuration()J

    .line 632
    .line 633
    .line 634
    move-result-wide v0

    .line 635
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 636
    .line 637
    .line 638
    move-result-object v96

    .line 639
    :cond_23
    move-object/from16 v0, v96

    .line 640
    .line 641
    invoke-virtual {v4, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setDuration(Ljava/lang/Long;)V

    .line 642
    .line 643
    .line 644
    return-object v4
.end method

.method public final l(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;
    .locals 98

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getOriginData()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getOriginData()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-class v3, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 27
    .line 28
    invoke-static {v0, v3}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Media;->getVideo()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lcom/transsion/moviedetailapi/bean/Video;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    move-object v3, v2

    .line 58
    :goto_0
    if-eqz v3, :cond_2

    .line 59
    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v3, v4}, Lcom/transsion/moviedetailapi/bean/Video;->setUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    :cond_2
    return-object v0

    .line 68
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getVideoWidth()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getVideoHeight()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    if-eqz v4, :cond_4

    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 90
    .line 91
    .line 92
    move-result-wide v4

    .line 93
    long-to-int v2, v4

    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    :cond_4
    move-object v6, v2

    .line 99
    new-instance v2, Lcom/transsion/moviedetailapi/bean/Video;

    .line 100
    .line 101
    const/4 v4, 0x0

    .line 102
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    move-object v3, v2

    .line 127
    move-object v4, v5

    .line 128
    move-object v5, v7

    .line 129
    move-object v7, v8

    .line 130
    move-object v8, v9

    .line 131
    move-object v9, v11

    .line 132
    move-object v11, v0

    .line 133
    invoke-direct/range {v3 .. v11}, Lcom/transsion/moviedetailapi/bean/Video;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    .line 135
    .line 136
    sget-object v0, Lcom/transsion/moviedetailapi/bean/MediaType;->VIDEO:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    new-instance v5, Lcom/transsion/moviedetailapi/bean/Cover;

    .line 147
    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v14

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getThumbnail()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v16

    .line 156
    const/16 v20, 0x1d7

    .line 157
    .line 158
    const/16 v21, 0x0

    .line 159
    .line 160
    const/4 v11, 0x0

    .line 161
    const/4 v12, 0x0

    .line 162
    const/4 v13, 0x0

    .line 163
    const/4 v15, 0x0

    .line 164
    const/16 v17, 0x0

    .line 165
    .line 166
    const/16 v18, 0x0

    .line 167
    .line 168
    const/16 v19, 0x0

    .line 169
    .line 170
    move-object v10, v5

    .line 171
    invoke-direct/range {v10 .. v21}, Lcom/transsion/moviedetailapi/bean/Cover;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/GifBean;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 172
    .line 173
    .line 174
    new-instance v29, Lcom/transsion/moviedetailapi/bean/Media;

    .line 175
    .line 176
    const/4 v7, 0x0

    .line 177
    const/4 v10, 0x0

    .line 178
    const/4 v4, 0x0

    .line 179
    const/4 v6, 0x0

    .line 180
    move-object/from16 v3, v29

    .line 181
    .line 182
    invoke-direct/range {v3 .. v10}, Lcom/transsion/moviedetailapi/bean/Media;-><init>(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetailapi/bean/FirstFrame;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Video;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v35

    .line 189
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v37

    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectType()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getReleaseDate()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    if-nez v2, :cond_5

    .line 202
    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCreateAt()J

    .line 204
    .line 205
    .line 206
    move-result-wide v2

    .line 207
    const-string v4, "yyyy-MM-dd"

    .line 208
    .line 209
    invoke-static {v2, v3, v4}, Lcom/blankj/utilcode/util/c0;->i(JLjava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    :cond_5
    move-object/from16 v40, v2

    .line 214
    .line 215
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getGenre()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v44

    .line 219
    new-instance v34, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 220
    .line 221
    move-object/from16 v33, v34

    .line 222
    .line 223
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v36

    .line 227
    const v96, 0x3ffffff

    .line 228
    .line 229
    .line 230
    const/16 v97, 0x0

    .line 231
    .line 232
    const/16 v38, 0x0

    .line 233
    .line 234
    const/16 v39, 0x0

    .line 235
    .line 236
    const/16 v41, 0x0

    .line 237
    .line 238
    const/16 v42, 0x0

    .line 239
    .line 240
    const/16 v43, 0x0

    .line 241
    .line 242
    const/16 v45, 0x0

    .line 243
    .line 244
    const/16 v46, 0x0

    .line 245
    .line 246
    const/16 v47, 0x0

    .line 247
    .line 248
    const/16 v48, 0x0

    .line 249
    .line 250
    const/16 v49, 0x0

    .line 251
    .line 252
    const/16 v50, 0x0

    .line 253
    .line 254
    const/16 v51, 0x0

    .line 255
    .line 256
    const/16 v52, 0x0

    .line 257
    .line 258
    const/16 v53, 0x0

    .line 259
    .line 260
    const/16 v54, 0x0

    .line 261
    .line 262
    const/16 v55, 0x0

    .line 263
    .line 264
    const/16 v56, 0x0

    .line 265
    .line 266
    const/16 v57, 0x0

    .line 267
    .line 268
    const/16 v58, 0x0

    .line 269
    .line 270
    const/16 v59, 0x0

    .line 271
    .line 272
    const/16 v60, 0x0

    .line 273
    .line 274
    const/16 v61, 0x0

    .line 275
    .line 276
    const/16 v62, 0x0

    .line 277
    .line 278
    const/16 v63, 0x0

    .line 279
    .line 280
    const/16 v64, 0x0

    .line 281
    .line 282
    const/16 v65, 0x0

    .line 283
    .line 284
    const/16 v66, 0x0

    .line 285
    .line 286
    const/16 v67, 0x0

    .line 287
    .line 288
    const/16 v68, 0x0

    .line 289
    .line 290
    const/16 v69, 0x0

    .line 291
    .line 292
    const/16 v70, 0x0

    .line 293
    .line 294
    const/16 v71, 0x0

    .line 295
    .line 296
    const/16 v72, 0x0

    .line 297
    .line 298
    const-wide/16 v73, 0x0

    .line 299
    .line 300
    const/16 v75, 0x0

    .line 301
    .line 302
    const/16 v76, 0x0

    .line 303
    .line 304
    const-wide/16 v77, 0x0

    .line 305
    .line 306
    const/16 v79, 0x0

    .line 307
    .line 308
    const/16 v80, 0x0

    .line 309
    .line 310
    const/16 v81, 0x0

    .line 311
    .line 312
    const/16 v82, 0x0

    .line 313
    .line 314
    const/16 v83, 0x0

    .line 315
    .line 316
    const/16 v84, 0x0

    .line 317
    .line 318
    const/16 v85, 0x0

    .line 319
    .line 320
    const/16 v86, 0x0

    .line 321
    .line 322
    const/16 v87, 0x0

    .line 323
    .line 324
    const/16 v88, 0x0

    .line 325
    .line 326
    const/16 v89, 0x0

    .line 327
    .line 328
    const/16 v90, 0x0

    .line 329
    .line 330
    const/16 v91, 0x0

    .line 331
    .line 332
    const/16 v92, 0x0

    .line 333
    .line 334
    const/16 v93, 0x0

    .line 335
    .line 336
    const/16 v94, 0x0

    .line 337
    .line 338
    const/16 v95, -0x228

    .line 339
    .line 340
    invoke-direct/range {v34 .. v97}, Lcom/transsion/moviedetailapi/bean/Subject;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/SubjectDl;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetailapi/bean/Trailer;ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZZLcom/transsion/moviedetailapi/bean/ShortTVItem;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;IZZJLjava/lang/String;Ljava/util/List;JLjava/util/List;IZLjava/lang/Integer;ILcom/transsion/moviedetailapi/bean/SubjectGameInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/LayoutStyle;Lcom/transsion/moviedetailapi/bean/PlayUrl;Ljava/lang/Boolean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v30

    .line 347
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTitleName()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v35

    .line 351
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCreateAt()J

    .line 352
    .line 353
    .line 354
    move-result-wide v0

    .line 355
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v24

    .line 359
    new-instance v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 360
    .line 361
    move-object/from16 v22, v0

    .line 362
    .line 363
    const/16 v57, 0x1

    .line 364
    .line 365
    const/16 v23, 0x0

    .line 366
    .line 367
    const/16 v25, 0x0

    .line 368
    .line 369
    const/16 v26, 0x0

    .line 370
    .line 371
    const/16 v27, 0x0

    .line 372
    .line 373
    const/16 v28, 0x0

    .line 374
    .line 375
    const/16 v31, 0x0

    .line 376
    .line 377
    const/16 v32, 0x0

    .line 378
    .line 379
    const/16 v34, 0x0

    .line 380
    .line 381
    const/16 v36, 0x0

    .line 382
    .line 383
    const/16 v37, 0x0

    .line 384
    .line 385
    const/16 v40, 0x0

    .line 386
    .line 387
    const/16 v42, 0x0

    .line 388
    .line 389
    const/16 v44, 0x0

    .line 390
    .line 391
    const/16 v47, 0x0

    .line 392
    .line 393
    const/16 v49, 0x0

    .line 394
    .line 395
    const/16 v51, 0x1

    .line 396
    .line 397
    const/16 v52, 0x0

    .line 398
    .line 399
    const/16 v53, 0x0

    .line 400
    .line 401
    const/16 v54, 0x0

    .line 402
    .line 403
    const v56, -0x100014c3

    .line 404
    .line 405
    .line 406
    invoke-direct/range {v22 .. v58}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Group;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/transsion/moviedetailapi/bean/Link;Lcom/transsion/moviedetailapi/bean/Media;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Stat;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ZZZZLcom/transsion/moviedetailapi/bean/CommentBean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 407
    .line 408
    .line 409
    return-object v0
.end method

.method public final o(Lcom/transsion/baselib/db/download/DownloadBean;)J
    .locals 9

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-wide/32 v1, 0x500000

    .line 11
    .line 12
    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    cmp-long v0, v5, v3

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    const-wide/32 v7, 0x36ee80

    .line 45
    .line 46
    .line 47
    sub-long/2addr v5, v7

    .line 48
    cmp-long p1, v5, v3

    .line 49
    .line 50
    const-wide/32 v3, 0xea60

    .line 51
    .line 52
    .line 53
    if-lez p1, :cond_2

    .line 54
    .line 55
    const p1, 0xb400

    .line 56
    .line 57
    .line 58
    int-to-long v7, p1

    .line 59
    mul-long/2addr v7, v5

    .line 60
    div-long/2addr v7, v3

    .line 61
    add-long/2addr v7, v1

    .line 62
    const-wide/32 v0, 0x900000

    .line 63
    .line 64
    .line 65
    cmp-long p1, v7, v0

    .line 66
    .line 67
    if-lez p1, :cond_4

    .line 68
    .line 69
    move-wide v7, v0

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const p1, 0x15400

    .line 72
    .line 73
    .line 74
    int-to-long v7, p1

    .line 75
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    .line 76
    .line 77
    .line 78
    move-result-wide v5

    .line 79
    mul-long/2addr v7, v5

    .line 80
    div-long/2addr v7, v3

    .line 81
    sub-long/2addr v1, v7

    .line 82
    const-wide/32 v3, 0x300000

    .line 83
    .line 84
    .line 85
    cmp-long p1, v1, v3

    .line 86
    .line 87
    if-gez p1, :cond_3

    .line 88
    .line 89
    move-wide v7, v3

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    move-wide v7, v1

    .line 92
    :cond_4
    :goto_1
    return-wide v7

    .line 93
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    const/4 v0, 0x2

    .line 98
    if-eq p1, v0, :cond_6

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_6
    const-wide/32 v1, 0x780000

    .line 102
    .line 103
    .line 104
    :goto_3
    return-wide v1
.end method

.method public final r(Lcom/transsion/baselib/db/download/DownloadBean;)I
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x1

    .line 21
    if-ne v1, v2, :cond_2

    .line 22
    .line 23
    sget p1, Lcom/transsion/baseui/R$mipmap;->home_ic_audio_white:I

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x3

    .line 34
    if-ne v0, v1, :cond_5

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isShotTV()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    sget p1, Lcom/transsion/baseui/R$mipmap;->home_ic_short_tv_white:I

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_4
    sget p1, Lcom/transsion/baseui/R$mipmap;->home_ic_tv_white:I

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_5
    :goto_2
    sget p1, Lcom/transsion/baseui/R$mipmap;->home_ic_movie_white:I

    .line 49
    .line 50
    :goto_3
    return p1
.end method

.method public final s(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/text/Regex;

    .line 7
    .line 8
    const-string v1, "[\\\\/:#*?\"<>|&,]"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getFileName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, ""

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "?"

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x2

    .line 31
    invoke-static {v1, v2, v3, v4, v3}, Lkotlin/text/StringsKt;->h1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "."

    .line 36
    .line 37
    invoke-static {v1, v2, v3, v4, v3}, Lkotlin/text/StringsKt;->f1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_0

    .line 46
    .line 47
    const-string v1, "mp4"

    .line 48
    .line 49
    :cond_0
    sget-object v3, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v4}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->h()Ljava/io/File;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    sget-char v5, Ljava/io/File;->separatorChar:C

    .line 64
    .line 65
    new-instance v6, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-direct {p0, v0}, Lcom/transsnet/downloader/util/DownloadUtil;->u(Ljava/lang/String;)Ljava/io/File;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v3}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->t()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {p1, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPath(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->u()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-virtual {p1, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setRootPathType(I)V

    .line 129
    .line 130
    .line 131
    new-instance p1, Ljava/io/File;

    .line 132
    .line 133
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-nez v1, :cond_2

    .line 141
    .line 142
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    if-eqz v1, :cond_1

    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    const/4 v2, 0x1

    .line 155
    xor-int/2addr v1, v2

    .line 156
    if-ne v1, v2, :cond_1

    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    if-eqz v1, :cond_1

    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :catchall_0
    move-exception p1

    .line 169
    goto :goto_1

    .line 170
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 183
    .line 184
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    :cond_2
    :goto_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    return-object v0
.end method

.method public final t(Ljava/util/List;I)I
    .locals 4

    .line 1
    const-string v0, "seasons"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Iterable;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move-object v2, v0

    .line 24
    check-cast v2, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getSe()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ne v2, p2, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v0, v1

    .line 34
    :goto_0
    check-cast v0, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    if-eqz v0, :cond_6

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getResolutions()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    if-eqz p2, :cond_6

    .line 44
    .line 45
    check-cast p2, Ljava/lang/Iterable;

    .line 46
    .line 47
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    move-object v0, v1

    .line 70
    check-cast v0, Lcom/transsion/moviedetailapi/bean/ResolutionItem;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->getEpNum()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    move-object v3, v2

    .line 81
    check-cast v3, Lcom/transsion/moviedetailapi/bean/ResolutionItem;

    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->getEpNum()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-ge v0, v3, :cond_5

    .line 88
    .line 89
    move-object v1, v2

    .line 90
    move v0, v3

    .line 91
    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-nez v2, :cond_4

    .line 96
    .line 97
    :goto_1
    check-cast v1, Lcom/transsion/moviedetailapi/bean/ResolutionItem;

    .line 98
    .line 99
    if-eqz v1, :cond_6

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->getResolution()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    :cond_6
    return p1
.end method

.method public final v()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsnet/downloader/util/DownloadUtil;->d:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w(Ljava/util/List;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    check-cast p1, Ljava/lang/Iterable;

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    move v1, v0

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_4

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/16 v4, 0xa

    .line 28
    .line 29
    if-ne v3, v4, :cond_3

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeriesAllCheck()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeriesList()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSeriesList()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/lang/Iterable;

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    move v3, v0

    .line 57
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_2

    .line 62
    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 68
    .line 69
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->isCheck()Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_1

    .line 74
    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    move v2, v3

    .line 79
    goto :goto_2

    .line 80
    :cond_3
    const/4 v2, 0x1

    .line 81
    :goto_2
    add-int/2addr v1, v2

    .line 82
    goto :goto_0

    .line 83
    :cond_4
    move v0, v1

    .line 84
    :cond_5
    return v0
.end method

.method public final x(Lcom/transsnet/downloader/bean/DownloadListBean;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/DownloadListBean;->getItems()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_5

    .line 14
    .line 15
    check-cast v1, Ljava/lang/Iterable;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_5

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    move-object v6, v2

    .line 32
    check-cast v6, Lcom/transsion/moviedetailapi/DownloadItem;

    .line 33
    .line 34
    if-eqz p8, :cond_3

    .line 35
    .line 36
    move-object/from16 v2, p8

    .line 37
    .line 38
    check-cast v2, Ljava/util/Collection;

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/4 v3, 0x1

    .line 45
    xor-int/2addr v2, v3

    .line 46
    if-ne v2, v3, :cond_3

    .line 47
    .line 48
    move-object/from16 v2, p8

    .line 49
    .line 50
    check-cast v2, Ljava/lang/Iterable;

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    move-object v4, v3

    .line 67
    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 68
    .line 69
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/DownloadItem;->getResourceId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    const/4 v3, 0x0

    .line 85
    :goto_1
    check-cast v3, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 86
    .line 87
    if-nez v3, :cond_4

    .line 88
    .line 89
    sget-object v3, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    .line 90
    .line 91
    move-object v4, p1

    .line 92
    move-object v5, p2

    .line 93
    move-object v7, p3

    .line 94
    move-object/from16 v8, p4

    .line 95
    .line 96
    move-object/from16 v9, p5

    .line 97
    .line 98
    move-object/from16 v10, p6

    .line 99
    .line 100
    move-object/from16 v11, p7

    .line 101
    .line 102
    invoke-direct/range {v3 .. v11}, Lcom/transsnet/downloader/util/DownloadUtil;->z(Lcom/transsnet/downloader/bean/DownloadListBean;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/moviedetailapi/DownloadItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    goto :goto_2

    .line 107
    :cond_3
    sget-object v3, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    .line 108
    .line 109
    move-object v4, p1

    .line 110
    move-object v5, p2

    .line 111
    move-object v7, p3

    .line 112
    move-object/from16 v8, p4

    .line 113
    .line 114
    move-object/from16 v9, p5

    .line 115
    .line 116
    move-object/from16 v10, p6

    .line 117
    .line 118
    move-object/from16 v11, p7

    .line 119
    .line 120
    invoke-direct/range {v3 .. v11}, Lcom/transsnet/downloader/util/DownloadUtil;->z(Lcom/transsnet/downloader/bean/DownloadListBean;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/moviedetailapi/DownloadItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    :cond_4
    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_5
    return-object v0
.end method
