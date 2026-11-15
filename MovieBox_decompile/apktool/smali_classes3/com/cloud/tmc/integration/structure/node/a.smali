.class public final synthetic Lcom/cloud/tmc/integration/structure/node/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/structure/node/AppNode;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/cloud/tmc/integration/structure/node/PageNode;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/structure/node/AppNode;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/PageNode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/a;->a:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/integration/structure/node/a;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/integration/structure/node/a;->c:Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onLoadSuccess(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/a;->a:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/node/a;->c:Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->b(Lcom/cloud/tmc/integration/structure/node/AppNode;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/PageNode;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
