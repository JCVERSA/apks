.class Lcom/transsion/playercommon/vishaapis/gslb/GslbService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/gslb/GslbSdk$GslbInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/vishaapis/gslb/GslbService;->init(Landroid/content/Context;Lcom/transsion/gslb/GslbSdk$GslbInitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/vishaapis/gslb/GslbService;

.field final synthetic val$gslbInitListener:Lcom/transsion/gslb/GslbSdk$GslbInitListener;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/vishaapis/gslb/GslbService;Lcom/transsion/gslb/GslbSdk$GslbInitListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/playercommon/vishaapis/gslb/GslbService$1;->this$0:Lcom/transsion/playercommon/vishaapis/gslb/GslbService;

    iput-object p2, p0, Lcom/transsion/playercommon/vishaapis/gslb/GslbService$1;->val$gslbInitListener:Lcom/transsion/gslb/GslbSdk$GslbInitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFail(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/vishaapis/gslb/GslbService$1;->this$0:Lcom/transsion/playercommon/vishaapis/gslb/GslbService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/playercommon/vishaapis/gslb/GslbService;->a(Lcom/transsion/playercommon/vishaapis/gslb/GslbService;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gslb init fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "GslbService"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/playercommon/vishaapis/gslb/GslbService$1;->val$gslbInitListener:Lcom/transsion/gslb/GslbSdk$GslbInitListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/gslb/GslbSdk$GslbInitListener;->onInitFail(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInitSuccess(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/playercommon/vishaapis/gslb/GslbService$1;->this$0:Lcom/transsion/playercommon/vishaapis/gslb/GslbService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/playercommon/vishaapis/gslb/GslbService;->a(Lcom/transsion/playercommon/vishaapis/gslb/GslbService;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gslb init success,country:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/gslb/GslbSdk;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "GslbService"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gslb host:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->N(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/vishaapis/gslb/GslbService$1;->val$gslbInitListener:Lcom/transsion/gslb/GslbSdk$GslbInitListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/transsion/gslb/GslbSdk$GslbInitListener;->onInitSuccess(Ljava/util/Map;)V

    :cond_1
    return-void
.end method
