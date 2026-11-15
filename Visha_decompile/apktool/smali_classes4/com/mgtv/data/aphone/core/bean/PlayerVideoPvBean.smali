.class public Lcom/mgtv/data/aphone/core/bean/PlayerVideoPvBean;
.super Lcom/mgtv/data/aphone/core/bean/BaseBean;
.source "SourceFile"


# static fields
.field public static ACT_PPV:Ljava/lang/String; = "ppv"

.field public static BID_PPV:Ljava/lang/String; = "27.8.1"


# instance fields
.field public act:Ljava/lang/String;

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

    sget-object p1, Lcom/mgtv/data/aphone/core/bean/PlayerVideoPvBean;->ACT_PPV:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoPvBean;->act:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/bean/PlayerVideoPvBean;->BID_PPV:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/BaseBean;->bid:Ljava/lang/String;

    iput-object p2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoPvBean;->param:Ljava/util/HashMap;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "#############  PlayerVideoPvBean  act = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoPvBean;->act:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "big_data_sdk"

    invoke-static {p1, p0}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPlayerVideoPvParams()Ljava/util/Map;
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

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->ACT:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoPvBean;->act:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->BID:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBean;->bid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getCommonParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoPvBean;->param:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getParameter(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#############  PlayerVideoPvBean ()  act = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoPvBean;->act:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "big_data_sdk"

    invoke-static {v1, p0}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
