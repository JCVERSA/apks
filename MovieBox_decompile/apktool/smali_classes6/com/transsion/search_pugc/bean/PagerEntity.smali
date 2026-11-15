.class public final Lcom/transsion/search_pugc/bean/PagerEntity;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR\u001a\u0010\u0013\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0007\"\u0004\u0008\u0015\u0010\tR\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/transsion/search_pugc/bean/PagerEntity;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "page",
        "",
        "getPage",
        "()Ljava/lang/String;",
        "setPage",
        "(Ljava/lang/String;)V",
        "perPage",
        "",
        "getPerPage",
        "()I",
        "setPerPage",
        "(I)V",
        "totalCount",
        "getTotalCount",
        "setTotalCount",
        "nextPage",
        "getNextPage",
        "setNextPage",
        "hasMore",
        "",
        "getHasMore",
        "()Z",
        "setHasMore",
        "(Z)V",
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
.field private hasMore:Z

.field private nextPage:Ljava/lang/String;

.field private page:Ljava/lang/String;

.field private perPage:I

.field private totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "1"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/search_pugc/bean/PagerEntity;->page:Ljava/lang/String;

    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    iput v0, p0, Lcom/transsion/search_pugc/bean/PagerEntity;->perPage:I

    .line 11
    .line 12
    const-string v0, "0"

    .line 13
    .line 14
    iput-object v0, p0, Lcom/transsion/search_pugc/bean/PagerEntity;->nextPage:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final getHasMore()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/search_pugc/bean/PagerEntity;->hasMore:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getNextPage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/bean/PagerEntity;->nextPage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/bean/PagerEntity;->page:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPerPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/search_pugc/bean/PagerEntity;->perPage:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTotalCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/search_pugc/bean/PagerEntity;->totalCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final setHasMore(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/search_pugc/bean/PagerEntity;->hasMore:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setNextPage(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/search_pugc/bean/PagerEntity;->nextPage:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setPage(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/search_pugc/bean/PagerEntity;->page:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setPerPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/search_pugc/bean/PagerEntity;->perPage:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTotalCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/search_pugc/bean/PagerEntity;->totalCount:I

    .line 2
    .line 3
    return-void
.end method
