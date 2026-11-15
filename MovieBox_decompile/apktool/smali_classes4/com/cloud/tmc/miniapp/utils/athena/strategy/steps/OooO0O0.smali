.class public final Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO0O0;
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
    .locals 3

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
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO00o:Landroid/content/Context;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->INSTANCE:Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;

    .line 13
    .line 14
    iget-object v1, p1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/utils/MiniForceAddHomeManager;->checkInterectMFAHWithBookPrivacy(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    iget-object v1, p1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, ": -> report AthenaMfahStep -> AthenaMfahStep:"

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "AthenaUtil"

    .line 45
    .line 46
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0o0:Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    .line 50
    .line 51
    iput-boolean v0, v1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO00o:Z

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    iput-boolean v2, v1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO0O0:Z

    .line 55
    .line 56
    iput-boolean v2, v1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO0OO:Z

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO00o(Z)Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    .line 59
    .line 60
    .line 61
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0o0:Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    .line 62
    .line 63
    return-object p1
.end method
