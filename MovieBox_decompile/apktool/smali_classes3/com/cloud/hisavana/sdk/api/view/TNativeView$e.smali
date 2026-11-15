.class Lcom/cloud/hisavana/sdk/api/view/TNativeView$e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/api/view/TNativeView;->i(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

.field final synthetic b:Lcom/cloud/hisavana/sdk/api/view/TNativeView;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/api/view/TNativeView;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$e;->b:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$e;->a:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$e;->b:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->c(Lcom/cloud/hisavana/sdk/api/view/TNativeView;)Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$e;->b:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->c(Lcom/cloud/hisavana/sdk/api/view/TNativeView;)Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$e;->b:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->b(Lcom/cloud/hisavana/sdk/api/view/TNativeView;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$e;->b:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->f(Lcom/cloud/hisavana/sdk/api/view/TNativeView;)Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$e;->a:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/util/e0;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$e;->b:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 49
    .line 50
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->c(Lcom/cloud/hisavana/sdk/api/view/TNativeView;)Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;->updateHeightWith(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method
