.class public final synthetic Lcom/cloud/hisavana/sdk/common/athena/m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Integer;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic e:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/m;->a:Ljava/lang/Integer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/m;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/athena/m;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/cloud/hisavana/sdk/common/athena/m;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/cloud/hisavana/sdk/common/athena/m;->e:Landroid/os/Bundle;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/m;->a:Ljava/lang/Integer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/m;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/athena/m;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/athena/m;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/athena/m;->e:Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
