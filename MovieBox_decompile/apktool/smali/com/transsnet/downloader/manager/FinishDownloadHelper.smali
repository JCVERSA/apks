.class public final Lcom/transsnet/downloader/manager/FinishDownloadHelper;
.super Lui/a;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lui/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "FinishDownloadHelper"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->a:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/transsnet/downloader/manager/v;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsnet/downloader/manager/v;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->b:Lkotlin/Lazy;

    .line 18
    .line 19
    new-instance v0, Lcom/transsnet/downloader/manager/w;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/transsnet/downloader/manager/w;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->c:Lkotlin/Lazy;

    .line 29
    .line 30
    return-void
.end method

.method public static synthetic h()Lkk/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->l()Lkk/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic i()Lcx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->o()Lcx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic j(Lcom/transsnet/downloader/manager/FinishDownloadHelper;)Lcx/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->n()Lcx/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic k(Lcom/transsnet/downloader/manager/FinishDownloadHelper;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final l()Lkk/a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lkk/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lkk/a;

    .line 11
    .line 12
    return-object v0
.end method

.method private final m()Lkk/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkk/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final n()Lcx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcx/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final o()Lcx/a;
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

.method private final p(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    if-eqz v0, :cond_4

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v1, "SHORTS_DIALOG_SHOWN_"

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-virtual {v2, p1, v3}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {}, Lcom/blankj/utilcode/util/c;->j()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_4

    .line 67
    .line 68
    instance-of v3, v2, Landroidx/fragment/app/FragmentActivity;

    .line 69
    .line 70
    if-eqz v3, :cond_4

    .line 71
    .line 72
    move-object v3, v2

    .line 73
    check-cast v3, Landroidx/fragment/app/FragmentActivity;

    .line 74
    .line 75
    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-nez v4, :cond_4

    .line 80
    .line 81
    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-nez v3, :cond_4

    .line 86
    .line 87
    :try_start_0
    move-object v3, v2

    .line 88
    check-cast v3, Landroidx/fragment/app/FragmentActivity;

    .line 89
    .line 90
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    const-string v4, "getSupportFragmentManager(...)"

    .line 95
    .line 96
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string v4, "DownloadedShortsDialog"

    .line 100
    .line 101
    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    instance-of v5, v3, Landroidx/fragment/app/DialogFragment;

    .line 106
    .line 107
    if-eqz v5, :cond_3

    .line 108
    .line 109
    check-cast v3, Landroidx/fragment/app/DialogFragment;

    .line 110
    .line 111
    invoke-virtual {v3}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catch_0
    move-exception p1

    .line 116
    goto :goto_1

    .line 117
    :cond_3
    :goto_0
    sget-object v3, Lcom/transsnet/downloader/fragment/DownloadedShortsDialog;->e:Lcom/transsnet/downloader/fragment/DownloadedShortsDialog$a;

    .line 118
    .line 119
    invoke-virtual {v3, v0}, Lcom/transsnet/downloader/fragment/DownloadedShortsDialog$a;->a(Ljava/lang/String;)Lcom/transsnet/downloader/fragment/DownloadedShortsDialog;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0, v2, v4}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    sget-object v0, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 127
    .line 128
    const-string v2, ""

    .line 129
    .line 130
    const-string v3, "short_download_view"

    .line 131
    .line 132
    invoke-virtual {v0, v2, v3}, Lcom/transsion/baselib/helper/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const/4 v1, 0x1

    .line 140
    invoke-virtual {v0, p1, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    .line 146
    .line 147
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public e(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lui/a;->e(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->m()Lkk/a;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-interface {p2}, Lkk/a;->enable()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    const/4 v0, 0x1

    .line 20
    if-ne p2, v0, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {p2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v3, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-direct {v3, p1, p0, p2}, Lcom/transsnet/downloader/manager/FinishDownloadHelper$onDownloadSuccess$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/manager/FinishDownloadHelper;Lkotlin/coroutines/Continuation;)V

    .line 34
    .line 35
    .line 36
    const/4 v4, 0x3

    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v1, 0x0

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isShorts()Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/manager/FinishDownloadHelper;->p(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method
