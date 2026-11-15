.class public final Lbr6;
.super Lsi1$a;
.source "SourceFile"


# instance fields
.field public final a:Lcom/squareup/moshi/j;

.field public final b:Z

.field public final c:Z

.field public final d:Z


# direct methods
.method public constructor <init>(Lcom/squareup/moshi/j;ZZZ)V
    .locals 0

    invoke-direct {p0}, Lsi1$a;-><init>()V

    iput-object p1, p0, Lbr6;->a:Lcom/squareup/moshi/j;

    iput-boolean p2, p0, Lbr6;->b:Z

    iput-boolean p3, p0, Lbr6;->c:Z

    iput-boolean p4, p0, Lbr6;->d:Z

    return-void
.end method

.method public static a(Lcom/squareup/moshi/j;)Lbr6;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lbr6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1, v1}, Lbr6;-><init>(Lcom/squareup/moshi/j;ZZZ)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "moshi == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b([Ljava/lang/annotation/Annotation;)Ljava/util/Set;
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lub5;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lru8;)Lsi1;
    .locals 0

    iget-object p3, p0, Lbr6;->a:Lcom/squareup/moshi/j;

    invoke-static {p2}, Lbr6;->b([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/squareup/moshi/j;->e(Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/e;

    move-result-object p1

    iget-boolean p2, p0, Lbr6;->b:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/squareup/moshi/e;->lenient()Lcom/squareup/moshi/e;

    move-result-object p1

    :cond_0
    iget-boolean p2, p0, Lbr6;->c:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/squareup/moshi/e;->failOnUnknown()Lcom/squareup/moshi/e;

    move-result-object p1

    :cond_1
    iget-boolean p0, p0, Lbr6;->d:Z

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/squareup/moshi/e;->serializeNulls()Lcom/squareup/moshi/e;

    move-result-object p1

    :cond_2
    new-instance p0, Lcr6;

    invoke-direct {p0, p1}, Lcr6;-><init>(Lcom/squareup/moshi/e;)V

    return-object p0
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lru8;)Lsi1;
    .locals 0

    iget-object p3, p0, Lbr6;->a:Lcom/squareup/moshi/j;

    invoke-static {p2}, Lbr6;->b([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/squareup/moshi/j;->e(Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/e;

    move-result-object p1

    iget-boolean p2, p0, Lbr6;->b:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/squareup/moshi/e;->lenient()Lcom/squareup/moshi/e;

    move-result-object p1

    :cond_0
    iget-boolean p2, p0, Lbr6;->c:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/squareup/moshi/e;->failOnUnknown()Lcom/squareup/moshi/e;

    move-result-object p1

    :cond_1
    iget-boolean p0, p0, Lbr6;->d:Z

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/squareup/moshi/e;->serializeNulls()Lcom/squareup/moshi/e;

    move-result-object p1

    :cond_2
    new-instance p0, Ldr6;

    invoke-direct {p0, p1}, Ldr6;-><init>(Lcom/squareup/moshi/e;)V

    return-object p0
.end method
