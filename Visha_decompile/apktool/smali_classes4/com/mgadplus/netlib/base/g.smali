.class public Lcom/mgadplus/netlib/base/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgadplus/netlib/base/g$a;
    }
.end annotation


# instance fields
.field private boundary:Ljava/lang/String;

.field private parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgadplus/netlib/base/g$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgadplus/netlib/base/g;->boundary:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgadplus/netlib/base/g;->parts:Ljava/util/List;

    return-void
.end method

.method private put(Ljava/lang/String;Lcom/mgadplus/netlib/base/g$a;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mgadplus/netlib/base/g$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    iget-object v0, p0, Lcom/mgadplus/netlib/base/g;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgadplus/netlib/base/g$a;

    .line 19
    iget-object v2, v2, Lcom/mgadplus/netlib/base/g$a;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    if-nez p2, :cond_2

    if-eq v1, v3, :cond_4

    .line 20
    iget-object p0, p0, Lcom/mgadplus/netlib/base/g;->parts:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 21
    :cond_2
    iput-object p1, p2, Lcom/mgadplus/netlib/base/g$a;->name:Ljava/lang/String;

    if-eq v1, v3, :cond_3

    .line 22
    iget-object p0, p0, Lcom/mgadplus/netlib/base/g;->parts:Ljava/util/List;

    invoke-interface {p0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 23
    :cond_3
    iget-object p0, p0, Lcom/mgadplus/netlib/base/g;->parts:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public getBoundary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/netlib/base/g;->boundary:Ljava/lang/String;

    return-object p0
.end method

.method public getParts()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mgadplus/netlib/base/g$a;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgadplus/netlib/base/g;->parts:Ljava/util/List;

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgadplus/netlib/base/g;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lcom/mgadplus/netlib/base/g$a;

    invoke-direct {v1, v0}, Lcom/mgadplus/netlib/base/g$a;-><init>(Lcom/mgadplus/netlib/base/g$1;)V

    .line 2
    iput-object p2, v1, Lcom/mgadplus/netlib/base/g$a;->value:Ljava/lang/String;

    move-object v0, v1

    .line 3
    :goto_0
    const-string p2, "text/plain"

    iput-object p2, v0, Lcom/mgadplus/netlib/base/g$a;->contentType:Ljava/lang/String;

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/mgadplus/netlib/base/g;->put(Ljava/lang/String;Lcom/mgadplus/netlib/base/g$a;)V

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/mgadplus/netlib/base/g;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 13
    new-instance v0, Lcom/mgadplus/netlib/base/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mgadplus/netlib/base/g$a;-><init>(Lcom/mgadplus/netlib/base/g$1;)V

    .line 14
    iput-object p2, v0, Lcom/mgadplus/netlib/base/g$a;->fileName:Ljava/lang/String;

    .line 15
    iput-object p3, v0, Lcom/mgadplus/netlib/base/g$a;->contentType:Ljava/lang/String;

    .line 16
    iput-object p4, v0, Lcom/mgadplus/netlib/base/g$a;->file:Ljava/io/File;

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/mgadplus/netlib/base/g;->put(Ljava/lang/String;Lcom/mgadplus/netlib/base/g$a;)V

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/mgadplus/netlib/base/g;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    new-instance p4, Lcom/mgadplus/netlib/base/g$a;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lcom/mgadplus/netlib/base/g$a;-><init>(Lcom/mgadplus/netlib/base/g$1;)V

    .line 6
    iput-object p2, p4, Lcom/mgadplus/netlib/base/g$a;->fileName:Ljava/lang/String;

    .line 7
    iput-object p3, p4, Lcom/mgadplus/netlib/base/g$a;->contentType:Ljava/lang/String;

    .line 8
    invoke-direct {p0, p1, p4}, Lcom/mgadplus/netlib/base/g;->put(Ljava/lang/String;Lcom/mgadplus/netlib/base/g$a;)V

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)Lcom/mgadplus/netlib/base/g;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    new-instance p4, Lcom/mgadplus/netlib/base/g$a;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Lcom/mgadplus/netlib/base/g$a;-><init>(Lcom/mgadplus/netlib/base/g$1;)V

    .line 10
    iput-object p2, p4, Lcom/mgadplus/netlib/base/g$a;->fileName:Ljava/lang/String;

    .line 11
    iput-object p3, p4, Lcom/mgadplus/netlib/base/g$a;->contentType:Ljava/lang/String;

    .line 12
    invoke-direct {p0, p1, p4}, Lcom/mgadplus/netlib/base/g;->put(Ljava/lang/String;Lcom/mgadplus/netlib/base/g$a;)V

    return-object p0
.end method

.method public setBoundary(Ljava/lang/String;)Lcom/mgadplus/netlib/base/g;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/mgadplus/netlib/base/g;->boundary:Ljava/lang/String;

    return-object p0
.end method

.method public writeTo(Lokhttp3/MultipartBody$Builder;)V
    .locals 4

    sget-object v0, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {p1, v0}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    iget-object p0, p0, Lcom/mgadplus/netlib/base/g;->parts:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgadplus/netlib/base/g$a;

    iget-object v1, v0, Lcom/mgadplus/netlib/base/g$a;->file:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/mgadplus/netlib/base/g$a;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/mgadplus/netlib/base/g$a;->fileName:Ljava/lang/String;

    iget-object v3, v0, Lcom/mgadplus/netlib/base/g$a;->contentType:Ljava/lang/String;

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    iget-object v0, v0, Lcom/mgadplus/netlib/base/g$a;->file:Ljava/io/File;

    invoke-static {v3, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/mgadplus/netlib/base/g$a;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/mgadplus/netlib/base/g$a;->contentType:Ljava/lang/String;

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    iget-object v0, v0, Lcom/mgadplus/netlib/base/g$a;->value:Ljava/lang/String;

    invoke-static {v2, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;

    goto :goto_0

    :cond_1
    return-void
.end method
