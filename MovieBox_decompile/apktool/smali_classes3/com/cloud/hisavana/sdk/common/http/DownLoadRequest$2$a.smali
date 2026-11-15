.class Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2$a;->b:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2$a;->a:Ljava/lang/String;

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
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "file://"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2$a;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2$a;->b:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;->val$imageView:Landroid/widget/ImageView;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {v0, v2, v1}, Ln7/b;->e(Ljava/lang/String;ZLandroid/widget/ImageView;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2$a;->b:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;->val$listener:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    const/16 v1, 0xc8

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;->g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2$a;->a:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2$a;->b:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;

    .line 47
    .line 48
    iget-object v2, v1, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;->val$listener:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;->val$imageView:Landroid/widget/ImageView;

    .line 51
    .line 52
    invoke-static {v0, v2, v1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->e(Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void
.end method
