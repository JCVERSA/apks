.class public final synthetic Lcom/cloud/tmc/integration/performance/innerrender/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/kernel/render/IRender;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/kernel/render/IRender;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/c;->a:Lcom/cloud/tmc/kernel/render/IRender;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/c;->a:Lcom/cloud/tmc/kernel/render/IRender;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->b(Lcom/cloud/tmc/kernel/render/IRender;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
