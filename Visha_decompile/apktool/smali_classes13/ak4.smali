.class public final Lak4;
.super Lsi1$a;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0

    invoke-direct {p0}, Lsi1$a;-><init>()V

    iput-object p1, p0, Lak4;->a:Lcom/google/gson/Gson;

    return-void
.end method

.method public static a()Lak4;
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {v0}, Lak4;->b(Lcom/google/gson/Gson;)Lak4;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/google/gson/Gson;)Lak4;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lak4;

    invoke-direct {v0, p0}, Lak4;-><init>(Lcom/google/gson/Gson;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "gson == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lru8;)Lsi1;
    .locals 0

    iget-object p2, p0, Lak4;->a:Lcom/google/gson/Gson;

    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    new-instance p2, Lck4;

    iget-object p0, p0, Lak4;->a:Lcom/google/gson/Gson;

    invoke-direct {p2, p0, p1}, Lck4;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V

    return-object p2
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lru8;)Lsi1;
    .locals 0

    iget-object p2, p0, Lak4;->a:Lcom/google/gson/Gson;

    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    new-instance p2, Ldk4;

    iget-object p0, p0, Lak4;->a:Lcom/google/gson/Gson;

    invoke-direct {p2, p0, p1}, Ldk4;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V

    return-object p2
.end method
