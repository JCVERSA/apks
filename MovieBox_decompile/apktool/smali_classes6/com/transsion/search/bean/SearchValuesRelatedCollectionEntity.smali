.class public final Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\tH\u00c6\u0003J5\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;",
        "Ljava/io/Serializable;",
        "type",
        "",
        "title",
        "",
        "verticalRank",
        "Lcom/transsion/search/bean/VerticalRank;",
        "staff",
        "Lcom/transsion/moviedetailapi/bean/Staff;",
        "<init>",
        "(ILjava/lang/String;Lcom/transsion/search/bean/VerticalRank;Lcom/transsion/moviedetailapi/bean/Staff;)V",
        "getType",
        "()I",
        "getTitle",
        "()Ljava/lang/String;",
        "getVerticalRank",
        "()Lcom/transsion/search/bean/VerticalRank;",
        "getStaff",
        "()Lcom/transsion/moviedetailapi/bean/Staff;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "Search_psRelease"
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
.field private final staff:Lcom/transsion/moviedetailapi/bean/Staff;

.field private final title:Ljava/lang/String;

.field private final type:I

.field private final verticalRank:Lcom/transsion/search/bean/VerticalRank;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/transsion/search/bean/VerticalRank;Lcom/transsion/moviedetailapi/bean/Staff;)V
    .locals 1

    .line 1
    const-string v0, "title"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->type:I

    .line 10
    .line 11
    iput-object p2, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->title:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->verticalRank:Lcom/transsion/search/bean/VerticalRank;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->staff:Lcom/transsion/moviedetailapi/bean/Staff;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;ILjava/lang/String;Lcom/transsion/search/bean/VerticalRank;Lcom/transsion/moviedetailapi/bean/Staff;ILjava/lang/Object;)Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->type:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->title:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    .line 15
    if-eqz p6, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->verticalRank:Lcom/transsion/search/bean/VerticalRank;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    .line 21
    if-eqz p5, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->staff:Lcom/transsion/moviedetailapi/bean/Staff;

    .line 24
    .line 25
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->copy(ILjava/lang/String;Lcom/transsion/search/bean/VerticalRank;Lcom/transsion/moviedetailapi/bean/Staff;)Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Lcom/transsion/search/bean/VerticalRank;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->verticalRank:Lcom/transsion/search/bean/VerticalRank;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Lcom/transsion/moviedetailapi/bean/Staff;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->staff:Lcom/transsion/moviedetailapi/bean/Staff;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(ILjava/lang/String;Lcom/transsion/search/bean/VerticalRank;Lcom/transsion/moviedetailapi/bean/Staff;)Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;
    .locals 1

    .line 1
    const-string v0, "title"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;-><init>(ILjava/lang/String;Lcom/transsion/search/bean/VerticalRank;Lcom/transsion/moviedetailapi/bean/Staff;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;

    .line 12
    .line 13
    iget v1, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->type:I

    .line 14
    .line 15
    iget v3, p1, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->type:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->title:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->title:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->verticalRank:Lcom/transsion/search/bean/VerticalRank;

    .line 32
    .line 33
    iget-object v3, p1, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->verticalRank:Lcom/transsion/search/bean/VerticalRank;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->staff:Lcom/transsion/moviedetailapi/bean/Staff;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->staff:Lcom/transsion/moviedetailapi/bean/Staff;

    .line 45
    .line 46
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    return v0
.end method

.method public final getStaff()Lcom/transsion/moviedetailapi/bean/Staff;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->staff:Lcom/transsion/moviedetailapi/bean/Staff;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public final getVerticalRank()Lcom/transsion/search/bean/VerticalRank;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->verticalRank:Lcom/transsion/search/bean/VerticalRank;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->type:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->title:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v1, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->verticalRank:Lcom/transsion/search/bean/VerticalRank;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    move v1, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v1}, Lcom/transsion/search/bean/VerticalRank;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    :goto_0
    add-int/2addr v0, v1

    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget-object v1, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->staff:Lcom/transsion/moviedetailapi/bean/Staff;

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_1
    add-int/2addr v0, v2

    .line 38
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->type:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->title:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->verticalRank:Lcom/transsion/search/bean/VerticalRank;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/search/bean/SearchValuesRelatedCollectionEntity;->staff:Lcom/transsion/moviedetailapi/bean/Staff;

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v5, "SearchValuesRelatedCollectionEntity(type="

    .line 15
    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ", title="

    .line 23
    .line 24
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ", verticalRank="

    .line 31
    .line 32
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ", staff="

    .line 39
    .line 40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ")"

    .line 47
    .line 48
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
