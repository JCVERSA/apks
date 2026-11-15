.class public Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar;->setProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar;


# direct methods
.method public constructor <init>(Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar$a;->b:Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar$a;->b:Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar;->a(Lcom/mgadplus/viewgroup/dynamicview/VoteProgressBar;I)V

    return-void
.end method
