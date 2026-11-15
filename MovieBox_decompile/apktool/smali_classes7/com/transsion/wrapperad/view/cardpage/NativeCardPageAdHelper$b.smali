.class public final Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->s(Lcom/transsion/wrapperad/view/cardpage/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/ObjectAnimator;

.field final synthetic b:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

.field final synthetic c:Lcom/transsion/wrapperad/view/cardpage/f;


# direct methods
.method constructor <init>(Landroid/animation/ObjectAnimator;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$b;->a:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$b;->b:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$b;->c:Lcom/transsion/wrapperad/view/cardpage/f;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$b;->a:Landroid/animation/ObjectAnimator;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$b;->b:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$b;->c:Lcom/transsion/wrapperad/view/cardpage/f;

    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->o(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/f;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
