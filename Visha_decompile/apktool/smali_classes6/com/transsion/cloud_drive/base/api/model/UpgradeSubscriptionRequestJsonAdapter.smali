.class public final Lcom/transsion/cloud_drive/base/api/model/UpgradeSubscriptionRequestJsonAdapter;
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
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/UpgradeSubscriptionRequestJsonAdapter;",
        "Lcom/squareup/moshi/e;",
        "Lcom/transsion/cloud_drive/base/api/model/UpgradeSubscriptionRequest;",
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
        "(Lcom/squareup/moshi/JsonReader;)Lcom/transsion/cloud_drive/base/api/model/UpgradeSubscriptionRequest;",
        "Lrc5;",
        "writer",
        "value_",
        "Lzfb;",
        "toJson",
        "(Lrc5;Lcom/transsion/cloud_drive/base/api/model/UpgradeSubscriptionRequest;)V",
        "Lcom/squareup/moshi/JsonReader$b;",
        "options",
        "Lcom/squareup/moshi/JsonReader$b;",
        "stringAdapter",
        "Lcom/squareup/moshi/e;",
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
    .locals 3

    const-string v0, "moshi"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/squareup/moshi/e;-><init>()V

    const-string v0, "subscriberId"

    const-string v1, "productId"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/moshi/JsonReader$b;->a([Ljava/lang/String;)Lcom/squareup/moshi/JsonReader$b;

    move-result-object v0

    const-string v2, "of(...)"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/UpgradeSubscriptionRequestJsonAdapter;->options:Lcom/squareup/moshi/JsonReader$b;

    const-class v0, Ljava/lang/String;

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/squareup/moshi/j;->f(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/moshi/e;

    move-result-object p1

    const-string v0, "adapter(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/UpgradeSubscriptionRequestJsonAdapter;->stringAdapter:Lcom/squareup/moshi/e;

    return-void
.end method


# virtual methods
.method public fromJson(Lcom/squareup/moshi/JsonReader;)Lcom/transsion/cloud_drive/base/api/model/UpgradeSubscriptionRequest;
    .locals 6

    const-string v0, "reader"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->d()V

    const/4 v0, 0x0

    move-object v1, v0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->k()Z

    move-result v2

    const-string v3, "productId"

    const-string v4, "subscriberId"

    if-eqz v2, :cond_5

    .line 4
    iget-object v2, p0, Lcom/transsion/cloud_drive/base/api/model/UpgradeSubscriptionRequestJsonAdapter;->options:Lcom/squareup/moshi/JsonReader$b;

    invoke-virtual {p1, v2}, Lcom/squareup/moshi/JsonReader;->O(Lcom/squareup/moshi/JsonReader$b;)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_4

    const-string v5, "unexpectedNull(...)"

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/transsion/cloud_drive/base/api/model/UpgradeSubscriptionRequestJsonAdapter;->stringAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {v1, p1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v4, v4, p1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p0

    invoke-static {p0, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/UpgradeSubscriptionRequestJsonAdapter;->stringAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {v0, p1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v3, v3, p1}, Lwkb;->w(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p0

    invoke-static {p0, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_4
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->S()V

    .line 9
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->T()V

    goto :goto_0

    .line 10
    :cond_5
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->g()V

    .line 11
    new-instance p0, Lcom/transsion/cloud_drive/base/api/model/UpgradeSubscriptionRequest;

    .line 12
    const-string v2, "missingProperty(...)"

    if-eqz v0, :cond_7

    if-eqz v1, :cond_6

    .line 13
    invoke-direct {p0, v0, v1}, Lcom/transsion/cloud_drive/base/api/model/UpgradeSubscriptionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 14
    :cond_6
    invoke-static {v4, v4, p1}, Lwkb;->o(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p0

    invoke-static {p0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_7
    invoke-static {v3, v3, p1}, Lwkb;->o(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/moshi/JsonReader;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p0

    invoke-static {p0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/cloud_drive/base/api/model/UpgradeSubscriptionRequestJsonAdapter;->fromJson(Lcom/squareup/moshi/JsonReader;)Lcom/transsion/cloud_drive/base/api/model/UpgradeSubscriptionRequest;

    move-result-object p0

    return-object p0
.end method

.method public toJson(Lrc5;Lcom/transsion/cloud_drive/base/api/model/UpgradeSubscriptionRequest;)V
    .locals 2

    const-string v0, "writer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lrc5;->d()Lrc5;

    .line 3
    const-string v0, "productId"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    .line 4
    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/UpgradeSubscriptionRequestJsonAdapter;->stringAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/model/UpgradeSubscriptionRequest;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    .line 5
    const-string v0, "subscriberId"

    invoke-virtual {p1, v0}, Lrc5;->D(Ljava/lang/String;)Lrc5;

    .line 6
    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/UpgradeSubscriptionRequestJsonAdapter;->stringAdapter:Lcom/squareup/moshi/e;

    invoke-virtual {p2}, Lcom/transsion/cloud_drive/base/api/model/UpgradeSubscriptionRequest;->getSubscriberId()Ljava/lang/String;

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
    check-cast p2, Lcom/transsion/cloud_drive/base/api/model/UpgradeSubscriptionRequest;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud_drive/base/api/model/UpgradeSubscriptionRequestJsonAdapter;->toJson(Lrc5;Lcom/transsion/cloud_drive/base/api/model/UpgradeSubscriptionRequest;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x30

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "GeneratedJsonAdapter("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "UpgradeSubscriptionRequest"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
