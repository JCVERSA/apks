.class public final Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$combineAndRetrieveData$$inlined$thenBy$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->G(Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $isHiFirst$inlined:Z

.field final synthetic $this_thenBy:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$combineAndRetrieveData$$inlined$thenBy$1;->$this_thenBy:Ljava/util/Comparator;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$combineAndRetrieveData$$inlined$thenBy$1;->$isHiFirst$inlined:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$combineAndRetrieveData$$inlined$thenBy$1;->$this_thenBy:Ljava/util/Comparator;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_4

    .line 10
    :cond_0
    check-cast p1, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$combineAndRetrieveData$$inlined$thenBy$1;->$isHiFirst$inlined:Z

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->getType()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    neg-int p1, p1

    .line 26
    goto :goto_0

    .line 27
    :goto_1
    check-cast p2, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$combineAndRetrieveData$$inlined$thenBy$1;->$isHiFirst$inlined:Z

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->getType()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    :goto_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    goto :goto_3

    .line 42
    :cond_2
    neg-int p2, p2

    .line 43
    goto :goto_2

    .line 44
    :goto_3
    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt;->d(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    :goto_4
    return v0
.end method
