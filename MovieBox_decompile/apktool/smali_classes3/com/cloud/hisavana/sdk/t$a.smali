.class Lcom/cloud/hisavana/sdk/t$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/t;->i(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

.field final synthetic c:Lcom/cloud/hisavana/sdk/t;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/t;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/t$a;->c:Lcom/cloud/hisavana/sdk/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/t$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/t$a;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->y(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t$a;->c:Lcom/cloud/hisavana/sdk/t;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/t$a;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/t;->h(Lcom/cloud/hisavana/sdk/t;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "BannerGemini"

    .line 6
    .line 7
    const-string v2, "timeoutShutdown"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
