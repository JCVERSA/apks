.class public final Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO0o;
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
    .locals 5

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
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-class v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 20
    .line 21
    const-string v3, "100000"

    .line 22
    .line 23
    const-string v4, "privacy_agreement"

    .line 24
    .line 25
    invoke-interface {v2, v0, v3, v4, v1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v1

    .line 31
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v3, "report AthenaPrivacyStep -> agree:"

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v3, "AthenaUtil"

    .line 49
    .line 50
    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0o0:Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    .line 54
    .line 55
    xor-int/lit8 v3, v0, 0x1

    .line 56
    .line 57
    iput-boolean v3, v2, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO00o:Z

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    iput-boolean v3, v2, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO0O0:Z

    .line 61
    .line 62
    iput-boolean v1, v2, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO0OO:Z

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO00o(Z)Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    .line 65
    .line 66
    .line 67
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0o0:Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    .line 68
    .line 69
    return-object p1
.end method
