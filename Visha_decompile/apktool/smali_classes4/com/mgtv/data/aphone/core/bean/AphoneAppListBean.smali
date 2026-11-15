.class public Lcom/mgtv/data/aphone/core/bean/AphoneAppListBean;
.super Lcom/mgtv/data/aphone/core/bean/BaseBean;
.source "SourceFile"


# static fields
.field public static ACT_APPLS:Ljava/lang/String; = "appls"

.field public static final APPLS_BID:Ljava/lang/String; = "2.9.1"


# instance fields
.field public act:Ljava/lang/String;

.field public bid:Ljava/lang/String;

.field public list:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/mgtv/data/aphone/core/bean/AphoneAppListBean;->ACT_APPLS:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/AphoneAppListBean;->act:Ljava/lang/String;

    const-string p1, "2.9.1"

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/AphoneAppListBean;->bid:Ljava/lang/String;

    iput-object p2, p0, Lcom/mgtv/data/aphone/core/bean/AphoneAppListBean;->list:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApplsParams()Ljava/util/Map;
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

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Appls;->ACT:Lcom/mgtv/data/aphone/core/constants/KeysContants$Appls;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Appls;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/AphoneAppListBean;->act:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Appls;->BID:Lcom/mgtv/data/aphone/core/constants/KeysContants$Appls;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Appls;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/AphoneAppListBean;->bid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Appls;->LIST:Lcom/mgtv/data/aphone/core/constants/KeysContants$Appls;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Appls;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/AphoneAppListBean;->list:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getCommonParams()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
