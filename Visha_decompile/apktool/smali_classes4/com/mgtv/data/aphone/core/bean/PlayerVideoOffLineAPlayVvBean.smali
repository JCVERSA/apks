.class public Lcom/mgtv/data/aphone/core/bean/PlayerVideoOffLineAPlayVvBean;
.super Lcom/mgtv/data/aphone/core/bean/BaseBean;
.source "SourceFile"


# static fields
.field public static ACT_APLAY:Ljava/lang/String; = "aplay"

.field public static final APLAY_BID:Ljava/lang/String; = "2.1.1.3"


# instance fields
.field public act:Ljava/lang/String;

.field public bid:Ljava/lang/String;

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
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

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

    invoke-direct {p0, p1, p2}, Lcom/mgtv/data/aphone/core/bean/BaseBean;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    sget-object p1, Lcom/mgtv/data/aphone/core/bean/PlayerVideoOffLineAPlayVvBean;->ACT_APLAY:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoOffLineAPlayVvBean;->act:Ljava/lang/String;

    const-string p1, "2.1.1.3"

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoOffLineAPlayVvBean;->bid:Ljava/lang/String;

    iput-object p2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoOffLineAPlayVvBean;->param:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getPlayerVideoAPlayVvParams()Ljava/util/Map;
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

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Aplay;->ACT:Lcom/mgtv/data/aphone/core/constants/KeysContants$Aplay;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Aplay;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoOffLineAPlayVvBean;->act:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Aplay;->BID:Lcom/mgtv/data/aphone/core/constants/KeysContants$Aplay;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Aplay;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoOffLineAPlayVvBean;->bid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Aplay;->IDX:Lcom/mgtv/data/aphone/core/constants/KeysContants$Aplay;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Aplay;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getCommonParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getPlayerCommon()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getPlayerVvCommon()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getPlayerOflineVvCommon()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
