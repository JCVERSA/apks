.class public abstract Lyld;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyld$e;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;I)J
    .locals 8

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_2

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v2}, Laud;->a(Ljava/io/File;)J

    move-result-wide v2

    int-to-double p0, p1

    invoke-static {p0, p1}, Lt3d;->a(D)J

    move-result-wide v4

    const-wide/32 v6, 0x500000

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    return-wide v0

    :cond_1
    invoke-static {p0, p1}, Lt3d;->a(D)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public static final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx1d;->a(Landroid/content/Context;)Lx1d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lx1d;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;ILjava/lang/String;)V
    .locals 10

    const-wide/16 v0, 0x0

    if-lez p1, :cond_0

    invoke-static {p0, p1}, Lyld;->a(Ljava/lang/String;I)J

    move-result-wide v2

    move-wide v5, v2

    goto :goto_0

    :cond_0
    move-wide v5, v0

    :goto_0
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lx1d;->a(Landroid/content/Context;)Lx1d;

    move-result-object v4

    cmp-long p1, v5, v0

    if-lez p1, :cond_1

    if-eqz v4, :cond_2

    new-instance v7, Lyld$a;

    invoke-direct {v7, v4, p0, p2}, Lyld$a;-><init>(Lx1d;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lx1d;->d(JLx1d$b;Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    new-instance p1, Lx1d$a;

    invoke-direct {p1}, Lx1d$a;-><init>()V

    invoke-virtual {p1, p0}, Lx1d$a;->d(Ljava/lang/String;)Lx1d$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lx1d$a;->b(Ljava/lang/String;)Lx1d$a;

    move-result-object p0

    new-instance p1, Lyld$b;

    invoke-direct {p1}, Lyld$b;-><init>()V

    invoke-virtual {p0, p1}, Lx1d$a;->a(Lz1d;)Lx1d$a;

    move-result-object p0

    invoke-virtual {v4, p0}, Lx1d;->e(Lx1d$a;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static d(Ljava/lang/String;ILjava/lang/String;Lyld$e;)V
    .locals 10

    const-wide/16 v0, 0x0

    if-lez p1, :cond_0

    invoke-static {p0, p1}, Lyld;->a(Ljava/lang/String;I)J

    move-result-wide v2

    move-wide v5, v2

    goto :goto_0

    :cond_0
    move-wide v5, v0

    :goto_0
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lx1d;->a(Landroid/content/Context;)Lx1d;

    move-result-object v4

    cmp-long p1, v5, v0

    if-lez p1, :cond_1

    if-eqz v4, :cond_2

    new-instance v7, Lyld$c;

    invoke-direct {v7, v4, p0, p2, p3}, Lyld$c;-><init>(Lx1d;Ljava/lang/String;Ljava/lang/String;Lyld$e;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lx1d;->d(JLx1d$b;Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    new-instance p1, Lx1d$a;

    invoke-direct {p1}, Lx1d$a;-><init>()V

    invoke-virtual {p1, p0}, Lx1d$a;->d(Ljava/lang/String;)Lx1d$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lx1d$a;->b(Ljava/lang/String;)Lx1d$a;

    move-result-object p0

    new-instance p1, Lyld$d;

    invoke-direct {p1, p3}, Lyld$d;-><init>(Lyld$e;)V

    invoke-virtual {p0, p1}, Lx1d$a;->a(Lz1d;)Lx1d$a;

    move-result-object p0

    invoke-virtual {v4, p0}, Lx1d;->e(Lx1d$a;)V

    :cond_2
    :goto_1
    return-void
.end method
