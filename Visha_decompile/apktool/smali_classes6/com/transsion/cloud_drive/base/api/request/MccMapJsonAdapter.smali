.class public final Lcom/transsion/cloud_drive/base/api/request/MccMapJsonAdapter;
.super Lcom/squareup/moshi/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/moshi/e;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0016\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0015R\u001a\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0017R\u001e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/request/MccMapJsonAdapter;",
        "Lcom/squareup/moshi/e;",
        "Lcom/transsion/cloud_drive/base/api/request/MccMap;",
        "Lcom/squareup/moshi/j;",
        "moshi",
        "<init>",
        "(Lcom/squareup/moshi/j;)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "Lcom/squareup/moshi/JsonReader;",
        "reader",
        "a",
        "(Lcom/squareup/moshi/JsonReader;)Lcom/transsion/cloud_drive/base/api/request/MccMap;",
        "Lrc5;",
        "writer",
        "value_",
        "Lzfb;",
        "b",
        "(Lrc5;Lcom/transsion/cloud_drive/base/api/request/MccMap;)V",
        "Lcom/squareup/moshi/JsonReader$b;",
        "Lcom/squareup/moshi/JsonReader$b;",
        "options",
        "Lcom/squareup/moshi/e;",
        "stringAdapter",
        "Ljava/lang/reflect/Constructor;",
        "c",
        "Ljava/lang/reflect/Constructor;",
        "constructorRef",
        "cloud-drive-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/squareup/moshi/JsonReader$b;

.field public final b:Lcom/squareup/moshi/e;

.field public volatile c:Ljava/lang/reflect/Constructor;


# direct methods
.method public constructor <init>(Lcom/squareup/moshi/j;)V
    .locals 4

    const-string v0, "moshi"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/squareup/moshi/e;-><init>()V

    const-string v0, "accountMcc"

    const-string v1, "simMcc"

    const-string v2, "ipMcc"

    const-string v3, "oobeMcc"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/moshi/JsonReader$b;->a([Ljava/lang/String;)Lcom/squareup/moshi/JsonReader$b;

    move-result-object v0

    const-string v1, "of(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/cloud_drive/base/api/request/MccMapJsonAdapter;->a:Lcom/squareup/moshi/JsonReader$b;

    const-class v0, Ljava/lang/String;

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/squareup/moshi/j;->f(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/moshi/e;

    move-result-object p1

    const-string v0, "adapter(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/request/MccMapJsonAdapter;->b:Lcom/squareup/moshi/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/moshi/JsonReader;)Lcom/transsion/cloud_drive/base/api/request/MccMap;
    .locals 12

    const-string v0, "reader"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->d()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->k()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/transsion/cloud_drive/base/api/request/MccMapJsonAdapter;->a:Lcom/squareup/moshi/JsonReader$b;

    invoke-virtual {p1, v6}, Lcom/squareup/moshi/JsonReader;->O(Lcom/squareup/moshi/JsonReader$b;)I

    move-result v6

    if-eq v6, v1, :cond_8

    const-string v7, "unexpectedNull(...)"

    if-eqz v6, :cond_6

    const/4 v8, 0x1

    if-eq v6, v8, :cond_4

    const/4 v8, 0x2

    if-eq v6, v8, :cond_2

    const/4 v8, 0x3

    if-eq v6, v8, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/transsion/cloud_drive/base/api/request/MccMapJsonAdapter;->b:Lcom/squareup/moshi/e;

    invoke-virtual {v5, p1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    and-int/lit8 v0, v0, -0x9

    goto :goto_0

    :cond_1
    const-string p0, "simMcc"

    invoke-static {p0, p0, p1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p0

    invoke-static {p0, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v4, p0, Lcom/transsion/cloud_drive/base/api/request/MccMapJsonAdapter;->b:Lcom/squareup/moshi/e;

    invoke-virtual {v4, p1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    and-int/lit8 v0, v0, -0x5

    goto :goto_0

    :cond_3
    const-string p0, "accountMcc"

    invoke-static {p0, p0, p1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p0

    invoke-static {p0, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object v3, p0, Lcom/transsion/cloud_drive/base/api/request/MccMapJsonAdapter;->b:Lcom/squareup/moshi/e;

    invoke-virtual {v3, p1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_5

    and-int/lit8 v0, v0, -0x3

    goto :goto_0

    :cond_5
    const-string p0, "oobeMcc"

    invoke-static {p0, p0, p1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p0

    invoke-static {p0, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw p0

    :cond_6
    iget-object v2, p0, Lcom/transsion/cloud_drive/base/api/request/MccMapJsonAdapter;->b:Lcom/squareup/moshi/e;

    invoke-virtual {v2, p1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_7

    and-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_7
    const-string p0, "ipMcc"

    invoke-static {p0, p0, p1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p0

    invoke-static {p0, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->S()V

    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->T()V

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->g()V

    const/16 p1, -0x10

    if-ne v0, p1, :cond_a

    new-instance p0, Lcom/transsion/cloud_drive/base/api/request/MccMap;

    const-string p1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v2, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/transsion/cloud_drive/base/api/request/MccMap;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_a
    iget-object p1, p0, Lcom/transsion/cloud_drive/base/api/request/MccMapJsonAdapter;->c:Ljava/lang/reflect/Constructor;

    if-nez p1, :cond_b

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v11, Lwkb;->c:Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const-class v7, Ljava/lang/String;

    const-class v8, Ljava/lang/String;

    const-class v9, Ljava/lang/String;

    filled-new-array/range {v6 .. v11}, [Ljava/lang/Class;

    move-result-object p1

    const-class v1, Lcom/transsion/cloud_drive/base/api/request/MccMap;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/request/MccMapJsonAdapter;->c:Ljava/lang/reflect/Constructor;

    const-string p0, "also(...)"

    invoke-static {p1, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "newInstance(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/transsion/cloud_drive/base/api/request/MccMap;

    return-object p0
.end method

.method public b(Lrc5;Lcom/transsion/cloud_drive/base/api/request/MccMap;)V
    .locals 2

    const-string v0, "writer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lrc5;->d()Lrc5;

    const-string v0, "ipMcc"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/request/MccMapJsonAdapter;->b:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/request/MccMap;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    const-string v0, "oobeMcc"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/request/MccMapJsonAdapter;->b:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/request/MccMap;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    const-string v0, "accountMcc"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/request/MccMapJsonAdapter;->b:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/request/MccMap;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    const-string v0, "simMcc"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/request/MccMapJsonAdapter;->b:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/request/MccMap;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lrc5;->h()Lrc5;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "value_ was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud_drive/base/api/request/MccMapJsonAdapter;->a(Lcom/squareup/moshi/JsonReader;)Lcom/transsion/cloud_drive/base/api/request/MccMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toJson(Lrc5;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/cloud_drive/base/api/request/MccMap;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud_drive/base/api/request/MccMapJsonAdapter;->b(Lrc5;Lcom/transsion/cloud_drive/base/api/request/MccMap;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "GeneratedJsonAdapter("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MccMap"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
