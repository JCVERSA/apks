.class public Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/drawable/Drawable;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2$a;->b:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2$a;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2$a;->b:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;

    iget v1, v0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->val$mime:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object p0, v0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->this$0:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    new-instance v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const/16 v1, 0xbbf

    const-string v2, "parse bitmap error."

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->this$0:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    iget v0, v0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->val$statusCode:I

    new-instance v2, Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2$a;->b:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;

    iget v4, v3, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->val$mime:I

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2$a;->a:Landroid/graphics/drawable/Drawable;

    iget-object v3, v3, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->val$filePath:Ljava/lang/String;

    invoke-direct {v2, v4, p0, v3}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;->g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    :goto_0
    return-void
.end method
