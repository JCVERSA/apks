.class public final synthetic Lcom/cloud/tmc/worker/debug/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/gson/JsonObject;

.field public final synthetic b:Lcom/cloud/tmc/worker/debug/WebviewWorker;


# direct methods
.method public synthetic constructor <init>(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/worker/debug/d;->a:Lcom/google/gson/JsonObject;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/worker/debug/d;->b:Lcom/cloud/tmc/worker/debug/WebviewWorker;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/d;->a:Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/worker/debug/d;->b:Lcom/cloud/tmc/worker/debug/WebviewWorker;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->f(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
