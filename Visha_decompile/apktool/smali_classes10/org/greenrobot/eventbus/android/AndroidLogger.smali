.class public Lorg/greenrobot/eventbus/android/AndroidLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/greenrobot/eventbus/Logger;


# instance fields
.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/eventbus/android/AndroidLogger;->tag:Ljava/lang/String;

    return-void
.end method

.method private mapLevel(Ljava/util/logging/Level;)I
    .locals 0

    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result p0

    const/16 p1, 0x320

    if-ge p0, p1, :cond_1

    const/16 p1, 0x1f4

    if-ge p0, p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    const/16 p1, 0x384

    if-ge p0, p1, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const/16 p1, 0x3e8

    if-ge p0, p1, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, 0x6

    return p0
.end method


# virtual methods
.method public log(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lorg/greenrobot/eventbus/android/AndroidLogger;->mapLevel(Ljava/util/logging/Level;)I

    move-result p1

    iget-object p0, p0, Lorg/greenrobot/eventbus/android/AndroidLogger;->tag:Ljava/lang/String;

    invoke-static {p1, p0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    if-eq p1, v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lorg/greenrobot/eventbus/android/AndroidLogger;->mapLevel(Ljava/util/logging/Level;)I

    move-result p1

    iget-object p0, p0, Lorg/greenrobot/eventbus/android/AndroidLogger;->tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
