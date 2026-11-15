.class Lcom/transsion/baseui/widget/shimmer/b$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baseui/widget/shimmer/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baseui/widget/shimmer/b;


# direct methods
.method constructor <init>(Lcom/transsion/baseui/widget/shimmer/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baseui/widget/shimmer/b$a;->a:Lcom/transsion/baseui/widget/shimmer/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/baseui/widget/shimmer/b$a;->a:Lcom/transsion/baseui/widget/shimmer/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
