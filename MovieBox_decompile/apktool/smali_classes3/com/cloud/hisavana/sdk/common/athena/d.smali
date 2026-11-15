.class public final synthetic Lcom/cloud/hisavana/sdk/common/athena/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Integer;

.field public final synthetic c:Ljava/lang/Integer;

.field public final synthetic d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/athena/d;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/d;->b:Ljava/lang/Integer;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/athena/d;->c:Ljava/lang/Integer;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/cloud/hisavana/sdk/common/athena/d;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/athena/d;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/d;->b:Ljava/lang/Integer;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/athena/d;->c:Ljava/lang/Integer;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/athena/d;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->e(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
