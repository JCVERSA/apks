.class public final Lcom/transsion/subtitle/bean/SubtitleSearchListBean;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0018\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B5\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\nH\u00c6\u0003J;\u0010 \u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u00c6\u0001J\u0013\u0010!\u001a\u00020\n2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u00d6\u0003J\t\u0010$\u001a\u00020\u0008H\u00d6\u0001J\t\u0010%\u001a\u00020&H\u00d6\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/transsion/subtitle/bean/SubtitleSearchListBean;",
        "Ljava/io/Serializable;",
        "pager",
        "Lcom/transsion/moviedetailapi/bean/Pager;",
        "items",
        "",
        "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
        "searchType",
        "",
        "isRefresh",
        "",
        "<init>",
        "(Lcom/transsion/moviedetailapi/bean/Pager;Ljava/util/List;IZ)V",
        "getPager",
        "()Lcom/transsion/moviedetailapi/bean/Pager;",
        "setPager",
        "(Lcom/transsion/moviedetailapi/bean/Pager;)V",
        "getItems",
        "()Ljava/util/List;",
        "setItems",
        "(Ljava/util/List;)V",
        "getSearchType",
        "()I",
        "setSearchType",
        "(I)V",
        "()Z",
        "setRefresh",
        "(Z)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "",
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
.field private transient isRefresh:Z

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
            ">;"
        }
    .end annotation
.end field

.field private pager:Lcom/transsion/moviedetailapi/bean/Pager;

.field private transient searchType:I


# direct methods
.method public constructor <init>(Lcom/transsion/moviedetailapi/bean/Pager;Ljava/util/List;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetailapi/bean/Pager;",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
            ">;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 3
    iput-object p2, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->items:Ljava/util/List;

    .line 4
    iput p3, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->searchType:I

    .line 5
    iput-boolean p4, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->isRefresh:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/moviedetailapi/bean/Pager;Ljava/util/List;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, -0x1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;-><init>(Lcom/transsion/moviedetailapi/bean/Pager;Ljava/util/List;IZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/subtitle/bean/SubtitleSearchListBean;Lcom/transsion/moviedetailapi/bean/Pager;Ljava/util/List;IZILjava/lang/Object;)Lcom/transsion/subtitle/bean/SubtitleSearchListBean;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->items:Ljava/util/List;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    .line 15
    if-eqz p6, :cond_2

    .line 16
    .line 17
    iget p3, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->searchType:I

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    .line 21
    if-eqz p5, :cond_3

    .line 22
    .line 23
    iget-boolean p4, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->isRefresh:Z

    .line 24
    .line 25
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->copy(Lcom/transsion/moviedetailapi/bean/Pager;Ljava/util/List;IZ)Lcom/transsion/subtitle/bean/SubtitleSearchListBean;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/transsion/moviedetailapi/bean/Pager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->items:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->searchType:I

    .line 2
    .line 3
    return v0
.end method

.method public final component4()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->isRefresh:Z

    .line 2
    .line 3
    return v0
.end method

.method public final copy(Lcom/transsion/moviedetailapi/bean/Pager;Ljava/util/List;IZ)Lcom/transsion/subtitle/bean/SubtitleSearchListBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetailapi/bean/Pager;",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
            ">;IZ)",
            "Lcom/transsion/subtitle/bean/SubtitleSearchListBean;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;-><init>(Lcom/transsion/moviedetailapi/bean/Pager;Ljava/util/List;IZ)V

    .line 4
    .line 5
    .line 6
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
    instance-of v1, p1, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;

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
    check-cast p1, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

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
    iget-object v1, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->items:Ljava/util/List;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->items:Ljava/util/List;

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
    iget v1, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->searchType:I

    .line 36
    .line 37
    iget v3, p1, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->searchType:I

    .line 38
    .line 39
    if-eq v1, v3, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-boolean v1, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->isRefresh:Z

    .line 43
    .line 44
    iget-boolean p1, p1, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->isRefresh:Z

    .line 45
    .line 46
    if-eq v1, p1, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    return v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->items:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPager()Lcom/transsion/moviedetailapi/bean/Pager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSearchType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->searchType:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Pager;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->items:Ljava/util/List;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :goto_1
    add-int/2addr v0, v1

    .line 24
    mul-int/lit8 v0, v0, 0x1f

    .line 25
    .line 26
    iget v1, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->searchType:I

    .line 27
    .line 28
    add-int/2addr v0, v1

    .line 29
    mul-int/lit8 v0, v0, 0x1f

    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->isRefresh:Z

    .line 32
    .line 33
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-int/2addr v0, v1

    .line 38
    return v0
.end method

.method public final isRefresh()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->isRefresh:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->items:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setPager(Lcom/transsion/moviedetailapi/bean/Pager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 2
    .line 3
    return-void
.end method

.method public final setRefresh(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->isRefresh:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setSearchType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->searchType:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->items:Ljava/util/List;

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->searchType:I

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/transsion/subtitle/bean/SubtitleSearchListBean;->isRefresh:Z

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v5, "SubtitleSearchListBean(pager="

    .line 15
    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ", items="

    .line 23
    .line 24
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ", searchType="

    .line 31
    .line 32
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ", isRefresh="

    .line 39
    .line 40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
