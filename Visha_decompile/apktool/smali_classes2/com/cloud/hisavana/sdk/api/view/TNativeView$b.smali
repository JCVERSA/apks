.class public Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/api/view/TNativeView;->j(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:Lcom/cloud/hisavana/sdk/api/view/TNativeView;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/api/view/TNativeView;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;->d:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "TNativeView"

    const-string v0, "download Image failed."

    invoke-virtual {p0, p1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    const-string v0, "TNativeView"

    const-string v1, "download Image Success."

    invoke-virtual {p1, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->setImage(Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isMaterialStyleValid()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;->c:Landroid/widget/ImageView;

    instance-of p1, p1, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getMaterialStyle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->findStrategyByCode(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->scaleWidthOrTextSize(Landroid/view/View;)V

    :cond_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;->c:Landroid/widget/ImageView;

    check-cast p1, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setCircle(Z)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;->c:Landroid/widget/ImageView;

    check-cast p1, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getMaterialStyle()Ljava/lang/String;

    move-result-object p0

    const-string p2, "L91601"

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/high16 p0, 0x41800000    # 16.0f

    :goto_1
    invoke-static {p0}, Lhm4;->a(F)I

    move-result p0

    int-to-float p0, p0

    goto :goto_2

    :cond_3
    const/high16 p0, 0x40800000    # 4.0f

    goto :goto_1

    :goto_2
    invoke-virtual {p1, p0}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setRadius(F)V

    :cond_4
    return-void
.end method
