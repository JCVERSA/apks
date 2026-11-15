.class Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/api/view/TNativeView;->j(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:Lcom/cloud/hisavana/sdk/api/view/TNativeView;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/api/view/TNativeView;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;->d:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;->c:Landroid/widget/ImageView;

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
    const-string v0, "TNativeView"

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
    const-string v0, "TNativeView"

    .line 14
    .line 15
    const-string v1, "download Image Success."

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

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
    move-result-object p2

    .line 32
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->setImage(Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isMaterialStyleValid()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;->c:Landroid/widget/ImageView;

    .line 50
    .line 51
    instance-of p1, p1, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 52
    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getMaterialStyle()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->findStrategyByCode(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;->c:Landroid/widget/ImageView;

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->scaleWidthOrTextSize(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;->c:Landroid/widget/ImageView;

    .line 73
    .line 74
    check-cast p1, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 75
    .line 76
    const/4 p2, 0x1

    .line 77
    invoke-virtual {p1, p2}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setCircle(Z)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;->c:Landroid/widget/ImageView;

    .line 81
    .line 82
    check-cast p1, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 83
    .line 84
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getMaterialStyle()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    const-string v0, "L91601"

    .line 91
    .line 92
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-eqz p2, :cond_3

    .line 97
    .line 98
    const/high16 p2, 0x41800000    # 16.0f

    .line 99
    .line 100
    :goto_1
    invoke-static {p2}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    int-to-float p2, p2

    .line 105
    goto :goto_2

    .line 106
    :cond_3
    const/high16 p2, 0x40800000    # 4.0f

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :goto_2
    invoke-virtual {p1, p2}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setRadius(F)V

    .line 110
    .line 111
    .line 112
    :cond_4
    return-void
.end method
