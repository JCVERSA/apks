.class public Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/kernel/bridge/NativeCallContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public callbackId:Ljava/lang/String;

.field public dispatcherOnWorkerThread:Z

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public node:Lcom/cloud/tmc/kernel/node/Node;

.field public params:Lcom/google/gson/JsonObject;

.field public render:Lcom/cloud/tmc/kernel/render/IRender;

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
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
    iput-object v0, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->id:Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public build()Lcom/cloud/tmc/kernel/bridge/NativeCallContext;
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/cloud/tmc/kernel/bridge/NativeCallContext;-><init>(Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;Lcom/cloud/tmc/kernel/bridge/a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public callbackId(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->callbackId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public dispatcherOnWorkerThread(Z)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->dispatcherOnWorkerThread:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public generateLegacyNativeId()Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "native_"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->id:Ljava/lang/String;

    .line 23
    .line 24
    return-object p0
.end method

.method public id(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public node(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->node:Lcom/cloud/tmc/kernel/node/Node;

    .line 2
    .line 3
    return-object p0
.end method

.method public params(Lcom/google/gson/JsonObject;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->params:Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    return-object p0
.end method

.method public render(Lcom/cloud/tmc/kernel/render/IRender;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->render:Lcom/cloud/tmc/kernel/render/IRender;

    .line 2
    .line 3
    return-object p0
.end method

.method public source(Ljava/lang/String;)Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/NativeCallContext$Builder;->source:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
