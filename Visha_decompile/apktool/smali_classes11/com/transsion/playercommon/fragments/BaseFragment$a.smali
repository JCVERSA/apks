.class public Lcom/transsion/playercommon/fragments/BaseFragment$a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/fragments/BaseFragment;->backgroundFollowBaseWindowByPx(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Landroid/graphics/Rect;

.field public final synthetic b:I

.field public final synthetic c:Landroid/graphics/drawable/Drawable;

.field public final synthetic d:Lcom/transsion/playercommon/fragments/BaseFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/fragments/BaseFragment;ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment$a;->d:Lcom/transsion/playercommon/fragments/BaseFragment;

    iput p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment$a;->b:I

    iput-object p3, p0, Lcom/transsion/playercommon/fragments/BaseFragment$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment$a;->a:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment$a;->b:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment$a;->b:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getOpacity()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    return p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment$a;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment$a;->b:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
