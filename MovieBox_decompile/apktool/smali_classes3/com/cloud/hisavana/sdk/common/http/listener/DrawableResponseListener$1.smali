.class Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;->h(II[BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$mime:I

.field final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$1;->this$0:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    .line 2
    .line 3
    iput p2, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$1;->val$statusCode:I

    .line 4
    .line 5
    iput p3, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$1;->val$mime:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$1;->val$filePath:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$1;->this$0:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    .line 2
    .line 3
    iget v1, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$1;->val$statusCode:I

    .line 4
    .line 5
    new-instance v2, Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 6
    .line 7
    iget v3, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$1;->val$mime:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$1;->val$filePath:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    invoke-direct {v2, v3, v5, v4}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;->g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
