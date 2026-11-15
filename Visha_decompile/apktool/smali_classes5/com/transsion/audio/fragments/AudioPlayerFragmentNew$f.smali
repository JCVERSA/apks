.class public Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$f;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$f;->d:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$f;->d:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->D0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$f;->d:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->b0:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$f;->d:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Z)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    iget-object p3, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$f;->d:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-static {p3, p2}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->G0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Z)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onPageScrolled: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isUserScrolling: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$f;->d:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->x0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioPlayerFragmentNew"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$f;->d:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->x0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$f;->d:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->D0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$f;->d:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iget-object p2, p2, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->b0:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$f;->d:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->E0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$f;->d:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {v1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->w0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$f;->d:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {v1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->w0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->hasLrc()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "vd_audio_cover_cl_lyrics_show"

    invoke-static {v1, v0}, Lnz5;->c(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$f;->d:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {v2}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->y0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)I

    move-result v2

    if-ne v2, v1, :cond_2

    if-ne p1, v0, :cond_2

    const-string v0, "vd_audio_lyrics_cl_exit"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$f;->d:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {v0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->H0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected-: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayerFragmentNew"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_3

    const-string v0, "audio_play_list"

    invoke-static {v0}, Lp06;->h0(Ljava/lang/String;)V

    const-string v0, "vd_audio_lyrics_show"

    invoke-static {v0}, Lp06;->d0(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$f;->d:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {v0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->E0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->setActiveMarker(I)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$f;->d:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {v0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->U0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;I)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$f;->d:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {v0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->M0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$f;->d:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->K0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/view/View;)V

    return-void
.end method
