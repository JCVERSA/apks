.class public final synthetic Loa7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loa7;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Loa7;->b:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->f(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;Landroid/animation/ValueAnimator;)V

    return-void
.end method
