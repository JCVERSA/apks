.class Lcom/transsion/playercommon/player/MusicFade/MusicFade$FadeRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/player/MusicFade/MusicFade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FadeRunnable"
.end annotation


# instance fields
.field private endVolume:F

.field private spendTime:J

.field private startTime:J

.field private startVolume:F

.field final synthetic this$0:Lcom/transsion/playercommon/player/MusicFade/MusicFade;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/player/MusicFade/MusicFade;FFJJ)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/player/MusicFade/MusicFade$FadeRunnable;->this$0:Lcom/transsion/playercommon/player/MusicFade/MusicFade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/transsion/playercommon/player/MusicFade/MusicFade$FadeRunnable;->startVolume:F

    iput p3, p0, Lcom/transsion/playercommon/player/MusicFade/MusicFade$FadeRunnable;->endVolume:F

    iput-wide p4, p0, Lcom/transsion/playercommon/player/MusicFade/MusicFade$FadeRunnable;->spendTime:J

    iput-wide p6, p0, Lcom/transsion/playercommon/player/MusicFade/MusicFade$FadeRunnable;->startTime:J

    return-void
.end method


# virtual methods
.method public getValue(J)F
    .locals 2

    iget-wide v0, p0, Lcom/transsion/playercommon/player/MusicFade/MusicFade$FadeRunnable;->startTime:J

    sub-long/2addr p1, v0

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    iget-wide v0, p0, Lcom/transsion/playercommon/player/MusicFade/MusicFade$FadeRunnable;->spendTime:J

    long-to-float p2, v0

    div-float/2addr p1, p2

    iget p2, p0, Lcom/transsion/playercommon/player/MusicFade/MusicFade$FadeRunnable;->startVolume:F

    iget v0, p0, Lcom/transsion/playercommon/player/MusicFade/MusicFade$FadeRunnable;->endVolume:F

    sub-float v1, v0, p2

    mul-float/2addr p1, v1

    add-float/2addr p1, p2

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget p2, p0, Lcom/transsion/playercommon/player/MusicFade/MusicFade$FadeRunnable;->endVolume:F

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-ne p2, v0, :cond_1

    iget p1, p0, Lcom/transsion/playercommon/player/MusicFade/MusicFade$FadeRunnable;->endVolume:F

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/transsion/playercommon/player/MusicFade/MusicFade$FadeRunnable;->endVolume:F

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget p1, p0, Lcom/transsion/playercommon/player/MusicFade/MusicFade$FadeRunnable;->endVolume:F

    :cond_1
    :goto_0
    return p1
.end method

.method public run()V
    .locals 0

    return-void
.end method
