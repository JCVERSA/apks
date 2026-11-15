.class public final synthetic Lcom/cloud/tmc/integration/performance/innerrender/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;

.field public final synthetic b:Lcom/cloud/tmc/integration/model/PrepareCallbackParam;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/a;->a:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/integration/performance/innerrender/a;->b:Lcom/cloud/tmc/integration/model/PrepareCallbackParam;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/a;->a:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerrender/a;->b:Lcom/cloud/tmc/integration/model/PrepareCallbackParam;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->c(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
