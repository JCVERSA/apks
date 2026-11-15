.class public final Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B+\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J/\u0010\u0017\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00062\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;",
        "Ljava/io/Serializable;",
        "list",
        "",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;",
        "isLoadDown",
        "",
        "pager",
        "Lcom/transsion/moviedetailapi/bean/Pager;",
        "<init>",
        "(Ljava/util/List;ZLcom/transsion/moviedetailapi/bean/Pager;)V",
        "getList",
        "()Ljava/util/List;",
        "()Z",
        "setLoadDown",
        "(Z)V",
        "getPager",
        "()Lcom/transsion/moviedetailapi/bean/Pager;",
        "setPager",
        "(Lcom/transsion/moviedetailapi/bean/Pager;)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "UGCVideoDetailApi_psRelease"
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
.field private isLoadDown:Z

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;",
            ">;"
        }
    .end annotation
.end field

.field private pager:Lcom/transsion/moviedetailapi/bean/Pager;


# direct methods
.method public constructor <init>(Ljava/util/List;ZLcom/transsion/moviedetailapi/bean/Pager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;",
            ">;Z",
            "Lcom/transsion/moviedetailapi/bean/Pager;",
            ")V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->list:Ljava/util/List;

    .line 3
    iput-boolean p2, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->isLoadDown:Z

    .line 4
    iput-object p3, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ZLcom/transsion/moviedetailapi/bean/Pager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;-><init>(Ljava/util/List;ZLcom/transsion/moviedetailapi/bean/Pager;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;Ljava/util/List;ZLcom/transsion/moviedetailapi/bean/Pager;ILjava/lang/Object;)Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->list:Ljava/util/List;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget-boolean p2, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->isLoadDown:Z

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->copy(Ljava/util/List;ZLcom/transsion/moviedetailapi/bean/Pager;)Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->isLoadDown:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component3()Lcom/transsion/moviedetailapi/bean/Pager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/util/List;ZLcom/transsion/moviedetailapi/bean/Pager;)Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;",
            ">;Z",
            "Lcom/transsion/moviedetailapi/bean/Pager;",
            ")",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;"
        }
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;-><init>(Ljava/util/List;ZLcom/transsion/moviedetailapi/bean/Pager;)V

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
    instance-of v1, p1, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;

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
    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->list:Ljava/util/List;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->list:Ljava/util/List;

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
    iget-boolean v1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->isLoadDown:Z

    .line 25
    .line 26
    iget-boolean v3, p1, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->isLoadDown:Z

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 34
    .line 35
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    return v0
.end method

.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPager()Lcom/transsion/moviedetailapi/bean/Pager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->list:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->isLoadDown:Z

    .line 10
    .line 11
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

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
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Pager;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :goto_0
    add-int/2addr v0, v1

    .line 29
    return v0
.end method

.method public final isLoadDown()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->isLoadDown:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setLoadDown(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->isLoadDown:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setPager(Lcom/transsion/moviedetailapi/bean/Pager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->list:Ljava/util/List;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->isLoadDown:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "UGCImmVideoContent(list="

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
    const-string v0, ", isLoadDown="

    .line 21
    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ", pager="

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
