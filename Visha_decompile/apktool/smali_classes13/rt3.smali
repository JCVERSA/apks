.class public final synthetic Lrt3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic c:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup$LayoutParams;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrt3;->b:Landroid/view/ViewGroup$LayoutParams;

    iput-object p2, p0, Lrt3;->c:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lrt3;->b:Landroid/view/ViewGroup$LayoutParams;

    iget-object p0, p0, Lrt3;->c:Landroid/widget/ImageView;

    invoke-static {v0, p0, p1}, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->m0(Landroid/view/ViewGroup$LayoutParams;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
