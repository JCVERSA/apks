.class public abstract Lcom/mgtv/task/http/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/task/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mgtv/task/d<",
        "Lcom/mgtv/task/http/HttpResponseObject;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/mgtv/task/http/HttpTraceObject;

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 37
    :goto_0
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 38
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 39
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " extends "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": missing type parameter."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 42
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/task/http/c;->a(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 18
    const-class v1, Lcom/mgtv/json/JsonVoid;

    if-ne v0, v1, :cond_1

    .line 19
    new-instance p1, Lcom/mgtv/task/http/HttpCallBack$1;

    invoke-direct {p1, p0}, Lcom/mgtv/task/http/HttpCallBack$1;-><init>(Lcom/mgtv/task/http/c;)V

    return-object p1

    .line 20
    :cond_1
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_2

    .line 21
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 22
    :cond_2
    const-class v1, Lcom/google/gson/JsonObject;

    if-ne v0, v1, :cond_3

    .line 23
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    return-object p0

    .line 24
    :cond_3
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_5

    .line 25
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 26
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 27
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 28
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_5

    check-cast v2, Ljava/lang/Class;

    const-class v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const/4 v2, 0x0

    aget-object v3, v1, v2

    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_5

    const-class v4, Lcom/mgtv/json/JsonInterface;

    check-cast v3, Ljava/lang/Class;

    .line 29
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 30
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 31
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p0

    aget-object p1, v1, v2

    invoke-static {p0, p1}, Lcom/mgtv/json/a;->a(Lcom/google/gson/JsonArray;Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 32
    :cond_4
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p0

    .line 34
    aget-object p1, v1, v2

    invoke-static {p0, p1}, Lcom/mgtv/json/a;->a(Lcom/google/gson/JsonArray;Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 35
    :cond_5
    invoke-static {p1, v0}, Lcom/mgtv/json/a;->a(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/mgtv/task/http/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgtv/task/http/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    return-void
.end method

.method public a(Lcom/mgtv/task/http/HttpResponseObject;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6

    .line 5
    check-cast p2, Lcom/mgtv/task/http/HttpTraceObject;

    iput-object p2, p0, Lcom/mgtv/task/http/c;->b:Lcom/mgtv/task/http/HttpTraceObject;

    .line 6
    invoke-virtual {p2}, Lcom/mgtv/task/http/HttpTraceObject;->getHttpStatus()I

    move-result v2

    if-nez p3, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpResponseObject;->getCode()I

    move-result v3

    .line 8
    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpResponseObject;->getMsg()Ljava/lang/String;

    move-result-object v4

    .line 9
    iget-object p1, p0, Lcom/mgtv/task/http/c;->b:Lcom/mgtv/task/http/HttpTraceObject;

    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpTraceObject;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/mgtv/task/http/c;->c:Ljava/lang/Object;

    iget-object p1, p0, Lcom/mgtv/task/http/c;->b:Lcom/mgtv/task/http/HttpTraceObject;

    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpTraceObject;->getException()Ljava/lang/Exception;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mgtv/task/http/c;->a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/mgtv/task/http/c;->c:Ljava/lang/Object;

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/mgtv/task/http/c;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    new-instance v5, Lcom/mgtv/task/http/HttpFormatException;

    invoke-direct {v5}, Lcom/mgtv/task/http/HttpFormatException;-><init>()V

    .line 13
    iget-object p1, p0, Lcom/mgtv/task/http/c;->b:Lcom/mgtv/task/http/HttpTraceObject;

    invoke-virtual {p1, v5}, Lcom/mgtv/task/http/HttpTraceObject;->setException(Ljava/lang/Exception;)V

    .line 14
    iget-object v1, p0, Lcom/mgtv/task/http/c;->c:Ljava/lang/Object;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mgtv/task/http/c;->a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 15
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/mgtv/task/http/c;->c:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/mgtv/task/http/c;->a(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_4
    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v5, p3

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/mgtv/task/http/c;->a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/mgtv/task/http/c;->a(IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    check-cast p1, Lcom/mgtv/task/http/HttpResponseObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgtv/task/http/c;->a(Lcom/mgtv/task/http/HttpResponseObject;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a()Z
    .locals 0

    .line 3
    const/4 p0, 0x0

    return p0
.end method

.method public b(Lcom/mgtv/task/http/HttpResponseObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgtv/task/http/HttpResponseObject;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    iget-object v0, p1, Lcom/mgtv/task/http/HttpResponseObject;->channel:Lcom/mgtv/task/http/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/mgtv/task/http/c;->a(Lcom/mgtv/task/http/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/mgtv/task/http/HttpResponseObject;->data:Lcom/google/gson/JsonElement;

    invoke-virtual {p0, p1}, Lcom/mgtv/task/http/c;->a(Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/mgtv/task/http/HttpResponseObject;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/mgtv/task/http/HttpTraceObject;

    iput-object p2, p0, Lcom/mgtv/task/http/c;->b:Lcom/mgtv/task/http/HttpTraceObject;

    return-void
.end method

.method public abstract b(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mgtv/task/http/HttpResponseObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgtv/task/http/c;->b(Lcom/mgtv/task/http/HttpResponseObject;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lcom/mgtv/task/http/HttpResponseObject;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/mgtv/task/http/c;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lcom/mgtv/task/http/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mgtv/task/http/c;->b:Lcom/mgtv/task/http/HttpTraceObject;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgtv/task/http/HttpTraceObject;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_4

    .line 7
    :cond_1
    new-instance v0, Lcom/mgtv/task/http/HttpTraceObject;

    invoke-direct {v0}, Lcom/mgtv/task/http/HttpTraceObject;-><init>()V

    iput-object v0, p0, Lcom/mgtv/task/http/c;->b:Lcom/mgtv/task/http/HttpTraceObject;

    .line 8
    iget-object v0, p1, Lcom/mgtv/task/http/HttpResponseObject;->data:Lcom/google/gson/JsonElement;

    if-eqz v0, :cond_3

    .line 9
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mgtv/task/http/c;->b(Lcom/mgtv/task/http/HttpResponseObject;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/task/http/c;->c:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpResponseObject;->getCode()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    return-void

    .line 11
    :catch_0
    :cond_3
    iget-object p0, p0, Lcom/mgtv/task/http/c;->b:Lcom/mgtv/task/http/HttpTraceObject;

    new-instance p1, Lcom/mgtv/task/http/HttpFormatException;

    invoke-direct {p1}, Lcom/mgtv/task/http/HttpFormatException;-><init>()V

    invoke-virtual {p0, p1}, Lcom/mgtv/task/http/HttpTraceObject;->setException(Ljava/lang/Exception;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgtv/task/http/HttpResponseObject;

    invoke-virtual {p0, p1}, Lcom/mgtv/task/http/c;->c(Lcom/mgtv/task/http/HttpResponseObject;)V

    return-void
.end method

.method public c(Lcom/mgtv/task/http/HttpResponseObject;Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 0

    if-nez p3, :cond_1

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpResponseObject;->getCode()I

    move-result p0

    const/16 p1, 0xc8

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 0

    .line 3
    check-cast p1, Lcom/mgtv/task/http/HttpResponseObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgtv/task/http/c;->c(Lcom/mgtv/task/http/HttpResponseObject;Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public d(Lcom/mgtv/task/http/HttpResponseObject;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    check-cast p2, Lcom/mgtv/task/http/HttpTraceObject;

    iput-object p2, p0, Lcom/mgtv/task/http/c;->b:Lcom/mgtv/task/http/HttpTraceObject;

    .line 4
    invoke-virtual {p2}, Lcom/mgtv/task/http/HttpTraceObject;->getHttpStatus()I

    move-result p2

    if-nez p3, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/mgtv/task/http/HttpResponseObject;->getCode()I

    move-result p3

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_2

    if-eq p3, v0, :cond_1

    if-nez p3, :cond_2

    .line 6
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mgtv/task/http/c;->b(Lcom/mgtv/task/http/HttpResponseObject;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/task/http/c;->c:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Lcom/mgtv/task/http/HttpFormatException;

    invoke-direct {p2, p1}, Lcom/mgtv/task/http/HttpFormatException;-><init>(Ljava/lang/Throwable;)V

    .line 8
    iget-object p0, p0, Lcom/mgtv/task/http/c;->b:Lcom/mgtv/task/http/HttpTraceObject;

    invoke-virtual {p0, p2}, Lcom/mgtv/task/http/HttpTraceObject;->setException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 9
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/mgtv/task/http/c;->b(Lcom/mgtv/task/http/HttpResponseObject;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/task/http/c;->c:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    :goto_0
    new-instance p1, Lcom/mgtv/task/http/BusinessCodeException;

    invoke-direct {p1}, Lcom/mgtv/task/http/BusinessCodeException;-><init>()V

    .line 12
    iget-object p0, p0, Lcom/mgtv/task/http/c;->b:Lcom/mgtv/task/http/HttpTraceObject;

    invoke-virtual {p0, p1}, Lcom/mgtv/task/http/HttpTraceObject;->setException(Ljava/lang/Exception;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mgtv/task/http/HttpResponseObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgtv/task/http/c;->d(Lcom/mgtv/task/http/HttpResponseObject;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public d()Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/mgtv/task/http/c;->a:Z

    return p0
.end method

.method public e()Lcom/mgtv/task/http/HttpTraceObject;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/task/http/c;->b:Lcom/mgtv/task/http/HttpTraceObject;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    const-string p0, "list"

    return-object p0
.end method
