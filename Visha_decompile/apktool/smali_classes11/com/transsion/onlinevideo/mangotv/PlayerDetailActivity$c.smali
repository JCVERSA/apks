.class public Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvz6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$c;->a:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(I)V
    .locals 2

    invoke-static {}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->K1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConnect"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lvz6;->onConnect(I)V

    return-void
.end method

.method public onDisconnect()V
    .locals 2

    invoke-static {}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->K1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDisconnect"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$c;->a:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->E1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;I)V

    return-void
.end method

.method public onMobile()V
    .locals 2

    invoke-static {}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->K1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onMobile"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$c;->a:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->E1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;I)V

    return-void
.end method

.method public onWifi()V
    .locals 3

    invoke-static {}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->K1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWifi:mReplay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$c;->a:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    iget-boolean v2, v2, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->mReplay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity$c;->a:Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;->E1(Lcom/transsion/onlinevideo/mangotv/PlayerDetailActivity;I)V

    return-void
.end method
