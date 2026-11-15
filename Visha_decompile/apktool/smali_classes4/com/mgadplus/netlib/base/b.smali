.class public abstract Lcom/mgadplus/netlib/base/b;
.super La9d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<jsonclasstype:",
        "Ljava/lang/Object;",
        ">",
        "La9d;"
    }
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Tjsonclasstype;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, La9d;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mgadplus/netlib/base/b;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgadplus/netlib/base/b;->e:Z

    return-void
.end method

.method private a(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lcom/google/gson/JsonElement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            ")Tjsonclasstype;"
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/mgadplus/netlib/base/b;->a(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 9
    const-class v1, Lcom/mgadplus/netlib/json/JsonVoid;

    if-ne v0, v1, :cond_0

    .line 10
    new-instance p1, Lcom/mgadplus/netlib/base/FzHttpListener$1;

    invoke-direct {p1, p0}, Lcom/mgadplus/netlib/base/FzHttpListener$1;-><init>(Lcom/mgadplus/netlib/base/b;)V

    return-object p1

    .line 11
    :cond_0
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 13
    :cond_1
    const-class v1, Lcom/google/gson/JsonObject;

    if-ne v0, v1, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    return-object p0

    .line 15
    :cond_2
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_4

    .line 16
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 17
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 18
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 19
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_4

    check-cast v2, Ljava/lang/Class;

    const-class v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v2, 0x0

    aget-object v3, v1, v2

    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_4

    const-class v4, Lcom/mgadplus/netlib/json/a;

    check-cast v3, Ljava/lang/Class;

    .line 20
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 21
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p0

    aget-object p1, v1, v2

    invoke-static {p0, p1}, Lcom/mgadplus/netlib/json/b;->a(Lcom/google/gson/JsonArray;Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 23
    :cond_3
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mgadplus/netlib/base/b;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p0

    .line 25
    aget-object p1, v1, v2

    invoke-static {p0, p1}, Lcom/mgadplus/netlib/json/b;->a(Lcom/google/gson/JsonArray;Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 26
    :cond_4
    invoke-static {p1, v0}, Lcom/mgadplus/netlib/json/b;->b(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
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

    .line 28
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 29
    :goto_0
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 30
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 31
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    .line 32
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

    .line 33
    :cond_1
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 34
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/mgadplus/netlib/base/FzHttpResponseObject;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/mgadplus/netlib/base/FzHttpResponseObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mgadplus/netlib/base/FzHttpResponseObject;",
            ")Tjsonclasstype;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    iget-object p1, p1, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->data:Lcom/google/gson/JsonElement;

    invoke-direct {p0, p1}, Lcom/mgadplus/netlib/base/b;->a(Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract a(IILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public a(Lcom/mgadplus/netlib/base/e;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Lcgd;->e()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception task"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcgd;->e()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mgmi"

    invoke-static {p1, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcgd;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgadplus/netlib/base/FzHttpResponseObject;

    .line 5
    invoke-virtual {p1}, Lcom/mgadplus/netlib/base/e;->a()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcgd;->e()Ljava/lang/Exception;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/mgadplus/netlib/base/b;->a(Lcom/mgadplus/netlib/base/FzHttpResponseObject;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mgadplus/netlib/base/b;->f:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p1, p0}, Lcgd;->a(Ljava/lang/Exception;)Lcgd;

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mgadplus/netlib/base/e;

    invoke-virtual {p0, p1}, Lcom/mgadplus/netlib/base/b;->b(Lcom/mgadplus/netlib/base/e;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/mgadplus/netlib/base/b;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/mgadplus/netlib/base/b;->e:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 14
    const-string p0, "list"

    return-object p0
.end method

.method public b(Lcom/mgadplus/netlib/base/e;)V
    .locals 8

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/mgadplus/netlib/base/b;->a(Z)V

    .line 2
    invoke-virtual {p1}, Lcom/mgadplus/netlib/base/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgadplus/netlib/base/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcgd;->e()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/mgadplus/netlib/base/e;->a()I

    move-result v2

    invoke-virtual {p1}, Lcgd;->e()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcgd;->e()Ljava/lang/Exception;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mgadplus/netlib/base/e;->b()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mgadplus/netlib/base/b;->a(IILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/mgadplus/netlib/base/e;->a()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/mgadplus/netlib/base/e;->a()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgadplus/netlib/base/e;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/mgadplus/netlib/base/e;->b()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/mgadplus/netlib/base/b;->a(IILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcgd;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgadplus/netlib/base/FzHttpResponseObject;

    invoke-virtual {v0}, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->getCode()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcgd;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgadplus/netlib/base/FzHttpResponseObject;

    invoke-virtual {v0}, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->getCode()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/mgadplus/netlib/base/e;->a()I

    move-result v3

    invoke-virtual {p1}, Lcgd;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgadplus/netlib/base/FzHttpResponseObject;

    invoke-virtual {v0}, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->getCode()I

    move-result v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logic error cause code"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcgd;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgadplus/netlib/base/FzHttpResponseObject;

    invoke-virtual {v1}, Lcom/mgadplus/netlib/base/FzHttpResponseObject;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 9
    invoke-virtual {p1}, Lcom/mgadplus/netlib/base/e;->b()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    .line 10
    invoke-virtual/range {v2 .. v7}, Lcom/mgadplus/netlib/base/b;->a(IILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/mgadplus/netlib/base/b;->f:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p0, v0}, Lcom/mgadplus/netlib/base/b;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p1}, Lcom/mgadplus/netlib/base/e;->a()I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/mgadplus/netlib/base/e;->b()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    const-string v4, "unknown error"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/mgadplus/netlib/base/b;->a(IILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public abstract b(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tjsonclasstype;)V"
        }
    .end annotation
.end method

.method public c()J
    .locals 4

    .line 2
    iget-wide v0, p0, Lcom/mgadplus/netlib/base/b;->b:J

    iget-wide v2, p0, Lcom/mgadplus/netlib/base/b;->a:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mgadplus/netlib/base/e;

    invoke-virtual {p0, p1}, Lcom/mgadplus/netlib/base/b;->a(Lcom/mgadplus/netlib/base/e;)V

    return-void
.end method

.method public d()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mgadplus/netlib/base/b;->a:J

    return-void
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/mgadplus/netlib/base/b;->a:J

    return-wide v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/mgadplus/netlib/base/b;->b:J

    return-wide v0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/netlib/base/b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/netlib/base/b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgadplus/netlib/base/b;->e:Z

    return p0
.end method
