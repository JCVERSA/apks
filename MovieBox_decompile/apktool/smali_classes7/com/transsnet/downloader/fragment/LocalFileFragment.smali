.class public final Lcom/transsnet/downloader/fragment/LocalFileFragment;
.super Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/fragment/LocalFileFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0007*\u0001\u001a\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0003J\u000f\u0010\u0008\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0003J\u000f\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u000bR\u001b\u0010\u0019\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsnet/downloader/fragment/LocalFileFragment;",
        "Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;",
        "<init>",
        "()V",
        "",
        "initViewData",
        "initViewModel",
        "onResume",
        "onDestroy",
        "",
        "getEmptyDescText",
        "()Ljava/lang/String;",
        "",
        "T0",
        "()Z",
        "initListener",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "getPageName",
        "Lcom/transsnet/downloader/manager/g;",
        "k",
        "Lkotlin/Lazy;",
        "p1",
        "()Lcom/transsnet/downloader/manager/g;",
        "downloadManager",
        "com/transsnet/downloader/fragment/LocalFileFragment$b",
        "l",
        "Lcom/transsnet/downloader/fragment/LocalFileFragment$b;",
        "downloadListener",
        "m",
        "a",
        "Downloader_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final m:Lcom/transsnet/downloader/fragment/LocalFileFragment$a;


# instance fields
.field private final k:Lkotlin/Lazy;

.field private final l:Lcom/transsnet/downloader/fragment/LocalFileFragment$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsnet/downloader/fragment/LocalFileFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsnet/downloader/fragment/LocalFileFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsnet/downloader/fragment/LocalFileFragment;->m:Lcom/transsnet/downloader/fragment/LocalFileFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsnet/downloader/fragment/r6;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsnet/downloader/fragment/r6;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/LocalFileFragment;->k:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/transsnet/downloader/fragment/LocalFileFragment$b;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/transsnet/downloader/fragment/LocalFileFragment$b;-><init>(Lcom/transsnet/downloader/fragment/LocalFileFragment;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/LocalFileFragment;->l:Lcom/transsnet/downloader/fragment/LocalFileFragment$b;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic n1()Lcom/transsnet/downloader/manager/g;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/fragment/LocalFileFragment;->o1()Lcom/transsnet/downloader/manager/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final o1()Lcom/transsnet/downloader/manager/g;
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

.method private final p1()Lcom/transsnet/downloader/manager/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/LocalFileFragment;->k:Lkotlin/Lazy;

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


# virtual methods
.method public T0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public getEmptyDescText()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lcom/transsnet/downloader/R$string;->download_no_local_file_tips_2:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getString(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "file_manager_tab_all"

    .line 2
    .line 3
    return-object v0
.end method

.method public initListener()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->initListener()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/LocalFileFragment;->p1()Lcom/transsnet/downloader/manager/g;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/LocalFileFragment;->l:Lcom/transsnet/downloader/fragment/LocalFileFragment$b;

    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/transsnet/downloader/manager/g;->g(Lui/m0;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public initViewData()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;->initViewData()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lbx/s;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lbx/s;->d:Lcom/tn/lib/view/TitleLayout;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->F0()Lcom/transsnet/downloader/adapter/a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Lt6/f;->z(Z)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public initViewModel()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->initViewModel()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v3, Lcom/transsnet/downloader/fragment/LocalFileFragment$initViewModel$1;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v3, p0, v1}, Lcom/transsnet/downloader/fragment/LocalFileFragment$initViewModel$1;-><init>(Lcom/transsnet/downloader/fragment/LocalFileFragment;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x3

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public newLogViewConfig()Lqi/b;
    .locals 5

    .line 1
    new-instance v0, Lqi/b;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/LocalFileFragment;->getPageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v4, v2, v3}, Lqi/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/transsnet/downloader/viewmodel/a0;->a()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const-string v2, "1"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v2, "0"

    .line 29
    .line 30
    :goto_0
    const-string v3, "permission"

    .line 31
    .line 32
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "page_from"

    .line 40
    .line 41
    const-string v3, ""

    .line 42
    .line 43
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/LocalFileFragment;->p1()Lcom/transsnet/downloader/manager/g;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/LocalFileFragment;->l:Lcom/transsnet/downloader/fragment/LocalFileFragment$b;

    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/transsnet/downloader/manager/g;->k(Lui/m0;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
