.class public Lcom/mgtv/data/aphone/core/bean/PhoneDrmBean;
.super Lcom/mgtv/data/aphone/core/bean/BaseBean;
.source "SourceFile"


# static fields
.field public static ACT_DRM:Ljava/lang/String; = "drm"


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

    invoke-direct {p0, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/mgtv/data/aphone/core/bean/PhoneDrmBean;->ACT_DRM:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PhoneDrmBean;->act:Ljava/lang/String;

    iput-object p2, p0, Lcom/mgtv/data/aphone/core/bean/PhoneDrmBean;->param:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getDrmParams()Ljava/util/Map;
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

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PhoneDrmBean;->act:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->BDSV:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mgtv/data/aphone/core/j/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/bean/PhoneDrmBean;->param:Ljava/util/HashMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
