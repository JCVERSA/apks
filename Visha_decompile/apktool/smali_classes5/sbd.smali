.class public abstract Lsbd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = ""

.field public static b:Z = false


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lsbd;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lsbd;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/transsion/sdk/oneid/OneID;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "OneID isEnable = true"

    invoke-static {v0}, Lc4d;->b(Ljava/lang/String;)V

    sget-boolean v0, Lsbd;->b:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/sdk/oneid/OneID;->e()Lcom/transsion/sdk/oneid/OneID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sdk/oneid/OneID;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    sput-object v0, Lsbd;->a:Ljava/lang/String;

    :cond_2
    sget-object v0, Lsbd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lsbd;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

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

    sput-object v0, Lsbd;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    sget-object v0, Lsbd;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsbd;->a:Ljava/lang/String;

    :cond_1
    :try_start_1
    invoke-static {p0}, Lk5d;->a(Landroid/content/Context;)Lk5d;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v0, "vaid"

    :try_start_2
    sget-object v1, Lsbd;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lk5d;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc4d;->d(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static c(Landroid/content/Context;II)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/transsion/sdk/oneid/OneID;->d(Landroid/content/Context;II)V

    const/4 p0, 0x1

    sput-boolean p0, Lsbd;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc4d;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    sget-object v2, Lsbd;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object p0, Lsbd;->a:Ljava/lang/String;

    return-object p0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/transsion/sdk/oneid/OneID;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "OneID isEnable = true"

    invoke-static {v2}, Lc4d;->b(Ljava/lang/String;)V

    sget-boolean v2, Lsbd;->b:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/transsion/sdk/oneid/OneID;->e()Lcom/transsion/sdk/oneid/OneID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/sdk/oneid/OneID;->b()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    :try_start_1
    sput-object v2, Lsbd;->a:Ljava/lang/String;

    :cond_2
    sget-object v2, Lsbd;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lk5d;->a(Landroid/content/Context;)Lk5d;

    move-result-object v2

    const-string v3, "vaid"

    invoke-virtual {v2, v3}, Lk5d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lsbd;->a:Ljava/lang/String;

    invoke-static {p0}, Lsbd;->b(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc4d;->d(Ljava/lang/String;)V

    invoke-static {p0}, Lsbd;->b(Landroid/content/Context;)V

    :cond_3
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*******************/ vaid cost : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " /*******************"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc4d;->b(Ljava/lang/String;)V

    sget-object p0, Lsbd;->a:Ljava/lang/String;

    return-object p0
.end method
