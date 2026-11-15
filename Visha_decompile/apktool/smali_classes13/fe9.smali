.class public abstract Lfe9;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lru8;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lfe9;
    .locals 2

    invoke-static {p0, p1, p2}, Let8;->b(Lru8;Ljava/lang/Class;Ljava/lang/reflect/Method;)Let8;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lulb;->j(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    invoke-static {p0, p2, p1}, Llt4;->f(Lru8;Ljava/lang/reflect/Method;Let8;)Llt4;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Service methods cannot return void."

    invoke-static {p2, p1, p0}, Lulb;->n(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    const-string p0, "Method return type must not include a type variable or wildcard: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lulb;->n(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end method
