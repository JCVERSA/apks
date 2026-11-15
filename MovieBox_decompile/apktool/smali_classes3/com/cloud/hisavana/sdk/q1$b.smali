.class public final Lcom/cloud/hisavana/sdk/q1$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/util/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/q1;->o(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/q1;

.field final synthetic b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/q1;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/q1$b;->a:Lcom/cloud/hisavana/sdk/q1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/q1$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/q1$b;->a:Lcom/cloud/hisavana/sdk/q1;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/q1$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/q1;->j(Lcom/cloud/hisavana/sdk/q1;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/q1$b;->a:Lcom/cloud/hisavana/sdk/q1;

    .line 12
    .line 13
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ZIP_MATERIAL_DECOMPRESS_FAILED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 14
    .line 15
    const-string v1, "ERROR_ZIP_MATERIAL_DECOMPRESS_FAILED"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/q1;->i(Lcom/cloud/hisavana/sdk/q1;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method
