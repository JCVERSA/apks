.class Lcom/cloud/hisavana/sdk/k1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/k1;->l(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/k1$c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/k1$c;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k1$c;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/k1$c;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    new-instance v1, Lcom/cloud/hisavana/sdk/k1$d;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/k1$d;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1}, Lcom/cloud/hisavana/sdk/k1;->m(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Lcom/cloud/hisavana/sdk/manager/b$c;)V

    return-void
.end method
