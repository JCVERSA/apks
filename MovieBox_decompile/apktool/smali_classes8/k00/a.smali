.class public final Lk00/a;
.super Lretrofit2/k$a;
.source "source.java"


# instance fields
.field private final a:Lcom/google/gson/Gson;


# direct methods
.method private constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lretrofit2/k$a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk00/a;->a:Lcom/google/gson/Gson;

    .line 5
    .line 6
    return-void
.end method

.method public static f()Lk00/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lk00/a;->g(Lcom/google/gson/Gson;)Lk00/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public static g(Lcom/google/gson/Gson;)Lk00/a;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Lk00/a;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lk00/a;-><init>(Lcom/google/gson/Gson;)V

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 10
    .line 11
    const-string v0, "gson == null"

    .line 12
    .line 13
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p0
.end method


# virtual methods
.method public c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/k0;)Lretrofit2/k;
    .locals 0

    .line 1
    iget-object p2, p0, Lk00/a;->a:Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance p2, Lk00/b;

    .line 12
    .line 13
    iget-object p3, p0, Lk00/a;->a:Lcom/google/gson/Gson;

    .line 14
    .line 15
    invoke-direct {p2, p3, p1}, Lk00/b;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V

    .line 16
    .line 17
    .line 18
    return-object p2
.end method

.method public d(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/k0;)Lretrofit2/k;
    .locals 0

    .line 1
    iget-object p2, p0, Lk00/a;->a:Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance p2, Lk00/c;

    .line 12
    .line 13
    iget-object p3, p0, Lk00/a;->a:Lcom/google/gson/Gson;

    .line 14
    .line 15
    invoke-direct {p2, p3, p1}, Lk00/c;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V

    .line 16
    .line 17
    .line 18
    return-object p2
.end method
