.class public Lcom/cloud/hisavana/sdk/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/b;->l(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/b;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/b;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/b$a;->c:Lcom/cloud/hisavana/sdk/b;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/b$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/b$a;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/b$a;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->B(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$a;->c:Lcom/cloud/hisavana/sdk/b;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/b$a;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    invoke-static {v0, p0}, Lcom/cloud/hisavana/sdk/b;->k(Lcom/cloud/hisavana/sdk/b;Landroid/view/View;)V

    return-void
.end method

.method public c()V
    .locals 2

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string v0, "BannerGemini"

    const-string/jumbo v1, "timeoutShutdown"

    invoke-virtual {p0, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
