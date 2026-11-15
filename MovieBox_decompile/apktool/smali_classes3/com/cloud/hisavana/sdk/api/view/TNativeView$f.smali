.class Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setImgMedia(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

.field final synthetic c:Landroid/widget/ImageView$ScaleType;

.field final synthetic d:Lcom/cloud/hisavana/sdk/api/view/TNativeView;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/api/view/TNativeView;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;->d:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;->c:Landroid/widget/ImageView$ScaleType;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "ssp"

    .line 6
    .line 7
    const-string v1, "download Image failed."

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "ssp"

    .line 14
    .line 15
    const-string v1, "download Image Success."

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->setImage(Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;->d:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->c(Lcom/cloud/hisavana/sdk/api/view/TNativeView;)Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;->c:Landroid/widget/ImageView$ScaleType;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isMaterialStyleValid()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-virtual {p1, p2, v0, v1}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->setMediaView(Lcom/cloud/hisavana/sdk/common/bean/AdImage;Landroid/widget/ImageView$ScaleType;Z)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isMaterialStyleValid()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getMaterialStyle()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->findStrategyByCode(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;->d:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 79
    .line 80
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->c(Lcom/cloud/hisavana/sdk/api/view/TNativeView;)Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->renderRadius(Lcom/cloud/hisavana/sdk/api/view/MediaView;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    return-void
.end method
