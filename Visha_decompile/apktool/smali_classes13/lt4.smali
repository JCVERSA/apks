.class public abstract Llt4;
.super Lfe9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llt4$b;,
        Llt4$c;,
        Llt4$a;
    }
.end annotation


# instance fields
.field public final a:Let8;

.field public final b:Lokhttp3/Call$Factory;

.field public final c:Lsi1;


# direct methods
.method public constructor <init>(Let8;Lokhttp3/Call$Factory;Lsi1;)V
    .locals 0

    invoke-direct {p0}, Lfe9;-><init>()V

    iput-object p1, p0, Llt4;->a:Let8;

    iput-object p2, p0, Llt4;->b:Lokhttp3/Call$Factory;

    iput-object p3, p0, Llt4;->c:Lsi1;

    return-void
.end method

.method public static d(Lru8;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Llq0;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lru8;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Llq0;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p3, "Unable to create call adapter for %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p3, p2}, Lulb;->o(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static e(Lru8;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;)Lsi1;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, p2, v0}, Lru8;->h(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lsi1;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Unable to create converter for %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, v0, p2}, Lulb;->o(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static f(Lru8;Ljava/lang/reflect/Method;Let8;)Llt4;
    .locals 12

    const/4 v0, 0x1

    iget-boolean v1, p2, Let8;->l:Z

    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    const-class v3, Lgu8;

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v5

    array-length v6, v5

    sub-int/2addr v6, v0

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v4, v5}, Lulb;->f(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v5}, Lulb;->h(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljq0;

    if-ne v6, v3, :cond_0

    instance-of v6, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_0

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v4, v5}, Lulb;->g(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v5

    move v8, v0

    move v6, v4

    goto :goto_0

    :cond_0
    invoke-static {v5}, Lulb;->h(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    if-eq v6, v7, :cond_1

    invoke-static {v5}, Lulb;->m(Ljava/lang/reflect/Type;)Z

    move-result v6

    move v8, v4

    :goto_0
    new-instance v9, Lulb$b;

    const/4 v10, 0x0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    aput-object v5, v0, v4

    invoke-direct {v9, v10, v7, v0}, Lulb$b;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    invoke-static {v2}, Llp9;->a([Ljava/lang/annotation/Annotation;)[Ljava/lang/annotation/Annotation;

    move-result-object v2

    move v11, v6

    goto :goto_1

    :cond_1
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v4, v5}, Lulb;->g(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Suspend functions should not return Call, as they already execute asynchronously.\nChange its return type to %s"

    invoke-static {p1, p2, p0}, Lulb;->n(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v9

    move v8, v4

    move v11, v8

    :goto_1
    invoke-static {p0, p1, v9, v2}, Llt4;->d(Lru8;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Llq0;

    move-result-object v9

    invoke-interface {v9}, Llq0;->responseType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v2, Lokhttp3/Response;

    if-eq v0, v2, :cond_8

    if-eq v0, v3, :cond_7

    iget-object v2, p2, Let8;->d:Ljava/lang/String;

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-class v2, Ljava/lang/Void;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0}, Lulb;->m(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const-string p0, "HEAD method must use Void or Unit as response type."

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {p1, p0, p2}, Lulb;->n(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_4
    :goto_2
    invoke-static {p0, p1, v0}, Llt4;->e(Lru8;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;)Lsi1;

    move-result-object p1

    iget-object v7, p0, Lru8;->b:Lokhttp3/Call$Factory;

    if-nez v1, :cond_5

    new-instance p0, Llt4$a;

    invoke-direct {p0, p2, v7, p1, v9}, Llt4$a;-><init>(Let8;Lokhttp3/Call$Factory;Lsi1;Llq0;)V

    return-object p0

    :cond_5
    if-eqz v8, :cond_6

    new-instance p0, Llt4$c;

    invoke-direct {p0, p2, v7, p1, v9}, Llt4$c;-><init>(Let8;Lokhttp3/Call$Factory;Lsi1;Llq0;)V

    return-object p0

    :cond_6
    new-instance p0, Llt4$b;

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, p2

    move-object v8, p1

    invoke-direct/range {v5 .. v11}, Llt4$b;-><init>(Let8;Lokhttp3/Call$Factory;Lsi1;Llq0;ZZ)V

    return-object p0

    :cond_7
    const-string p0, "Response must include generic type (e.g., Response<String>)"

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {p1, p0, p2}, Lulb;->n(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\'"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lulb;->h(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' is not a valid response body type. Did you mean ResponseBody?"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {p1, p0, p2}, Lulb;->n(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    new-instance v6, Lge7;

    iget-object v1, p0, Llt4;->a:Let8;

    iget-object v4, p0, Llt4;->b:Lokhttp3/Call$Factory;

    iget-object v5, p0, Llt4;->c:Lsi1;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lge7;-><init>(Let8;Ljava/lang/Object;[Ljava/lang/Object;Lokhttp3/Call$Factory;Lsi1;)V

    invoke-virtual {p0, v6, p2}, Llt4;->c(Ljq0;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract c(Ljq0;[Ljava/lang/Object;)Ljava/lang/Object;
.end method
