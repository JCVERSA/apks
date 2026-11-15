.class public Lcom/cloud/tmc/integration/defaultImpl/DefaultPageFactoryImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/PageFactory;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createPage(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/cloud/tmc/integration/structure/node/PageNode;
    .locals 7

    .line 1
    new-instance v6, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 2
    .line 3
    invoke-static {p4}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v4

    .line 7
    invoke-static {p5}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    move-object v0, v6

    .line 12
    move-object v1, p1

    .line 13
    move-object v2, p2

    .line 14
    move-object v3, p3

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/integration/structure/node/PageNode;-><init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    return-object v6
.end method
