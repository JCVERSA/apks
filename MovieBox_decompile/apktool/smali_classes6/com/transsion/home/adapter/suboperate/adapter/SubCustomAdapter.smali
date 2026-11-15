.class public final Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0013\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B=\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ!\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u000b\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\r\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0014\u0010 \u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u001dR\u0014\u0010\"\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u001dR\u0014\u0010$\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010\u001e\u00a8\u0006%"
    }
    d2 = {
        "Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/home/bean/BannerData;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "",
        "layoutResId",
        "Lcom/transsion/home/bean/OperateItem;",
        "operateItem",
        "Lcom/transsion/home/bean/CustomData;",
        "customData",
        "firstItem",
        "tabId",
        "",
        "isTablet",
        "<init>",
        "(ILcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/CustomData;Lcom/transsion/home/bean/BannerData;IZ)V",
        "item",
        "position",
        "",
        "C1",
        "(Lcom/transsion/home/bean/BannerData;I)V",
        "holder",
        "B1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/BannerData;)V",
        "F",
        "Lcom/transsion/home/bean/OperateItem;",
        "G",
        "Lcom/transsion/home/bean/CustomData;",
        "H",
        "I",
        "Z",
        "J",
        "itemWidth",
        "K",
        "itemHeight",
        "L",
        "hiddenTitle",
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
.field public static final M:I = 0x8


# instance fields
.field private final F:Lcom/transsion/home/bean/OperateItem;

.field private final G:Lcom/transsion/home/bean/CustomData;

.field private final H:I

.field private final I:Z

.field private final J:I

.field private final K:I

.field private final L:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(ILcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/CustomData;Lcom/transsion/home/bean/BannerData;IZ)V
    .locals 2

    const-string v0, "operateItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 2
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->F:Lcom/transsion/home/bean/OperateItem;

    .line 4
    iput-object p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->G:Lcom/transsion/home/bean/CustomData;

    iput p5, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->H:I

    iput-boolean p6, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->I:Z

    const/4 p1, 0x1

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p3}, Lcom/transsion/home/bean/CustomData;->getRowCount()I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    invoke-static {p2, p1}, Lkotlin/ranges/RangesKt;->e(II)I

    move-result p2

    const/4 p5, 0x0

    if-eqz p6, :cond_1

    goto :goto_1

    :cond_1
    move v1, p5

    :goto_1
    add-int/2addr p2, v1

    .line 6
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p6

    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result v1

    invoke-static {p6, v1}, Lkotlin/ranges/RangesKt;->h(II)I

    move-result p6

    int-to-float p6, p6

    invoke-static {p6}, Lcom/blankj/utilcode/util/a0;->b(F)I

    move-result p6

    if-eqz p3, :cond_2

    .line 7
    invoke-virtual {p3}, Lcom/transsion/home/bean/CustomData;->getItems()Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/transsion/home/bean/CustomData;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/home/bean/BannerData;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/home/bean/BannerData;->getContent()Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move p5, p1

    goto :goto_4

    :cond_6
    :goto_3
    if-eqz p3, :cond_7

    .line 8
    invoke-virtual {p3}, Lcom/transsion/home/bean/CustomData;->getHiddenTitle()Ljava/lang/Boolean;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    .line 9
    :cond_7
    :goto_4
    iput-boolean p5, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->L:Z

    add-int/lit8 p6, p6, -0xc

    mul-int/lit8 p3, p2, 0x8

    sub-int/2addr p6, p3

    add-int/lit8 p6, p6, -0xc

    int-to-float p3, p6

    const/high16 p5, 0x3f800000    # 1.0f

    mul-float/2addr p3, p5

    int-to-float p2, p2

    div-float/2addr p3, p2

    .line 10
    invoke-static {p3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->J:I

    if-eqz p4, :cond_8

    .line 11
    invoke-virtual {p4}, Lcom/transsion/home/bean/BannerData;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/Image;->getHeight()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_5

    :cond_8
    move p3, p1

    :goto_5
    int-to-float p3, p3

    mul-float/2addr p3, p5

    if-eqz p4, :cond_9

    invoke-virtual {p4}, Lcom/transsion/home/bean/BannerData;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    move-result-object p4

    if-eqz p4, :cond_9

    invoke-virtual {p4}, Lcom/transsion/moviedetailapi/bean/Image;->getWidth()Ljava/lang/Integer;

    move-result-object p4

    if-eqz p4, :cond_9

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_9
    int-to-float p1, p1

    div-float/2addr p3, p1

    int-to-float p1, p2

    mul-float/2addr p3, p1

    float-to-int p1, p3

    iput p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->K:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/CustomData;Lcom/transsion/home/bean/BannerData;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x1

    if-eqz p7, :cond_0

    .line 1
    sget p1, Lcom/transsion/home/R$layout;->item_sub_operation_variable_item:I

    :cond_0
    move v1, p1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;-><init>(ILcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/CustomData;Lcom/transsion/home/bean/BannerData;IZ)V

    return-void
.end method

.method private final C1(Lcom/transsion/home/bean/BannerData;I)V
    .locals 3

    .line 1
    sget-object v0, Lij/g;->a:Lij/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lij/g;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lrk/d;->c:Lrk/d$a;

    .line 10
    .line 11
    iget v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->H:I

    .line 12
    .line 13
    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->F:Lcom/transsion/home/bean/OperateItem;

    .line 14
    .line 15
    invoke-virtual {v0, v1, p2, v2, p1}, Lrk/d$a;->a(IILcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/BannerData;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v1, "event_type"

    .line 25
    .line 26
    const-string v2, "browse_custom_item"

    .line 27
    .line 28
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string v1, "sequence"

    .line 32
    .line 33
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->G:Lcom/transsion/home/bean/CustomData;

    .line 41
    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/transsion/home/bean/CustomData;->getRowCount()I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 p2, 0x0

    .line 54
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    const-string v1, "rowCount"

    .line 59
    .line 60
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    iget p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->H:I

    .line 64
    .line 65
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    const-string v1, "tabId"

    .line 70
    .line 71
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    invoke-static {p1, v0}, Lsk/b;->b(Lcom/transsion/home/bean/BannerData;Ljava/util/Map;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->F:Lcom/transsion/home/bean/OperateItem;

    .line 80
    .line 81
    invoke-static {p1, v0}, Lsk/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    .line 82
    .line 83
    .line 84
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 85
    .line 86
    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 87
    .line 88
    iget v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->H:I

    .line 89
    .line 90
    invoke-virtual {p2, v1}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    .line 95
    .line 96
    .line 97
    :goto_1
    return-void
.end method


# virtual methods
.method protected B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/BannerData;)V
    .locals 8

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
    iget v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->J:I

    .line 12
    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    if-lt v0, v1, :cond_7

    .line 16
    .line 17
    iget v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->K:I

    .line 18
    .line 19
    if-ge v0, v1, :cond_0

    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getBindingAdapterPosition()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    .line 32
    .line 33
    .line 34
    sget v0, Lcom/transsion/home/R$id;->sub_operation_variable_image:I

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/ImageView;

    .line 41
    .line 42
    sget v1, Lcom/transsion/home/R$id;->sub_operation_variable_item_title:I

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroid/widget/TextView;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->J:I

    .line 55
    .line 56
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->K:I

    .line 63
    .line 64
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 65
    .line 66
    iget v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->J:I

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 69
    .line 70
    .line 71
    iget-boolean v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->L:Z

    .line 72
    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    invoke-virtual {p2}, Lcom/transsion/home/bean/BannerData;->getBuiltIn()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    new-instance v5, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter$convert$1;

    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    invoke-direct {v5, p2, v0, v1}, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter$convert$1;-><init>(Lcom/transsion/home/bean/BannerData;Landroid/widget/ImageView;Lkotlin/coroutines/Continuation;)V

    .line 100
    .line 101
    .line 102
    const/4 v6, 0x3

    .line 103
    const/4 v7, 0x0

    .line 104
    const/4 v3, 0x0

    .line 105
    const/4 v4, 0x0

    .line 106
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_2
    sget-object v1, Lni/f;->a:Lni/f$a;

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v1, v2}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {p2}, Lcom/transsion/home/bean/BannerData;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    const-string v3, ""

    .line 125
    .line 126
    if-eqz v2, :cond_3

    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    if-nez v2, :cond_4

    .line 133
    .line 134
    :cond_3
    move-object v2, v3

    .line 135
    :cond_4
    invoke-virtual {v1, v2}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {p2}, Lcom/transsion/home/bean/BannerData;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    if-eqz v2, :cond_6

    .line 144
    .line 145
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Image;->getThumbnail()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    if-nez v2, :cond_5

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_5
    move-object v3, v2

    .line 153
    :cond_6
    :goto_1
    invoke-virtual {v1, v3}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1, v0}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 158
    .line 159
    .line 160
    :goto_2
    invoke-virtual {p2}, Lcom/transsion/home/bean/BannerData;->getContent()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    invoke-direct {p0, p2, p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->C1(Lcom/transsion/home/bean/BannerData;I)V

    .line 176
    .line 177
    .line 178
    :cond_7
    :goto_3
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/home/bean/BannerData;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/BannerData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
