.class public Lcom/transsion/athena/taaneh/ehatna;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Ljava/lang/String; = ""

.field private static b:Z


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    .line 4
    sget-object v0, Lcom/transsion/athena/taaneh/ehatna;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lcom/transsion/athena/taaneh/ehatna;->a:Ljava/lang/String;

    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/transsion/sdk/oneid/OneID;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "OneID isEnable = true"

    .line 7
    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;)V

    .line 8
    sget-boolean v0, Lcom/transsion/athena/taaneh/ehatna;->b:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/sdk/oneid/OneID;->e()Lcom/transsion/sdk/oneid/OneID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sdk/oneid/OneID;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    sput-object v0, Lcom/transsion/athena/taaneh/ehatna;->a:Ljava/lang/String;

    .line 9
    :cond_2
    sget-object v0, Lcom/transsion/athena/taaneh/ehatna;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 3

    .line 10
    sget-object v0, Lcom/transsion/athena/taaneh/ehatna;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 12
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/athena/taaneh/ehatna;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    :cond_0
    :goto_0
    sget-object v0, Lcom/transsion/athena/taaneh/ehatna;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/athena/taaneh/ehatna;->a:Ljava/lang/String;

    .line 18
    :cond_1
    :try_start_1
    invoke-static {p0}, Lm4/b;->b(Landroid/content/Context;)Lm4/b;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v0, "vaid"

    :try_start_2
    sget-object v1, Lcom/transsion/athena/taaneh/ehatna;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lm4/b;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 19
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static a(Landroid/content/Context;II)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/transsion/sdk/oneid/OneID;->d(Landroid/content/Context;II)V

    const/4 p0, 0x1

    .line 2
    sput-boolean p0, Lcom/transsion/athena/taaneh/ehatna;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    sget-object v2, Lcom/transsion/athena/taaneh/ehatna;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    sget-object p0, Lcom/transsion/athena/taaneh/ehatna;->a:Ljava/lang/String;

    .line 14
    .line 15
    return-object p0

    .line 16
    :catch_0
    move-exception v2

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-static {}, Lcom/transsion/sdk/oneid/OneID;->f()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    const-string v2, "OneID isEnable = true"

    .line 25
    .line 26
    invoke-static {v2}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-boolean v2, Lcom/transsion/athena/taaneh/ehatna;->b:Z

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-static {}, Lcom/transsion/sdk/oneid/OneID;->e()Lcom/transsion/sdk/oneid/OneID;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/transsion/sdk/oneid/OneID;->b()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-string v2, ""

    .line 43
    .line 44
    :goto_0
    :try_start_1
    sput-object v2, Lcom/transsion/athena/taaneh/ehatna;->a:Ljava/lang/String;

    .line 45
    .line 46
    :cond_2
    sget-object v2, Lcom/transsion/athena/taaneh/ehatna;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    invoke-static {p0}, Lm4/b;->b(Landroid/content/Context;)Lm4/b;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v3, "vaid"

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Lm4/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    sput-object v2, Lcom/transsion/athena/taaneh/ehatna;->a:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {p0}, Lcom/transsion/athena/taaneh/ehatna;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :goto_1
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {p0}, Lcom/transsion/athena/taaneh/ehatna;->a(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v2, "*******************/ vaid cost : "

    .line 86
    .line 87
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 91
    .line 92
    .line 93
    move-result-wide v2

    .line 94
    sub-long/2addr v2, v0

    .line 95
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, " /*******************"

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-static {p0}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    sget-object p0, Lcom/transsion/athena/taaneh/ehatna;->a:Ljava/lang/String;

    .line 111
    .line 112
    return-object p0
.end method
