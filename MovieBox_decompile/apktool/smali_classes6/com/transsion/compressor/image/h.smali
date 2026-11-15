.class public Lcom/transsion/compressor/image/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/compressor/image/h$a;
    }
.end annotation


# static fields
.field private static h:Ljava/util/Random;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Z

.field private final c:I

.field private final d:Lcom/transsion/compressor/image/e;

.field private final e:Lcom/transsion/compressor/image/a;

.field private final f:Ljava/util/List;

.field private final g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/bytedance/sdk/component/utils/a;->a()Ljava/security/SecureRandom;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/transsion/compressor/image/h;->h:Ljava/util/Random;

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :catch_0
    move-exception v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Ljava/util/Random;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/transsion/compressor/image/h;->h:Ljava/util/Random;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :goto_0
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/transsion/compressor/image/j;->f(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_1
    return-void
.end method

.method private constructor <init>(Lcom/transsion/compressor/image/h$a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/transsion/compressor/image/h$a;->g(Lcom/transsion/compressor/image/h$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/compressor/image/h;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/transsion/compressor/image/h$a;->e(Lcom/transsion/compressor/image/h$a;)Lcom/transsion/compressor/image/f;

    .line 5
    invoke-static {p1}, Lcom/transsion/compressor/image/h$a;->f(Lcom/transsion/compressor/image/h$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/compressor/image/h;->f:Ljava/util/List;

    .line 6
    invoke-static {p1}, Lcom/transsion/compressor/image/h$a;->b(Lcom/transsion/compressor/image/h$a;)Lcom/transsion/compressor/image/e;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/compressor/image/h;->d:Lcom/transsion/compressor/image/e;

    .line 7
    invoke-static {p1}, Lcom/transsion/compressor/image/h$a;->d(Lcom/transsion/compressor/image/h$a;)I

    move-result v0

    iput v0, p0, Lcom/transsion/compressor/image/h;->c:I

    .line 8
    invoke-static {p1}, Lcom/transsion/compressor/image/h$a;->c(Lcom/transsion/compressor/image/h$a;)Lcom/transsion/compressor/image/a;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/compressor/image/h;->e:Lcom/transsion/compressor/image/a;

    .line 9
    invoke-static {p1}, Lcom/transsion/compressor/image/h$a;->a(Lcom/transsion/compressor/image/h$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/compressor/image/h;->b:Z

    .line 10
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/transsion/compressor/image/h;->g:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/compressor/image/h$a;Lcom/transsion/compressor/image/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/compressor/image/h;-><init>(Lcom/transsion/compressor/image/h$a;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/compressor/image/h;Lcom/transsion/compressor/image/d;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/compressor/image/h;->f(Lcom/transsion/compressor/image/d;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic b(Lcom/transsion/compressor/image/h;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/compressor/image/h;->g(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(Landroid/content/Context;Lcom/transsion/compressor/image/d;)Ljava/io/File;
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/compressor/image/h;->d(Landroid/content/Context;Lcom/transsion/compressor/image/d;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-interface {p2}, Lcom/transsion/compressor/image/d;->close()V

    .line 6
    .line 7
    .line 8
    return-object p1

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    invoke-interface {p2}, Lcom/transsion/compressor/image/d;->close()V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method private d(Landroid/content/Context;Lcom/transsion/compressor/image/d;)Ljava/io/File;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/compressor/image/Checker;->SINGLE:Lcom/transsion/compressor/image/Checker;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lcom/transsion/compressor/image/Checker;->extSuffix(Lcom/transsion/compressor/image/d;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {p0, p1, v1}, Lcom/transsion/compressor/image/h;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v1, p0, Lcom/transsion/compressor/image/h;->e:Lcom/transsion/compressor/image/a;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {p2}, Lcom/transsion/compressor/image/d;->getPath()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v1, v2}, Lcom/transsion/compressor/image/a;->a(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget v1, p0, Lcom/transsion/compressor/image/h;->c:I

    .line 26
    .line 27
    invoke-interface {p2}, Lcom/transsion/compressor/image/d;->getPath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/transsion/compressor/image/Checker;->needCompress(ILjava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    new-instance v0, Lcom/transsion/compressor/image/b;

    .line 38
    .line 39
    iget-boolean v1, p0, Lcom/transsion/compressor/image/h;->b:Z

    .line 40
    .line 41
    invoke-direct {v0, p2, p1, v1}, Lcom/transsion/compressor/image/b;-><init>(Lcom/transsion/compressor/image/d;Ljava/io/File;Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/transsion/compressor/image/b;->a()Ljava/io/File;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance p1, Ljava/io/File;

    .line 50
    .line 51
    invoke-interface {p2}, Lcom/transsion/compressor/image/d;->getPath()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget v1, p0, Lcom/transsion/compressor/image/h;->c:I

    .line 60
    .line 61
    invoke-interface {p2}, Lcom/transsion/compressor/image/d;->getPath()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/transsion/compressor/image/Checker;->needCompress(ILjava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    new-instance v0, Lcom/transsion/compressor/image/b;

    .line 72
    .line 73
    iget-boolean v1, p0, Lcom/transsion/compressor/image/h;->b:Z

    .line 74
    .line 75
    invoke-direct {v0, p2, p1, v1}, Lcom/transsion/compressor/image/b;-><init>(Lcom/transsion/compressor/image/d;Ljava/io/File;Z)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/transsion/compressor/image/b;->a()Ljava/io/File;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    new-instance p1, Ljava/io/File;

    .line 84
    .line 85
    invoke-interface {p2}, Lcom/transsion/compressor/image/d;->getPath()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    return-object p1
.end method

.method private e(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/compressor/image/h;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lcom/transsion/compressor/image/j;->e(Landroid/content/Context;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/transsion/compressor/image/h;->a:Ljava/lang/String;

    .line 20
    .line 21
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/transsion/compressor/image/h;->a:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    sget-object v0, Lcom/transsion/compressor/image/h;->h:Ljava/util/Random;

    .line 44
    .line 45
    const/16 v1, 0x3e8

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    const-string p2, ".jpg"

    .line 61
    .line 62
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance p2, Ljava/io/File;

    .line 70
    .line 71
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p2}, Lcom/transsion/compressor/image/j;->c(Ljava/io/File;)V

    .line 75
    .line 76
    .line 77
    return-object p2
.end method

.method private synthetic f(Lcom/transsion/compressor/image/d;Landroid/content/Context;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/transsion/compressor/image/h;->g:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {p1}, Lcom/transsion/compressor/image/d;->getPath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/transsion/compressor/image/h;->g:Landroid/os/Handler;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p2, p1}, Lcom/transsion/compressor/image/h;->c(Landroid/content/Context;Lcom/transsion/compressor/image/d;)Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/transsion/compressor/image/j;->a(Ljava/io/File;)[I

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iget-object v0, p0, Lcom/transsion/compressor/image/h;->g:Landroid/os/Handler;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Landroid/os/Bundle;

    .line 35
    .line 36
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v2, "tag_image_info"

    .line 40
    .line 41
    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 42
    .line 43
    .line 44
    const-string p2, "tag_image_size"

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    const-wide/16 v4, 0x400

    .line 51
    .line 52
    div-long/2addr v2, v4

    .line 53
    invoke-virtual {v1, p2, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/transsion/compressor/image/h;->g:Landroid/os/Handler;

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception p1

    .line 66
    iget-object p2, p0, Lcom/transsion/compressor/image/h;->g:Landroid/os/Handler;

    .line 67
    .line 68
    const/4 v0, 0x2

    .line 69
    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void
.end method

.method private g(Landroid/content/Context;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/compressor/image/h;->d:Lcom/transsion/compressor/image/e;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Ljava/lang/NullPointerException;

    .line 8
    .line 9
    const-string v2, "context cannot be null"

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Lcom/transsion/compressor/image/e;->onError(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/transsion/compressor/image/h;->f:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/transsion/compressor/image/h;->d:Lcom/transsion/compressor/image/e;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    new-instance p1, Ljava/lang/NullPointerException;

    .line 30
    .line 31
    const-string v1, "image file cannot be null"

    .line 32
    .line 33
    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, p1}, Lcom/transsion/compressor/image/e;->onError(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/transsion/compressor/image/h;->f:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lcom/transsion/compressor/image/d;

    .line 57
    .line 58
    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 59
    .line 60
    new-instance v3, Lcom/transsion/compressor/image/g;

    .line 61
    .line 62
    invoke-direct {v3, p0, v1, p1}, Lcom/transsion/compressor/image/g;-><init>(Lcom/transsion/compressor/image/h;Lcom/transsion/compressor/image/d;Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    return-void
.end method

.method public static h(Landroid/content/Context;)Lcom/transsion/compressor/image/h$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/compressor/image/h$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lcom/transsion/compressor/image/h$a;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/compressor/image/h;->d:Lcom/transsion/compressor/image/e;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    .line 8
    .line 9
    if-eqz v2, :cond_3

    .line 10
    .line 11
    if-eq v2, v1, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-eq v2, v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Ljava/lang/Throwable;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Lcom/transsion/compressor/image/e;->onError(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Lcom/transsion/compressor/image/e;->a(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Ljava/io/File;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v1, "tag_image_info"

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "tag_image_size"

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    iget-object p1, p0, Lcom/transsion/compressor/image/h;->d:Lcom/transsion/compressor/image/e;

    .line 54
    .line 55
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/transsion/compressor/image/e;->b(Ljava/io/File;[IJ)V

    .line 56
    .line 57
    .line 58
    :goto_0
    const/4 p1, 0x0

    .line 59
    return p1
.end method
