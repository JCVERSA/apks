.class public final synthetic Lu87;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/view/OSLoadingView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/view/OSLoadingView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu87;->b:Lcom/transsion/widgetslib/view/OSLoadingView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lu87;->b:Lcom/transsion/widgetslib/view/OSLoadingView;

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/OSLoadingView;->c(Lcom/transsion/widgetslib/view/OSLoadingView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
