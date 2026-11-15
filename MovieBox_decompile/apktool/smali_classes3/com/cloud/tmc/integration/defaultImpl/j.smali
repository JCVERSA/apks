.class public final synthetic Lcom/cloud/tmc/integration/defaultImpl/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;

.field public final synthetic b:Lcom/cloud/tmc/kernel/engine/IEngine;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/cloud/tmc/kernel/node/Node;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;

.field public final synthetic h:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic i:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic j:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic k:Lkotlin/jvm/internal/Ref$LongRef;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/j;->a:Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/j;->b:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/integration/defaultImpl/j;->c:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/j;->d:Lcom/cloud/tmc/kernel/node/Node;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/cloud/tmc/integration/defaultImpl/j;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/cloud/tmc/integration/defaultImpl/j;->f:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/cloud/tmc/integration/defaultImpl/j;->g:Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/cloud/tmc/integration/defaultImpl/j;->h:Lkotlin/jvm/internal/Ref$LongRef;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/cloud/tmc/integration/defaultImpl/j;->i:Lkotlin/jvm/internal/Ref$LongRef;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/cloud/tmc/integration/defaultImpl/j;->j:Lkotlin/jvm/internal/Ref$LongRef;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/cloud/tmc/integration/defaultImpl/j;->k:Lkotlin/jvm/internal/Ref$LongRef;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/j;->a:Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/j;->b:Lcom/cloud/tmc/kernel/engine/IEngine;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/j;->c:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/integration/defaultImpl/j;->d:Lcom/cloud/tmc/kernel/node/Node;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/tmc/integration/defaultImpl/j;->e:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/cloud/tmc/integration/defaultImpl/j;->f:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/cloud/tmc/integration/defaultImpl/j;->g:Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/cloud/tmc/integration/defaultImpl/j;->h:Lkotlin/jvm/internal/Ref$LongRef;

    .line 16
    .line 17
    iget-object v8, p0, Lcom/cloud/tmc/integration/defaultImpl/j;->i:Lkotlin/jvm/internal/Ref$LongRef;

    .line 18
    .line 19
    iget-object v9, p0, Lcom/cloud/tmc/integration/defaultImpl/j;->j:Lkotlin/jvm/internal/Ref$LongRef;

    .line 20
    .line 21
    iget-object v10, p0, Lcom/cloud/tmc/integration/defaultImpl/j;->k:Lkotlin/jvm/internal/Ref$LongRef;

    .line 22
    .line 23
    invoke-static/range {v0 .. v10}, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->a(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
