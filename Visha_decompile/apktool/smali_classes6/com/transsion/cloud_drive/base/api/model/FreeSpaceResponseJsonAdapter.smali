.class public final Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponseJsonAdapter;
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
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0019R\u001a\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u0019R\u001e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponseJsonAdapter;",
        "Lcom/squareup/moshi/e;",
        "Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;",
        "Lcom/squareup/moshi/j;",
        "moshi",
        "<init>",
        "(Lcom/squareup/moshi/j;)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "Lcom/squareup/moshi/JsonReader;",
        "reader",
        "fromJson",
        "(Lcom/squareup/moshi/JsonReader;)Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;",
        "Lrc5;",
        "writer",
        "value_",
        "Lzfb;",
        "toJson",
        "(Lrc5;Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;)V",
        "Lcom/squareup/moshi/JsonReader$b;",
        "options",
        "Lcom/squareup/moshi/JsonReader$b;",
        "",
        "longAdapter",
        "Lcom/squareup/moshi/e;",
        "",
        "intAdapter",
        "stringAdapter",
        "Ljava/lang/reflect/Constructor;",
        "constructorRef",
        "Ljava/lang/reflect/Constructor;",
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
.field private volatile constructorRef:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final intAdapter:Lcom/squareup/moshi/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/moshi/e;"
        }
    .end annotation
.end field

.field private final longAdapter:Lcom/squareup/moshi/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/moshi/e;"
        }
    .end annotation
.end field

.field private final options:Lcom/squareup/moshi/JsonReader$b;

.field private final stringAdapter:Lcom/squareup/moshi/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/moshi/e;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/squareup/moshi/j;)V
    .locals 5

    const-string v0, "moshi"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/squareup/moshi/e;-><init>()V

    const-string v0, "cloudSpaceSize"

    const-string v1, "effectiveDays"

    const-string v2, "bannerUrl"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/squareup/moshi/JsonReader$b;->a([Ljava/lang/String;)Lcom/squareup/moshi/JsonReader$b;

    move-result-object v3

    const-string v4, "of(...)"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponseJsonAdapter;->options:Lcom/squareup/moshi/JsonReader$b;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p1, v3, v4, v0}, Lcom/squareup/moshi/j;->f(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/moshi/e;

    move-result-object v0

    const-string v3, "adapter(...)"

    invoke-static {v0, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponseJsonAdapter;->longAdapter:Lcom/squareup/moshi/e;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p1, v0, v4, v1}, Lcom/squareup/moshi/j;->f(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/moshi/e;

    move-result-object v0

    invoke-static {v0, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponseJsonAdapter;->intAdapter:Lcom/squareup/moshi/e;

    const-class v0, Ljava/lang/String;

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/squareup/moshi/j;->f(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/moshi/e;

    move-result-object p1

    invoke-static {p1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponseJsonAdapter;->stringAdapter:Lcom/squareup/moshi/e;

    return-void
.end method


# virtual methods
.method public fromJson(Lcom/squareup/moshi/JsonReader;)Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;
    .locals 9

    const-string v0, "reader"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->d()V

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v5, v2

    move v4, v3

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->k()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 6
    iget-object v6, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponseJsonAdapter;->options:Lcom/squareup/moshi/JsonReader$b;

    invoke-virtual {p1, v6}, Lcom/squareup/moshi/JsonReader;->O(Lcom/squareup/moshi/JsonReader$b;)I

    move-result v6

    if-eq v6, v3, :cond_6

    const-string v7, "unexpectedNull(...)"

    if-eqz v6, :cond_4

    const/4 v8, 0x1

    if-eq v6, v8, :cond_2

    const/4 v8, 0x2

    if-eq v6, v8, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v5, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponseJsonAdapter;->stringAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {v5, p1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    and-int/lit8 v4, v4, -0x5

    goto :goto_0

    :cond_1
    const-string p0, "bannerUrl"

    invoke-static {p0, p0, p1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p0

    invoke-static {p0, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponseJsonAdapter;->intAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {v1, p1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    and-int/lit8 v4, v4, -0x3

    goto :goto_0

    :cond_3
    const-string p0, "effectiveDays"

    invoke-static {p0, p0, p1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p0

    invoke-static {p0, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponseJsonAdapter;->longAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {v0, p1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_5

    and-int/lit8 v4, v4, -0x2

    goto :goto_0

    .line 10
    :cond_5
    const-string p0, "cloudSpaceSize"

    invoke-static {p0, p0, p1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p0

    invoke-static {p0, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_6
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->S()V

    .line 12
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->T()V

    goto :goto_0

    .line 13
    :cond_7
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->g()V

    const/4 p1, -0x8

    if-ne v4, p1, :cond_8

    .line 14
    new-instance p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 17
    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v5, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, v2, v3, p1, v5}, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;-><init>(JILjava/lang/String;)V

    return-object p0

    .line 19
    :cond_8
    iget-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponseJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    if-nez p1, :cond_9

    .line 20
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    .line 21
    sget-object v7, Lwkb;->c:Ljava/lang/Class;

    filled-new-array {p1, v3, v6, v3, v7}, [Ljava/lang/Class;

    move-result-object p1

    .line 22
    const-class v3, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponseJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const-string p0, "also(...)"

    invoke-static {p1, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    :cond_9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 25
    filled-new-array {v0, v1, v5, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "newInstance(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;

    return-object p0
.end method

.method public bridge synthetic fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponseJsonAdapter;->fromJson(Lcom/squareup/moshi/JsonReader;)Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;

    move-result-object p0

    return-object p0
.end method

.method public toJson(Lrc5;Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lrc5;->d()Lrc5;

    .line 3
    const-string v0, "cloudSpaceSize"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    .line 4
    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponseJsonAdapter;->longAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->getCloudSpaceSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    .line 5
    const-string v0, "effectiveDays"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    .line 6
    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponseJsonAdapter;->intAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->getEffectiveDays()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    .line 7
    const-string v0, "bannerUrl"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    .line 8
    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponseJsonAdapter;->stringAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;->getBannerUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p1}, Lrc5;->h()Lrc5;

    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "value_ was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic toJson(Lrc5;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponseJsonAdapter;->toJson(Lrc5;Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "GeneratedJsonAdapter("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "FreeSpaceResponse"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
