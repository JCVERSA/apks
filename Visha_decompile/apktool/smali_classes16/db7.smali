.class public final synthetic Ldb7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldb7;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Ldb7;->b:Landroid/widget/TextView;

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->f(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
