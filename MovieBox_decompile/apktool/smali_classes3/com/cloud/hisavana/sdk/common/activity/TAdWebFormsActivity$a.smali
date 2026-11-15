.class Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;
.super Lg7/j;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lg7/j;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->b(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Landroid/webkit/WebView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->b(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Landroid/webkit/WebView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->b(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Landroid/webkit/WebView;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/view/ViewGroup;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;

    .line 32
    .line 33
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->b(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Landroid/webkit/WebView;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    const/4 p1, 0x1

    .line 41
    return p1

    .line 42
    :cond_1
    invoke-super {p0, p1, p2}, Lg7/j;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "shouldInterceptRequest URL== "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "TAdWebFormsActivity"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/util/q0;->a(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->l(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->l(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide p1

    .line 57
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;

    .line 58
    .line 59
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->n(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v1

    .line 63
    sub-long/2addr p1, v1

    .line 64
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->l(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v1, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->w(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;J)V

    .line 71
    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    return-object p1
.end method
