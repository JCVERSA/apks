.class public Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$b;->a:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IFZ)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$b;->a:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    iget-boolean p3, p1, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->b0:Z

    if-eqz p3, :cond_0

    iget-wide p3, p1, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->H0:J

    int-to-long v0, p2

    mul-long/2addr p3, v0

    const-wide/16 v0, 0x64

    div-long/2addr p3, v0

    invoke-static {p1, p3, p4}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->C0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;J)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$b;->a:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->s0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)J

    move-result-wide p1

    iget-object p3, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$b;->a:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    iget-wide v0, p3, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->H0:J

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    invoke-static {p3, v0, v1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->C0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;J)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S()I

    move-result p2

    int-to-long p2, p2

    invoke-static {p1, p2, p3}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->C0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;J)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$b;->a:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->s0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)J

    move-result-wide p2

    iget-object p4, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$b;->a:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    iget-wide v0, p4, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->H0:J

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->c0(JJ)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$b;->a:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->q0:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->s0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)J

    move-result-wide p2

    invoke-static {p2, p3}, Lwna;->d(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$b;->a:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->b0:Z

    iget-boolean v1, p1, Lcom/transsion/magicvideo/widgets/PlayerViewController;->d0:Z

    if-nez v1, :cond_0

    iput-boolean v0, p1, Lcom/transsion/magicvideo/widgets/PlayerViewController;->f0:Z

    iget-object p1, p1, Lcom/transsion/magicvideo/widgets/PlayerViewController;->i0:Lcom/transsion/magicvideo/widgets/PlayerViewController$d;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/transsion/magicvideo/widgets/PlayerViewController$d;->a(Z)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$b;->a:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-virtual {p1, v0}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->b0(Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$b;->a:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/PlayerViewController;->g0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->G0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;I)V

    return-void
.end method

.method public onStopTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$b;->a:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->b0:Z

    invoke-virtual {p1, v0}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->b0(Z)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$b;->a:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    iput-boolean v0, p1, Lcom/transsion/magicvideo/widgets/PlayerViewController;->f0:Z

    iget-object p1, p1, Lcom/transsion/magicvideo/widgets/PlayerViewController;->i0:Lcom/transsion/magicvideo/widgets/PlayerViewController$d;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/transsion/magicvideo/widgets/PlayerViewController$d;->a(Z)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$b;->a:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->A0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$b;->a:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->s0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p1, v0}, Lp06;->T(II)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$b;->a:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    iget-object v0, p1, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->G0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->H0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;I)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$b;->a:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->x0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lvha;->s(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew$b;->a:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUI;->G0:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lvha;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method
