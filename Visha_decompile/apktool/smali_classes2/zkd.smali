.class public final synthetic Lzkd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzkd;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p2, p0, Lzkd;->c:Ljava/util/List;

    iput-object p3, p0, Lzkd;->d:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lzkd;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v1, p0, Lzkd;->c:Ljava/util/List;

    iget-object p0, p0, Lzkd;->d:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    invoke-static {v0, v1, p0}, Lcom/cloud/hisavana/sdk/k1;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V

    return-void
.end method
