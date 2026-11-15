.class public final Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder$a;
    }
.end annotation


# static fields
.field public static final h:Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder$a;

.field public static final i:I

.field private static final j:I

.field private static final k:I

.field private static final l:I

.field private static final m:I


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/View;

.field private final c:Landroid/view/View;

.field private final d:Landroid/widget/FrameLayout;

.field private final e:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

.field private f:Lcom/transsion/ad/bidding/base/r;

.field private g:Lkotlinx/coroutines/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->h:Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->i:I

    .line 12
    .line 13
    const-string v0, "#101114"

    .line 14
    .line 15
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sput v0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->j:I

    .line 20
    .line 21
    const/high16 v0, 0x436d0000    # 237.0f

    .line 22
    .line 23
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sput v0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->k:I

    .line 28
    .line 29
    const/high16 v0, 0x42140000    # 37.0f

    .line 30
    .line 31
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    sput v0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->l:I

    .line 36
    .line 37
    const/high16 v0, 0x42640000    # 57.0f

    .line 38
    .line 39
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    sput v0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->m:I

    .line 44
    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    const-string v0, "itemView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    sget v0, Lcom/transsion/home/R$id;->home_sub_pager_items_status:I

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "findViewById(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->a:Landroid/view/View;

    .line 21
    .line 22
    sget v0, Lcom/transsion/home/R$id;->home_sub_pager_items_space:I

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->b:Landroid/view/View;

    .line 32
    .line 33
    sget v0, Lcom/transsion/home/R$id;->home_sub_pager_items_top_mask:I

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->c:Landroid/view/View;

    .line 43
    .line 44
    sget v0, Lcom/transsion/home/R$id;->home_sub_pager_items_container:I

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    check-cast v0, Landroid/widget/FrameLayout;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->d:Landroid/widget/FrameLayout;

    .line 56
    .line 57
    sget v0, Lcom/transsion/home/R$id;->nativeView:I

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    check-cast p1, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->e:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 69
    .line 70
    return-void
.end method

.method public static synthetic f(Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->n(Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g(Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;)Lkotlinx/coroutines/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->g:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->m(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final j(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable;
    .locals 9

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 11
    .line 12
    .line 13
    const/4 v6, 0x4

    .line 14
    const/4 v7, 0x0

    .line 15
    const-string v3, "#"

    .line 16
    .line 17
    const-string v4, "#ff"

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    move-object v2, p1

    .line 21
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const-string v3, "#"

    .line 30
    .line 31
    const-string v4, "#ff"

    .line 32
    .line 33
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v7, 0x4

    .line 42
    const/4 v8, 0x0

    .line 43
    const-string v4, "#"

    .line 44
    .line 45
    const-string v5, "#00"

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    move-object v3, p1

    .line 49
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    filled-new-array {v1, v2, p1}, [I

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 62
    .line 63
    .line 64
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 67
    .line 68
    .line 69
    return-object v0
.end method

.method private final l(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->e:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, -0x2

    .line 10
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getImageList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/hisavana/common/bean/TAdNativeInfo$Image;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo$Image;->getUrl()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    :goto_0
    if-eqz p1, :cond_3

    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    sget-object v0, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance v0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder$renderHiADMask$1;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder$renderHiADMask$1;-><init>(Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    :goto_1
    const/high16 p1, -0x1000000

    .line 65
    .line 66
    invoke-direct {p0, p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->m(I)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private final m(I)V
    .locals 5

    .line 1
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 2
    .line 3
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 4
    .line 5
    const v1, 0xffffff

    .line 6
    .line 7
    .line 8
    and-int/2addr v1, p1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    new-array v3, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    aput-object v1, v3, v4

    .line 18
    .line 19
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "#%06X"

    .line 24
    .line 25
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "format(...)"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->a:Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->b:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->c:Landroid/view/View;

    .line 45
    .line 46
    invoke-direct {p0, v0}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->j(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->e:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 54
    .line 55
    new-instance v0, Lcom/transsion/home/adapter/suboperate/adapter/g;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/transsion/home/adapter/suboperate/adapter/g;-><init>(Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private static final n(Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->e:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget v2, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->l:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 v2, 0xa

    .line 14
    .line 15
    if-ge v0, v2, :cond_1

    .line 16
    .line 17
    move v2, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget v2, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->k:I

    .line 20
    .line 21
    sub-int/2addr v2, v0

    .line 22
    :goto_0
    iget-object v3, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->b:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    sget v4, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->m:I

    .line 29
    .line 30
    invoke-static {v2, v1, v4}, Lkotlin/ranges/RangesKt;->l(III)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 35
    .line 36
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->b:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v5, "nativeViewHeight: "

    .line 52
    .line 53
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v0, ", space height: "

    .line 60
    .line 61
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v0, ", space.layoutParams.height: "

    .line 68
    .line 69
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    const/4 v8, 0x4

    .line 80
    const/4 v9, 0x0

    .line 81
    const-string v5, "BannerADDataHelper"

    .line 82
    .line 83
    const/4 v7, 0x0

    .line 84
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->b:Landroid/view/View;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->b:Landroid/view/View;

    .line 93
    .line 94
    invoke-static {p0}, Luf/c;->k(Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method


# virtual methods
.method public final i(Lcom/transsion/home/bean/BannerData;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->g:Lkotlinx/coroutines/n0;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Lkotlinx/coroutines/o0;->g(Lkotlinx/coroutines/n0;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v3, v2, v3}, Lkotlinx/coroutines/v1;->b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v1, v4}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->g:Lkotlinx/coroutines/n0;

    .line 32
    .line 33
    :goto_0
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->a:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 44
    .line 45
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->d:Landroid/widget/FrameLayout;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    mul-int/lit8 v4, v4, 0x9

    .line 56
    .line 57
    div-int/lit8 v4, v4, 0x10

    .line 58
    .line 59
    const/high16 v5, 0x42300000    # 44.0f

    .line 60
    .line 61
    invoke-static {v5}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    add-int/2addr v4, v5

    .line 66
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 67
    .line 68
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->f:Lcom/transsion/ad/bidding/base/r;

    .line 69
    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    sget-object v1, Low/b;->a:Low/b;

    .line 73
    .line 74
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 75
    .line 76
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    const-string v5, "getContext(...)"

    .line 81
    .line 82
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v5, "TrendingNativeBannerScene"

    .line 86
    .line 87
    invoke-virtual {v1, v4, v5}, Low/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/ad/bidding/base/r;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iput-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->f:Lcom/transsion/ad/bidding/base/r;

    .line 92
    .line 93
    :cond_1
    sget-object v1, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->a:Lcom/transsion/home/adapter/trending/BannerADDataHelper;

    .line 94
    .line 95
    iget-object v4, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->e:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 96
    .line 97
    iget-object v5, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->f:Lcom/transsion/ad/bidding/base/r;

    .line 98
    .line 99
    if-eqz p1, :cond_2

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getBiddingAdData()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    move-object v6, v3

    .line 107
    :goto_1
    invoke-virtual {v1, v4, v5, v6}, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->i(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 108
    .line 109
    .line 110
    if-eqz p1, :cond_7

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getBiddingAdData()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-eqz p1, :cond_7

    .line 117
    .line 118
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->b:Landroid/view/View;

    .line 119
    .line 120
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 125
    .line 126
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->b:Landroid/view/View;

    .line 127
    .line 128
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getNativeInfo()Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    if-eqz v1, :cond_3

    .line 136
    .line 137
    invoke-direct {p0, v1}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->l(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    if-eqz p1, :cond_7

    .line 146
    .line 147
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->e:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 148
    .line 149
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    if-eqz v1, :cond_4

    .line 154
    .line 155
    const/4 v4, -0x1

    .line 156
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 157
    .line 158
    :cond_4
    sget-object v1, Lcom/transsion/ad/monopoly/plan/c;->a:Lcom/transsion/ad/monopoly/plan/c;

    .line 159
    .line 160
    invoke-virtual {v1, p1}, Lcom/transsion/ad/monopoly/plan/c;->b(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/monopoly/model/MbAdImage;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    if-eqz p1, :cond_5

    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getAverageHueDark()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    goto :goto_2

    .line 171
    :cond_5
    move-object p1, v3

    .line 172
    :goto_2
    if-eqz p1, :cond_6

    .line 173
    .line 174
    const-string v1, "#"

    .line 175
    .line 176
    const/4 v4, 0x2

    .line 177
    invoke-static {p1, v1, v0, v4, v3}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-ne v1, v2, :cond_6

    .line 182
    .line 183
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->a:Landroid/view/View;

    .line 188
    .line 189
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->c:Landroid/view/View;

    .line 193
    .line 194
    invoke-direct {p0, p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->j(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_6
    sget p1, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->j:I

    .line 203
    .line 204
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->a:Landroid/view/View;

    .line 205
    .line 206
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 207
    .line 208
    .line 209
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->c:Landroid/view/View;

    .line 210
    .line 211
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 212
    .line 213
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 214
    .line 215
    const v4, 0xffffff

    .line 216
    .line 217
    .line 218
    and-int/2addr p1, v4

    .line 219
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    new-array v4, v2, [Ljava/lang/Object;

    .line 224
    .line 225
    aput-object p1, v4, v0

    .line 226
    .line 227
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    const-string v0, "#%06X"

    .line 232
    .line 233
    invoke-static {v3, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    const-string v0, "format(...)"

    .line 238
    .line 239
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-direct {p0, p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->j(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 247
    .line 248
    .line 249
    :cond_7
    :goto_3
    return-void
.end method

.method public final k()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->a:Lcom/transsion/home/adapter/trending/BannerADDataHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->n()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->g:Lkotlinx/coroutines/n0;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/o0;->d(Lkotlinx/coroutines/n0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
