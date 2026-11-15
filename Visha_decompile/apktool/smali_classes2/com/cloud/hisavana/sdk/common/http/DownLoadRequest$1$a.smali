.class public Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1$a;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;

    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1$a;->a:Z

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1$a;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;->val$adsDTO:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget v0, v0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;->val$materialType:I

    invoke-static {v1, v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1$a;->a:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1$a;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;

    iget-object v2, v2, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;->val$imageView:Landroid/widget/ImageView;

    invoke-static {v1, v0, v2}, Lhi4;->e(Ljava/lang/String;ZLandroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1$a;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;->val$listener:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    if-eqz p0, :cond_1

    const/16 v0, 0xc8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;->g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadImageView with ssp, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1$a;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;

    iget-object v2, v2, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ssp"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1$a;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;->val$adsDTO:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget v3, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;->val$materialType:I

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;->val$listener:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->d(Ljava/lang/String;Landroid/widget/ImageView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    :cond_1
    :goto_0
    return-void
.end method
