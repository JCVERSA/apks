.class public final Lcom/transsion/usercenter/profile/ProfileViewModel$d;
.super Ldg/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/ProfileViewModel;->k(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/usercenter/profile/ProfileViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/profile/ProfileViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileViewModel$d;->d:Lcom/transsion/usercenter/profile/ProfileViewModel;

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
    iget-object p1, p0, Lcom/transsion/usercenter/profile/ProfileViewModel$d;->d:Lcom/transsion/usercenter/profile/ProfileViewModel;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/usercenter/profile/ProfileViewModel;->g(Lcom/transsion/usercenter/profile/ProfileViewModel;)Landroidx/lifecycle/b0;

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
    check-cast p1, Lcom/transsion/usercenter/profile/bean/ProfileInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/usercenter/profile/ProfileViewModel$d;->e(Lcom/transsion/usercenter/profile/bean/ProfileInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lcom/transsion/usercenter/profile/bean/ProfileInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ldg/a;->c(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileViewModel$d;->d:Lcom/transsion/usercenter/profile/ProfileViewModel;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/transsion/usercenter/profile/ProfileViewModel;->g(Lcom/transsion/usercenter/profile/ProfileViewModel;)Landroidx/lifecycle/b0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
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
    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileViewModel$d;->d:Lcom/transsion/usercenter/profile/ProfileViewModel;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/transsion/usercenter/profile/ProfileViewModel;->h(Lcom/transsion/usercenter/profile/ProfileViewModel;Lio/reactivex/rxjava3/disposables/c;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
