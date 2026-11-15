.class public Lcom/mgtv/data/aphone/core/bean/AppStartAndSwitchBean;
.super Lcom/mgtv/data/aphone/core/bean/BaseBean;
.source "SourceFile"


# static fields
.field public static ACT_ST:Ljava/lang/String; = "st"


# instance fields
.field public act:Ljava/lang/String;

.field public body:Ljava/lang/String;

.field public ctype:Ljava/lang/String;

.field public runsid:Ljava/lang/String;

.field public stype:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/mgtv/data/aphone/core/bean/AppStartAndSwitchBean;->ACT_ST:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/AppStartAndSwitchBean;->act:Ljava/lang/String;

    sget-boolean p1, Lcom/mgtv/data/aphone/core/bean/CommonParamsBean;->a:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/mgtv/data/aphone/core/bean/CommonParamsBean;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/AppStartAndSwitchBean;->body:Ljava/lang/String;

    const/4 p1, 0x0

    sput-boolean p1, Lcom/mgtv/data/aphone/core/bean/CommonParamsBean;->a:Z

    goto :goto_0

    :cond_0
    const-string p1, ""

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/AppStartAndSwitchBean;->body:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/mgtv/data/aphone/core/f/a;->c()Lcom/mgtv/data/aphone/core/f/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/data/aphone/core/f/a;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/AppStartAndSwitchBean;->runsid:Ljava/lang/String;

    invoke-static {}, Lcom/mgtv/data/aphone/core/j/f;->g()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/AppStartAndSwitchBean;->ctype:Ljava/lang/String;

    iput-object p2, p0, Lcom/mgtv/data/aphone/core/bean/AppStartAndSwitchBean;->stype:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppStartAndSwitchParams()Ljava/util/Map;
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

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;->ACT:Lcom/mgtv/data/aphone/core/constants/KeysContants$St;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/AppStartAndSwitchBean;->act:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;->BODY:Lcom/mgtv/data/aphone/core/constants/KeysContants$St;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/AppStartAndSwitchBean;->body:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;->RUNSID:Lcom/mgtv/data/aphone/core/constants/KeysContants$St;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/AppStartAndSwitchBean;->runsid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;->CTYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$St;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/AppStartAndSwitchBean;->ctype:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;->STYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$St;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$St;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/AppStartAndSwitchBean;->stype:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getCommonParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->RDC:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBean;->rdc:Ljava/lang/String;

    const-string v2, "&"

    const-string v3, ":"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
