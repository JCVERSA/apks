.class public Lcom/cloud/tmc/kernel/bridge/RenderCallContext;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;
    }
.end annotation


# static fields
.field public static final TYPE_CALL:Ljava/lang/String; = "call"

.field public static final TYPE_CALLBACK:Ljava/lang/String; = "callback"


# instance fields
.field private action:Ljava/lang/String;

.field private eventId:Ljava/lang/String;

.field private keep:Z

.field private param:Lcom/google/gson/JsonObject;

.field private target:Lcom/cloud/tmc/kernel/render/IRender;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->b(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->eventId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->a(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->action:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->d(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)Lcom/google/gson/JsonObject;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->param:Lcom/google/gson/JsonObject;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 25
    .line 26
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->param:Lcom/google/gson/JsonObject;

    .line 30
    .line 31
    :cond_0
    invoke-static {p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->f(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->type:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->c(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput-boolean v0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->keep:Z

    .line 42
    .line 43
    invoke-static {p1}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->e(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)Lcom/cloud/tmc/kernel/render/IRender;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->target:Lcom/cloud/tmc/kernel/render/IRender;

    .line 48
    .line 49
    return-void
.end method

.method public static newBuilder(Lcom/cloud/tmc/kernel/render/IRender;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;-><init>(Lcom/cloud/tmc/kernel/render/IRender;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->action:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->eventId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKeep()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->keep:Z

    .line 2
    .line 3
    return v0
.end method

.method public getParam()Lcom/google/gson/JsonObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->param:Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTarget()Lcom/cloud/tmc/kernel/render/IRender;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->target:Lcom/cloud/tmc/kernel/render/IRender;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->action:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEventId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->eventId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setKeep(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->keep:Z

    .line 2
    .line 3
    return-void
.end method

.method public setParam(Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->param:Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
