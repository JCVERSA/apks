.class public Ll/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snaptube/search/IHttpHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    invoke-static {}, Ls/d;->a()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    const/4 v4, 0x0

    .line 9
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const-string v5, "com.snaptube.search.SearchHostHelper"

    .line 14
    .line 15
    invoke-virtual {v3, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v5, "getInstance"

    .line 20
    .line 21
    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v5, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    new-array v6, v2, [Ljava/lang/Class;

    .line 30
    .line 31
    const-class v7, Ljava/lang/String;

    .line 32
    .line 33
    aput-object v7, v6, v1

    .line 34
    .line 35
    const-class v7, Ljava/util/Map;

    .line 36
    .line 37
    aput-object v7, v6, v0

    .line 38
    .line 39
    invoke-virtual {v3, p0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    new-array v2, v2, [Ljava/lang/Object;

    .line 44
    .line 45
    aput-object p1, v2, v1

    .line 46
    .line 47
    aput-object p2, v2, v0

    .line 48
    .line 49
    invoke-virtual {p0, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-object p0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    invoke-static {p0, v4}, Lm/c;->a(Ljava/lang/Throwable;Lcom/snaptube/premium/search/plugin/log/SearchError;)Lcom/snaptube/premium/search/plugin/log/SearchException;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    throw p0
.end method


# virtual methods
.method public httpGetByteStream(Ljava/lang/String;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 1

    .line 1
    const-string v0, "httpGetByteStream"

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Ll/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/io/InputStream;

    .line 8
    .line 9
    return-object p1
.end method

.method public httpGetCharStream(Ljava/lang/String;Ljava/util/Map;)Ljava/io/Reader;
    .locals 1

    .line 1
    const-string v0, "httpGetCharStream"

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Ll/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/io/Reader;

    .line 8
    .line 9
    return-object p1
.end method

.method public httpGetString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "httpGetString"

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Ll/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    return-object p1
.end method
