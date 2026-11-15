.class Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/Drawable;

.field final synthetic b:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2$a;->b:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2$a;->a:Landroid/graphics/drawable/Drawable;

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
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2$a;->b:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;

    .line 2
    .line 3
    iget v1, v0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->val$mime:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->this$0:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    .line 9
    .line 10
    new-instance v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 11
    .line 12
    const/16 v2, 0xbbf

    .line 13
    .line 14
    const-string v3, "parse bitmap error."

    .line 15
    .line 16
    invoke-direct {v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->this$0:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    .line 24
    .line 25
    iget v0, v0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->val$statusCode:I

    .line 26
    .line 27
    new-instance v2, Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2$a;->b:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;

    .line 30
    .line 31
    iget v4, v3, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->val$mime:I

    .line 32
    .line 33
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2$a;->a:Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    iget-object v3, v3, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->val$filePath:Ljava/lang/String;

    .line 36
    .line 37
    invoke-direct {v2, v4, v5, v3}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0, v2}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;->g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method
