.class public final Lcom/transsion/shorttv/ui/adapter/g;
.super Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;
.source "source.java"

# interfaces
.implements Lt6/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv/ui/adapter/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter<",
        "Lnr/k;",
        ">;",
        "Lt6/i;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \"2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001#BC\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ%\u0010\u0014\u001a\u00020\u00122\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J!\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0016\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001f\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001f\u0010 \u001a\u00020\u001f2\u000e\u0010\u001e\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u001dH\u0016\u00a2\u0006\u0004\u0008 \u0010!\u00a8\u0006$"
    }
    d2 = {
        "Lcom/transsion/shorttv/ui/adapter/g;",
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;",
        "Lnr/k;",
        "Lt6/i;",
        "",
        "dataList",
        "Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;",
        "fragment",
        "",
        "videoLoadMore",
        "",
        "basePostId",
        "baseItemType",
        "fromTrending",
        "<init>",
        "(Ljava/util/List;Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;ZLjava/lang/String;Ljava/lang/String;Z)V",
        "",
        "data",
        "",
        "position",
        "N1",
        "(Ljava/util/List;I)I",
        "ep",
        "hasTrailer",
        "Lnr/e;",
        "Q1",
        "(IZ)Lnr/e;",
        "S1",
        "(IZ)I",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "baseQuickAdapter",
        "Lt6/f;",
        "b",
        "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/f;",
        "G",
        "a",
        "shortTvLib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final G:Lcom/transsion/shorttv/ui/adapter/g$a;

.field public static final H:I = 0x1

.field public static final I:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/shorttv/ui/adapter/g$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/shorttv/ui/adapter/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/shorttv/ui/adapter/g;->G:Lcom/transsion/shorttv/ui/adapter/g$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnr/k;",
            ">;",
            "Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string v0, "dataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;-><init>(Ljava/util/List;)V

    .line 3
    new-instance p1, Lcom/transsion/shorttv/ui/adapter/j;

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/ui/adapter/j;-><init>(Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 5
    new-instance p1, Lcom/transsion/shorttv/ui/adapter/f;

    invoke-direct {p1}, Lcom/transsion/shorttv/ui/adapter/f;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;ZLjava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/transsion/shorttv/ui/adapter/g;-><init>(Ljava/util/List;Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic R1(Lcom/transsion/shorttv/ui/adapter/g;IZILjava/lang/Object;)Lnr/e;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ui/adapter/g;->Q1(IZ)Lnr/e;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic T1(Lcom/transsion/shorttv/ui/adapter/g;IZILjava/lang/Object;)I
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ui/adapter/g;->S1(IZ)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method


# virtual methods
.method protected N1(Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnr/k;",
            ">;I)I"
        }
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    instance-of p1, p1, Lnr/e;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x2

    .line 17
    :goto_0
    return p1
.end method

.method public final Q1(IZ)Lnr/e;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lt v0, p1, :cond_2

    .line 10
    .line 11
    if-nez p2, :cond_1

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    add-int/lit8 v0, p1, -0x1

    .line 21
    .line 22
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Lnr/k;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Lnr/k;

    .line 38
    .line 39
    :goto_1
    instance-of v0, p2, Lnr/e;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    check-cast p2, Lnr/e;

    .line 44
    .line 45
    invoke-virtual {p2}, Lnr/e;->c()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-ne v0, p1, :cond_2

    .line 50
    .line 51
    return-object p2

    .line 52
    :cond_2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Ljava/lang/Iterable;

    .line 57
    .line 58
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    move-object v1, v0

    .line 73
    check-cast v1, Lnr/k;

    .line 74
    .line 75
    instance-of v2, v1, Lnr/e;

    .line 76
    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    check-cast v1, Lnr/e;

    .line 80
    .line 81
    invoke-virtual {v1}, Lnr/e;->c()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-ne v1, p1, :cond_3

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    const/4 v0, 0x0

    .line 89
    :goto_2
    check-cast v0, Lnr/e;

    .line 90
    .line 91
    return-object v0
.end method

.method public final S1(IZ)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lt v0, p1, :cond_2

    .line 10
    .line 11
    if-nez p2, :cond_1

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    add-int/lit8 v0, p1, -0x1

    .line 21
    .line 22
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Lnr/k;

    .line 27
    .line 28
    instance-of v1, p2, Lnr/e;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    check-cast p2, Lnr/e;

    .line 33
    .line 34
    invoke-virtual {p2}, Lnr/e;->c()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-ne p2, p1, :cond_2

    .line 39
    .line 40
    return v0

    .line 41
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Lnr/k;

    .line 50
    .line 51
    instance-of v0, p2, Lnr/e;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    check-cast p2, Lnr/e;

    .line 56
    .line 57
    invoke-virtual {p2}, Lnr/e;->c()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-ne p2, p1, :cond_2

    .line 62
    .line 63
    return p1

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    const/4 v0, 0x0

    .line 73
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lnr/k;

    .line 84
    .line 85
    instance-of v2, v1, Lnr/e;

    .line 86
    .line 87
    if-eqz v2, :cond_3

    .line 88
    .line 89
    check-cast v1, Lnr/e;

    .line 90
    .line 91
    invoke-virtual {v1}, Lnr/e;->c()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-ne v1, p1, :cond_3

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    const/4 v0, -0x1

    .line 102
    :goto_2
    return v0
.end method

.method public b(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
            ")",
            "Lt6/f;"
        }
    .end annotation

    .line 1
    const-string v0, "baseQuickAdapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lt6/f;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lt6/f;-><init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
