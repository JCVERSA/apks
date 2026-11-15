.class public Lcom/transsion/audio/fragments/AudioMainFragment$e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/AudioMainFragment;->R0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic c:I

.field public final synthetic d:Lcom/transsion/audio/fragments/AudioMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudioMainFragment;Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment$e;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    iput-object p2, p0, Lcom/transsion/audio/fragments/AudioMainFragment$e;->b:Landroid/view/ViewGroup$LayoutParams;

    iput p3, p0, Lcom/transsion/audio/fragments/AudioMainFragment$e;->c:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment$e;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->P0(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment$e;->b:Landroid/view/ViewGroup$LayoutParams;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$e;->c:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment$e;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->Q0(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$e;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment$e;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->I0(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment$e;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->C0(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment$e;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->C0(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$e;->d:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->D0(Lcom/transsion/audio/fragments/AudioMainFragment;)V

    return-void
.end method
