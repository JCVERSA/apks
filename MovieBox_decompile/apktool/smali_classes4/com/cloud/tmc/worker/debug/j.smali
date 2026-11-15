.class public final synthetic Lcom/cloud/tmc/worker/debug/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/cloud/tmc/worker/debug/WebviewWorker;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/worker/debug/j;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/worker/debug/j;->b:Ljava/util/Map;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/worker/debug/j;->c:Lcom/cloud/tmc/worker/debug/WebviewWorker;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/j;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/worker/debug/j;->b:Ljava/util/Map;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/worker/debug/j;->c:Lcom/cloud/tmc/worker/debug/WebviewWorker;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->a(Ljava/lang/String;Ljava/util/Map;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
