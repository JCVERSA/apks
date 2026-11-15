.class public final Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO$OooO00o;
    }
.end annotation


# instance fields
.field public final OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

.field public OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/prepare/steps/StepType;)V
    .locals 1

    .line 1
    const-string v0, "stepType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p1, p2}, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO;->OooO00o(Z)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO;->OooO00o(Z)V

    return-void
.end method

.method public final OooO00o(Z)V
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO$OooO00o;->OooO00o:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_1

    goto :goto_3

    :cond_1
    if-eqz p1, :cond_2

    .line 8
    new-instance p1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;

    invoke-direct {p1, v3, v3, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;-><init>(Ljava/lang/String;Ljava/lang/Integer;I)V

    goto :goto_0

    .line 9
    :cond_2
    new-instance p1, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0OO;

    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0OO;-><init>()V

    .line 10
    :goto_0
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    .line 11
    new-instance p1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    invoke-direct {p1, v3, v3, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;-><init>(Ljava/lang/String;Ljava/lang/Integer;I)V

    goto :goto_1

    .line 12
    :cond_4
    new-instance p1, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0O0;

    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0O0;-><init>()V

    .line 13
    :goto_1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    .line 14
    new-instance p1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    invoke-direct {p1, v3, v3, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;-><init>(Ljava/lang/String;Ljava/lang/Integer;I)V

    goto :goto_2

    .line 15
    :cond_6
    new-instance p1, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;

    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;-><init>()V

    .line 16
    :goto_2
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

    :goto_3
    return-void
.end method

.method public OooO00o()Z
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->OooO00o()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooO0O0()Lcom/cloud/tmc/miniapp/prepare/steps/StepType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    return-object v0
.end method

.method public OooO0O0(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->OooO0O0(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->finish()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
