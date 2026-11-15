.class public Lcom/mgtv/data/aphone/core/bean/NewClickBean;
.super Lcom/mgtv/data/aphone/core/bean/BaseBean;
.source "SourceFile"


# static fields
.field public static ACT_CLICK:Ljava/lang/String; = "click"

.field public static ACT_TYPE:Ljava/lang/String; = "common"


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

.field public runsid:Ljava/lang/String;

.field public type:Ljava/lang/String;


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

    invoke-direct {p0}, Lcom/mgtv/data/aphone/core/bean/BaseBean;-><init>()V

    sget-object p1, Lcom/mgtv/data/aphone/core/bean/NewClickBean;->ACT_CLICK:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/NewClickBean;->act:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/bean/NewClickBean;->ACT_TYPE:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/NewClickBean;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/mgtv/data/aphone/core/bean/NewClickBean;->param:Ljava/util/HashMap;

    invoke-static {}, Lcom/mgtv/data/aphone/core/f/a;->c()Lcom/mgtv/data/aphone/core/f/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/data/aphone/core/f/a;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/NewClickBean;->runsid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClickParams()Ljava/util/Map;
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

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Click;->ACT:Lcom/mgtv/data/aphone/core/constants/KeysContants$Click;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Click;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/NewClickBean;->act:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Click;->TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$Click;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Click;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/NewClickBean;->type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Click;->RUNSID:Lcom/mgtv/data/aphone/core/constants/KeysContants$Click;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Click;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/NewClickBean;->runsid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/bean/NewClickBean;->param:Ljava/util/HashMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
