.class public final Lcom/transsion/subtitle/bean/OpenSubtitleData;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/transsion/subtitle/bean/OpenSubtitleData;",
        "",
        "attributes",
        "Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;",
        "id",
        "",
        "type",
        "<init>",
        "(Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;Ljava/lang/String;Ljava/lang/String;)V",
        "getAttributes",
        "()Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;",
        "getId",
        "()Ljava/lang/String;",
        "getType",
        "toSubtitleBean",
        "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "VideoSubtitle_psRelease"
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
.field private final attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

.field private final id:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "attributes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "id"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "type"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->id:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->type:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/subtitle/bean/OpenSubtitleData;Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/subtitle/bean/OpenSubtitleData;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->id:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->type:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/subtitle/bean/OpenSubtitleData;->copy(Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/subtitle/bean/OpenSubtitleData;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/subtitle/bean/OpenSubtitleData;
    .locals 1

    .line 1
    const-string v0, "attributes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "id"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "type"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/transsion/subtitle/bean/OpenSubtitleData;

    .line 17
    .line 18
    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/subtitle/bean/OpenSubtitleData;-><init>(Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
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
    instance-of v1, p1, Lcom/transsion/subtitle/bean/OpenSubtitleData;

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
    check-cast p1, Lcom/transsion/subtitle/bean/OpenSubtitleData;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->id:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/transsion/subtitle/bean/OpenSubtitleData;->id:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->type:Ljava/lang/String;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/transsion/subtitle/bean/OpenSubtitleData;->type:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    return v0
.end method

.method public final getAttributes()Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->id:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->type:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->id:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->type:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "OpenSubtitleData(attributes="

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, ", id="

    .line 21
    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ", type="

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ")"

    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method public final toSubtitleBean()Lcom/transsion/moviedetailapi/bean/SubtitleItem;
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;->getFiles()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/transsion/subtitle/bean/OpenSubtitleDataFile;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    new-instance v14, Lcom/transsion/moviedetailapi/bean/SubtitleItem;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->id:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;->getLanguage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    sget-object v2, Lcom/transsion/subtitle/helper/b;->a:Lcom/transsion/subtitle/helper/b;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    .line 33
    .line 34
    invoke-virtual {v5}, Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;->getLanguage()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v2, v5}, Lcom/transsion/subtitle/helper/b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v0}, Lcom/transsion/subtitle/bean/OpenSubtitleDataFile;->getFileName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    const-wide/16 v7, 0x0

    .line 47
    .line 48
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    iget-object v2, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;->getFeatureDetails()Lcom/transsion/subtitle/bean/OpenSubtitleFeatureDetails;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/transsion/subtitle/bean/OpenSubtitleFeatureDetails;->getSe()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    move-object v11, v2

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    move-object v11, v1

    .line 75
    :goto_0
    iget-object v2, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;->getFeatureDetails()Lcom/transsion/subtitle/bean/OpenSubtitleFeatureDetails;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    if-eqz v2, :cond_2

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/transsion/subtitle/bean/OpenSubtitleFeatureDetails;->getEp()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    :cond_2
    iget-object v2, p0, Lcom/transsion/subtitle/bean/OpenSubtitleData;->attributes:Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;

    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;->getDownloadCount()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    const/4 v2, 0x5

    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v13

    .line 106
    const/4 v7, 0x0

    .line 107
    move-object v2, v14

    .line 108
    move-object v8, v9

    .line 109
    move-object v9, v10

    .line 110
    move-object v10, v11

    .line 111
    move-object v11, v1

    .line 112
    invoke-direct/range {v2 .. v13}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/transsion/subtitle/bean/OpenSubtitleDataFile;->getFileId()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v14, v0}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->setFileId(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const/4 v0, 0x1

    .line 123
    invoke-virtual {v14, v0}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->setOpenSubNewApi(Z)V

    .line 124
    .line 125
    .line 126
    return-object v14

    .line 127
    :cond_3
    :goto_1
    return-object v1
.end method
