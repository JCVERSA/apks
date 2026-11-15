.class public Lcom/transsion/audio/adapter/AudioItemAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/adapter/AudioItemAdapter;->Y(Lcom/chad/library/adapter/base/BaseViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/transsion/audio/adapter/AudioItemAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/adapter/AudioItemAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/adapter/AudioItemAdapter$a;->c:Lcom/transsion/audio/adapter/AudioItemAdapter;

    iput-object p2, p0, Lcom/transsion/audio/adapter/AudioItemAdapter$a;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/adapter/AudioItemAdapter$a;->b:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
