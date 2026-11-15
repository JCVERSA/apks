.class public final Lcom/transsion/moviedetail/fragment/StillsFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/moviedetail/fragment/StillsFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Llm/o;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00152\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0015B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0004\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/transsion/moviedetail/fragment/StillsFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Llm/o;",
        "<init>",
        "()V",
        "Lcom/transsion/moviedetailapi/bean/Cover;",
        "cover",
        "",
        "d0",
        "(Lcom/transsion/moviedetailapi/bean/Cover;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "c0",
        "(Landroid/view/LayoutInflater;)Llm/o;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "lazyLoadData",
        "a",
        "MovieDetail_psRelease"
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
.field public static final a:Lcom/transsion/moviedetail/fragment/StillsFragment$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/moviedetail/fragment/StillsFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/moviedetail/fragment/StillsFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/moviedetail/fragment/StillsFragment;->a:Lcom/transsion/moviedetail/fragment/StillsFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a0(Llm/o;Landroid/graphics/drawable/BitmapDrawable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/moviedetail/fragment/StillsFragment;->e0(Llm/o;Landroid/graphics/drawable/BitmapDrawable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b0(Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetail/fragment/StillsFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/moviedetail/fragment/StillsFragment;->f0(Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetail/fragment/StillsFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final d0(Lcom/transsion/moviedetailapi/bean/Cover;)V
    .locals 16

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llm/o;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-static {}, Lcom/transsion/core/utils/e;->f()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    sget-object v1, Lni/f;->a:Lni/f$a;

    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v8, ""

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    move-object v2, v8

    .line 24
    :cond_0
    const/16 v6, 0xc

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-static/range {v1 .. v7}, Lni/f$a;->e(Lni/f$a;Ljava/lang/String;IZZILjava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    move-object v10, v8

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object v10, v2

    .line 42
    :goto_0
    sget-object v9, Lcom/transsion/base/image/blurhash/e;->a:Lcom/transsion/base/image/blurhash/e;

    .line 43
    .line 44
    new-instance v13, Lcom/transsion/moviedetail/fragment/j1;

    .line 45
    .line 46
    invoke-direct {v13, v0}, Lcom/transsion/moviedetail/fragment/j1;-><init>(Llm/o;)V

    .line 47
    .line 48
    .line 49
    const/4 v14, 0x6

    .line 50
    const/4 v15, 0x0

    .line 51
    const/4 v11, 0x0

    .line 52
    const/4 v12, 0x0

    .line 53
    invoke-static/range {v9 .. v15}, Lcom/transsion/base/image/blurhash/e;->d(Lcom/transsion/base/image/blurhash/e;Ljava/lang/String;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget-object v2, v0, Llm/o;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 71
    .line 72
    .line 73
    iget-object v0, v0, Llm/o;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 74
    .line 75
    new-instance v1, Lcom/transsion/moviedetail/fragment/k1;

    .line 76
    .line 77
    move-object/from16 v2, p0

    .line 78
    .line 79
    move-object/from16 v3, p1

    .line 80
    .line 81
    invoke-direct {v1, v3, v2}, Lcom/transsion/moviedetail/fragment/k1;-><init>(Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetail/fragment/StillsFragment;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    move-object/from16 v2, p0

    .line 89
    .line 90
    :goto_1
    return-void
.end method

.method private static final e0(Llm/o;Landroid/graphics/drawable/BitmapDrawable;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Llm/o;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method private static final f0(Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetail/fragment/StillsFragment;Landroid/view/View;)V
    .locals 3

    .line 1
    const/4 p2, 0x0

    .line 2
    new-instance v0, Lcom/transsion/ninegridview/ImageInfo;

    .line 3
    .line 4
    invoke-direct {v0}, Lcom/transsion/ninegridview/ImageInfo;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, v0, Lcom/transsion/ninegridview/ImageInfo;->bigImageUrl:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, v0, Lcom/transsion/ninegridview/ImageInfo;->thumbnailUrl:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Cover;->getHeight()Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    int-to-float v1, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v1, v2

    .line 33
    :goto_0
    iput v1, v0, Lcom/transsion/ninegridview/ImageInfo;->imageViewHeight:F

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Cover;->getWidth()Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    int-to-float v2, p0

    .line 46
    :cond_1
    iput v2, v0, Lcom/transsion/ninegridview/ImageInfo;->imageViewWidth:F

    .line 47
    .line 48
    const/4 p0, 0x1

    .line 49
    new-array p0, p0, [Lcom/transsion/ninegridview/ImageInfo;

    .line 50
    .line 51
    aput-object v0, p0, p2

    .line 52
    .line 53
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    sget-object v0, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->Companion:Lcom/transsion/ninegridview/preview/ImagePreviewActivity$a;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v1, "requireContext(...)"

    .line 64
    .line 65
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1, p2, p0}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity$a;->a(Landroid/content/Context;ILjava/util/List;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public c0(Landroid/view/LayoutInflater;)Llm/o;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Llm/o;->c(Landroid/view/LayoutInflater;)Llm/o;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "inflate(...)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/moviedetail/fragment/StillsFragment;->c0(Landroid/view/LayoutInflater;)Llm/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public lazyLoadData()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "cover"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    check-cast v0, Lcom/transsion/moviedetailapi/bean/Cover;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/transsion/moviedetail/fragment/StillsFragment;->d0(Lcom/transsion/moviedetailapi/bean/Cover;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method
