.class public final synthetic Ldk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Integer;

.field public final synthetic d:Ljava/lang/Integer;

.field public final synthetic e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldk;->b:I

    iput-object p2, p0, Ldk;->c:Ljava/lang/Integer;

    iput-object p3, p0, Ldk;->d:Ljava/lang/Integer;

    iput-object p4, p0, Ldk;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Ldk;->b:I

    iget-object v1, p0, Ldk;->c:Ljava/lang/Integer;

    iget-object v2, p0, Ldk;->d:Ljava/lang/Integer;

    iget-object p0, p0, Ldk;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v0, v1, v2, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->e(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method
