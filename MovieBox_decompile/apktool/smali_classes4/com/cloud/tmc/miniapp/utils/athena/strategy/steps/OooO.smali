.class public final Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0;


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
.method public OooO00o(Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0$OooO00o;)Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;
    .locals 4

    .line 1
    const-string v0, "chain"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v2, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Lcom/cloud/tmc/integration/utils/AppUtils;->checkMiniAppPrivacyAgreementDialogWhiteList(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v3, "report AthenaWhiteListStep -> inWhiteList:"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "AthenaUtil"

    .line 39
    .line 40
    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0o0:Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    .line 44
    .line 45
    xor-int/lit8 v3, v0, 0x1

    .line 46
    .line 47
    iput-boolean v3, v2, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO00o:Z

    .line 48
    .line 49
    iput-boolean v1, v2, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO0O0:Z

    .line 50
    .line 51
    iput-boolean v1, v2, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO0OO:Z

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO00o(Z)Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    .line 54
    .line 55
    .line 56
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0o0:Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    .line 57
    .line 58
    return-object p1
.end method
