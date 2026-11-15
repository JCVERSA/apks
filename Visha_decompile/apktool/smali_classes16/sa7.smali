.class public final synthetic Lsa7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsa7;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lsa7;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->g(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;Landroid/animation/ValueAnimator;)V

    return-void
.end method
