.class public final Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;->setText(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;I)V
    .locals 0

    iput-object p1, p0, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$b;->a:Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;

    iput p2, p0, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$b;->a:Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$b;->a:Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;

    iget v1, p0, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView$b;->b:I

    invoke-static {v0, v1}, Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;->b(Lcom/dayuwuxian/clean/ui/widget/CleanProgressView;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    return v0
.end method
