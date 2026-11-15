.class public abstract Lcom/squareup/moshi/a$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Type;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/reflect/Method;

.field public final e:I

.field public final f:[Lcom/squareup/moshi/e;

.field public final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lwkb;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/moshi/a$f;->a:Ljava/lang/reflect/Type;

    iput-object p2, p0, Lcom/squareup/moshi/a$f;->b:Ljava/util/Set;

    iput-object p3, p0, Lcom/squareup/moshi/a$f;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/squareup/moshi/a$f;->d:Ljava/lang/reflect/Method;

    iput p6, p0, Lcom/squareup/moshi/a$f;->e:I

    sub-int/2addr p5, p6

    new-array p1, p5, [Lcom/squareup/moshi/e;

    iput-object p1, p0, Lcom/squareup/moshi/a$f;->f:[Lcom/squareup/moshi/e;

    iput-boolean p7, p0, Lcom/squareup/moshi/a$f;->g:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/moshi/j;Lcom/squareup/moshi/e$e;)V
    .locals 9

    iget-object v0, p0, Lcom/squareup/moshi/a$f;->f:[Lcom/squareup/moshi/e;

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/moshi/a$f;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/moshi/a$f;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    iget v2, p0, Lcom/squareup/moshi/a$f;->e:I

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aget-object v5, v1, v2

    invoke-static {v5}, Lwkb;->l([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/squareup/moshi/a$f;->f:[Lcom/squareup/moshi/e;

    iget v7, p0, Lcom/squareup/moshi/a$f;->e:I

    sub-int v7, v2, v7

    iget-object v8, p0, Lcom/squareup/moshi/a$f;->a:Ljava/lang/reflect/Type;

    invoke-static {v8, v4}, Lkdb;->d(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/squareup/moshi/a$f;->b:Ljava/util/Set;

    invoke-interface {v8, v5}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p1, p2, v4, v5}, Lcom/squareup/moshi/j;->h(Lcom/squareup/moshi/e$e;Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/e;

    move-result-object v4

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v4, v5}, Lcom/squareup/moshi/j;->e(Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/e;

    move-result-object v4

    :goto_1
    aput-object v4, v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Lcom/squareup/moshi/j;Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/squareup/moshi/a$f;->f:[Lcom/squareup/moshi/e;

    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    array-length p1, v0

    invoke-static {v0, v3, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    iget-object p1, p0, Lcom/squareup/moshi/a$f;->d:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/squareup/moshi/a$f;->c:Ljava/lang/Object;

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/squareup/moshi/a$f;->f:[Lcom/squareup/moshi/e;

    array-length v1, v0

    const/4 v2, 0x2

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const/4 p1, 0x1

    aput-object p2, v1, p1

    array-length p1, v0

    invoke-static {v0, v3, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    iget-object p1, p0, Lcom/squareup/moshi/a$f;->d:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/squareup/moshi/a$f;->c:Ljava/lang/Object;

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public e(Lcom/squareup/moshi/j;Lrc5;Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method
