.class public final synthetic Lcom/cloud/hisavana/sdk/l2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/l2;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/l2;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/l2;->c:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/l2;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/l2;->b:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/l2;->c:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/Y0;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
