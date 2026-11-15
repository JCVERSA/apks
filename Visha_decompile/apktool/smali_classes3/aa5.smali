.class public final Laa5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Stack;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Laa5;->a:Ljava/util/Stack;

    iput-object p1, p0, Laa5;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Laa5;
    .locals 1

    new-instance v0, Lcom/grack/nanojson/JsonArray;

    invoke-direct {v0}, Lcom/grack/nanojson/JsonArray;-><init>()V

    invoke-virtual {p0, p1, v0}, Laa5;->g(Ljava/lang/String;Ljava/lang/Object;)Laa5;

    iget-object p1, p0, Laa5;->a:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public b()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Laa5;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public c()Laa5;
    .locals 2

    iget-object v0, p0, Laa5;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Laa5;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Lcom/grack/nanojson/JsonWriterException;

    const-string v0, "Cannot end the root object or array"

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()Lcom/grack/nanojson/JsonObject;
    .locals 1

    :try_start_0
    iget-object p0, p0, Laa5;->a:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lcom/grack/nanojson/JsonWriterException;

    const-string v0, "Attempted to write a keyed value to a JsonArray"

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e(Ljava/lang/String;)Laa5;
    .locals 1

    new-instance v0, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0}, Lcom/grack/nanojson/JsonObject;-><init>()V

    invoke-virtual {p0, p1, v0}, Laa5;->g(Ljava/lang/String;Ljava/lang/Object;)Laa5;

    iget-object p1, p0, Laa5;->a:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public f(Ljava/lang/String;I)Laa5;
    .locals 0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Laa5;->g(Ljava/lang/String;Ljava/lang/Object;)Laa5;

    move-result-object p0

    return-object p0
.end method

.method public g(Ljava/lang/String;Ljava/lang/Object;)Laa5;
    .locals 1

    invoke-virtual {p0}, Laa5;->d()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Laa5;
    .locals 0

    invoke-virtual {p0, p1, p2}, Laa5;->g(Ljava/lang/String;Ljava/lang/Object;)Laa5;

    move-result-object p0

    return-object p0
.end method

.method public i(Ljava/lang/String;Z)Laa5;
    .locals 0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Laa5;->g(Ljava/lang/String;Ljava/lang/Object;)Laa5;

    move-result-object p0

    return-object p0
.end method
