.class public final Lcom/transsion/cloud_drive/base/api/model/CloudProductListJsonAdapter;
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
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R \u0010\u0019\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00170\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u001e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/CloudProductListJsonAdapter;",
        "Lcom/squareup/moshi/e;",
        "Lcom/transsion/cloud_drive/base/api/model/CloudProductList;",
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
        "(Lcom/squareup/moshi/JsonReader;)Lcom/transsion/cloud_drive/base/api/model/CloudProductList;",
        "Lrc5;",
        "writer",
        "value_",
        "Lzfb;",
        "toJson",
        "(Lrc5;Lcom/transsion/cloud_drive/base/api/model/CloudProductList;)V",
        "Lcom/squareup/moshi/JsonReader$b;",
        "options",
        "Lcom/squareup/moshi/JsonReader$b;",
        "",
        "Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;",
        "listOfCloudProductModelAdapter",
        "Lcom/squareup/moshi/e;",
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
            "Lcom/transsion/cloud_drive/base/api/model/CloudProductList;",
            ">;"
        }
    .end annotation
.end field

.field private final listOfCloudProductModelAdapter:Lcom/squareup/moshi/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/moshi/e;"
        }
    .end annotation
.end field

.field private final options:Lcom/squareup/moshi/JsonReader$b;


# direct methods
.method public constructor <init>(Lcom/squareup/moshi/j;)V
    .locals 3

    const-string v0, "moshi"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/squareup/moshi/e;-><init>()V

    const-string v0, "subscribed"

    const-string v1, "noSubscribed"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/moshi/JsonReader$b;->a([Ljava/lang/String;)Lcom/squareup/moshi/JsonReader$b;

    move-result-object v0

    const-string v1, "of(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductListJsonAdapter;->options:Lcom/squareup/moshi/JsonReader$b;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const-class v1, Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/util/List;

    invoke-static {v1, v0}, Lkdb;->j(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object v1

    const-string v2, "subscribedList"

    invoke-virtual {p1, v0, v1, v2}, Lcom/squareup/moshi/j;->f(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/moshi/e;

    move-result-object p1

    const-string v0, "adapter(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductListJsonAdapter;->listOfCloudProductModelAdapter:Lcom/squareup/moshi/e;

    return-void
.end method


# virtual methods
.method public fromJson(Lcom/squareup/moshi/JsonReader;)Lcom/transsion/cloud_drive/base/api/model/CloudProductList;
    .locals 8

    const-string v0, "reader"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->d()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    move-object v3, v0

    move-object v4, v3

    move v2, v1

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->k()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4
    iget-object v5, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductListJsonAdapter;->options:Lcom/squareup/moshi/JsonReader$b;

    invoke-virtual {p1, v5}, Lcom/squareup/moshi/JsonReader;->O(Lcom/squareup/moshi/JsonReader$b;)I

    move-result v5

    if-eq v5, v1, :cond_4

    const-string v6, "unexpectedNull(...)"

    if-eqz v5, :cond_2

    const/4 v7, 0x1

    if-eq v5, v7, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v4, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductListJsonAdapter;->listOfCloudProductModelAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {v4, p1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_1

    and-int/lit8 v2, v2, -0x3

    goto :goto_0

    .line 6
    :cond_1
    const-string p0, "unSubscribedList"

    const-string v0, "noSubscribed"

    invoke-static {p0, v0, p1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p0

    invoke-static {p0, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    iget-object v3, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductListJsonAdapter;->listOfCloudProductModelAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {v3, p1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_3

    and-int/lit8 v2, v2, -0x2

    goto :goto_0

    .line 8
    :cond_3
    const-string p0, "subscribedList"

    const-string v0, "subscribed"

    invoke-static {p0, v0, p1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p0

    invoke-static {p0, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_4
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->S()V

    .line 10
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->T()V

    goto :goto_0

    .line 11
    :cond_5
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->g()V

    const/4 p1, -0x4

    if-ne v2, p1, :cond_6

    .line 12
    new-instance p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductList;

    .line 13
    const-string p1, "null cannot be cast to non-null type kotlin.collections.List<com.transsion.cloud_drive.base.api.model.CloudProductModel>"

    invoke-static {v3, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {v4, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, v3, v4}, Lcom/transsion/cloud_drive/base/api/model/CloudProductList;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0

    .line 16
    :cond_6
    iget-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductListJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    if-nez p1, :cond_7

    .line 17
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 18
    sget-object v1, Lwkb;->c:Ljava/lang/Class;

    const-class v5, Ljava/util/List;

    filled-new-array {v5, v5, p1, v1}, [Ljava/lang/Class;

    move-result-object p1

    .line 19
    const-class v1, Lcom/transsion/cloud_drive/base/api/model/CloudProductList;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductListJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    .line 21
    const-string p0, "also(...)"

    invoke-static {p1, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    :cond_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 23
    filled-new-array {v3, v4, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 24
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "newInstance(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductList;

    return-object p0
.end method

.method public bridge synthetic fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/cloud_drive/base/api/model/CloudProductListJsonAdapter;->fromJson(Lcom/squareup/moshi/JsonReader;)Lcom/transsion/cloud_drive/base/api/model/CloudProductList;

    move-result-object p0

    return-object p0
.end method

.method public toJson(Lrc5;Lcom/transsion/cloud_drive/base/api/model/CloudProductList;)V
    .locals 2

    const-string v0, "writer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lrc5;->d()Lrc5;

    .line 3
    const-string v0, "subscribed"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    .line 4
    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductListJsonAdapter;->listOfCloudProductModelAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/model/CloudProductList;->getSubscribedList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    .line 5
    const-string v0, "noSubscribed"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    .line 6
    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudProductListJsonAdapter;->listOfCloudProductModelAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/model/CloudProductList;->getUnSubscribedList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p1}, Lrc5;->h()Lrc5;

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "value_ was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic toJson(Lrc5;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/cloud_drive/base/api/model/CloudProductList;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud_drive/base/api/model/CloudProductListJsonAdapter;->toJson(Lrc5;Lcom/transsion/cloud_drive/base/api/model/CloudProductList;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x26

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "GeneratedJsonAdapter("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CloudProductList"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
