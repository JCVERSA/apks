.class Lcom/cloud/tmc/integration/structure/node/AppNode$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/engine/EngineInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/structure/node/AppNode;->trySetupEngineProxy(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/structure/node/AppNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$1;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public initResult(ZLjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method
