.class public final Lcom/transsion/home/activity/OperateActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;
.source "source.java"

# interfaces
.implements Lcom/transsion/home/preload/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lqk/d;",
        ">;",
        "Lcom/transsion/home/preload/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u000f\u0010\u0008\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\u000c\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\r\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0005J\u0011\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010#\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010$\u00a8\u0006&"
    }
    d2 = {
        "Lcom/transsion/home/activity/OperateActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lqk/d;",
        "Lcom/transsion/home/preload/a;",
        "<init>",
        "()V",
        "",
        "d0",
        "c0",
        "()Lqk/d;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "(Landroid/os/Bundle;)V",
        "",
        "b0",
        "()I",
        "",
        "isTranslucent",
        "()Z",
        "isStatusDark",
        "",
        "getPageName",
        "()Ljava/lang/String;",
        "onDestroy",
        "Lcom/transsion/home/preload/b;",
        "d",
        "()Lcom/transsion/home/preload/b;",
        "a",
        "I",
        "tabId",
        "b",
        "Ljava/lang/String;",
        "tabCode",
        "c",
        "title",
        "Lcom/transsion/home/preload/b;",
        "xmlPreload",
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

.field private d:Lcom/transsion/home/preload/b;


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
    iput-object v0, p0, Lcom/transsion/home/activity/OperateActivity;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/transsion/home/activity/OperateActivity;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private final d0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lqk/d;

    .line 6
    .line 7
    iget-object v0, v0, Lqk/d;->c:Lcom/tn/lib/view/TitleLayout;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/transsion/home/activity/OperateActivity;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/TitleLayout;->setTitleText(Ljava/lang/String;)Lcom/tn/lib/view/TitleLayout;

    .line 12
    .line 13
    .line 14
    sget-object v1, Lzg/h;->a:Lzg/h;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "getContext(...)"

    .line 21
    .line 22
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lzg/h;->d(Landroid/content/Context;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 31
    .line 32
    .line 33
    sget v1, Lcom/tn/lib/widget/R$color;->transparent:I

    .line 34
    .line 35
    invoke-static {v1}, Lcom/blankj/utilcode/util/h;->a(I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lcom/tn/lib/view/TitleLayout;->setViewLineVisible(Z)Lcom/tn/lib/view/TitleLayout;

    .line 43
    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final b0()I
    .locals 3

    .line 1
    sget-object v0, Lzg/h;->a:Lzg/h;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApplicationContext(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lzg/h;->d(Landroid/content/Context;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/high16 v1, 0x42300000    # 44.0f

    .line 17
    .line 18
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/2addr v0, v1

    .line 23
    return v0
.end method

.method public c0()Lqk/d;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/therouter/TheRouter;->l(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lqk/d;->c(Landroid/view/LayoutInflater;)Lqk/d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "inflate(...)"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public d()Lcom/transsion/home/preload/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/home/activity/OperateActivity;->d:Lcom/transsion/home/preload/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x1c

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/transsion/home/preload/MainXMLPreloadControlImp;-><init>(Landroid/app/Activity;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/home/activity/OperateActivity;->d:Lcom/transsion/home/preload/b;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/transsion/home/activity/OperateActivity;->d:Lcom/transsion/home/preload/b;

    .line 19
    .line 20
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/home/activity/OperateActivity;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lf4/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/home/activity/OperateActivity;->c0()Lqk/d;

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
    invoke-direct {p0}, Lcom/transsion/home/activity/OperateActivity;->d0()V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 5
    .line 6
    iget v0, p0, Lcom/transsion/home/activity/OperateActivity;->a:I

    .line 7
    .line 8
    iget-object v1, p0, Lcom/transsion/home/activity/OperateActivity;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->b(ILjava/lang/String;)Lcom/transsion/home/fragment/tab/SubTabFragment;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget v1, Lcom/transsion/home/R$id;->operate_page_container:I

    .line 23
    .line 24
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/w;->s(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroidx/fragment/app/w;->j()I

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public isStatusDark()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/home/activity/OperateActivity;->d:Lcom/transsion/home/preload/b;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/transsion/home/preload/b;->reset()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/transsion/home/activity/OperateActivity;->d:Lcom/transsion/home/preload/b;

    .line 13
    .line 14
    return-void
.end method
