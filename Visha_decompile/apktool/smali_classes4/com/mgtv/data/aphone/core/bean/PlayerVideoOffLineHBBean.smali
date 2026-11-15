.class public Lcom/mgtv/data/aphone/core/bean/PlayerVideoOffLineHBBean;
.super Lcom/mgtv/data/aphone/core/bean/BaseBean;
.source "SourceFile"


# static fields
.field public static ACT_OFLHB:Ljava/lang/String; = "oflhb"

.field public static OFLHB_BID:Ljava/lang/String; = "2.3.10"


# instance fields
.field public act:Ljava/lang/String;

.field public bid:Ljava/lang/String;

.field public isfull:Ljava/lang/String;

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
    .locals 1
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

    sget-object v0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoOffLineHBBean;->ACT_OFLHB:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoOffLineHBBean;->act:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoOffLineHBBean;->OFLHB_BID:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoOffLineHBBean;->bid:Ljava/lang/String;

    invoke-static {p1}, Lcom/mgtv/data/aphone/core/j/f;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoOffLineHBBean;->isfull:Ljava/lang/String;

    iput-object p2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoOffLineHBBean;->param:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getPlayerVideoHeartbeatParams()Ljava/util/Map;
    .locals 4
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

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->ACT:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoOffLineHBBean;->act:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$OffLineHb;->BID:Lcom/mgtv/data/aphone/core/constants/KeysContants$OffLineHb;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$OffLineHb;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoOffLineHBBean;->bid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$OffLineHb;->ISFULL:Lcom/mgtv/data/aphone/core/constants/KeysContants$OffLineHb;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$OffLineHb;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoOffLineHBBean;->isfull:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoOffLineHBBean;->param:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/mgtv/data/aphone/core/constants/KeysContants$OffLineHb;->LIST:Lcom/mgtv/data/aphone/core/constants/KeysContants$OffLineHb;

    invoke-virtual {v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$OffLineHb;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/mgtv/data/aphone/core/constants/KeysContants$OffLineHb;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getCommonParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoOffLineHBBean;->param:Ljava/util/HashMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
