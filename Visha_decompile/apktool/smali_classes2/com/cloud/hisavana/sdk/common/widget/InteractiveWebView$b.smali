.class public Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleClick()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "InteractiveWebView"

    const-string v2, "handleClick"

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->e(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;)V

    :cond_0
    return-void
.end method

.method public interactiveEvent(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "InteractiveWebView"

    const-string v2, "interactiveEvent"

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->d(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public timeoutShutdown()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "InteractiveWebView"

    const-string/jumbo v2, "timeoutShutdown"

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->f(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;)V

    :cond_0
    return-void
.end method
