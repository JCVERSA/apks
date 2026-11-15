.class public Lorg/jsoup/helper/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lorg/jsoup/Connection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/helper/b$d;,
        Lorg/jsoup/helper/b$c;,
        Lorg/jsoup/helper/b$b;
    }
.end annotation


# instance fields
.field private a:Lorg/jsoup/Connection$b;

.field private b:Lorg/jsoup/Connection$c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/jsoup/helper/b$c;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/jsoup/helper/b$c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$b;

    .line 10
    .line 11
    new-instance v0, Lorg/jsoup/helper/b$d;

    .line 12
    .line 13
    invoke-direct {v0}, Lorg/jsoup/helper/b$d;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/jsoup/helper/b;->b:Lorg/jsoup/Connection$c;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic c(Lorg/jsoup/Connection$b;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/jsoup/helper/b;->h(Lorg/jsoup/Connection$b;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static d(Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 1

    .line 1
    new-instance v0, Lorg/jsoup/helper/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/jsoup/helper/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, p0}, Lorg/jsoup/Connection;->b(Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lorg/jsoup/helper/b;->f(Ljava/net/URL;)Ljava/net/URL;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :catch_0
    return-object p0
.end method

.method static f(Ljava/net/URL;)Ljava/net/URL;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, " "

    .line 6
    .line 7
    const-string v2, "%20"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/net/URI;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/net/URL;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :catch_0
    return-object p0
.end method

.method private static h(Lorg/jsoup/Connection$b;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lorg/jsoup/Connection$b;->j()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    throw p0
.end method


# virtual methods
.method public a(Z)Lorg/jsoup/Connection;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$b;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/jsoup/Connection$b;->a(Z)Lorg/jsoup/Connection$b;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 4

    .line 1
    const-string v0, "Must supply a valid URL"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$b;

    .line 7
    .line 8
    new-instance v1, Ljava/net/URL;

    .line 9
    .line 10
    invoke-static {p1}, Lorg/jsoup/helper/b;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Lorg/jsoup/Connection$a;->p(Ljava/net/URL;)Lorg/jsoup/Connection$a;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "Malformed URL: "

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    throw v1
.end method

.method public g()Lorg/jsoup/Connection$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$b;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/jsoup/helper/b$d;->K(Lorg/jsoup/Connection$b;)Lorg/jsoup/helper/b$d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lorg/jsoup/helper/b;->b:Lorg/jsoup/Connection$c;

    .line 8
    .line 9
    return-object v0
.end method

.method public get()Lorg/jsoup/nodes/Document;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/b;->a:Lorg/jsoup/Connection$b;

    .line 2
    .line 3
    sget-object v1, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lorg/jsoup/Connection$a;->r(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$a;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/jsoup/helper/b;->g()Lorg/jsoup/Connection$c;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/jsoup/helper/b;->b:Lorg/jsoup/Connection$c;

    .line 12
    .line 13
    invoke-interface {v0}, Lorg/jsoup/Connection$c;->m()Lorg/jsoup/nodes/Document;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method
