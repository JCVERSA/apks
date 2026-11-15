.class public abstract Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;


# instance fields
.field public OooO00o:Ljava/lang/String;

.field public OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

.field public OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

.field public OooO0Oo:Lcom/cloud/tmc/integration/proxy/PathProxy;

.field public OooO0o:Z

.field public OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

.field public OooO0oO:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0oO:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 0

    .line 1
    return-void
.end method

.method public OooO00o()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0oO:Z

    return v0
.end method

.method public OooO0O0(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;
        }
    .end annotation

    .line 1
    const-class p1, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 10
    .line 11
    const-class p1, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    .line 20
    .line 21
    const-class p1, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0Oo:Lcom/cloud/tmc/integration/proxy/PathProxy;

    .line 30
    .line 31
    const-class p1, Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    .line 40
    .line 41
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 42
    .line 43
    const-string p3, "0"

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o:Z

    .line 50
    .line 51
    if-nez p1, :cond_0

    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o:Z

    .line 55
    .line 56
    const-string p1, "Tmcresource:PrepareStep_"

    .line 57
    .line 58
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppId()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p2, "_"

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;->OooO0O0()Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    .line 86
    .line 87
    :cond_0
    return-void

    .line 88
    :cond_1
    new-instance p1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 89
    .line 90
    const-string p2, "ERROR_UNKNOWN with context == null"

    .line 91
    .line 92
    invoke-direct {p1, p3, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_2
    new-instance p1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    .line 97
    .line 98
    const-string p2, "ERROR_UNKNOWN with appInfoManager == null"

    .line 99
    .line 100
    invoke-direct {p1, p3, p2}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1
.end method

.method public finish()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0oO:Z

    .line 3
    .line 4
    return-void
.end method
