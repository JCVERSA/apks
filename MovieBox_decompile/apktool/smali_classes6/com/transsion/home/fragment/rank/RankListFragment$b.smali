.class public final Lcom/transsion/home/fragment/rank/RankListFragment$b;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "source.java"

# interfaces
.implements Lt6/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/fragment/rank/RankListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lt6/i;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\r\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\'\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001f\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u000cJ\u0017\u0010\u0014\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J!\u0010\u0019\u001a\u00020\n2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001f\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/transsion/home/fragment/rank/RankListFragment$b;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lt6/i;",
        "<init>",
        "()V",
        "item",
        "",
        "pos",
        "",
        "M1",
        "(Lcom/transsion/moviedetailapi/bean/Subject;I)V",
        "N1",
        "position",
        "",
        "type",
        "K1",
        "(Lcom/transsion/moviedetailapi/bean/Subject;ILjava/lang/String;)V",
        "J1",
        "I1",
        "(I)I",
        "subject",
        "Lcom/transsnet/downloader/widget/DownloadView;",
        "downloadView",
        "L1",
        "(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsnet/downloader/widget/DownloadView;)V",
        "holder",
        "E1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "Home_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final F:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    sget v0, Lcom/transsion/home/R$layout;->item_movie_rank_subject:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic B1(Lcom/transsion/home/fragment/rank/RankListFragment$b;Lcom/transsion/moviedetailapi/bean/Subject;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/fragment/rank/RankListFragment$b;->G1(Lcom/transsion/home/fragment/rank/RankListFragment$b;Lcom/transsion/moviedetailapi/bean/Subject;ILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C1(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/home/fragment/rank/RankListFragment$b;->F1(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D1(Lcom/transsion/home/fragment/rank/RankListFragment$b;Lcom/transsion/moviedetailapi/bean/Subject;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/fragment/rank/RankListFragment$b;->H1(Lcom/transsion/home/fragment/rank/RankListFragment$b;Lcom/transsion/moviedetailapi/bean/Subject;ILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final F1(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-le p1, v0, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x3

    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getDescription()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static final G1(Lcom/transsion/home/fragment/rank/RankListFragment$b;Lcom/transsion/moviedetailapi/bean/Subject;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/home/fragment/rank/RankListFragment$b;->N1(Lcom/transsion/moviedetailapi/bean/Subject;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final H1(Lcom/transsion/home/fragment/rank/RankListFragment$b;Lcom/transsion/moviedetailapi/bean/Subject;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/home/fragment/rank/RankListFragment$b;->M1(Lcom/transsion/moviedetailapi/bean/Subject;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final I1(I)I
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    sget p1, Lcom/transsion/home/R$mipmap;->ic_rank_defalut:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget p1, Lcom/transsion/home/R$mipmap;->ic_rank_03:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    sget p1, Lcom/transsion/home/R$mipmap;->ic_rank_02:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    sget p1, Lcom/transsion/home/R$mipmap;->ic_rank_01:I

    .line 19
    .line 20
    :goto_0
    return p1
.end method

.method private final J1(Lcom/transsion/moviedetailapi/bean/Subject;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lsk/b;->d(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/util/Map;)V

    .line 7
    .line 8
    .line 9
    const-string p1, "event_type"

    .line 10
    .line 11
    const-string v1, "rank_item_browse"

    .line 12
    .line 13
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const-string p1, "position"

    .line 17
    .line 18
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 26
    .line 27
    const-string p2, "rank_all_page"

    .line 28
    .line 29
    invoke-virtual {p1, p2, v0}, Lqi/h;->z(Ljava/lang/String;Ljava/util/Map;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private final K1(Lcom/transsion/moviedetailapi/bean/Subject;ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lsk/b;->d(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/util/Map;)V

    .line 7
    .line 8
    .line 9
    const-string p1, "position"

    .line 10
    .line 11
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string p1, "event_type"

    .line 19
    .line 20
    const-string p2, "rank_item_click"

    .line 21
    .line 22
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const-string p1, "click_type"

    .line 26
    .line 27
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 31
    .line 32
    const-string p2, "rank_all_page"

    .line 33
    .line 34
    invoke-virtual {p1, p2, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private final L1(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsnet/downloader/widget/DownloadView;)V
    .locals 10

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_3

    .line 16
    .line 17
    invoke-static {p2}, Luf/c;->k(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lij/t;->a:Lij/t;

    .line 21
    .line 22
    invoke-virtual {v0}, Lij/t;->b()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eq v0, v1, :cond_2

    .line 46
    .line 47
    :goto_1
    invoke-virtual {p2}, Lcom/transsnet/downloader/widget/DownloadView;->setShowPlayType()V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    sget v7, Lcom/transsion/baseui/R$string;->download_movie:I

    .line 56
    .line 57
    const/16 v8, 0xe

    .line 58
    .line 59
    const/4 v9, 0x0

    .line 60
    const/4 v4, 0x0

    .line 61
    const/4 v5, 0x0

    .line 62
    const/4 v6, 0x0

    .line 63
    move-object v2, p2

    .line 64
    invoke-static/range {v2 .. v9}, Lcom/transsnet/downloader/widget/DownloadView;->setShowType$default(Lcom/transsnet/downloader/widget/DownloadView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZIILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    invoke-static {p2}, Luf/c;->h(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    :goto_2
    return-void
.end method

.method private final M1(Lcom/transsion/moviedetailapi/bean/Subject;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "rank_all"

    .line 6
    .line 7
    const-string v2, "rank_all_page"

    .line 8
    .line 9
    invoke-static {p1, v2, v0, v1}, Lzk/h;->g(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/home/fragment/rank/RankListFragment$b;->K1(Lcom/transsion/moviedetailapi/bean/Subject;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final N1(Lcom/transsion/moviedetailapi/bean/Subject;I)V
    .locals 1

    .line 1
    const-string v0, "rank_all"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lzk/h;->f(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "poster_click"

    .line 7
    .line 8
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/home/fragment/rank/RankListFragment$b;->K1(Lcom/transsion/moviedetailapi/bean/Subject;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method protected E1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 4

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget v0, Lcom/transsion/home/R$id;->rank_item_image:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/ImageView;

    .line 18
    .line 19
    sget-object v1, Lni/f;->a:Lni/f$a;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "getContext(...)"

    .line 26
    .line 27
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, ""

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    :cond_0
    move-object v2, v3

    .line 49
    :cond_1
    invoke-virtual {v1, v2}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-nez v2, :cond_3

    .line 64
    .line 65
    :cond_2
    move-object v2, v3

    .line 66
    :cond_3
    invoke-virtual {v1, v2}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1, v0}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0, p2}, Lij/k;->e(Ljava/util/List;Ljava/lang/Object;)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    sget v1, Lcom/transsion/home/R$id;->rank_item_rank_tag:I

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 88
    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    invoke-direct {p0, v0}, Lcom/transsion/home/fragment/rank/RankListFragment$b;->I1(I)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 96
    .line 97
    .line 98
    :cond_4
    sget v1, Lcom/transsion/home/R$id;->rank_item_corner:I

    .line 99
    .line 100
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCorner()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 105
    .line 106
    .line 107
    const/4 v1, 0x2

    .line 108
    if-le v0, v1, :cond_6

    .line 109
    .line 110
    const/16 v1, 0x9

    .line 111
    .line 112
    if-ge v0, v1, :cond_5

    .line 113
    .line 114
    add-int/lit8 v1, v0, 0x1

    .line 115
    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v3, "0"

    .line 122
    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    goto :goto_0

    .line 134
    :cond_5
    add-int/lit8 v1, v0, 0x1

    .line 135
    .line 136
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    :goto_0
    sget v2, Lcom/transsion/home/R$id;->rank_item_tag_rank:I

    .line 141
    .line 142
    invoke-virtual {p1, v2, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_6
    sget v1, Lcom/transsion/home/R$id;->rank_item_tag_rank:I

    .line 147
    .line 148
    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 149
    .line 150
    .line 151
    :goto_1
    sget v1, Lcom/transsion/home/R$id;->rank_item_title:I

    .line 152
    .line 153
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    check-cast v1, Landroid/widget/TextView;

    .line 158
    .line 159
    sget v2, Lcom/transsion/home/R$id;->rank_item_des:I

    .line 160
    .line 161
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    check-cast v2, Landroid/widget/TextView;

    .line 166
    .line 167
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .line 173
    .line 174
    invoke-static {}, Lsk/a;->d()I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 179
    .line 180
    .line 181
    new-instance v3, Lcom/transsion/home/fragment/rank/o;

    .line 182
    .line 183
    invoke-direct {v3, v2, v1, p2}, Lcom/transsion/home/fragment/rank/o;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 187
    .line 188
    .line 189
    sget v1, Lcom/transsion/home/R$id;->rank_item_download:I

    .line 190
    .line 191
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    check-cast v1, Lcom/transsnet/downloader/widget/DownloadView;

    .line 196
    .line 197
    invoke-direct {p0, p2, v1}, Lcom/transsion/home/fragment/rank/RankListFragment$b;->L1(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsnet/downloader/widget/DownloadView;)V

    .line 198
    .line 199
    .line 200
    sget v1, Lcom/transsion/home/R$id;->rank_item_imdb:I

    .line 201
    .line 202
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getImdbRate()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 207
    .line 208
    .line 209
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 210
    .line 211
    new-instance v2, Lcom/transsion/home/fragment/rank/p;

    .line 212
    .line 213
    invoke-direct {v2, p0, p2, v0}, Lcom/transsion/home/fragment/rank/p;-><init>(Lcom/transsion/home/fragment/rank/RankListFragment$b;Lcom/transsion/moviedetailapi/bean/Subject;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    .line 218
    .line 219
    sget v1, Lcom/transsion/home/R$id;->rank_item_download:I

    .line 220
    .line 221
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    new-instance v1, Lcom/transsion/home/fragment/rank/q;

    .line 226
    .line 227
    invoke-direct {v1, p0, p2, v0}, Lcom/transsion/home/fragment/rank/q;-><init>(Lcom/transsion/home/fragment/rank/RankListFragment$b;Lcom/transsion/moviedetailapi/bean/Subject;I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    .line 232
    .line 233
    invoke-direct {p0, p2, v0}, Lcom/transsion/home/fragment/rank/RankListFragment$b;->J1(Lcom/transsion/moviedetailapi/bean/Subject;I)V

    .line 234
    .line 235
    .line 236
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/fragment/rank/RankListFragment$b;->E1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/f;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lt6/h;->a(Lt6/i;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
