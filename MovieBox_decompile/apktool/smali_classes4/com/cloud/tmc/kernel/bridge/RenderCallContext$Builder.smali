.class public Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/kernel/bridge/RenderCallContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private eventId:Ljava/lang/String;

.field private keep:Z

.field private param:Lcom/google/gson/JsonObject;

.field private target:Lcom/cloud/tmc/kernel/render/IRender;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/kernel/render/IRender;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "native_"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->eventId:Ljava/lang/String;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->target:Lcom/cloud/tmc/kernel/render/IRender;

    .line 28
    .line 29
    return-void
.end method

.method static bridge synthetic a(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->action:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic b(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->eventId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic c(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->keep:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic d(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)Lcom/google/gson/JsonObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->param:Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic e(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)Lcom/cloud/tmc/kernel/render/IRender;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->target:Lcom/cloud/tmc/kernel/render/IRender;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic f(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public action(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->action:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public build()Lcom/cloud/tmc/kernel/bridge/RenderCallContext;
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/tmc/kernel/bridge/RenderCallContext;-><init>(Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public eventId(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->eventId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public keep(Z)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->keep:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public param(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->param:Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    return-object p0
.end method

.method public type(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/RenderCallContext$Builder;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
