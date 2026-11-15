.class public final Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B!\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0011\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\'\u0010\u0018\u001a\u00020\u00002\u0010\u0008\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u00122\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001R&\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR \u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;",
        "Ljava/io/Serializable;",
        "items",
        "",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
        "pager",
        "Lcom/transsion/moviedetailapi/bean/Pager;",
        "<init>",
        "(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;)V",
        "getItems",
        "()Ljava/util/List;",
        "setItems",
        "(Ljava/util/List;)V",
        "getPager",
        "()Lcom/transsion/moviedetailapi/bean/Pager;",
        "setPager",
        "(Lcom/transsion/moviedetailapi/bean/Pager;)V",
        "isLoadDown",
        "",
        "()Z",
        "setLoadDown",
        "(Z)V",
        "component1",
        "component2",
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
.field private transient isLoadDown:Z

.field private items:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
            ">;"
        }
    .end annotation
.end field

.field private pager:Lcom/transsion/moviedetailapi/bean/Pager;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pager"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
            ">;",
            "Lcom/transsion/moviedetailapi/bean/Pager;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->items:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;ILjava/lang/Object;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->items:Ljava/util/List;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->copy(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->items:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lcom/transsion/moviedetailapi/bean/Pager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
            ">;",
            "Lcom/transsion/moviedetailapi/bean/Pager;",
            ")",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;-><init>(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;)V

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
    instance-of v1, p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;

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
    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->items:Ljava/util/List;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->items:Ljava/util/List;

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
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 27
    .line 28
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    return v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->items:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPager()Lcom/transsion/moviedetailapi/bean/Pager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->items:Ljava/util/List;

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
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Pager;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :goto_1
    add-int/2addr v0, v1

    .line 24
    return v0
.end method

.method public final isLoadDown()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->isLoadDown:Z

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
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->items:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setLoadDown(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->isLoadDown:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setPager(Lcom/transsion/moviedetailapi/bean/Pager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->items:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->pager:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "UGCVideoList(items="

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, ", pager="

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, ")"

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
