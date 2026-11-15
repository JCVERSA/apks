.class Lcom/mgtv/ssp/activity/SspCommonWebActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/activity/SspCommonWebActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/activity/SspCommonWebActivity;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/activity/SspCommonWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/activity/SspCommonWebActivity$1;->a:Lcom/mgtv/ssp/activity/SspCommonWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mgtv/ssp/activity/SspCommonWebActivity$1;->a:Lcom/mgtv/ssp/activity/SspCommonWebActivity;

    iget-object p1, p1, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->i:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspCommonWebActivity$1;->a:Lcom/mgtv/ssp/activity/SspCommonWebActivity;

    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspBaseWebActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/mgtv/ssp/activity/SspCommonWebActivity$1;->a:Lcom/mgtv/ssp/activity/SspCommonWebActivity;

    iput-object p2, p1, Lcom/mgtv/ssp/activity/SspCommonWebActivity;->j:Landroid/webkit/ValueCallback;

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "image/*"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/mgtv/ssp/activity/SspCommonWebActivity$1;->a:Lcom/mgtv/ssp/activity/SspCommonWebActivity;

    sget p2, Lcom/mgtv/ssp/R$string;->choose_upload:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x5

    invoke-static {p0, p1, p2}, Lcom/hunantv/imgo/util/a;->a(Landroid/app/Activity;Landroid/content/Intent;I)Z

    const-string p0, "RootWebChromeClient"

    const-string p1, "onShowFileChooser: 5.0+"

    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
