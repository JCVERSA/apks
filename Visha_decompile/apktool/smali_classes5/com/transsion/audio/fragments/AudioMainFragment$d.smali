.class public Lcom/transsion/audio/fragments/AudioMainFragment$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/AudioMainFragment;->F1(FFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/transsion/audio/fragments/AudioMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudioMainFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment$d;->c:Lcom/transsion/audio/fragments/AudioMainFragment;

    iput-boolean p2, p0, Lcom/transsion/audio/fragments/AudioMainFragment$d;->b:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment$d;->c:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->N0(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment$d;->c:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->O0(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-boolean v0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$d;->b:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioMainFragment$d;->c:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->C0(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioMainFragment$d;->c:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->C0(Lcom/transsion/audio/fragments/AudioMainFragment;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    return-void
.end method
