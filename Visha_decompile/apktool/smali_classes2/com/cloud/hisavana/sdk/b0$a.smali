.class public Lcom/cloud/hisavana/sdk/b0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/b0;->a(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/b0;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/b0;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/b0$a;->b:Lcom/cloud/hisavana/sdk/b0;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/b0$a;->a:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b0$a;->b:Lcom/cloud/hisavana/sdk/b0;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/b0$a;->a:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/b0;->M(Lcom/cloud/hisavana/sdk/b0;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->INSTANCE:Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/b0$a;->a:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b0$a;->b:Lcom/cloud/hisavana/sdk/b0;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/b0$a;->a:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/b0;->S(Lcom/cloud/hisavana/sdk/b0;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    sget-object v0, Latd;->a:Latd;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/b0$a;->a:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getUuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Latd;->j(Ljava/lang/String;)V

    return-void
.end method
