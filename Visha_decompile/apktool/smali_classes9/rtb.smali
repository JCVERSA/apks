.class public abstract Lrtb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrtb$a;
    }
.end annotation


# static fields
.field public static a:I = -0x1

.field public static b:F

.field public static c:F

.field public static d:F

.field public static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lrtb;->e()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    sput v0, Lrtb;->b:F

    sput v1, Lrtb;->c:F

    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lrtb;->d:F

    const/4 v0, 0x1

    sput v0, Lrtb;->e:I

    return-void
.end method

.method public static a(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;Z)V
    .locals 2

    const-string v0, "VideoMediaPlayerUtils"

    const-string v1, "autoPlayPauseOrResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lrtb;->f(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Ljxb;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Ljxb;->e(Z)V

    return-void
.end method

.method public static final b(FFF)F
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static final c(III)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static final d(JJJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static e()I
    .locals 4

    sget v0, Lrtb;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xff

    :try_start_0
    const-string v1, "persist.vendor.bl.max"

    invoke-static {v1, v0}, Lmaa;->b(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lrtb;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaxBriValue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoMediaPlayerUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput v0, Lrtb;->a:I

    :cond_0
    :goto_0
    sget v0, Lrtb;->a:I

    return v0
.end method

.method public static f(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Ljxb;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->getPlayer()Ljxb;

    move-result-object p0

    return-object p0
.end method

.method public static g()I
    .locals 1

    sget v0, Lrtb;->e:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static h(Landroid/content/Context;)F
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    return v0

    :cond_0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "VideoMediaPlayerUtils"

    const-string v2, "set screen brightness fail"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static i()F
    .locals 1

    invoke-static {}, Lrtb;->j()Lrtb$a;

    move-result-object v0

    iget v0, v0, Lrtb$a;->c:F

    return v0
.end method

.method public static j()Lrtb$a;
    .locals 5

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    int-to-float v1, v0

    int-to-float v3, v2

    div-float/2addr v1, v3

    :goto_0
    new-instance v3, Lrtb$a;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v0, v1, v4}, Lrtb$a;-><init>(IIFLstb;)V

    return-object v3
.end method

.method public static k(Landroid/content/Context;Lcom/transsion/magicvideo/data/VideoOpStatus;)V
    .locals 2

    sget v0, Lcom/transsion/magicvideo/data/VideoOpStatus;->defScreenBrightness:F

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "screen_brightness"

    invoke-static {p0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/transsion/magicvideo/data/VideoOpStatus;->mInitLightValue:I

    const/4 p0, 0x0

    cmpg-float p0, v0, p0

    if-lez p0, :cond_1

    sget-boolean p0, Lpp3;->b:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    iput v0, p1, Lcom/transsion/magicvideo/data/VideoOpStatus;->mScreenBrightness:F

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/magicvideo/data/VideoOpStatus;->lightInt2Float()F

    move-result p0

    iput p0, p1, Lcom/transsion/magicvideo/data/VideoOpStatus;->mScreenBrightness:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static l(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)V
    .locals 1

    invoke-static {p0}, Lrtb;->f(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Ljxb;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljxb;->h(Z)V

    return-void
.end method

.method public static m(I)V
    .locals 0

    if-lez p0, :cond_0

    sput p0, Lrtb;->e:I

    :cond_0
    return-void
.end method

.method public static n(Landroid/content/Context;)F
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    return v0

    :cond_0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget p0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "VideoMediaPlayerUtils"

    const-string v2, "set screen brightness fail"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static o(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;J)V
    .locals 0

    invoke-static {p0}, Lrtb;->f(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Ljxb;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Ljxb;->f(J)V

    return-void
.end method

.method public static p(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;->setResizeMode(I)V

    return-void
.end method

.method public static q(Landroid/content/Context;Lcom/transsion/magicvideo/data/VideoOpStatus;FZ)F
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    return v0

    :cond_0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p3, :cond_1

    iget p1, p1, Lcom/transsion/magicvideo/data/VideoOpStatus;->mScreenBrightness:F

    add-float/2addr p2, p1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget p1, Lrtb;->b:F

    sget p3, Lrtb;->c:F

    invoke-static {p2, p1, p3}, Lrtb;->b(FFF)F

    move-result p1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget p0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "VideoMediaPlayerUtils"

    const-string p2, "set screen brightness fail"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static r(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;ZZ)V
    .locals 0

    invoke-static {p0}, Lrtb;->f(Lcom/transsion/magicvideo/widgets/VideoPlayerMediaView;)Ljxb;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljxb;->getVideoDuration()I

    move-result p1

    invoke-interface {p0}, Ljxb;->c()I

    move-result p2

    if-eq p1, p2, :cond_2

    :cond_1
    invoke-interface {p0}, Ljxb;->a()I

    move-result p1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_3

    :cond_2
    const-wide/16 p1, 0x0

    invoke-interface {p0, p1, p2}, Ljxb;->f(J)V

    :cond_3
    invoke-interface {p0}, Ljxb;->i()V

    return-void

    :cond_4
    const/4 p1, 0x1

    invoke-interface {p0, p1}, Ljxb;->b(Z)V

    return-void
.end method

.method public static s(Landroid/content/Context;JJLcom/transsion/magicvideo/data/VideoOpStatus;)V
    .locals 4

    iput-wide p1, p5, Lcom/transsion/magicvideo/data/VideoOpStatus;->mTimePosition:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, p1

    const-wide/16 v2, 0x0

    if-nez p1, :cond_0

    iput-wide v2, p5, Lcom/transsion/magicvideo/data/VideoOpStatus;->mTimePosition:J

    :cond_0
    iput-wide p3, p5, Lcom/transsion/magicvideo/data/VideoOpStatus;->mDuration:J

    cmp-long p1, v0, p3

    if-nez p1, :cond_1

    iput-wide v2, p5, Lcom/transsion/magicvideo/data/VideoOpStatus;->mDuration:J

    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p3

    iput p3, p5, Lcom/transsion/magicvideo/data/VideoOpStatus;->mMusicMaxVolume:I

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p5, Lcom/transsion/magicvideo/data/VideoOpStatus;->mMusicVolume:I

    const/high16 p2, 0x3f800000    # 1.0f

    int-to-float p1, p1

    mul-float/2addr p1, p2

    iget p2, p5, Lcom/transsion/magicvideo/data/VideoOpStatus;->mMusicMaxVolume:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p5, Lcom/transsion/magicvideo/data/VideoOpStatus;->mAudioVolume:F

    iget p1, p5, Lcom/transsion/magicvideo/data/VideoOpStatus;->mInitLightValue:I

    if-gtz p1, :cond_2

    invoke-static {p0, p5}, Lrtb;->k(Landroid/content/Context;Lcom/transsion/magicvideo/data/VideoOpStatus;)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lrtb;->h(Landroid/content/Context;)F

    move-result p1

    iput p1, p5, Lcom/transsion/magicvideo/data/VideoOpStatus;->mScreenBrightness:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    invoke-static {p0, p5}, Lrtb;->k(Landroid/content/Context;Lcom/transsion/magicvideo/data/VideoOpStatus;)V

    :cond_3
    :goto_0
    return-void
.end method
