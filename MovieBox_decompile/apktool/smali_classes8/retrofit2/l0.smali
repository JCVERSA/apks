.class abstract Lretrofit2/l0;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static b(Lretrofit2/k0;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lretrofit2/l0;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2}, Lretrofit2/i0;->b(Lretrofit2/k0;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lretrofit2/i0;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lretrofit2/o0;->j(Ljava/lang/reflect/Type;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 17
    .line 18
    if-eq v1, v2, :cond_0

    .line 19
    .line 20
    invoke-static {p0, p2, p1}, Lretrofit2/u;->f(Lretrofit2/k0;Ljava/lang/reflect/Method;Lretrofit2/i0;)Lretrofit2/u;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    new-array p0, v0, [Ljava/lang/Object;

    .line 26
    .line 27
    const-string p1, "Service methods cannot return void."

    .line 28
    .line 29
    invoke-static {p2, p1, p0}, Lretrofit2/o0;->n(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    throw p0

    .line 34
    :cond_1
    const-string p0, "Method return type must not include a type variable or wildcard: %s"

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    new-array p1, p1, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object v1, p1, v0

    .line 40
    .line 41
    invoke-static {p2, p0, p1}, Lretrofit2/o0;->n(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    throw p0
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end method
