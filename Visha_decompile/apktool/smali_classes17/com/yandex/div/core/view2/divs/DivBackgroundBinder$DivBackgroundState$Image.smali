.class public final Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;
.super Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Image"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image$a;
    }
.end annotation


# instance fields
.field public final a:D

.field public final b:Lcom/yandex/div2/DivAlignmentHorizontal;

.field public final c:Lcom/yandex/div2/DivAlignmentVertical;

.field public final d:Landroid/net/Uri;

.field public final e:Z

.field public final f:Lcom/yandex/div2/DivImageScale;

.field public final g:Ljava/util/List;

.field public final h:Z


# direct methods
.method public constructor <init>(DLcom/yandex/div2/DivAlignmentHorizontal;Lcom/yandex/div2/DivAlignmentVertical;Landroid/net/Uri;ZLcom/yandex/div2/DivImageScale;Ljava/util/List;Z)V
    .locals 1

    const-string v0, "contentAlignmentHorizontal"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentAlignmentVertical"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageUrl"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scale"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->a:D

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->b:Lcom/yandex/div2/DivAlignmentHorizontal;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->c:Lcom/yandex/div2/DivAlignmentVertical;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->d:Landroid/net/Uri;

    iput-boolean p6, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->e:Z

    iput-object p7, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->f:Lcom/yandex/div2/DivImageScale;

    iput-object p8, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->g:Ljava/util/List;

    iput-boolean p9, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->h:Z

    return-void
.end method


# virtual methods
.method public final b(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lwk2;)Landroid/graphics/drawable/Drawable;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageLoader"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/internal/drawable/ScalingDrawable;

    invoke-direct {v0}, Lcom/yandex/div/internal/drawable/ScalingDrawable;-><init>()V

    iget-wide v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->a:D

    const/16 v3, 0xff

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/internal/drawable/ScalingDrawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->f:Lcom/yandex/div2/DivImageScale;

    invoke-static {v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->L0(Lcom/yandex/div2/DivImageScale;)Lcom/yandex/div/internal/drawable/ScalingDrawable$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/internal/drawable/ScalingDrawable;->e(Lcom/yandex/div/internal/drawable/ScalingDrawable$ScaleType;)V

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->b:Lcom/yandex/div2/DivAlignmentHorizontal;

    invoke-static {p2}, Lpdc;->f(Landroid/view/View;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->A0(Lcom/yandex/div2/DivAlignmentHorizontal;Z)Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentHorizontal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/internal/drawable/ScalingDrawable;->b(Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentHorizontal;)V

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->c:Lcom/yandex/div2/DivAlignmentVertical;

    invoke-static {v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->N0(Lcom/yandex/div2/DivAlignmentVertical;)Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentVertical;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/internal/drawable/ScalingDrawable;->c(Lcom/yandex/div/internal/drawable/ScalingDrawable$AlignmentVertical;)V

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v1, "imageUrl.toString()"

    invoke-static {v7, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v6

    new-instance v8, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image$getDivImageBackground$loadReference$1;

    move-object v1, v8

    move-object v2, p2

    move-object v3, p1

    move-object v4, p0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image$getDivImageBackground$loadReference$1;-><init>(Landroid/view/View;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;Lcom/yandex/div/internal/drawable/ScalingDrawable;Lcom/yandex/div/core/view2/Div2View;)V

    invoke-interface {p3, v7, v8}, Lwk2;->loadImage(Ljava/lang/String;Lrk2;)Ljn5;

    move-result-object p0

    const-string p3, "fun getDivImageBackgroun\u2026aleDrawable\n            }"

    invoke-static {p0, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/yandex/div/core/view2/Div2View;->addLoadReference(Ljn5;Landroid/view/View;)V

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->g:Ljava/util/List;

    return-object p0
.end method

.method public final d()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->d:Landroid/net/Uri;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->h:Z

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;

    iget-wide v3, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->a:D

    iget-wide v5, p1, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->a:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->b:Lcom/yandex/div2/DivAlignmentHorizontal;

    iget-object v3, p1, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->b:Lcom/yandex/div2/DivAlignmentHorizontal;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->c:Lcom/yandex/div2/DivAlignmentVertical;

    iget-object v3, p1, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->c:Lcom/yandex/div2/DivAlignmentVertical;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->d:Landroid/net/Uri;

    iget-object v3, p1, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->d:Landroid/net/Uri;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->e:Z

    iget-boolean v3, p1, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->f:Lcom/yandex/div2/DivImageScale;

    iget-object v3, p1, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->f:Lcom/yandex/div2/DivImageScale;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->g:Ljava/util/List;

    iget-object v3, p1, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->g:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean p0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->h:Z

    iget-boolean p1, p1, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->h:Z

    if-eq p0, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->b:Lcom/yandex/div2/DivAlignmentHorizontal;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->c:Lcom/yandex/div2/DivAlignmentVertical;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->e:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->f:Lcom/yandex/div2/DivImageScale;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->g:Ljava/util/List;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->h:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, p0

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Image(alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", contentAlignmentHorizontal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->b:Lcom/yandex/div2/DivAlignmentHorizontal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentAlignmentVertical="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->c:Lcom/yandex/div2/DivAlignmentVertical;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", preloadRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->f:Lcom/yandex/div2/DivImageScale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isVectorCompatible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->h:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
