.class public final synthetic Lcom/transsion/widgetslib/util/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

.field public final synthetic c:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/util/b;->b:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    iput-object p2, p0, Lcom/transsion/widgetslib/util/b;->c:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/util/b;->b:Lcom/transsion/widgetslib/util/InputDialogFoldEngine;

    iget-object p0, p0, Lcom/transsion/widgetslib/util/b;->c:Landroid/animation/ValueAnimator;

    invoke-static {v0, p0, p1}, Lcom/transsion/widgetslib/util/InputDialogFoldEngine$revertBack$2;->a(Lcom/transsion/widgetslib/util/InputDialogFoldEngine;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method
