.class public final Lcom/transsion/playercommon/widgets/banner/AudioSlideAdapter;
.super Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter<",
        "Lcom/transsion/dbdata/beans/media/AudioItem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J5\u0010\u000f\u001a\u00020\u000e2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R6\u0010\u0019\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0011j\u0004\u0018\u0001`\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/transsion/playercommon/widgets/banner/AudioSlideAdapter;",
        "Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;",
        "Lcom/transsion/dbdata/beans/media/AudioItem;",
        "<init>",
        "()V",
        "",
        "p0",
        "getLayoutId",
        "(I)I",
        "Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;",
        "holder",
        "data",
        "position",
        "pageSize",
        "Lzfb;",
        "B",
        "(Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;Lcom/transsion/dbdata/beans/media/AudioItem;II)V",
        "Lkotlin/Function1;",
        "Lcom/transsion/playercommon/widgets/banner/OnViewClickListener;",
        "t",
        "Le74;",
        "getOnViewClickListener",
        "()Le74;",
        "D",
        "(Le74;)V",
        "onViewClickListener",
        "playercommon_release"
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
.field public t:Le74;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic A(Lcom/transsion/playercommon/widgets/banner/AudioSlideAdapter;Lcom/transsion/dbdata/beans/media/AudioItem;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/playercommon/widgets/banner/AudioSlideAdapter;->C(Lcom/transsion/playercommon/widgets/banner/AudioSlideAdapter;Lcom/transsion/dbdata/beans/media/AudioItem;I)V

    return-void
.end method

.method public static final C(Lcom/transsion/playercommon/widgets/banner/AudioSlideAdapter;Lcom/transsion/dbdata/beans/media/AudioItem;I)V
    .locals 2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/banner/AudioSlideAdapter;->t:Le74;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-ne p2, v0, :cond_2

    const-string p0, "status"

    const-string p1, "1"

    const-string p2, "vd_miniplayer_slip_up"

    invoke-static {p2, p0, p1}, Lp06;->a0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "audioplaypage"

    invoke-static {p0}, Lry5;->g(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public B(Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;Lcom/transsion/dbdata/beans/media/AudioItem;II)V
    .locals 5

    const-string p3, "holder"

    invoke-static {p1, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lcom/transsion/playercommon/R$id;->info_title:I

    invoke-virtual {p1, p3}, Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    sget p4, Lcom/transsion/playercommon/R$id;->artist:I

    invoke-virtual {p1, p4}, Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iget-object v0, p2, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    sget v3, Lcom/transsion/playercommon/R$string;->visha_unknown:I

    invoke-static {v3}, Lr0a;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/MediaItem;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p2, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->s()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcom/transsion/playercommon/R$color;->black:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcom/transsion/playercommon/R$color;->os_color_black50:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    if-eqz v0, :cond_3

    const/16 v0, 0x8

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {p4, v2}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    :goto_2
    const/4 p4, 0x2

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p3, Ls00;

    invoke-direct {p3, p0, p2}, Ls00;-><init>(Lcom/transsion/playercommon/widgets/banner/AudioSlideAdapter;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-static {p1, p3}, Lcom/transsion/widgets/GestureUtil;->scrollGesture(Landroid/view/View;Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V

    return-void
.end method

.method public final D(Le74;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/banner/AudioSlideAdapter;->t:Le74;

    return-void
.end method

.method public bridge synthetic c(Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;Ljava/lang/Object;II)V
    .locals 0

    check-cast p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/playercommon/widgets/banner/AudioSlideAdapter;->B(Lcom/transsion/playercommon/widgets/banner/BaseViewHolder;Lcom/transsion/dbdata/beans/media/AudioItem;II)V

    return-void
.end method

.method public getLayoutId(I)I
    .locals 0

    sget p0, Lcom/transsion/playercommon/R$layout;->item_bottom_bar_music_info:I

    return p0
.end method
