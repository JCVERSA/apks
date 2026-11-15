.class public final Lcom/transsnet/downloader/DownloadManagerApi;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lck/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/DownloadManagerApi$a;
    }
.end annotation


# static fields
.field public static final j:Lcom/transsnet/downloader/DownloadManagerApi$a;

.field private static final k:Lkotlin/Lazy;


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Ljava/util/Set;

.field private final c:Ljava/util/Set;

.field private final d:Lkotlin/Lazy;

.field private e:Lcom/transsion/baselib/db/download/DownloadBean;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsnet/downloader/DownloadManagerApi$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 8
    .line 9
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 10
    .line 11
    new-instance v1, Lcom/transsnet/downloader/q;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/transsnet/downloader/q;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/transsnet/downloader/DownloadManagerApi;->k:Lkotlin/Lazy;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsnet/downloader/DownloadManagerApi;->a:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsnet/downloader/DownloadManagerApi;->b:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/transsnet/downloader/DownloadManagerApi;->c:Ljava/util/Set;

    .line 24
    .line 25
    new-instance v0, Lcom/transsnet/downloader/l;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/transsnet/downloader/l;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/transsnet/downloader/DownloadManagerApi;->d:Lkotlin/Lazy;

    .line 35
    .line 36
    new-instance v0, Lcom/transsnet/downloader/m;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/transsnet/downloader/m;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/transsnet/downloader/DownloadManagerApi;->f:Lkotlin/Lazy;

    .line 46
    .line 47
    new-instance v0, Lcom/transsnet/downloader/n;

    .line 48
    .line 49
    invoke-direct {v0}, Lcom/transsnet/downloader/n;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/transsnet/downloader/DownloadManagerApi;->g:Lkotlin/Lazy;

    .line 57
    .line 58
    new-instance v0, Lcom/transsnet/downloader/o;

    .line 59
    .line 60
    invoke-direct {v0}, Lcom/transsnet/downloader/o;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/transsnet/downloader/DownloadManagerApi;->h:Lkotlin/Lazy;

    .line 68
    .line 69
    new-instance v0, Lcom/transsnet/downloader/p;

    .line 70
    .line 71
    invoke-direct {v0}, Lcom/transsnet/downloader/p;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/transsnet/downloader/DownloadManagerApi;->i:Lkotlin/Lazy;

    .line 79
    .line 80
    return-void
.end method

.method public static final synthetic A()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsnet/downloader/DownloadManagerApi;->k:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic B(Lcom/transsnet/downloader/DownloadManagerApi;)Lep/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/DownloadManagerApi;->o0()Lep/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B0(Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x8

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x1

    .line 6
    :cond_0
    move v4, p4

    .line 7
    and-int/lit8 p4, p6, 0x10

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    const/4 p5, 0x0

    .line 12
    :cond_1
    move v5, p5

    .line 13
    move-object v0, p0

    .line 14
    move-object v1, p1

    .line 15
    move-object v2, p2

    .line 16
    move v3, p3

    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/transsnet/downloader/DownloadManagerApi;->A0(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static final synthetic C(Lcom/transsnet/downloader/DownloadManagerApi;)Lep/b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/DownloadManagerApi;->p0()Lep/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final C0()Lcx/a;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lcx/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcx/a;

    .line 14
    .line 15
    return-object v0
.end method

.method public static final synthetic D(Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/DownloadManagerApi;->u0(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final D0(Landroidx/fragment/app/FragmentActivity;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;ZLjava/lang/String;)V
    .locals 8

    .line 1
    const v0, 0x1020002

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Landroid/widget/FrameLayout;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 13
    .line 14
    invoke-virtual {p4}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v4, "downloadBean.size = "

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, "\uff0c formatSize = "

    .line 32
    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p3, ", fileCount = "

    .line 40
    .line 41
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const/4 v6, 0x4

    .line 52
    const/4 v7, 0x0

    .line 53
    const-string v3, "downloadAna"

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    if-eqz p5, :cond_0

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Landroid/view/ViewGroup;

    .line 74
    .line 75
    const/4 p2, 0x0

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    instance-of p1, p1, Landroid/view/ViewGroup;

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    new-instance p3, Landroid/os/Handler;

    .line 84
    .line 85
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 86
    .line 87
    .line 88
    move-result-object p5

    .line 89
    invoke-direct {p3, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 90
    .line 91
    .line 92
    new-instance p5, Lcom/transsnet/downloader/e;

    .line 93
    .line 94
    invoke-direct {p5, p4, p6, p2, p1}, Lcom/transsnet/downloader/e;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;ILandroidx/fragment/app/FragmentActivity;)V

    .line 95
    .line 96
    .line 97
    const-wide/16 p1, 0x12c

    .line 98
    .line 99
    invoke-virtual {p3, p5, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    .line 101
    .line 102
    :cond_1
    :goto_0
    return-void
.end method

.method public static final synthetic E(Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/DownloadManagerApi;->v0(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final E0(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;ILandroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/baselib/db/download/DownloadBean;->setPageFrom(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;->k:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$a;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$a;->a(I)Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p0}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;->O0(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 11
    .line 12
    .line 13
    const-string p0, "DownloadingTipsDialogFragment"

    .line 14
    .line 15
    invoke-virtual {p1, p3, p0}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic F(Lcom/transsnet/downloader/DownloadManagerApi;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/DownloadManagerApi;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    return-void
.end method

.method private final G(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 27

    .line 1
    move-object/from16 v14, p1

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    .line 6
    move-result-object v11

    .line 7
    const-string v0, "getSupportFragmentManager(...)"

    .line 8
    .line 9
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lqi/h;->a:Lqi/h;

    .line 13
    .line 14
    invoke-virtual {v0}, Lqi/h;->h()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v17

    .line 18
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getType()Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x1

    .line 36
    if-ne v0, v1, :cond_1

    .line 37
    .line 38
    sget-object v15, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;->v:Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog$a;

    .line 39
    .line 40
    move-object/from16 v16, p3

    .line 41
    .line 42
    move-object/from16 v18, p2

    .line 43
    .line 44
    move-object/from16 v19, p4

    .line 45
    .line 46
    move-object/from16 v20, p5

    .line 47
    .line 48
    move-object/from16 v21, p6

    .line 49
    .line 50
    move-object/from16 v22, p7

    .line 51
    .line 52
    move-object/from16 v23, p8

    .line 53
    .line 54
    move/from16 v24, p11

    .line 55
    .line 56
    move/from16 v25, p12

    .line 57
    .line 58
    invoke-virtual/range {v15 .. v25}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "download"

    .line 63
    .line 64
    invoke-virtual {v0, v11, v1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lcom/transsnet/downloader/r;

    .line 68
    .line 69
    move-object/from16 v15, p0

    .line 70
    .line 71
    move-object/from16 v2, p3

    .line 72
    .line 73
    invoke-direct {v1, v15, v14, v2}, Lcom/transsnet/downloader/r;-><init>(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;->z0(Lkotlin/jvm/functions/Function4;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    :goto_0
    move-object/from16 v15, p0

    .line 81
    .line 82
    move-object/from16 v2, p3

    .line 83
    .line 84
    sget-object v0, Lcom/transsnet/downloader/manager/f;->a:Lcom/transsnet/downloader/manager/f$a;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/f$a;->a()Lcom/transsnet/downloader/manager/f;

    .line 87
    .line 88
    .line 89
    move-result-object v13

    .line 90
    new-instance v12, Lcom/transsnet/downloader/s;

    .line 91
    .line 92
    move-object v0, v12

    .line 93
    move-object/from16 v1, p3

    .line 94
    .line 95
    move-object/from16 v2, v17

    .line 96
    .line 97
    move-object/from16 v3, p2

    .line 98
    .line 99
    move-object/from16 v4, p4

    .line 100
    .line 101
    move-object/from16 v5, p5

    .line 102
    .line 103
    move-object/from16 v6, p6

    .line 104
    .line 105
    move-object/from16 v7, p7

    .line 106
    .line 107
    move-object/from16 v8, p8

    .line 108
    .line 109
    move/from16 v9, p11

    .line 110
    .line 111
    move/from16 v10, p12

    .line 112
    .line 113
    move-object v15, v12

    .line 114
    move-object/from16 v12, p0

    .line 115
    .line 116
    move-object/from16 v26, v13

    .line 117
    .line 118
    move-object/from16 v13, p1

    .line 119
    .line 120
    invoke-direct/range {v0 .. v13}, Lcom/transsnet/downloader/s;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLandroidx/fragment/app/FragmentManager;Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;)V

    .line 121
    .line 122
    .line 123
    move-object/from16 v0, p2

    .line 124
    .line 125
    move-object/from16 v1, v26

    .line 126
    .line 127
    invoke-virtual {v1, v14, v0, v15}, Lcom/transsnet/downloader/manager/f;->j(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Lkotlin/jvm/functions/Function0;)V

    .line 128
    .line 129
    .line 130
    :goto_1
    return-void
.end method

.method private static final H(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;
    .locals 7

    .line 1
    const-string v0, "formatSize"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "downloadBean"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, p0

    .line 12
    move-object v1, p1

    .line 13
    move v2, p3

    .line 14
    move-object v3, p4

    .line 15
    move-object v4, p5

    .line 16
    move v5, p6

    .line 17
    move-object v6, p2

    .line 18
    invoke-direct/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi;->D0(Landroidx/fragment/app/FragmentActivity;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;ZLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lwf/a;->a:Lwf/a$a;

    .line 22
    .line 23
    const/4 p4, 0x4

    .line 24
    const/4 p5, 0x0

    .line 25
    const-string p1, "downloadAna"

    .line 26
    .line 27
    const-string p2, "group get success, show anima"

    .line 28
    .line 29
    const/4 p3, 0x0

    .line 30
    invoke-static/range {p0 .. p5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0
.end method

.method private static final I(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLandroidx/fragment/app/FragmentManager;Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;)Lkotlin/Unit;
    .locals 11

    .line 1
    sget-object v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;->v:Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog$a;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    move-object/from16 v6, p5

    .line 9
    .line 10
    move-object/from16 v7, p6

    .line 11
    .line 12
    move-object/from16 v8, p7

    .line 13
    .line 14
    move/from16 v9, p8

    .line 15
    .line 16
    move/from16 v10, p9

    .line 17
    .line 18
    invoke-virtual/range {v0 .. v10}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "download_anima"

    .line 23
    .line 24
    move-object/from16 v2, p10

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/transsnet/downloader/g;

    .line 30
    .line 31
    move-object v2, p0

    .line 32
    move-object/from16 v3, p11

    .line 33
    .line 34
    move-object/from16 v4, p12

    .line 35
    .line 36
    invoke-direct {v1, v3, v4, p0}, Lcom/transsnet/downloader/g;-><init>(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;->z0(Lkotlin/jvm/functions/Function4;)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 43
    .line 44
    return-object v0
.end method

.method private static final J(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;
    .locals 7

    .line 1
    const-string v0, "formatSize"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bean"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, p0

    .line 12
    move-object v1, p1

    .line 13
    move v2, p3

    .line 14
    move-object v3, p4

    .line 15
    move-object v4, p5

    .line 16
    move v5, p6

    .line 17
    move-object v6, p2

    .line 18
    invoke-direct/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi;->D0(Landroidx/fragment/app/FragmentActivity;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;ZLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method public static synthetic M(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 14

    .line 1
    move/from16 v0, p11

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x8

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v7, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object/from16 v7, p4

    .line 12
    .line 13
    :goto_0
    and-int/lit8 v1, v0, 0x40

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    move-object v10, v2

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object/from16 v10, p7

    .line 20
    .line 21
    :goto_1
    and-int/lit16 v1, v0, 0x80

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    move-object v11, v2

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    move-object/from16 v11, p8

    .line 29
    .line 30
    :goto_2
    and-int/lit16 v1, v0, 0x100

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    move-object v12, v2

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    move-object/from16 v12, p9

    .line 37
    .line 38
    :goto_3
    and-int/lit16 v0, v0, 0x200

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    move v13, v0

    .line 44
    goto :goto_4

    .line 45
    :cond_4
    move/from16 v13, p10

    .line 46
    .line 47
    :goto_4
    move-object v3, p0

    .line 48
    move-object v4, p1

    .line 49
    move-object/from16 v5, p2

    .line 50
    .line 51
    move-object/from16 v6, p3

    .line 52
    .line 53
    move-object/from16 v8, p5

    .line 54
    .line 55
    move-object/from16 v9, p6

    .line 56
    .line 57
    invoke-virtual/range {v3 .. v13}, Lcom/transsnet/downloader/DownloadManagerApi;->K(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public static synthetic N(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZILjava/lang/Object;)V
    .locals 16

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x8

    .line 1
    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object/from16 v7, p4

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object/from16 v10, p7

    :goto_1
    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v11, v2

    goto :goto_2

    :cond_2
    move-object/from16 v11, p8

    :goto_2
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_3

    move-object v12, v2

    goto :goto_3

    :cond_3
    move-object/from16 v12, p9

    :goto_3
    and-int/lit16 v1, v0, 0x200

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    move v13, v2

    goto :goto_4

    :cond_4
    move/from16 v13, p10

    :goto_4
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_5

    move v14, v2

    goto :goto_5

    :cond_5
    move/from16 v14, p11

    :goto_5
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    move v15, v0

    goto :goto_6

    :cond_6
    move/from16 v15, p12

    :goto_6
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v15}, Lcom/transsnet/downloader/DownloadManagerApi;->L(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V

    return-void
.end method

.method public static synthetic P(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 10

    .line 1
    and-int/lit8 v0, p8, 0x20

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v8, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object/from16 v8, p6

    .line 9
    .line 10
    :goto_0
    and-int/lit8 v0, p8, 0x40

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    move-object v9, v1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move-object/from16 v9, p7

    .line 17
    .line 18
    :goto_1
    move-object v2, p0

    .line 19
    move-object v3, p1

    .line 20
    move-object v4, p2

    .line 21
    move-object v5, p3

    .line 22
    move-object v6, p4

    .line 23
    move-object v7, p5

    .line 24
    invoke-virtual/range {v2 .. v9}, Lcom/transsnet/downloader/DownloadManagerApi;->O(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private static final Q(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 9

    .line 1
    new-instance v8, Lcom/transsnet/downloader/c;

    .line 2
    .line 3
    move-object v0, v8

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move-object v6, p5

    .line 10
    move-object v7, p6

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/transsnet/downloader/c;-><init>(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1, v8}, Lcom/transsnet/downloader/DownloadManagerApi;->X(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function0;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method private static final R(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 7

    .line 1
    iget-object p4, p4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v4, p4

    .line 4
    check-cast v4, Ljava/lang/String;

    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move-object v3, p3

    .line 10
    move-object v5, p5

    .line 11
    move-object v6, p6

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi;->i0(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method private static final S(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 7

    .line 1
    iget-object p4, p4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v4, p4

    .line 4
    check-cast v4, Ljava/lang/String;

    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move-object v3, p3

    .line 10
    move-object v5, p5

    .line 11
    move-object v6, p6

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi;->i0(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method private static final V(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 11

    .line 1
    const/16 v9, 0x80

    .line 2
    .line 3
    const/4 v10, 0x0

    .line 4
    const/4 v8, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p4

    .line 10
    move-object/from16 v5, p5

    .line 11
    .line 12
    move-object/from16 v6, p6

    .line 13
    .line 14
    move-object/from16 v7, p7

    .line 15
    .line 16
    invoke-static/range {v0 .. v10}, Lcom/transsnet/downloader/DownloadManagerApi;->Z(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object v0
.end method

.method private static final W()Lsi/a;
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
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->n1()Lsi/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method private final X(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final Y(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    new-instance v10, Lcom/transsnet/downloader/i;

    .line 2
    .line 3
    move-object v0, v10

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p3

    .line 6
    move-object v3, p4

    .line 7
    move-object v4, p2

    .line 8
    move-object/from16 v5, p5

    .line 9
    .line 10
    move-object/from16 v6, p6

    .line 11
    .line 12
    move-object/from16 v7, p7

    .line 13
    .line 14
    move-object/from16 v8, p8

    .line 15
    .line 16
    move-object v9, p0

    .line 17
    invoke-direct/range {v0 .. v9}, Lcom/transsnet/downloader/i;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsnet/downloader/DownloadManagerApi;)V

    .line 18
    .line 19
    .line 20
    move-object v0, p0

    .line 21
    invoke-direct {p0, p1, v10}, Lcom/transsnet/downloader/DownloadManagerApi;->X(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function0;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method static synthetic Z(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 12

    .line 1
    move/from16 v0, p9

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x40

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v10, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object/from16 v10, p7

    .line 11
    .line 12
    :goto_0
    and-int/lit16 v0, v0, 0x80

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    move-object v11, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-object/from16 v11, p8

    .line 19
    .line 20
    :goto_1
    move-object v3, p0

    .line 21
    move-object v4, p1

    .line 22
    move-object v5, p2

    .line 23
    move-object v6, p3

    .line 24
    move-object/from16 v7, p4

    .line 25
    .line 26
    move-object/from16 v8, p5

    .line 27
    .line 28
    move-object/from16 v9, p6

    .line 29
    .line 30
    invoke-direct/range {v3 .. v11}, Lcom/transsnet/downloader/DownloadManagerApi;->Y(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private static final a0(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsnet/downloader/DownloadManagerApi;)Lkotlin/Unit;
    .locals 10

    .line 1
    sget-object v0, Lqi/h;->a:Lqi/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lqi/h;->h()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 8
    .line 9
    .line 10
    move-result-object v9

    .line 11
    const-string v1, "getSupportFragmentManager(...)"

    .line 12
    .line 13
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;->v:Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog$a;

    .line 17
    .line 18
    move-object v2, p1

    .line 19
    move-object v3, p2

    .line 20
    move-object v4, v0

    .line 21
    move-object v5, p3

    .line 22
    move-object v6, p4

    .line 23
    move-object v7, p5

    .line 24
    move-object/from16 v8, p6

    .line 25
    .line 26
    invoke-virtual/range {v1 .. v8}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "download_anima"

    .line 31
    .line 32
    invoke-virtual {v1, v9, v2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Lcom/transsnet/downloader/j;

    .line 36
    .line 37
    move-object v3, p0

    .line 38
    move-object v4, p2

    .line 39
    move-object/from16 v5, p8

    .line 40
    .line 41
    invoke-direct {v2, v5, p0, p2}, Lcom/transsnet/downloader/j;-><init>(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;->z0(Lkotlin/jvm/functions/Function4;)V

    .line 45
    .line 46
    .line 47
    sget-object v1, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->m:Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    sget-object v1, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    .line 54
    .line 55
    const-string v6, ""

    .line 56
    .line 57
    move-object v2, p3

    .line 58
    move-object v3, p2

    .line 59
    move-object v4, v0

    .line 60
    move-object v5, p4

    .line 61
    move-object/from16 v7, p7

    .line 62
    .line 63
    invoke-virtual/range {v1 .. v7}, Lcom/transsnet/downloader/util/DownloadUtil;->j(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v8, v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->p(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 68
    .line 69
    .line 70
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    return-object v0
.end method

.method public static synthetic b(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/transsnet/downloader/DownloadManagerApi;->J(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final b0(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;
    .locals 7

    .line 1
    const-string v0, "formatSize"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "downloadBean"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, p0

    .line 12
    move-object v1, p1

    .line 13
    move v2, p3

    .line 14
    move-object v3, p4

    .line 15
    move-object v4, p5

    .line 16
    move v5, p6

    .line 17
    move-object v6, p2

    .line 18
    invoke-direct/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi;->D0(Landroidx/fragment/app/FragmentActivity;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;ZLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method public static synthetic c(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsnet/downloader/DownloadManagerApi;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Lcom/transsnet/downloader/DownloadManagerApi;->a0(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsnet/downloader/DownloadManagerApi;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c0()Lcom/transsnet/downloader/manager/g;
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

.method public static synthetic d(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/transsnet/downloader/DownloadManagerApi;->H(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLandroidx/fragment/app/FragmentManager;Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p12}, Lcom/transsnet/downloader/DownloadManagerApi;->I(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLandroidx/fragment/app/FragmentManager;Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e0(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .locals 12

    .line 1
    move/from16 v0, p10

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x4

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    move-object v5, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v5, p3

    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x10

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    move-object v7, v2

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object/from16 v7, p5

    .line 20
    .line 21
    :goto_1
    and-int/lit8 v1, v0, 0x20

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    move v8, v1

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    move/from16 v8, p6

    .line 29
    .line 30
    :goto_2
    and-int/lit8 v1, v0, 0x40

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    move-object v9, v2

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    move-object/from16 v9, p7

    .line 37
    .line 38
    :goto_3
    and-int/lit16 v1, v0, 0x80

    .line 39
    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    move-object v10, v2

    .line 43
    goto :goto_4

    .line 44
    :cond_4
    move-object/from16 v10, p8

    .line 45
    .line 46
    :goto_4
    and-int/lit16 v0, v0, 0x100

    .line 47
    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 51
    .line 52
    move-object v11, v0

    .line 53
    goto :goto_5

    .line 54
    :cond_5
    move-object/from16 v11, p9

    .line 55
    .line 56
    :goto_5
    move-object v2, p0

    .line 57
    move-object v3, p1

    .line 58
    move-object v4, p2

    .line 59
    move-object/from16 v6, p4

    .line 60
    .line 61
    invoke-virtual/range {v2 .. v11}, Lcom/transsnet/downloader/DownloadManagerApi;->d0(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public static synthetic f()Lcom/transsnet/downloader/manager/g;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/DownloadManagerApi;->c0()Lcom/transsnet/downloader/manager/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic g(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/transsnet/downloader/DownloadManagerApi;->R(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g0(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function4;ILjava/lang/Object;)V
    .locals 13

    .line 1
    move/from16 v0, p14

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x2

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v1, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v1, p2

    .line 11
    :goto_0
    and-int/lit8 v3, v0, 0x4

    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    move-object v3, v2

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-object/from16 v3, p3

    .line 18
    .line 19
    :goto_1
    and-int/lit8 v4, v0, 0x8

    .line 20
    .line 21
    if-eqz v4, :cond_2

    .line 22
    .line 23
    move-object v4, v2

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move-object/from16 v4, p4

    .line 26
    .line 27
    :goto_2
    and-int/lit8 v5, v0, 0x10

    .line 28
    .line 29
    if-eqz v5, :cond_3

    .line 30
    .line 31
    move-object v5, v2

    .line 32
    goto :goto_3

    .line 33
    :cond_3
    move-object/from16 v5, p5

    .line 34
    .line 35
    :goto_3
    and-int/lit8 v6, v0, 0x20

    .line 36
    .line 37
    if-eqz v6, :cond_4

    .line 38
    .line 39
    move-object v6, v2

    .line 40
    goto :goto_4

    .line 41
    :cond_4
    move-object/from16 v6, p6

    .line 42
    .line 43
    :goto_4
    and-int/lit8 v7, v0, 0x40

    .line 44
    .line 45
    if-eqz v7, :cond_5

    .line 46
    .line 47
    move-object v7, v2

    .line 48
    goto :goto_5

    .line 49
    :cond_5
    move-object/from16 v7, p7

    .line 50
    .line 51
    :goto_5
    and-int/lit16 v8, v0, 0x80

    .line 52
    .line 53
    if-eqz v8, :cond_6

    .line 54
    .line 55
    move-object v8, v2

    .line 56
    goto :goto_6

    .line 57
    :cond_6
    move-object/from16 v8, p8

    .line 58
    .line 59
    :goto_6
    and-int/lit16 v9, v0, 0x100

    .line 60
    .line 61
    if-eqz v9, :cond_7

    .line 62
    .line 63
    move-object v9, v2

    .line 64
    goto :goto_7

    .line 65
    :cond_7
    move-object/from16 v9, p9

    .line 66
    .line 67
    :goto_7
    and-int/lit16 v10, v0, 0x200

    .line 68
    .line 69
    if-eqz v10, :cond_8

    .line 70
    .line 71
    move-object v10, v2

    .line 72
    goto :goto_8

    .line 73
    :cond_8
    move-object/from16 v10, p10

    .line 74
    .line 75
    :goto_8
    and-int/lit16 v11, v0, 0x400

    .line 76
    .line 77
    if-eqz v11, :cond_9

    .line 78
    .line 79
    move-object v11, v2

    .line 80
    goto :goto_9

    .line 81
    :cond_9
    move-object/from16 v11, p11

    .line 82
    .line 83
    :goto_9
    and-int/lit16 v12, v0, 0x800

    .line 84
    .line 85
    if-eqz v12, :cond_a

    .line 86
    .line 87
    const/4 v12, 0x0

    .line 88
    goto :goto_a

    .line 89
    :cond_a
    move/from16 v12, p12

    .line 90
    .line 91
    :goto_a
    and-int/lit16 v0, v0, 0x1000

    .line 92
    .line 93
    if-eqz v0, :cond_b

    .line 94
    .line 95
    goto :goto_b

    .line 96
    :cond_b
    move-object/from16 v2, p13

    .line 97
    .line 98
    :goto_b
    move-object p2, p0

    .line 99
    move-object/from16 p3, p1

    .line 100
    .line 101
    move-object/from16 p4, v1

    .line 102
    .line 103
    move-object/from16 p5, v3

    .line 104
    .line 105
    move-object/from16 p6, v4

    .line 106
    .line 107
    move-object/from16 p7, v5

    .line 108
    .line 109
    move-object/from16 p8, v6

    .line 110
    .line 111
    move-object/from16 p9, v7

    .line 112
    .line 113
    move-object/from16 p10, v8

    .line 114
    .line 115
    move-object/from16 p11, v9

    .line 116
    .line 117
    move-object/from16 p12, v10

    .line 118
    .line 119
    move-object/from16 p13, v11

    .line 120
    .line 121
    move/from16 p14, v12

    .line 122
    .line 123
    move-object/from16 p15, v2

    .line 124
    .line 125
    invoke-virtual/range {p2 .. p15}, Lcom/transsnet/downloader/DownloadManagerApi;->f0(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function4;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public static synthetic h(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/transsnet/downloader/DownloadManagerApi;->S(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final h0(Lkotlin/jvm/functions/Function4;Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;
    .locals 7

    .line 1
    const-string v0, "formatSize"

    .line 2
    .line 3
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "downloadBean"

    .line 7
    .line 8
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-interface {p0, p1, p5, p6, p2}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v0, p1

    .line 26
    move-object v1, p2

    .line 27
    move v2, p4

    .line 28
    move-object v3, p5

    .line 29
    move-object v4, p6

    .line 30
    move v5, p7

    .line 31
    move-object v6, p3

    .line 32
    invoke-direct/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi;->D0(Landroidx/fragment/app/FragmentActivity;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;ZLjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p0
.end method

.method public static synthetic i(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/transsnet/downloader/DownloadManagerApi;->V(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final i0(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

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
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    new-instance v10, Lcom/transsnet/downloader/f;

    .line 20
    .line 21
    move-object v2, v10

    .line 22
    move-object v3, p1

    .line 23
    move-object/from16 v4, p5

    .line 24
    .line 25
    move-object/from16 v5, p6

    .line 26
    .line 27
    move-object v6, p2

    .line 28
    move-object v7, p0

    .line 29
    move-object v8, p3

    .line 30
    move-object v9, p4

    .line 31
    invoke-direct/range {v2 .. v9}, Lcom/transsnet/downloader/f;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1, v10}, Lcom/transsnet/downloader/manager/g;->r(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static synthetic j(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;ILandroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsnet/downloader/DownloadManagerApi;->E0(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;ILandroidx/fragment/app/FragmentActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final j0(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p7, :cond_0

    .line 2
    .line 3
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 4
    .line 5
    sget p1, Lcom/transsnet/downloader/R$string;->already_in_downloads:I

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object p7, Lqi/h;->a:Lqi/h;

    .line 12
    .line 13
    invoke-virtual {p7}, Lqi/h;->h()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p7

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "getSupportFragmentManager(...)"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;->v:Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog$a;

    .line 27
    .line 28
    invoke-virtual {v1, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog$a;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string p2, "download_anima"

    .line 33
    .line 34
    invoke-virtual {p1, v0, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance p2, Lcom/transsnet/downloader/h;

    .line 38
    .line 39
    invoke-direct {p2, p4, p0, p5}, Lcom/transsnet/downloader/h;-><init>(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorMainDialog;->z0(Lkotlin/jvm/functions/Function4;)V

    .line 43
    .line 44
    .line 45
    if-eqz p3, :cond_1

    .line 46
    .line 47
    invoke-virtual {p3, p5}, Lcom/transsion/baselib/db/download/DownloadBean;->setPageFrom(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, p7}, Lcom/transsion/baselib/db/download/DownloadBean;->setLastPageFrom(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, p6}, Lcom/transsion/baselib/db/download/DownloadBean;->setOps(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sget-object p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->m:Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0, p3}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->p(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    return-object p0
.end method

.method public static synthetic k(Lkotlin/jvm/functions/Function4;Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/transsnet/downloader/DownloadManagerApi;->h0(Lkotlin/jvm/functions/Function4;Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final k0(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;
    .locals 7

    .line 1
    const-string v0, "formatSize"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "downloadBean"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, p0

    .line 12
    move-object v1, p1

    .line 13
    move v2, p3

    .line 14
    move-object v3, p4

    .line 15
    move-object v4, p5

    .line 16
    move v5, p6

    .line 17
    move-object v6, p2

    .line 18
    invoke-direct/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi;->D0(Landroidx/fragment/app/FragmentActivity;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;ZLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method public static synthetic l()Lsi/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/DownloadManagerApi;->W()Lsi/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic m(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/transsnet/downloader/DownloadManagerApi;->b0(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final m0()Lsi/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/DownloadManagerApi;->i:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lsi/a;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic n(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/transsnet/downloader/DownloadManagerApi;->k0(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final n0()Lcom/transsnet/downloader/manager/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/DownloadManagerApi;->f:Lkotlin/Lazy;

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

.method public static synthetic o()Lcom/transsnet/downloader/DownloadManagerApi;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/DownloadManagerApi;->u()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final o0()Lep/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/DownloadManagerApi;->g:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lep/a;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic p()Lep/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/DownloadManagerApi;->q0()Lep/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final p0()Lep/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/DownloadManagerApi;->h:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lep/b;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic q()Lcx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/DownloadManagerApi;->C0()Lcx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final q0()Lep/a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lep/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lep/a;

    .line 11
    .line 12
    return-object v0
.end method

.method public static synthetic r(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/transsnet/downloader/DownloadManagerApi;->j0(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final r0()Lep/b;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lep/b;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lep/b;

    .line 11
    .line 12
    return-object v0
.end method

.method public static synthetic s(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/transsnet/downloader/DownloadManagerApi;->Q(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t()Lep/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/DownloadManagerApi;->r0()Lep/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final u()Lcom/transsnet/downloader/DownloadManagerApi;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lck/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "null cannot be cast to non-null type com.transsnet.downloader.DownloadManagerApi"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast v0, Lcom/transsnet/downloader/DownloadManagerApi;

    .line 16
    .line 17
    return-object v0
.end method

.method private final u0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/DownloadManagerApi;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/transsnet/downloader/DownloadManagerApi;->n0()Lcom/transsnet/downloader/manager/g;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/transsnet/downloader/DownloadManagerApi;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 11
    .line 12
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcom/transsnet/downloader/manager/g;->l(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    .line 19
    .line 20
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/transsnet/downloader/DownloadManagerApi;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 29
    .line 30
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1}, Lcom/transsnet/downloader/manager/g;->h(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "/video/detail"

    .line 38
    .line 39
    invoke-static {v1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/transsnet/downloader/DownloadManagerApi;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move-object v2, v3

    .line 54
    :goto_0
    const-string v4, "extra_local_path"

    .line 55
    .line 56
    invoke-virtual {v1, v4, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/transsnet/downloader/DownloadManagerApi;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    move-object v2, v3

    .line 70
    :goto_1
    const-string v4, "extra_url"

    .line 71
    .line 72
    invoke-virtual {v1, v4, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string v2, "extra_proxy_url"

    .line 77
    .line 78
    invoke-virtual {v1, v2, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/transsnet/downloader/DownloadManagerApi;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 83
    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    move-object v1, v3

    .line 92
    :goto_2
    const-string v2, "extra_resource_id"

    .line 93
    .line 94
    invoke-virtual {v0, v2, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/transsnet/downloader/DownloadManagerApi;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 99
    .line 100
    if-eqz v1, :cond_4

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    goto :goto_3

    .line 107
    :cond_4
    move-object v1, v3

    .line 108
    :goto_3
    const-string v2, "extra_subject_id"

    .line 109
    .line 110
    invoke-virtual {v0, v2, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/transsnet/downloader/DownloadManagerApi;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 115
    .line 116
    if-eqz v1, :cond_5

    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    goto :goto_4

    .line 123
    :cond_5
    move-object v1, v3

    .line 124
    :goto_4
    const-string v2, "extra_name"

    .line 125
    .line 126
    invoke-virtual {v0, v2, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/transsnet/downloader/DownloadManagerApi;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 131
    .line 132
    if-eqz v1, :cond_6

    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    goto :goto_5

    .line 139
    :cond_6
    move-object v1, v3

    .line 140
    :goto_5
    const-string v2, "extra_post_id"

    .line 141
    .line 142
    invoke-virtual {v0, v2, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/transsnet/downloader/DownloadManagerApi;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 147
    .line 148
    const/4 v2, 0x0

    .line 149
    if-eqz v1, :cond_7

    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->isCompleted()Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    const/4 v4, 0x1

    .line 156
    if-ne v1, v4, :cond_7

    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_7
    move v4, v2

    .line 160
    :goto_6
    const-string v1, "extra_completed"

    .line 161
    .line 162
    invoke-virtual {v0, v1, v4}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/transsnet/downloader/DownloadManagerApi;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 167
    .line 168
    if-eqz v1, :cond_8

    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    :cond_8
    const-string v1, "extra_is_series"

    .line 175
    .line 176
    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    const-string v1, "extra_page_from"

    .line 181
    .line 182
    invoke-virtual {v0, v1, p2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    const/4 v0, 0x2

    .line 187
    invoke-static {p2, p1, v3, v0, v3}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    return-void
.end method

.method public static final synthetic v(Lcom/transsnet/downloader/DownloadManagerApi;)Lsi/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/DownloadManagerApi;->m0()Lsi/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final v0(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v4, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p0, p1, v0}, Lcom/transsnet/downloader/DownloadManagerApi$opnAudio$1;-><init>(Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static final synthetic w(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/DownloadManagerApi;->e:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic x(Lcom/transsnet/downloader/DownloadManagerApi;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/DownloadManagerApi;->c:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic x0(Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)Z
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x4

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    move p3, v0

    .line 7
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    move p4, v0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/DownloadManagerApi;->w0(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public static final synthetic y(Lcom/transsnet/downloader/DownloadManagerApi;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/DownloadManagerApi;->b:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic z(Lcom/transsnet/downloader/DownloadManagerApi;)Lcom/transsnet/downloader/manager/g;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/DownloadManagerApi;->n0()Lcom/transsnet/downloader/manager/g;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z0(Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x8

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/DownloadManagerApi;->y0(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final A0(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/DownloadManagerApi;->a:Ljava/util/Set;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->a(Ljava/lang/Object;)Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsnet/downloader/DownloadManagerApi;->b:Ljava/util/Set;

    .line 13
    .line 14
    check-cast v0, Ljava/util/Collection;

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->a(Ljava/lang/Object;)Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    if-eqz p4, :cond_0

    .line 24
    .line 25
    new-instance v0, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-direct {v0, p1, p2, v2, p3}, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 29
    .line 30
    .line 31
    sget-object v2, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 32
    .line 33
    const-class v3, Lcom/transsnet/flow/event/FlowEventBus;

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 40
    .line 41
    const-class v3, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-string v6, "getName(...)"

    .line 48
    .line 49
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-wide/16 v7, 0x0

    .line 53
    .line 54
    invoke-virtual {v2, v3, v0, v7, v8}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 55
    .line 56
    .line 57
    :cond_0
    if-eqz p5, :cond_1

    .line 58
    .line 59
    new-instance v7, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;

    .line 60
    .line 61
    const/4 v6, 0x0

    .line 62
    move-object v0, v7

    .line 63
    move-object v1, p1

    .line 64
    move-object v2, p0

    .line 65
    move v3, p4

    .line 66
    move-object v4, p2

    .line 67
    move v5, p3

    .line 68
    invoke-direct/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi$removePlayAvailable$1;-><init>(Ljava/lang/String;Lcom/transsnet/downloader/DownloadManagerApi;ZLjava/lang/String;ZLkotlin/coroutines/Continuation;)V

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    const/4 v1, 0x0

    .line 73
    invoke-static {v1, v7, v0, v1}, Lkotlinx/coroutines/i;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void
.end method

.method public final K(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 16

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "resource"

    .line 9
    .line 10
    move-object/from16 v7, p6

    .line 11
    .line 12
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/16 v14, 0x800

    .line 16
    .line 17
    const/4 v15, 0x0

    .line 18
    const/4 v12, 0x0

    .line 19
    const/4 v13, 0x0

    .line 20
    move-object/from16 v1, p0

    .line 21
    .line 22
    move-object/from16 v3, p2

    .line 23
    .line 24
    move-object/from16 v4, p3

    .line 25
    .line 26
    move-object/from16 v5, p4

    .line 27
    .line 28
    move-object/from16 v6, p5

    .line 29
    .line 30
    move-object/from16 v8, p7

    .line 31
    .line 32
    move-object/from16 v9, p8

    .line 33
    .line 34
    move-object/from16 v10, p9

    .line 35
    .line 36
    move/from16 v11, p10

    .line 37
    .line 38
    invoke-static/range {v1 .. v15}, Lcom/transsnet/downloader/DownloadManagerApi;->N(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final L(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 14

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "resource"

    .line 8
    .line 9
    move-object/from16 v7, p6

    .line 10
    .line 11
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 18
    .line 19
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/16 v1, 0x2537

    .line 31
    .line 32
    :goto_0
    const-wide/16 v3, 0x7d0

    .line 33
    .line 34
    invoke-virtual {v0, v1, v3, v4}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    if-eqz p5, :cond_4

    .line 42
    .line 43
    invoke-interface/range {p5 .. p5}, Ljava/lang/CharSequence;->length()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    move-object/from16 v6, p5

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    const-string v1, "ops"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    goto :goto_2

    .line 70
    :cond_5
    const/4 v0, 0x0

    .line 71
    :goto_2
    move-object v6, v0

    .line 72
    :goto_3
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 73
    .line 74
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_6

    .line 79
    .line 80
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 81
    .line 82
    sget v1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lfh/b$a;->d(I)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_6
    move-object v1, p0

    .line 89
    move-object v2, p1

    .line 90
    move-object/from16 v3, p2

    .line 91
    .line 92
    move-object/from16 v4, p3

    .line 93
    .line 94
    move-object/from16 v5, p4

    .line 95
    .line 96
    move-object/from16 v7, p6

    .line 97
    .line 98
    move-object/from16 v8, p7

    .line 99
    .line 100
    move-object/from16 v9, p8

    .line 101
    .line 102
    move-object/from16 v10, p9

    .line 103
    .line 104
    move/from16 v11, p10

    .line 105
    .line 106
    move/from16 v12, p11

    .line 107
    .line 108
    move/from16 v13, p12

    .line 109
    .line 110
    invoke-direct/range {v1 .. v13}, Lcom/transsnet/downloader/DownloadManagerApi;->G(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public final O(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;)V
    .locals 12

    .line 1
    move-object v8, p1

    .line 2
    move-object/from16 v0, p4

    .line 3
    .line 4
    move-object/from16 v9, p6

    .line 5
    .line 6
    const-string v1, "activity"

    .line 7
    .line 8
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "resource"

    .line 12
    .line 13
    move-object/from16 v6, p5

    .line 14
    .line 15
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 19
    .line 20
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Ljava/lang/CharSequence;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    const-string v1, "ops"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, 0x0

    .line 53
    :goto_0
    iput-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 54
    .line 55
    :cond_2
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 56
    .line 57
    if-eqz p2, :cond_3

    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    const/16 v1, 0x2536

    .line 71
    .line 72
    :goto_1
    const-wide/16 v2, 0x7d0

    .line 73
    .line 74
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    return-void

    .line 81
    :cond_4
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 82
    .line 83
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_5

    .line 88
    .line 89
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 90
    .line 91
    sget v1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lfh/b$a;->d(I)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_5
    if-eqz v9, :cond_6

    .line 98
    .line 99
    sget-object v0, Lcom/transsnet/downloader/manager/f;->a:Lcom/transsnet/downloader/manager/f$a;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/f$a;->a()Lcom/transsnet/downloader/manager/f;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    new-instance v11, Lcom/transsnet/downloader/a;

    .line 106
    .line 107
    move-object v0, v11

    .line 108
    move-object v1, p0

    .line 109
    move-object v2, p1

    .line 110
    move-object v3, p2

    .line 111
    move-object v4, p3

    .line 112
    move-object/from16 v6, p5

    .line 113
    .line 114
    move-object/from16 v7, p7

    .line 115
    .line 116
    invoke-direct/range {v0 .. v7}, Lcom/transsnet/downloader/a;-><init>(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v10, p1, v9, v11}, Lcom/transsnet/downloader/manager/f;->j(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Lkotlin/jvm/functions/Function0;)V

    .line 120
    .line 121
    .line 122
    move-object v0, p0

    .line 123
    goto :goto_2

    .line 124
    :cond_6
    new-instance v9, Lcom/transsnet/downloader/k;

    .line 125
    .line 126
    move-object v0, v9

    .line 127
    move-object v1, p0

    .line 128
    move-object v2, p1

    .line 129
    move-object v3, p2

    .line 130
    move-object v4, p3

    .line 131
    move-object/from16 v6, p5

    .line 132
    .line 133
    move-object/from16 v7, p7

    .line 134
    .line 135
    invoke-direct/range {v0 .. v7}, Lcom/transsnet/downloader/k;-><init>(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    move-object v0, p0

    .line 139
    invoke-direct {p0, p1, v9}, Lcom/transsnet/downloader/DownloadManagerApi;->X(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function0;)V

    .line 140
    .line 141
    .line 142
    :goto_2
    return-void
.end method

.method public final T(Ljava/lang/String;Ljava/lang/String;ZIZZ)V
    .locals 12

    .line 1
    move-object v7, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v5, p2

    .line 4
    move v0, p3

    .line 5
    if-eqz p6, :cond_0

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v2, v7, Lcom/transsnet/downloader/DownloadManagerApi;->c:Ljava/util/Set;

    .line 10
    .line 11
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    const-string v2, "getName(...)"

    .line 15
    .line 16
    const-class v3, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;

    .line 17
    .line 18
    const-class v4, Lcom/transsnet/flow/event/FlowEventBus;

    .line 19
    .line 20
    const-wide/16 v8, 0x0

    .line 21
    .line 22
    const/4 v10, 0x1

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    const/4 v11, 0x0

    .line 26
    if-eqz v5, :cond_1

    .line 27
    .line 28
    iget-object v6, v7, Lcom/transsnet/downloader/DownloadManagerApi;->a:Ljava/util/Set;

    .line 29
    .line 30
    invoke-interface {v6, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    new-instance v6, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;

    .line 34
    .line 35
    invoke-direct {v6, v11, p2, v10, p3}, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 39
    .line 40
    invoke-virtual {v0, v4}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v3, v6, v8, v9}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object v0, v7, Lcom/transsnet/downloader/DownloadManagerApi;->b:Ljava/util/Set;

    .line 57
    .line 58
    check-cast v0, Ljava/lang/Iterable;

    .line 59
    .line 60
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    if-nez p5, :cond_2

    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    new-instance v8, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;

    .line 70
    .line 71
    const/4 v6, 0x0

    .line 72
    move-object v0, v8

    .line 73
    move-object v1, p1

    .line 74
    move/from16 v2, p4

    .line 75
    .line 76
    move-object v3, p0

    .line 77
    move/from16 v4, p5

    .line 78
    .line 79
    move-object v5, p2

    .line 80
    invoke-direct/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi$addPlayAvailable$1;-><init>(Ljava/lang/String;ILcom/transsnet/downloader/DownloadManagerApi;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v11, v8, v10, v11}, Lkotlinx/coroutines/i;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lkotlin/Unit;

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    if-eqz v5, :cond_5

    .line 91
    .line 92
    iget-object v6, v7, Lcom/transsnet/downloader/DownloadManagerApi;->a:Ljava/util/Set;

    .line 93
    .line 94
    invoke-interface {v6, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    iget-object v6, v7, Lcom/transsnet/downloader/DownloadManagerApi;->b:Ljava/util/Set;

    .line 100
    .line 101
    invoke-interface {v6, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    :cond_4
    if-eqz p5, :cond_5

    .line 105
    .line 106
    new-instance v6, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;

    .line 107
    .line 108
    invoke-direct {v6, p1, p2, v10, p3}, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 109
    .line 110
    .line 111
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 112
    .line 113
    invoke-virtual {v0, v4}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1, v6, v8, v9}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 127
    .line 128
    .line 129
    :cond_5
    :goto_0
    return-void
.end method

.method public final U(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 1
    move-object v9, p1

    .line 2
    move-object v10, p2

    .line 3
    const-string v0, "activity"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "linkUrl"

    .line 9
    .line 10
    move-object/from16 v4, p3

    .line 11
    .line 12
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "resource"

    .line 16
    .line 17
    move-object/from16 v7, p6

    .line 18
    .line 19
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 23
    .line 24
    if-eqz v10, :cond_0

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/16 v1, 0x2538

    .line 38
    .line 39
    :goto_0
    const-wide/16 v2, 0x7d0

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    if-eqz p5, :cond_2

    .line 49
    .line 50
    invoke-interface/range {p5 .. p5}, Ljava/lang/CharSequence;->length()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    const-string v1, "ops"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    :cond_3
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 72
    .line 73
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_4

    .line 78
    .line 79
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 80
    .line 81
    sget v1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lfh/b$a;->d(I)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_4
    if-eqz v10, :cond_5

    .line 88
    .line 89
    sget-object v0, Lcom/transsnet/downloader/manager/f;->a:Lcom/transsnet/downloader/manager/f$a;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/f$a;->a()Lcom/transsnet/downloader/manager/f;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    new-instance v12, Lcom/transsnet/downloader/b;

    .line 96
    .line 97
    move-object v0, v12

    .line 98
    move-object v1, p0

    .line 99
    move-object v2, p1

    .line 100
    move-object v3, p2

    .line 101
    move-object/from16 v4, p3

    .line 102
    .line 103
    move-object/from16 v5, p4

    .line 104
    .line 105
    move-object/from16 v6, p5

    .line 106
    .line 107
    move-object/from16 v7, p6

    .line 108
    .line 109
    move-object/from16 v8, p7

    .line 110
    .line 111
    invoke-direct/range {v0 .. v8}, Lcom/transsnet/downloader/b;-><init>(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v11, p1, p2, v12}, Lcom/transsnet/downloader/manager/f;->j(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Lkotlin/jvm/functions/Function0;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_5
    const/16 v11, 0x80

    .line 119
    .line 120
    const/4 v12, 0x0

    .line 121
    const/4 v8, 0x0

    .line 122
    move-object v0, p0

    .line 123
    move-object v1, p1

    .line 124
    move-object v2, p2

    .line 125
    move-object/from16 v3, p3

    .line 126
    .line 127
    move-object/from16 v4, p4

    .line 128
    .line 129
    move-object/from16 v5, p5

    .line 130
    .line 131
    move-object/from16 v6, p6

    .line 132
    .line 133
    move-object/from16 v7, p7

    .line 134
    .line 135
    move v9, v11

    .line 136
    move-object v10, v12

    .line 137
    invoke-static/range {v0 .. v10}, Lcom/transsnet/downloader/DownloadManagerApi;->Z(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :goto_1
    return-void
.end method

.method public a()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;->v:Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsnet/downloader/fragment/TransferInnerMainFragment$a;->a()Lcom/transsnet/downloader/fragment/TransferInnerMainFragment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final d0(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 72

    const-string v0, "activity"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 1
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p4

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v3, "ops"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-eqz p7, :cond_3

    .line 2
    invoke-virtual/range {p7 .. p7}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto :goto_2

    :cond_3
    move-object v5, v0

    :goto_2
    if-eqz p7, :cond_5

    .line 3
    invoke-virtual/range {p7 .. p7}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    move-object/from16 v24, v3

    goto :goto_4

    :cond_5
    :goto_3
    move-object/from16 v24, v1

    :goto_4
    if-eqz p7, :cond_6

    .line 4
    invoke-virtual/range {p7 .. p7}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v0

    :cond_6
    move-object v6, v0

    .line 5
    new-instance v0, Lcom/transsion/shorttv/bean/Subject;

    move-object v4, v0

    const v70, 0x3fffffff    # 1.9999999f

    const/16 v71, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-wide/16 v43, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const-wide/16 v47, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const v69, -0x80004

    invoke-direct/range {v4 .. v71}, Lcom/transsion/shorttv/bean/Subject;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/shorttv/bean/SubjectDl;Ljava/util/List;Lcom/transsion/shorttv/bean/Cover;Lcom/transsion/shorttv/bean/Trailer;ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZZLcom/transsion/shorttv/bean/ShortTVItem;Lcom/transsion/shorttv/bean/ShortTVFavInfo;IZZJLjava/lang/String;Ljava/util/List;JLjava/util/List;IZLjava/lang/Integer;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLjava/lang/Integer;Lcom/transsion/shorttv/bean/PlayUrl;IILjava/util/List;ILcom/transsion/shorttv/bean/SkuInfo;ILjava/util/Set;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    sget-object v1, Lrr/a;->a:Lrr/a;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v1 .. v9}, Lrr/a;->a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/shorttv/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public final f0(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function4;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "activity"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 9
    .line 10
    invoke-virtual {v1}, Lqi/h;->h()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 15
    .line 16
    .line 17
    move-result-object v15

    .line 18
    const-string v2, "getSupportFragmentManager(...)"

    .line 19
    .line 20
    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object v2, Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;->v:Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog$a;

    .line 33
    .line 34
    move-object/from16 v3, p2

    .line 35
    .line 36
    move-object/from16 v4, p4

    .line 37
    .line 38
    move-object/from16 v5, p5

    .line 39
    .line 40
    move-object/from16 v6, p6

    .line 41
    .line 42
    move-object v7, v1

    .line 43
    move-object/from16 v8, p7

    .line 44
    .line 45
    move-object/from16 v9, p8

    .line 46
    .line 47
    move-object/from16 v10, p3

    .line 48
    .line 49
    move-object/from16 v11, p9

    .line 50
    .line 51
    move-object/from16 v12, p10

    .line 52
    .line 53
    move-object/from16 v13, p11

    .line 54
    .line 55
    move/from16 v14, p12

    .line 56
    .line 57
    invoke-virtual/range {v2 .. v14}, Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 63
    .line 64
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_3

    .line 69
    .line 70
    :cond_2
    move-object/from16 v3, p0

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    sget-object v2, Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;->v:Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog$a;

    .line 74
    .line 75
    move-object/from16 v3, p3

    .line 76
    .line 77
    move-object/from16 v4, p5

    .line 78
    .line 79
    move-object/from16 v5, p6

    .line 80
    .line 81
    move-object v6, v1

    .line 82
    move-object/from16 v7, p7

    .line 83
    .line 84
    move-object/from16 v8, p8

    .line 85
    .line 86
    move-object/from16 v9, p9

    .line 87
    .line 88
    move-object/from16 v10, p10

    .line 89
    .line 90
    move-object/from16 v11, p11

    .line 91
    .line 92
    move/from16 v12, p12

    .line 93
    .line 94
    invoke-virtual/range {v2 .. v12}, Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    :goto_1
    new-instance v2, Lcom/transsnet/downloader/d;

    .line 99
    .line 100
    move-object/from16 v3, p0

    .line 101
    .line 102
    move-object/from16 v4, p6

    .line 103
    .line 104
    move-object/from16 v5, p13

    .line 105
    .line 106
    invoke-direct {v2, v5, v3, v0, v4}, Lcom/transsnet/downloader/d;-><init>(Lkotlin/jvm/functions/Function4;Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Lcom/transsnet/downloader/ugc/dialog/UGCDownloadDialog;->s1(Lkotlin/jvm/functions/Function4;)V

    .line 110
    .line 111
    .line 112
    const-string v0, "download_anima"

    .line 113
    .line 114
    invoke-virtual {v1, v15, v0}, Lcom/transsion/baseui/dialog/BaseDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :goto_2
    return-void
.end method

.method public final l0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/transsnet/downloader/DownloadManagerApi$fetchLatestDownloadData$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v2}, Lcom/transsnet/downloader/DownloadManagerApi$fetchLatestDownloadData$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final s0(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "downloadBean"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/transsnet/downloader/DownloadManagerApi;->t0(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final t0(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "resourceId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v4, Lcom/transsnet/downloader/DownloadManagerApi$openDownloadVideo$1;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-direct {v4, p2, p3, p1, v0}, Lcom/transsnet/downloader/DownloadManagerApi$openDownloadVideo$1;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x3

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final w0(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/DownloadManagerApi;->a:Ljava/util/Set;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsnet/downloader/DownloadManagerApi;->b:Ljava/util/Set;

    .line 12
    .line 13
    check-cast p2, Ljava/lang/Iterable;

    .line 14
    .line 15
    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p2, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 25
    :goto_1
    if-eqz p3, :cond_2

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    iget-object p2, p0, Lcom/transsnet/downloader/DownloadManagerApi;->b:Ljava/util/Set;

    .line 30
    .line 31
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    if-eqz p4, :cond_3

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    iget-object p2, p0, Lcom/transsnet/downloader/DownloadManagerApi;->c:Ljava/util/Set;

    .line 41
    .line 42
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    :cond_3
    :goto_2
    return p2
.end method

.method public final y0(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;

    .line 7
    .line 8
    const/4 v7, 0x0

    .line 9
    move-object v1, v0

    .line 10
    move-object v2, p1

    .line 11
    move-object v3, p0

    .line 12
    move-object v4, p2

    .line 13
    move-object v5, p3

    .line 14
    move-object v6, p4

    .line 15
    invoke-direct/range {v1 .. v7}, Lcom/transsnet/downloader/DownloadManagerApi$playNow$1;-><init>(Ljava/lang/String;Lcom/transsnet/downloader/DownloadManagerApi;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    const/4 p2, 0x0

    .line 20
    invoke-static {p2, v0, p1, p2}, Lkotlinx/coroutines/i;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void
.end method
