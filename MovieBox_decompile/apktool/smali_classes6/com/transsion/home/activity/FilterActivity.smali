.class public final Lcom/transsion/home/activity/FilterActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;
.source "source.java"

# interfaces
.implements Lcom/transsion/baselib/report/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Leh/a;",
        ">;",
        "Lcom/transsion/baselib/report/g;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u000f\u0010\u0008\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0005J\u000f\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0019\u0010\u0012\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0019\u0010\u0014\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0005J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u001c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010\"\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0018\u0010$\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010!R\u0016\u0010&\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010!\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/transsion/home/activity/FilterActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Leh/a;",
        "Lcom/transsion/baselib/report/g;",
        "<init>",
        "()V",
        "",
        "e0",
        "i0",
        "h0",
        "",
        "isTranslucent",
        "()Z",
        "isStatusDark",
        "d0",
        "()Leh/a;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "initView",
        "retryLoadData",
        "",
        "getPageName",
        "()Ljava/lang/String;",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "",
        "a",
        "I",
        "tabId",
        "b",
        "Ljava/lang/String;",
        "tabCode",
        "c",
        "mFilterJson",
        "d",
        "videoType",
        "Home_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/home/activity/FilterActivity;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/transsion/home/activity/FilterActivity;->d:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic b0(Lcom/transsion/home/activity/FilterActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/home/activity/FilterActivity;->g0(Lcom/transsion/home/activity/FilterActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c0(Lcom/transsion/home/activity/FilterActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/home/activity/FilterActivity;->f0(Lcom/transsion/home/activity/FilterActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final e0()V
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/home/fragment/filter/FilterFragment;->z:Lcom/transsion/home/fragment/filter/FilterFragment$a;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/home/activity/FilterActivity;->a:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/home/activity/FilterActivity;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/home/activity/FilterActivity;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/home/fragment/filter/FilterFragment$a;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/transsion/home/fragment/filter/FilterFragment;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget v2, Lcom/transsion/home/R$id;->container:I

    .line 22
    .line 23
    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/w;->s(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/w;->k()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private static final f0(Lcom/transsion/home/activity/FilterActivity;Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p1, Lgj/a;->a:Lgj/a$a;

    .line 2
    .line 3
    const-class v0, Lgj/b;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lgj/a$a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lgj/b;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    invoke-interface {p1, v0, p0}, Lgj/b;->d(Ljava/lang/String;Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private static final g0(Lcom/transsion/home/activity/FilterActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/home/activity/FilterActivity;->i0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private final h0()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "event_type"

    .line 7
    .line 8
    const-string v2, "back_browse"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lcom/transsion/home/activity/FilterActivity;->a:I

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "tabId"

    .line 20
    .line 21
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    sget-object v1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/transsion/home/activity/FilterActivity;->getPageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2, v0}, Lcom/transsion/baselib/helper/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private final i0()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "event_type"

    .line 7
    .line 8
    const-string v2, "back_click"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lcom/transsion/home/activity/FilterActivity;->a:I

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "tabId"

    .line 20
    .line 21
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    sget-object v1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/transsion/home/activity/FilterActivity;->getPageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2, v0}, Lcom/transsion/baselib/helper/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public d0()Leh/a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Leh/a;->c(Landroid/view/LayoutInflater;)Leh/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "inflate(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "home_filter_page"

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lf4/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/home/activity/FilterActivity;->d0()Leh/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Leh/a;

    .line 6
    .line 7
    iget-object p1, p1, Leh/a;->c:Lcom/tn/lib/view/TitleLayout;

    .line 8
    .line 9
    sget v0, Lcom/transsion/home/R$mipmap;->ic_search_movie:I

    .line 10
    .line 11
    new-instance v1, Llk/a;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Llk/a;-><init>(Lcom/transsion/home/activity/FilterActivity;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Lcom/tn/lib/view/TitleLayout;->setRightView(ILandroid/view/View$OnClickListener;)Lcom/tn/lib/view/TitleLayout;

    .line 17
    .line 18
    .line 19
    new-instance v0, Llk/b;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Llk/b;-><init>(Lcom/transsion/home/activity/FilterActivity;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/tn/lib/view/TitleLayout;->setLeftOnclick(Landroid/view/View$OnClickListener;)Lcom/tn/lib/view/TitleLayout;

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/transsion/home/activity/FilterActivity;->h0()V

    .line 28
    .line 29
    .line 30
    sget v0, Lcom/transsion/home/R$string;->filter:I

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "getString(...)"

    .line 37
    .line 38
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/tn/lib/view/TitleLayout;->setTitleText(Ljava/lang/String;)Lcom/tn/lib/view/TitleLayout;

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {p1, v0, v1, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/transsion/home/activity/FilterActivity;->e0()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public isStatusDark()Z
    .locals 1

    .line 1
    sget-object v0, Lij/y;->a:Lij/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lij/y;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public newLogViewConfig()Lqi/b;
    .locals 5

    .line 1
    new-instance v0, Lqi/b;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/home/activity/FilterActivity;->getPageName()Ljava/lang/String;

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
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Lqi/b;->l(Z)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/therouter/TheRouter;->l(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public retryLoadData()V
    .locals 0

    .line 1
    return-void
.end method
