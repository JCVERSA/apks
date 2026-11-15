.class public Lcom/transsion/gslb/GslbSdk;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/gslb/GslbSdk$GetDomainListener;,
        Lcom/transsion/gslb/GslbSdk$ResultListener;,
        Lcom/transsion/gslb/GslbSdk$GslbInitListener;,
        Lcom/transsion/gslb/GslbSdk$InitListener;
    }
.end annotation


# static fields
.field public static context:Landroid/content/Context;

.field public static deviceId:Ljava/lang/String;

.field public static isDebug:Z

.field public static mcc:Ljava/lang/String;

.field public static volatile worker:Lcom/transsion/gslb/Worker;


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

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getCountry()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/gslb/DomainManager;->getInstance()Lcom/transsion/gslb/DomainManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/gslb/DomainManager;->getCountry()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/gslb/GslbSdk;->deviceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getDomain(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/gslb/GslbSdk;->worker:Lcom/transsion/gslb/Worker;

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/transsion/gslb/Utils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "GslbSdk is not initialized"

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p1, Lcom/transsion/gslb/Utils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "url is empty"

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return-object p0

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/transsion/gslb/Utils;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/transsion/gslb/DomainManager;->getInstance()Lcom/transsion/gslb/DomainManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/gslb/DomainManager;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "blank"

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    .line 9
    sget-object v1, Lcom/transsion/gslb/Utils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not in init list "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->z(Ljava/lang/Object;)V

    :cond_4
    if-eqz p1, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDomain(Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$GetDomainListener;)V
    .locals 3

    .line 10
    sget-object v0, Lcom/transsion/gslb/GslbSdk;->worker:Lcom/transsion/gslb/Worker;

    if-nez v0, :cond_1

    .line 11
    sget-object p0, Lcom/transsion/gslb/Utils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "GslbSdk is not initialized"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 12
    invoke-interface {p1, v0}, Lcom/transsion/gslb/GslbSdk$GetDomainListener;->onGslbFail(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 13
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    sget-object p0, Lcom/transsion/gslb/Utils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "url is empty"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    const-string p0, "input url is empty"

    .line 15
    invoke-interface {p1, p0}, Lcom/transsion/gslb/GslbSdk$GetDomainListener;->onGslbFail(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 16
    :cond_3
    invoke-static {p0}, Lcom/transsion/gslb/Utils;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {}, Lcom/transsion/gslb/DomainManager;->getInstance()Lcom/transsion/gslb/DomainManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/gslb/DomainManager;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 18
    sget-object p0, Lcom/transsion/gslb/Utils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " this domain is not in init list "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->z(Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    const-string p0, "this domain is not in init list"

    .line 19
    invoke-interface {p1, p0}, Lcom/transsion/gslb/GslbSdk$GetDomainListener;->onGslbFail(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v2, "blank"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 21
    sget-object v0, Lcom/transsion/gslb/GslbSdk;->worker:Lcom/transsion/gslb/Worker;

    new-instance v1, Lcom/transsion/gslb/ListenerBean;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lcom/transsion/gslb/ListenerBean;-><init>(ZLjava/lang/String;Lcom/transsion/gslb/GslbSdk$GetDomainListener;)V

    invoke-virtual {v0, v1}, Lcom/transsion/gslb/Worker;->addListeners(Lcom/transsion/gslb/ListenerBean;)V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    .line 22
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/gslb/GslbSdk$GetDomainListener;->onGslbSuccess(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public static getDomain(Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$ResultListener;)V
    .locals 3

    .line 23
    sget-object v0, Lcom/transsion/gslb/GslbSdk;->worker:Lcom/transsion/gslb/Worker;

    if-nez v0, :cond_1

    .line 24
    sget-object p0, Lcom/transsion/gslb/Utils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "GslbSdk is not initialized"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 25
    invoke-interface {p1}, Lcom/transsion/gslb/GslbSdk$ResultListener;->onGslbFail()V

    :cond_0
    return-void

    .line 26
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27
    sget-object p0, Lcom/transsion/gslb/Utils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "url is empty"

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    .line 28
    invoke-interface {p1}, Lcom/transsion/gslb/GslbSdk$ResultListener;->onGslbFail()V

    :cond_2
    return-void

    .line 29
    :cond_3
    invoke-static {p0}, Lcom/transsion/gslb/Utils;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {}, Lcom/transsion/gslb/DomainManager;->getInstance()Lcom/transsion/gslb/DomainManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/gslb/DomainManager;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 31
    sget-object p0, Lcom/transsion/gslb/Utils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " this domain is not in init list "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->z(Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    .line 32
    invoke-interface {p1}, Lcom/transsion/gslb/GslbSdk$ResultListener;->onGslbFail()V

    goto :goto_0

    :cond_4
    const-string v2, "blank"

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 34
    sget-object v0, Lcom/transsion/gslb/GslbSdk;->worker:Lcom/transsion/gslb/Worker;

    new-instance v1, Lcom/transsion/gslb/ListenerBean;

    invoke-direct {v1, p0, p1}, Lcom/transsion/gslb/ListenerBean;-><init>(Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$ResultListener;)V

    invoke-virtual {v0, v1}, Lcom/transsion/gslb/Worker;->addListeners(Lcom/transsion/gslb/ListenerBean;)V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    .line 35
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/gslb/GslbSdk$ResultListener;->onGslbSuccess(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public static getMcc()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/gslb/GslbSdk;->mcc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getWorker()Lcom/transsion/gslb/Worker;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/gslb/GslbSdk;->worker:Lcom/transsion/gslb/Worker;

    .line 2
    .line 3
    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$GslbInitListener;)V
    .locals 0

    .line 13
    sput-object p1, Lcom/transsion/gslb/GslbSdk;->mcc:Ljava/lang/String;

    .line 14
    sput-object p2, Lcom/transsion/gslb/GslbSdk;->deviceId:Ljava/lang/String;

    .line 15
    invoke-static {p0, p3, p4}, Lcom/transsion/gslb/GslbSdk;->init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$GslbInitListener;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$InitListener;)V
    .locals 0

    .line 16
    sput-object p1, Lcom/transsion/gslb/GslbSdk;->mcc:Ljava/lang/String;

    .line 17
    sput-object p2, Lcom/transsion/gslb/GslbSdk;->deviceId:Ljava/lang/String;

    .line 18
    invoke-static {p0, p3, p4}, Lcom/transsion/gslb/GslbSdk;->init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$InitListener;)V

    return-void
.end method

.method public static init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$GslbInitListener;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    .line 2
    sget-object p0, Lcom/transsion/gslb/GslbSdk;->worker:Lcom/transsion/gslb/Worker;

    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Lcom/transsion/gslb/Worker;->getInstance()Lcom/transsion/gslb/Worker;

    move-result-object p0

    sput-object p0, Lcom/transsion/gslb/GslbSdk;->worker:Lcom/transsion/gslb/Worker;

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    array-length p0, p1

    if-lez p0, :cond_1

    .line 5
    sget-object p0, Lcom/transsion/gslb/GslbSdk;->worker:Lcom/transsion/gslb/Worker;

    new-instance v0, Lcom/transsion/gslb/ListenerBean;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2}, Lcom/transsion/gslb/ListenerBean;-><init>(Z[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$GslbInitListener;)V

    invoke-virtual {p0, v0}, Lcom/transsion/gslb/Worker;->addListeners(Lcom/transsion/gslb/ListenerBean;)V

    goto :goto_0

    :cond_1
    const-string p0, "GslbSdk"

    const-string p1, "Init with invalid domains"

    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$InitListener;)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    .line 8
    sget-object p0, Lcom/transsion/gslb/GslbSdk;->worker:Lcom/transsion/gslb/Worker;

    if-nez p0, :cond_0

    .line 9
    invoke-static {}, Lcom/transsion/gslb/Worker;->getInstance()Lcom/transsion/gslb/Worker;

    move-result-object p0

    sput-object p0, Lcom/transsion/gslb/GslbSdk;->worker:Lcom/transsion/gslb/Worker;

    :cond_0
    if-eqz p1, :cond_1

    .line 10
    array-length p0, p1

    if-lez p0, :cond_1

    .line 11
    sget-object p0, Lcom/transsion/gslb/GslbSdk;->worker:Lcom/transsion/gslb/Worker;

    new-instance v0, Lcom/transsion/gslb/ListenerBean;

    invoke-direct {v0, p1, p2}, Lcom/transsion/gslb/ListenerBean;-><init>([Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$InitListener;)V

    invoke-virtual {p0, v0}, Lcom/transsion/gslb/Worker;->addListeners(Lcom/transsion/gslb/ListenerBean;)V

    goto :goto_0

    :cond_1
    const-string p0, "GslbSdk"

    const-string p1, "Init with invalid domains"

    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static isInitSuccess(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/gslb/GslbSdk;->worker:Lcom/transsion/gslb/Worker;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object p0, Lcom/transsion/gslb/Utils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 7
    .line 8
    const-string v0, "GslbSdk is not initialized"

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-static {p0, v1}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    xor-int/lit8 p0, p0, 0x1

    .line 25
    .line 26
    return p0

    .line 27
    :cond_1
    return v1
.end method

.method public static isTestMode()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transsion/gslb/GslbSdk;->isDebug:Z

    .line 2
    .line 3
    return v0
.end method

.method public static reset()V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/transsion/gslb/DomainManager;->getInstance()Lcom/transsion/gslb/DomainManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/gslb/DomainManager;->reset()V

    :cond_0
    return-void
.end method

.method public static reset(Ljava/lang/String;)Z
    .locals 1

    .line 3
    sget-object v0, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/transsion/gslb/DomainManager;->getInstance()Lcom/transsion/gslb/DomainManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/gslb/DomainManager;->reset(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setDebug(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/gslb/Utils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/core/log/ObjectLogUtils;->m()Lcom/transsion/core/log/ObjectLogUtils$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Lcom/transsion/core/log/ObjectLogUtils$a;->r(Z)Lcom/transsion/core/log/ObjectLogUtils$a;

    .line 8
    .line 9
    .line 10
    sput-boolean p0, Lcom/transsion/gslb/GslbSdk;->isDebug:Z

    .line 11
    .line 12
    return-void
.end method
