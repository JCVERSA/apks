.class public final Lcom/transsion/member/MemberViewModel$c;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/MemberViewModel;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/member/MemberViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/member/MemberViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/member/MemberViewModel$c;->d:Lcom/transsion/member/MemberViewModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ldg/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/member/MemberViewModel$c;->d:Lcom/transsion/member/MemberViewModel;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/member/MemberViewModel;->f(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/memberapi/MemberDetail;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/member/MemberViewModel$c;->e(Lcom/transsion/memberapi/MemberDetail;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/transsion/memberapi/MemberDetail;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ldg/a;->c(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/member/MemberViewModel$c;->d:Lcom/transsion/member/MemberViewModel;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/transsion/member/MemberViewModel;->f(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    .line 16
    const-class v1, Lim/b;

    .line 17
    .line 18
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lim/b;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-interface {v0, p1}, Lim/b;->j(Lcom/transsion/memberapi/MemberDetail;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 1

    .line 1
    const-string v0, "d"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Ldg/a;->onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/member/MemberViewModel$c;->d:Lcom/transsion/member/MemberViewModel;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/transsion/member/MemberViewModel;->o(Lcom/transsion/member/MemberViewModel;Lio/reactivex/rxjava3/disposables/c;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
