.class public final synthetic Lcom/cloud/hisavana/sdk/k2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

.field public final synthetic c:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/k2;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/k2;->b:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/k2;->c:Ljava/lang/Boolean;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k2;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/k2;->b:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/k2;->c:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/Y0;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Ljava/lang/Boolean;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
