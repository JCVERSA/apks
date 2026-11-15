.class public final Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO0OO;
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
    .locals 6

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
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-class v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 15
    .line 16
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 21
    .line 22
    const-string v4, "100000"

    .line 23
    .line 24
    const-string v5, "isNewUser"

    .line 25
    .line 26
    invoke-interface {v3, v0, v4, v5, v1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    xor-int/2addr v0, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v0, v2

    .line 33
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v4, "report OldUserStep -> oldUser:"

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-string v4, "AthenaUtil"

    .line 51
    .line 52
    invoke-static {v4, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0o0:Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    .line 56
    .line 57
    xor-int/lit8 v4, v0, 0x1

    .line 58
    .line 59
    iput-boolean v4, v3, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO00o:Z

    .line 60
    .line 61
    iput-boolean v1, v3, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO0O0:Z

    .line 62
    .line 63
    iput-boolean v2, v3, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO0OO:Z

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO00o(Z)Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    .line 66
    .line 67
    .line 68
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0o0:Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    .line 69
    .line 70
    return-object p1
.end method
