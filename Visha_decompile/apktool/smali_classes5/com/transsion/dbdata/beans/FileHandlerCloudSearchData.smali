.class public final Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0012\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u0011\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\tH\u00c6\u0003J;\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\tH\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00032\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0019\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;",
        "",
        "isSuccess",
        "",
        "handleType",
        "",
        "data",
        "Lcom/transsion/dbdata/beans/cloud/SearchResponseData;",
        "list",
        "",
        "<init>",
        "(ZILcom/transsion/dbdata/beans/cloud/SearchResponseData;Ljava/util/List;)V",
        "()Z",
        "getHandleType",
        "()I",
        "getData",
        "()Lcom/transsion/dbdata/beans/cloud/SearchResponseData;",
        "getList",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
        "dbdata_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final data:Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

.field private final handleType:I

.field private final isSuccess:Z

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/cloud/SearchResponseData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZILcom/transsion/dbdata/beans/cloud/SearchResponseData;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Lcom/transsion/dbdata/beans/cloud/SearchResponseData;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/cloud/SearchResponseData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->isSuccess:Z

    iput p2, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->handleType:I

    iput-object p3, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->data:Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

    iput-object p4, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->list:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;ZILcom/transsion/dbdata/beans/cloud/SearchResponseData;Ljava/util/List;ILjava/lang/Object;)Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->isSuccess:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->handleType:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->data:Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->list:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->copy(ZILcom/transsion/dbdata/beans/cloud/SearchResponseData;Ljava/util/List;)Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->isSuccess:Z

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->handleType:I

    return p0
.end method

.method public final component3()Lcom/transsion/dbdata/beans/cloud/SearchResponseData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->data:Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

    return-object p0
.end method

.method public final component4()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/cloud/SearchResponseData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->list:Ljava/util/List;

    return-object p0
.end method

.method public final copy(ZILcom/transsion/dbdata/beans/cloud/SearchResponseData;Ljava/util/List;)Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Lcom/transsion/dbdata/beans/cloud/SearchResponseData;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/cloud/SearchResponseData;",
            ">;)",
            "Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;"
        }
    .end annotation

    new-instance p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;-><init>(ZILcom/transsion/dbdata/beans/cloud/SearchResponseData;Ljava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;

    iget-boolean v1, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->isSuccess:Z

    iget-boolean v3, p1, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->isSuccess:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->handleType:I

    iget v3, p1, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->handleType:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->data:Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->data:Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->list:Ljava/util/List;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->list:Ljava/util/List;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getData()Lcom/transsion/dbdata/beans/cloud/SearchResponseData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->data:Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

    return-object p0
.end method

.method public final getHandleType()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->handleType:I

    return p0
.end method

.method public final getList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/cloud/SearchResponseData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->list:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->isSuccess:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->handleType:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->data:Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->list:Ljava/util/List;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final isSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->isSuccess:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->isSuccess:Z

    iget v1, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->handleType:I

    iget-object v2, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->data:Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;->list:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileHandlerCloudSearchData(isSuccess="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", handleType="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", data="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", list="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
