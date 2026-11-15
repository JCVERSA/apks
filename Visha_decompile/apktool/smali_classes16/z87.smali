.class public final synthetic Lz87;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/OSMaskImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/widget/OSMaskImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz87;->b:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lz87;->b:Lcom/transsion/widgetslib/widget/OSMaskImageView;

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/OSMaskImageView;->a(Lcom/transsion/widgetslib/widget/OSMaskImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
