.class public Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public a:Landroid/media/SoundPool;

.field public b:I

.field public c:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v2, Landroid/media/SoundPool$Builder;

    invoke-direct {v2}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v2, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;->a:Landroid/media/SoundPool;

    return-void
.end method

.method public static c()Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;
    .locals 1

    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;

    invoke-direct {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;->c:F

    return p0
.end method

.method public b(Landroid/content/Context;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;->a:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;->b:I

    :cond_0
    return-void
.end method

.method public d()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;->a:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;->b:I

    if-eqz v1, :cond_0

    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;->c:F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    move v2, v3

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;->a:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;->a:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method public f(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$h;->c:F

    return-void
.end method
