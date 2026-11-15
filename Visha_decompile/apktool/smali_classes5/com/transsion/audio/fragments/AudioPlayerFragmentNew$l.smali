.class public Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$l;
.super Luob;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->y2(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$l;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-direct {p0}, Luob;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    const-string p1, "AudioPlayerFragmentNew"

    const-string v0, "Out mHalfOpenAudioPlayerLayoutAnimator onAnimationEnd"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$l;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->L0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$l;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->L0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$l;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->A0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$l;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->A0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$l;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->A0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    const-string v2, "alpha"

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->I0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/animation/ObjectAnimator;)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$l;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->z0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v1, Lt53;

    const v2, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f28f5c3    # 0.66f

    invoke-direct {v1, v2, v0, v4, v3}, Lt53;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$l;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->z0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$l;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->z0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$l$a;

    invoke-direct {v0, p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$l$a;-><init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$l;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
