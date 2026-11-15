.class public final synthetic Lrm6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/api/view/MediaView;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/api/view/MediaView;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrm6;->b:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    iput-object p2, p0, Lrm6;->c:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    iput-object p3, p0, Lrm6;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lrm6;->b:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    iget-object v1, p0, Lrm6;->c:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    iget-object p0, p0, Lrm6;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a(Lcom/cloud/hisavana/sdk/api/view/MediaView;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Ljava/lang/String;)V

    return-void
.end method
