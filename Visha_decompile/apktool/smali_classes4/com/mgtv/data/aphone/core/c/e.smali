.class public Lcom/mgtv/data/aphone/core/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/HashMap;)V
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

    new-instance p0, Lcom/mgtv/data/aphone/core/bean/PhoneDrmBean;

    invoke-direct {p0, p1, p2}, Lcom/mgtv/data/aphone/core/bean/PhoneDrmBean;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    invoke-static {}, Lcom/mgtv/data/aphone/a/a;->a()Lcom/mgtv/data/aphone/a/a;

    move-result-object p1

    sget-object p2, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_DRM:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/bean/PhoneDrmBean;->getDrmParams()Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p0, v0}, Lcom/mgtv/data/aphone/a/a;->a(Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;Ljava/util/Map;Lcom/mgtv/data/aphone/a/b/b;)V

    return-void
.end method
