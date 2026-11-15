.class public Lpm/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/moviedetailapi/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/therouter/router/RouteItem;Lmf/b;)V
    .locals 1

    .line 1
    const-string v0, "routeItem"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/transsion/moviedetail/preload/g;->a:Lcom/transsion/moviedetail/preload/g$a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/moviedetail/preload/g$a;->a()Lcom/transsion/moviedetail/preload/g;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1, p2}, Lam/a;->a(Lcom/therouter/router/RouteItem;Lmf/b;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public b(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "params"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "type"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/transsion/moviedetail/activity/SubjectListActivity;->m:Lcom/transsion/moviedetail/activity/SubjectListActivity$a;

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/transsion/moviedetail/activity/SubjectListActivity$a;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public c(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->refresh()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Lcom/transsion/moviedetail/activity/MovieDetailActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lkotlin/reflect/KClass;->g()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public e(Landroid/os/Bundle;Ljava/lang/Class;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    const-string v0, "params"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "type"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/transsion/moviedetail/fragment/SubjectListFragment;->Companion:Lcom/transsion/moviedetail/fragment/SubjectListFragment$a;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/transsion/moviedetail/fragment/SubjectListFragment$a;->a(Landroid/os/Bundle;Ljava/lang/Class;)Lcom/transsion/moviedetail/fragment/SubjectListFragment;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
