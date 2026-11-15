.class public final Ljn/c;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Ljn/c;

.field private static b:Z

.field private static c:I

.field private static d:I

.field private static e:I

.field private static volatile f:I

.field private static final g:Lkotlin/Lazy;

.field private static final h:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljn/c;

    .line 2
    .line 3
    invoke-direct {v0}, Ljn/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ljn/c;->a:Ljn/c;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    sput-boolean v1, Ljn/c;->b:Z

    .line 10
    .line 11
    const/16 v2, 0xc8

    .line 12
    .line 13
    sput v2, Ljn/c;->c:I

    .line 14
    .line 15
    const/16 v2, 0x64

    .line 16
    .line 17
    sput v2, Ljn/c;->d:I

    .line 18
    .line 19
    const/16 v3, 0xf

    .line 20
    .line 21
    sput v3, Ljn/c;->e:I

    .line 22
    .line 23
    sput v2, Ljn/c;->f:I

    .line 24
    .line 25
    new-instance v2, Ljn/a;

    .line 26
    .line 27
    invoke-direct {v2}, Ljn/a;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    sput-object v2, Ljn/c;->g:Lkotlin/Lazy;

    .line 35
    .line 36
    new-instance v2, Ljn/b;

    .line 37
    .line 38
    invoke-direct {v2}, Ljn/b;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-static {v2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    sput-object v2, Ljn/c;->h:Lkotlin/Lazy;

    .line 46
    .line 47
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 56
    .line 57
    new-instance v4, Landroid/os/Handler;

    .line 58
    .line 59
    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v5, Ljn/c$a;

    .line 63
    .line 64
    invoke-direct {v5, v4}, Ljn/c$a;-><init>(Landroid/os/Handler;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v3, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 68
    .line 69
    .line 70
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 71
    .line 72
    invoke-direct {v0}, Ljn/c;->f()Landroid/media/AudioManager;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const/4 v1, 0x3

    .line 77
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    sput v0, Ljn/c;->e:I

    .line 82
    .line 83
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 84
    .line 85
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 91
    .line 92
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    :goto_0
    sget-object v0, Ljn/c;->a:Ljn/c;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljn/c;->h()V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Landroid/app/NotificationManager;
    .locals 1

    .line 1
    invoke-static {}, Ljn/c;->j()Landroid/app/NotificationManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Landroid/media/AudioManager;
    .locals 1

    .line 1
    invoke-static {}, Ljn/c;->i()Landroid/media/AudioManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final f()Landroid/media/AudioManager;
    .locals 1

    .line 1
    sget-object v0, Ljn/c;->g:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/media/AudioManager;

    .line 8
    .line 9
    return-object v0
.end method

.method private final g()Landroid/app/NotificationManager;
    .locals 1

    .line 1
    sget-object v0, Ljn/c;->h:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/NotificationManager;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final i()Landroid/media/AudioManager;
    .locals 2

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "audio"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "null cannot be cast to non-null type android.media.AudioManager"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, Landroid/media/AudioManager;

    .line 17
    .line 18
    return-object v0
.end method

.method private static final j()Landroid/app/NotificationManager;
    .locals 2

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "notification"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, Landroid/app/NotificationManager;

    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public final c(IF)V
    .locals 3

    .line 1
    int-to-float v0, p1

    .line 2
    add-float/2addr v0, p2

    .line 3
    const/high16 p2, 0x42c80000    # 100.0f

    .line 4
    .line 5
    div-float/2addr v0, p2

    .line 6
    sget p2, Ljn/c;->e:I

    .line 7
    .line 8
    int-to-float v1, p2

    .line 9
    mul-float/2addr v0, v1

    .line 10
    float-to-int v0, v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    move p2, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-lt v0, p2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move p2, v0

    .line 20
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "preVolume:"

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, ", volume:"

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    :try_start_0
    invoke-direct {p0}, Ljn/c;->f()Landroid/media/AudioManager;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/media/AudioManager;->isVolumeFixed()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    sget-boolean p1, Ljn/c;->b:Z

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    :goto_1
    invoke-direct {p0}, Ljn/c;->f()Landroid/media/AudioManager;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const/4 v0, 0x3

    .line 63
    invoke-virtual {p1, v0, p2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_3

    .line 67
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_3
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    invoke-direct {p0}, Ljn/c;->f()Landroid/media/AudioManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "checkCurVolume volume:"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    sget v1, Ljn/c;->e:I

    .line 26
    .line 27
    if-ge v0, v1, :cond_0

    .line 28
    .line 29
    sget v1, Ljn/c;->f:I

    .line 30
    .line 31
    sget v2, Ljn/c;->e:I

    .line 32
    .line 33
    mul-int/2addr v1, v2

    .line 34
    sget v3, Ljn/c;->d:I

    .line 35
    .line 36
    div-int/2addr v1, v3

    .line 37
    if-eq v1, v0, :cond_0

    .line 38
    .line 39
    mul-int/2addr v0, v3

    .line 40
    div-int/2addr v0, v2

    .line 41
    sput v0, Ljn/c;->f:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 53
    .line 54
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :goto_2
    return-void
.end method

.method public final e()I
    .locals 1

    .line 1
    sget v0, Ljn/c;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final h()V
    .locals 6

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    invoke-direct {p0}, Ljn/c;->g()Landroid/app/NotificationManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput-boolean v0, Ljn/c;->b:Z

    .line 12
    .line 13
    invoke-direct {p0}, Ljn/c;->f()Landroid/media/AudioManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x3

    .line 18
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sget v1, Ljn/c;->d:I

    .line 23
    .line 24
    mul-int/2addr v1, v0

    .line 25
    sget v2, Ljn/c;->e:I

    .line 26
    .line 27
    div-int/2addr v1, v2

    .line 28
    sput v1, Ljn/c;->f:I

    .line 29
    .line 30
    const-string v1, "AppVolumeManager"

    .line 31
    .line 32
    sget v2, Ljn/c;->f:I

    .line 33
    .line 34
    sget v3, Ljn/c;->e:I

    .line 35
    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v5, "curVolume:"

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, ", volume:"

    .line 50
    .line 51
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, " system:"

    .line 58
    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 83
    .line 84
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    :goto_0
    return-void
.end method

.method public final k(I)I
    .locals 2

    .line 1
    sget v0, Ljn/c;->f:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    sget v1, Ljn/c;->c:I

    .line 5
    .line 6
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->h(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sget v1, Ljn/c;->d:I

    .line 16
    .line 17
    if-gt v0, v1, :cond_0

    .line 18
    .line 19
    sget v1, Ljn/c;->f:I

    .line 20
    .line 21
    int-to-float p1, p1

    .line 22
    invoke-virtual {p0, v1, p1}, Ljn/c;->c(IF)V

    .line 23
    .line 24
    .line 25
    :cond_0
    sput v0, Ljn/c;->f:I

    .line 26
    .line 27
    return v0
.end method
