.class public Lcom/mgtv/data/aphone/core/bean/SystemErrorBean;
.super Lcom/mgtv/data/aphone/core/bean/BaseBean;
.source "SourceFile"


# static fields
.field public static final SE_BID:Ljava/lang/String; = "2.13.20"


# instance fields
.field public act:Ljava/lang/String;

.field public ec:Ljava/lang/String;

.field public ed:Ljava/lang/String;

.field public et:Ljava/lang/String;

.field public param:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;-><init>(Landroid/content/Context;)V

    .line 8
    const-string p1, "crash"

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/SystemErrorBean;->act:Ljava/lang/String;

    .line 9
    const-string p1, "03"

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/SystemErrorBean;->ec:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/mgtv/data/aphone/core/bean/SystemErrorBean;->param:Ljava/util/HashMap;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/mgtv/data/aphone/core/j/e;->b(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/SystemErrorBean;->et:Ljava/lang/String;

    .line 12
    const-string p1, "2.13.20"

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/BaseBean;->bid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/mgtv/data/aphone/core/bean/BaseBean;-><init>(Landroid/content/Context;)V

    .line 2
    const-string p2, "crash"

    iput-object p2, p0, Lcom/mgtv/data/aphone/core/bean/SystemErrorBean;->act:Ljava/lang/String;

    .line 3
    const-string p2, "03"

    iput-object p2, p0, Lcom/mgtv/data/aphone/core/bean/SystemErrorBean;->ec:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/SystemErrorBean;->ed:Ljava/lang/String;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/mgtv/data/aphone/core/j/e;->b(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/SystemErrorBean;->et:Ljava/lang/String;

    .line 6
    const-string p1, "2.13.20"

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/BaseBean;->bid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSoCrashParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Drm;->ACT:Lcom/mgtv/data/aphone/core/constants/KeysContants$Drm;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Drm;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/SystemErrorBean;->act:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->ET:Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/SystemErrorBean;->et:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->ED:Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->BID:Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBean;->bid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/bean/SystemErrorBean;->param:Ljava/util/HashMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public getSystemErrorParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->ACT:Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/SystemErrorBean;->act:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->EC:Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/SystemErrorBean;->ec:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->ED:Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/SystemErrorBean;->ed:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->ET:Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/SystemErrorBean;->et:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->BID:Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Crash;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBean;->bid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getCommonParams()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
