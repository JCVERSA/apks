.class public Lcom/mgtv/thirdsdk/playcore/utils/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:J = 0x0L

.field private static c:Ljava/lang/String; = "PlayerUtil"

.field private static d:I = 0x2

.field private static e:I = -0x1

.field private static f:I = 0x0

.field private static g:Z = false

.field private static h:I = -0x1

.field private static i:I = -0x1

.field private static j:Ljava/lang/StringBuilder;

.field private static k:Ljava/util/Formatter;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Lcom/hunantv/media/config/NetPlayConfig;

.field private static p:F

.field private static q:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->a:Ljava/util/HashMap;

    const v0, 0x3c23d70a    # 0.01f

    sput v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->p:F

    const v0, 0x3d75c28f    # 0.06f

    sput v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->q:F

    return-void
.end method

.method public static a()Lcom/hunantv/media/config/NetPlayConfig;
    .locals 1

    .line 2
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->o:Lcom/hunantv/media/config/NetPlayConfig;

    return-object v0
.end method

.method public static a(Lcom/mgtv/thirdsdk/playcore/a/b;Ljava/lang/String;)Lcom/mgtv/thirdsdk/playcore/a/a;
    .locals 1

    if-eqz p1, :cond_0

    .line 7
    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/a/b;->a(Ljava/lang/String;)Lcom/mgtv/thirdsdk/playcore/a/a;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/mgtv/thirdsdk/playcore/a/b;
    .locals 1

    .line 5
    :try_start_0
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/a/b;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/playcore/a/b;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    .line 32
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->j:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->j:Ljava/lang/StringBuilder;

    .line 34
    :cond_0
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->k:Ljava/util/Formatter;

    if-nez v0, :cond_1

    .line 35
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/mgtv/thirdsdk/playcore/utils/c;->j:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->k:Ljava/util/Formatter;

    .line 36
    :cond_1
    div-int/lit16 p0, p0, 0x3e8

    .line 37
    rem-int/lit8 v0, p0, 0x3c

    .line 38
    div-int/lit8 p0, p0, 0x3c

    .line 39
    sget-object v1, Lcom/mgtv/thirdsdk/playcore/utils/c;->j:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 40
    sget-object v1, Lcom/mgtv/thirdsdk/playcore/utils/c;->k:Ljava/util/Formatter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02d:%02d"

    invoke-virtual {v1, v0, p0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(F)V
    .locals 0

    .line 49
    sput p0, Lcom/mgtv/thirdsdk/playcore/utils/c;->p:F

    return-void
.end method

.method public static a(J)V
    .locals 0

    .line 48
    sput-wide p0, Lcom/mgtv/thirdsdk/playcore/utils/c;->b:J

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 10
    sget-boolean v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 11
    :try_start_0
    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(Landroid/content/Context;)Lcom/mgtv/thirdsdk/playcore/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    invoke-static {v0, p1}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(Lcom/mgtv/thirdsdk/playcore/a/b;Ljava/lang/String;)Lcom/mgtv/thirdsdk/playcore/a/a;

    move-result-object p0

    .line 13
    invoke-static {v0, p0}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(Lcom/mgtv/thirdsdk/playcore/a/b;Lcom/mgtv/thirdsdk/playcore/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 14
    :goto_1
    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/a/b;->a()V

    goto :goto_3

    .line 15
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_3
    return-void

    :goto_4
    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/a/b;->a()V

    .line 17
    :cond_3
    throw p0
.end method

.method public static a(Lcom/hunantv/media/config/NetPlayConfig;)V
    .locals 0

    .line 3
    sput-object p0, Lcom/mgtv/thirdsdk/playcore/utils/c;->o:Lcom/hunantv/media/config/NetPlayConfig;

    return-void
.end method

.method public static a(Lcom/mgtv/thirdsdk/playcore/a/b;Lcom/mgtv/thirdsdk/playcore/a/a;)V
    .locals 1

    .line 18
    sget-boolean v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->g:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/a/a;->c()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/a/b;->a(I)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 3

    .line 45
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save Bookmark videoId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->a:Ljava/util/HashMap;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bookmark"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 4
    sput-boolean p0, Lcom/mgtv/thirdsdk/playcore/utils/c;->g:Z

    return-void
.end method

.method public static a(Lcom/mgtv/thirdsdk/playcore/a/b;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 2

    .line 20
    sget-boolean p2, Lcom/mgtv/thirdsdk/playcore/utils/c;->g:Z

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 21
    invoke-static {p0, p1}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(Lcom/mgtv/thirdsdk/playcore/a/b;Ljava/lang/String;)Lcom/mgtv/thirdsdk/playcore/a/a;

    move-result-object p2

    if-nez p2, :cond_0

    .line 22
    new-instance p2, Lcom/mgtv/thirdsdk/playcore/a/a;

    invoke-direct {p2}, Lcom/mgtv/thirdsdk/playcore/a/a;-><init>()V

    .line 23
    invoke-virtual {p2, p1}, Lcom/mgtv/thirdsdk/playcore/a/a;->a(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/mgtv/thirdsdk/playcore/a/a;->a(J)V

    .line 25
    invoke-virtual {p2, p3}, Lcom/mgtv/thirdsdk/playcore/a/a;->c(I)V

    .line 26
    invoke-virtual {p2, p4}, Lcom/mgtv/thirdsdk/playcore/a/a;->a(I)V

    .line 27
    invoke-virtual {p0, p2}, Lcom/mgtv/thirdsdk/playcore/a/b;->a(Lcom/mgtv/thirdsdk/playcore/a/a;)I

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/mgtv/thirdsdk/playcore/a/a;->a(J)V

    .line 29
    invoke-virtual {p2, p3}, Lcom/mgtv/thirdsdk/playcore/a/a;->c(I)V

    .line 30
    invoke-virtual {p2, p4}, Lcom/mgtv/thirdsdk/playcore/a/a;->a(I)V

    .line 31
    invoke-virtual {p0, p2}, Lcom/mgtv/thirdsdk/playcore/a/b;->b(Lcom/mgtv/thirdsdk/playcore/a/a;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_2

    .line 41
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 43
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0

    .line 44
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return v0
.end method

.method public static b()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/utils/c;->d()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2
    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->getsGlobalNetPlayConfig()Lcom/hunantv/media/config/NetPlayConfig;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget v0, v0, Lcom/hunantv/media/config/NetPlayConfig;->render_type:I

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 4

    .line 6
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->j:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->j:Ljava/lang/StringBuilder;

    .line 8
    :cond_0
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->k:Ljava/util/Formatter;

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/mgtv/thirdsdk/playcore/utils/c;->j:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->k:Ljava/util/Formatter;

    .line 10
    :cond_1
    rem-int/lit8 v0, p0, 0x3c

    const/16 v1, 0x3c

    .line 11
    div-int/2addr p0, v1

    .line 12
    sget-object v2, Lcom/mgtv/thirdsdk/playcore/utils/c;->j:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    if-ge p0, v1, :cond_2

    .line 13
    sget-object v1, Lcom/mgtv/thirdsdk/playcore/utils/c;->k:Ljava/util/Formatter;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02d:%02d"

    invoke-virtual {v1, v0, p0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 14
    :cond_2
    div-int/lit8 v2, p0, 0x3c

    .line 15
    rem-int/2addr p0, v1

    .line 16
    sget-object v1, Lcom/mgtv/thirdsdk/playcore/utils/c;->k:Ljava/util/Formatter;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v2, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02d:%02d:%02d"

    invoke-virtual {v1, v0, p0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(F)V
    .locals 0

    .line 17
    sput p0, Lcom/mgtv/thirdsdk/playcore/utils/c;->q:F

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 5
    invoke-static {p0, v0}, Lcom/hunantv/imgo/util/q;->a(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/mgtv/thirdsdk/playcore/utils/c;->e:I

    :cond_0
    return-void
.end method

.method public static c()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/utils/c;->e()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->getsGlobalNetPlayConfig()Lcom/hunantv/media/config/NetPlayConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/hunantv/media/config/NetPlayConfig;->getIs_soft()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public static c(I)I
    .locals 2

    .line 5
    sget v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return p0

    :cond_0
    return v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    .line 4
    sput-object p0, Lcom/mgtv/thirdsdk/playcore/utils/c;->l:Ljava/lang/String;

    return-void
.end method

.method public static d()I
    .locals 1

    .line 1
    sget v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->e:I

    return v0
.end method

.method public static d(I)V
    .locals 0

    .line 3
    sput p0, Lcom/mgtv/thirdsdk/playcore/utils/c;->h:I

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 0

    .line 2
    sput-object p0, Lcom/mgtv/thirdsdk/playcore/utils/c;->m:Ljava/lang/String;

    return-void
.end method

.method public static e()I
    .locals 1

    .line 1
    sget v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->f:I

    return v0
.end method

.method public static e(I)V
    .locals 0

    .line 3
    sput p0, Lcom/mgtv/thirdsdk/playcore/utils/c;->i:I

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 0

    .line 2
    sput-object p0, Lcom/mgtv/thirdsdk/playcore/utils/c;->n:Ljava/lang/String;

    return-void
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 1

    .line 2
    const-string v0, ".m3u8"

    invoke-static {p0, v0}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static g(Ljava/lang/String;)I
    .locals 5

    .line 2
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->a:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bookmark"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "get Bookmark videoId "

    if-nez v2, :cond_0

    .line 5
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " prog = "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6
    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/q;->a(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 7
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " prog null "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static i()Z
    .locals 1

    sget-boolean v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->g:Z

    return v0
.end method

.method public static j()J
    .locals 2

    sget-wide v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->b:J

    return-wide v0
.end method

.method public static k()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "clearPlayBookmark "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static l()I
    .locals 1

    sget v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->i:I

    return v0
.end method

.method public static m()F
    .locals 1

    sget v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->p:F

    return v0
.end method

.method public static n()F
    .locals 1

    sget v0, Lcom/mgtv/thirdsdk/playcore/utils/c;->q:F

    return v0
.end method
