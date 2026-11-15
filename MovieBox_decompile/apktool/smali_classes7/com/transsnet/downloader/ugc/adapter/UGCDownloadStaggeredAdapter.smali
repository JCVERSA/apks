.class public final Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;
.super Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;
.source "source.java"

# interfaces
.implements Lt6/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter$ItemType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter<",
        "Lcom/transsnet/downloader/ugc/adapter/c;",
        ">;",
        "Lt6/i;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0011B\u0019\u0012\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J%\u0010\r\u001a\u00020\u000b2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;",
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;",
        "Lcom/transsnet/downloader/ugc/adapter/c;",
        "Lt6/i;",
        "Lkotlin/Function0;",
        "Landroid/view/View;",
        "getEmptyView",
        "<init>",
        "(Lkotlin/jvm/functions/Function0;)V",
        "",
        "data",
        "",
        "position",
        "N1",
        "(Ljava/util/List;I)I",
        "G",
        "Lkotlin/jvm/functions/Function0;",
        "ItemType",
        "Downloader_psRelease"
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
.field private final G:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;-><init>(Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;->G:Lkotlin/jvm/functions/Function0;

    .line 5
    new-instance v0, Lcom/transsnet/downloader/ugc/adapter/provider/c;

    invoke-direct {v0}, Lcom/transsnet/downloader/ugc/adapter/provider/c;-><init>()V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 6
    new-instance v0, Lcom/transsnet/downloader/ugc/adapter/provider/b;

    invoke-direct {v0}, Lcom/transsnet/downloader/ugc/adapter/provider/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 7
    new-instance v0, Lcom/transsnet/downloader/ugc/adapter/provider/f;

    invoke-direct {v0}, Lcom/transsnet/downloader/ugc/adapter/provider/f;-><init>()V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 8
    new-instance v0, Lcom/transsnet/downloader/ugc/adapter/provider/e;

    invoke-direct {v0}, Lcom/transsnet/downloader/ugc/adapter/provider/e;-><init>()V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 9
    new-instance v0, Lcom/transsnet/downloader/ugc/adapter/provider/d;

    invoke-direct {v0, p1}, Lcom/transsnet/downloader/ugc/adapter/provider/d;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 10
    new-instance p1, Lcom/transsnet/downloader/ugc/adapter/provider/UGCForYouStaggeredProvider;

    invoke-direct {p1}, Lcom/transsnet/downloader/ugc/adapter/provider/UGCForYouStaggeredProvider;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 11
    new-instance p1, Lcom/transsnet/downloader/ugc/adapter/provider/a;

    invoke-direct {p1}, Lcom/transsnet/downloader/ugc/adapter/provider/a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method protected N1(Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsnet/downloader/ugc/adapter/c;",
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
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c;

    .line 11
    .line 12
    instance-of p2, p1, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c$c;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/adapter/c$c;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isMore()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    sget-object p1, Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter$ItemType;->MORE_WAITING:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter$ItemType;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget-object p1, Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter$ItemType;->DOWNLOADING:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter$ItemType;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    instance-of p2, p1, Lcom/transsnet/downloader/ugc/adapter/c$b;

    .line 43
    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    sget-object p1, Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter$ItemType;->DOWNLOADED:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter$ItemType;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    instance-of p2, p1, Lcom/transsnet/downloader/ugc/adapter/c$f;

    .line 54
    .line 55
    if-eqz p2, :cond_3

    .line 56
    .line 57
    sget-object p1, Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter$ItemType;->FOR_YOU_TITLE:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter$ItemType;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    instance-of p2, p1, Lcom/transsnet/downloader/ugc/adapter/c$d;

    .line 65
    .line 66
    if-eqz p2, :cond_4

    .line 67
    .line 68
    sget-object p1, Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter$ItemType;->EMPTY:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter$ItemType;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    goto :goto_0

    .line 75
    :cond_4
    instance-of p2, p1, Lcom/transsnet/downloader/ugc/adapter/c$e;

    .line 76
    .line 77
    if-eqz p2, :cond_5

    .line 78
    .line 79
    sget-object p1, Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter$ItemType;->FOR_YOU:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter$ItemType;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    goto :goto_0

    .line 86
    :cond_5
    instance-of p1, p1, Lcom/transsnet/downloader/ugc/adapter/c$a;

    .line 87
    .line 88
    if-eqz p1, :cond_6

    .line 89
    .line 90
    sget-object p1, Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter$ItemType;->ALL_EP_BTN:Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter$ItemType;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    :goto_0
    return p1

    .line 97
    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 98
    .line 99
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 100
    .line 101
    .line 102
    throw p1
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
