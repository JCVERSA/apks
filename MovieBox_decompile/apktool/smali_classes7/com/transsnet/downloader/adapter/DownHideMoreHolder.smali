.class public final Lcom/transsnet/downloader/adapter/DownHideMoreHolder;
.super Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
.source "source.java"

# interfaces
.implements Lcom/transsnet/downloader/adapter/u0;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/transsnet/downloader/adapter/DownHideMoreHolder;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lcom/transsnet/downloader/adapter/u0;",
        "Landroid/view/View;",
        "view",
        "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
        "wrapperNativeManager",
        "<init>",
        "(Landroid/view/View;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V",
        "",
        "position",
        "Lp6/a;",
        "item",
        "",
        "a",
        "(ILp6/a;)V",
        "Landroid/view/View;",
        "getView",
        "()Landroid/view/View;",
        "b",
        "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;",
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
.field private final a:Landroid/view/View;

.field private final b:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsnet/downloader/adapter/DownHideMoreHolder;->a:Landroid/view/View;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/transsnet/downloader/adapter/DownHideMoreHolder;->b:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic f(Lcom/transsnet/downloader/adapter/DownHideMoreHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/adapter/DownHideMoreHolder;->g(Lcom/transsnet/downloader/adapter/DownHideMoreHolder;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final g(Lcom/transsnet/downloader/adapter/DownHideMoreHolder;Landroid/view/View;)V
    .locals 6

    .line 1
    sget-object p1, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->m:Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$a;->a()Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->V()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    xor-int/lit8 v1, p1, 0x1

    .line 16
    .line 17
    iget-object v3, p0, Lcom/transsnet/downloader/adapter/DownHideMoreHolder;->b:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static/range {v0 .. v5}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->I(Lcom/transsnet/downloader/viewmodel/DownloadListManager;ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public a(ILp6/a;)V
    .locals 2

    .line 1
    instance-of p1, p2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    sget p1, Lcom/transsnet/downloader/R$id;->tv_title:I

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/TextView;

    .line 12
    .line 13
    sget v0, Lcom/transsnet/downloader/R$id;->iv_hide_more:I

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/ImageView;

    .line 20
    .line 21
    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isMore()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    sget p2, Lcom/tn/lib/widget/R$mipmap;->libui_ic_down_more:I

    .line 41
    .line 42
    invoke-static {p1, p2}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    sget p2, Lcom/tn/lib/widget/R$mipmap;->libui_ic_up_hide:I

    .line 52
    .line 53
    invoke-static {p1, p2}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/transsnet/downloader/adapter/DownHideMoreHolder;->a:Landroid/view/View;

    .line 61
    .line 62
    new-instance p2, Lcom/transsnet/downloader/adapter/b;

    .line 63
    .line 64
    invoke-direct {p2, p0}, Lcom/transsnet/downloader/adapter/b;-><init>(Lcom/transsnet/downloader/adapter/DownHideMoreHolder;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    return-void
.end method

.method public b(ILp6/a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/adapter/u0$a;->a(Lcom/transsnet/downloader/adapter/u0;ILp6/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public c(Lcom/transsnet/downloader/adapter/u0$b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/adapter/u0$a;->b(Lcom/transsnet/downloader/adapter/u0;Lcom/transsnet/downloader/adapter/u0$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
