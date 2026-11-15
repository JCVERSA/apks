.class Lcom/cloud/hisavana/sdk/x2$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/x2;->a(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

.field final synthetic b:Lcom/cloud/hisavana/sdk/x2;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/x2;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/x2$a;->b:Lcom/cloud/hisavana/sdk/x2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/x2$a;->a:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/x2$a;->b:Lcom/cloud/hisavana/sdk/x2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/x2$a;->a:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/x2;->M(Lcom/cloud/hisavana/sdk/x2;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->INSTANCE:Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/x2$a;->a:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/manager/VideoMeasureManager;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/x2$a;->b:Lcom/cloud/hisavana/sdk/x2;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/x2$a;->a:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/x2;->R(Lcom/cloud/hisavana/sdk/x2;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lcom/cloud/hisavana/sdk/t3;->a:Lcom/cloud/hisavana/sdk/t3;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/x2$a;->a:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getUuid()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/t3;->j(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
