.class Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;->j(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;

.field final synthetic val$final_bean:Ljava/lang/Object;

.field final synthetic val$responseString:Ljava/lang/String;

.field final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener$1;->this$0:Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;

    .line 2
    .line 3
    iput p2, p0, Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener$1;->val$statusCode:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener$1;->val$final_bean:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener$1;->val$responseString:Ljava/lang/String;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener$1;->this$0:Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;

    .line 2
    .line 3
    iget v1, p0, Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener$1;->val$statusCode:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener$1;->val$final_bean:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener$1;->val$responseString:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;->h(ILjava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
