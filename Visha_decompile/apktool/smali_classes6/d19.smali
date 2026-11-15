.class public Ld19;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Ld19;

.field public static c:Landroid/content/Context;


# instance fields
.field public a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Ld19;->c:Landroid/content/Context;

    invoke-virtual {p0, p1}, Ld19;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ld19;
    .locals 2

    const-class v0, Ld19;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ld19;->b:Ld19;

    if-nez v1, :cond_0

    new-instance v1, Ld19;

    invoke-direct {v1, p0}, Ld19;-><init>(Landroid/content/Context;)V

    sput-object v1, Ld19;->b:Ld19;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Ld19;->b:Ld19;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    sget-object v0, Ld19;->c:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Low8;->b()Low8;

    move-result-object v0

    sget-object v2, Ld19;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Low8;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Ld19;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    sget-object v0, Ld19;->c:Landroid/content/Context;

    invoke-virtual {p0, v0}, Ld19;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ld19;->a:Landroid/content/SharedPreferences;

    :cond_2
    iget-object v0, p0, Ld19;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    :try_start_0
    new-instance v0, Lmw8;

    sget-object v2, Ld19;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Lmw8;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Ld19;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v1

    :cond_4
    const-string p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    const-string v3, "data length not correct"

    const-string v4, "tcrypto"

    if-eq p1, v2, :cond_5

    :try_start_1
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 p1, 0x1

    aget-object p1, p0, p1

    invoke-virtual {v0, p1}, Ls90;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lmw8;->d([B)[B

    move-result-object p1

    array-length v0, p1

    const/16 v2, 0x30

    if-eq v0, v2, :cond_6

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/16 v0, 0x20

    new-array v2, v0, [B

    const/16 v3, 0x10

    new-array v4, v3, [B

    const/4 v5, 0x0

    invoke-static {p1, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v0, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lt9;

    invoke-direct {p1, v2, v4}, Lt9;-><init>([B[B)V

    aget-object p0, p0, v5

    invoke-virtual {p1, p0}, Ls90;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lt9;->d([B)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method public final c(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "tcrypto"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ld19;->a:Landroid/content/SharedPreferences;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ld19;->a:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Ld19;->c:Landroid/content/Context;

    if-eqz v0, :cond_3

    invoke-static {}, Low8;->b()Low8;

    move-result-object v0

    sget-object v1, Ld19;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Low8;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ld19;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    sget-object v0, Ld19;->c:Landroid/content/Context;

    invoke-virtual {p0, v0}, Ld19;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ld19;->a:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Ld19;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Lu9;

    invoke-direct {v0}, Lu9;-><init>()V

    new-instance v1, Lmw8;

    sget-object v2, Ld19;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmw8;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lu9;->e(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ls90;->c([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lu9;->i()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lmw8;->e([B)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ls90;->c([B)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Ld19;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "sp is null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "key not created"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
