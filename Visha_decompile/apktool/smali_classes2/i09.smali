.class public final synthetic Li09;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/lang/Integer;

.field public final synthetic d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic e:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li09;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Li09;->c:Ljava/lang/Integer;

    iput-object p3, p0, Li09;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p4, p0, Li09;->e:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Li09;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Li09;->c:Ljava/lang/Integer;

    iget-object v2, p0, Li09;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object p0, p0, Li09;->e:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, p0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->g(Ljava/util/ArrayList;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    return-void
.end method
