.class public final Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;
.super Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment<",
        "Llm/p;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 &2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\'B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\u000b\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\tJ\u0017\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0004J\u0017\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0018\u0010%\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$\u00a8\u0006("
    }
    d2 = {
        "Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;",
        "Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment;",
        "Llm/p;",
        "<init>",
        "()V",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "subject",
        "",
        "u0",
        "(Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "mMovieDetailBean",
        "v0",
        "",
        "releaseDate",
        "q0",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "r0",
        "(Landroid/view/LayoutInflater;)Llm/p;",
        "getPageStateLayoutTitle",
        "()Ljava/lang/String;",
        "initViewData",
        "initViewModel",
        "retryLoadData",
        "initListener",
        "",
        "hidden",
        "onHiddenChanged",
        "(Z)V",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "b",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "c",
        "Ljava/lang/String;",
        "mSubjectId",
        "d",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final d:Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog$a;


# instance fields
.field private b:Lcom/transsion/moviedetailapi/bean/Subject;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->d:Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0(Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->s0(Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p0(Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->t0(Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final q0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "substring(...)"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-object p1
.end method

.method private static final s0(Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;Landroid/view/View;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 3
    .line 4
    if-eqz p0, :cond_2

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_2

    .line 11
    .line 12
    sget-object v1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 13
    .line 14
    const/16 v8, 0x3c

    .line 15
    .line 16
    const/4 v9, 0x0

    .line 17
    const-string v2, "detail_info"

    .line 18
    .line 19
    const-string v3, "preview"

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    invoke-static/range {v1 .. v9}, Lcom/transsion/baselib/helper/a;->j(Lcom/transsion/baselib/helper/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/transsion/ninegridview/ImageInfo;

    .line 29
    .line 30
    invoke-direct {v1}, Lcom/transsion/ninegridview/ImageInfo;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iput-object v2, v1, Lcom/transsion/ninegridview/ImageInfo;->bigImageUrl:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iput-object v2, v1, Lcom/transsion/ninegridview/ImageInfo;->thumbnailUrl:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Cover;->getHeight()Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const/4 v3, 0x0

    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    int-to-float v2, v2

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move v2, v3

    .line 59
    :goto_0
    iput v2, v1, Lcom/transsion/ninegridview/ImageInfo;->imageViewHeight:F

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Cover;->getWidth()Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-eqz p0, :cond_1

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    int-to-float v3, p0

    .line 72
    :cond_1
    iput v3, v1, Lcom/transsion/ninegridview/ImageInfo;->imageViewWidth:F

    .line 73
    .line 74
    const/4 p0, 0x1

    .line 75
    new-array p0, p0, [Lcom/transsion/ninegridview/ImageInfo;

    .line 76
    .line 77
    aput-object v1, p0, v0

    .line 78
    .line 79
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    sget-object v1, Lcom/transsion/ninegridview/preview/ImagePreviewActivity;->Companion:Lcom/transsion/ninegridview/preview/ImagePreviewActivity$a;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-string v2, "getContext(...)"

    .line 90
    .line 91
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, p1, v0, p0}, Lcom/transsion/ninegridview/preview/ImagePreviewActivity$a;->a(Landroid/content/Context;ILjava/util/List;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    return-void
.end method

.method private static final t0(Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;Landroid/view/View;)V
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v1, p1, v0}, Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment;->m0(Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment;ZILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private final u0(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getDescription()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Llm/p;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v0, v0, Llm/p;->d:Lcom/transsion/moviedetail/view/InfoExtendView;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/transsion/moviedetail/view/InfoExtendView;->showData(Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Llm/p;

    .line 38
    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    iget-object p1, p1, Llm/p;->d:Lcom/transsion/moviedetail/view/InfoExtendView;

    .line 42
    .line 43
    if-eqz p1, :cond_4

    .line 44
    .line 45
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Llm/p;

    .line 54
    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    iget-object p1, p1, Llm/p;->d:Lcom/transsion/moviedetail/view/InfoExtendView;

    .line 58
    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    :cond_4
    :goto_2
    return-void
.end method

.method private final v0(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->AUDIO:Lcom/transsion/moviedetailapi/SubjectType;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sget-object v2, Lcom/transsion/moviedetailapi/SubjectType;->MUSIC:Lcom/transsion/moviedetailapi/SubjectType;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-gt v0, v2, :cond_0

    .line 26
    .line 27
    if-gt v1, v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getStaffList()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    :goto_0
    check-cast p1, Ljava/util/Collection;

    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string v0, "getChildFragmentManager(...)"

    .line 54
    .line 55
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v0, "beginTransaction()"

    .line 63
    .line 64
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v0, Lcom/transsion/moviedetail/fragment/StarringFragment;

    .line 68
    .line 69
    invoke-direct {v0}, Lcom/transsion/moviedetail/fragment/StarringFragment;-><init>()V

    .line 70
    .line 71
    .line 72
    sget v1, Lcom/transsion/moviedetail/R$id;->fl_starring:I

    .line 73
    .line 74
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/w;->s(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Landroidx/fragment/app/w;->j()I

    .line 78
    .line 79
    .line 80
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public getPageStateLayoutTitle()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->r0(Landroid/view/LayoutInflater;)Llm/p;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public initListener()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llm/p;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Llm/p;->f:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lmm/b;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lmm/b;-><init>(Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Llm/p;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, v0, Llm/p;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    new-instance v1, Lmm/c;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lmm/c;-><init>(Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public initViewData()V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    const-string v4, "data_key_resource_detectors"

    .line 11
    .line 12
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v2, v3

    .line 18
    :goto_0
    instance-of v4, v2, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 19
    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    check-cast v2, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move-object v2, v3

    .line 26
    :goto_1
    iput-object v2, p0, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    move-object v2, v3

    .line 36
    :goto_2
    iput-object v2, p0, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->c:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Lqi/b;->k(Z)V

    .line 45
    .line 46
    .line 47
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string v4, ""

    .line 52
    .line 53
    if-eqz v2, :cond_6

    .line 54
    .line 55
    invoke-virtual {v2}, Lqi/b;->g()Ljava/util/HashMap;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_6

    .line 60
    .line 61
    iget-object v5, p0, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 62
    .line 63
    if-eqz v5, :cond_4

    .line 64
    .line 65
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    if-nez v5, :cond_5

    .line 70
    .line 71
    :cond_4
    move-object v5, v4

    .line 72
    :cond_5
    const-string v6, "subject_id"

    .line 73
    .line 74
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    if-eqz v2, :cond_8

    .line 82
    .line 83
    invoke-virtual {v2}, Lqi/b;->g()Ljava/util/HashMap;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    if-eqz v2, :cond_8

    .line 88
    .line 89
    iget-object v5, p0, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 90
    .line 91
    if-eqz v5, :cond_7

    .line 92
    .line 93
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    goto :goto_3

    .line 98
    :cond_7
    move-object v5, v3

    .line 99
    :goto_3
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    const-string v6, "subject_type"

    .line 104
    .line 105
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    if-eqz v2, :cond_a

    .line 113
    .line 114
    invoke-virtual {v2}, Lqi/b;->g()Ljava/util/HashMap;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    if-eqz v2, :cond_a

    .line 119
    .line 120
    iget-object v5, p0, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 121
    .line 122
    if-eqz v5, :cond_9

    .line 123
    .line 124
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    goto :goto_4

    .line 129
    :cond_9
    move-object v5, v3

    .line 130
    :goto_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    const-string v6, "has_resource"

    .line 135
    .line 136
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    :cond_a
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    check-cast v2, Llm/p;

    .line 144
    .line 145
    if-eqz v2, :cond_f

    .line 146
    .line 147
    iget-object v2, v2, Llm/p;->f:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 148
    .line 149
    if-eqz v2, :cond_f

    .line 150
    .line 151
    sget-object v5, Lni/f;->a:Lni/f$a;

    .line 152
    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    const-string v7, "requireContext(...)"

    .line 158
    .line 159
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v5, v6}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    iget-object v6, p0, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 167
    .line 168
    if-eqz v6, :cond_b

    .line 169
    .line 170
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    if-eqz v6, :cond_b

    .line 175
    .line 176
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    if-nez v6, :cond_c

    .line 181
    .line 182
    :cond_b
    move-object v6, v4

    .line 183
    :cond_c
    invoke-virtual {v5, v6}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    iget-object v6, p0, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 188
    .line 189
    if-eqz v6, :cond_d

    .line 190
    .line 191
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    if-eqz v6, :cond_d

    .line 196
    .line 197
    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    if-nez v6, :cond_e

    .line 202
    .line 203
    :cond_d
    move-object v6, v4

    .line 204
    :cond_e
    invoke-virtual {v5, v6}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-virtual {v5, v2}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 209
    .line 210
    .line 211
    :cond_f
    iget-object v2, p0, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 212
    .line 213
    if-eqz v2, :cond_24

    .line 214
    .line 215
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    invoke-static {v5}, Lcom/transsion/moviedetailapi/h;->a(Ljava/lang/Integer;)I

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    check-cast v6, Llm/p;

    .line 228
    .line 229
    if-eqz v6, :cond_10

    .line 230
    .line 231
    iget-object v6, v6, Llm/p;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 232
    .line 233
    if-eqz v6, :cond_10

    .line 234
    .line 235
    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 236
    .line 237
    .line 238
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    check-cast v5, Llm/p;

    .line 243
    .line 244
    if-eqz v5, :cond_11

    .line 245
    .line 246
    iget-object v5, v5, Llm/p;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 247
    .line 248
    if-eqz v5, :cond_11

    .line 249
    .line 250
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    .line 256
    .line 257
    :cond_11
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSeNum()Ljava/lang/Integer;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    const-string v6, ","

    .line 262
    .line 263
    if-eqz v5, :cond_19

    .line 264
    .line 265
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 266
    .line 267
    .line 268
    move-result v5

    .line 269
    if-le v5, v1, :cond_14

    .line 270
    .line 271
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    if-eqz v7, :cond_12

    .line 276
    .line 277
    sget v3, Lcom/transsion/moviedetail/R$string;->movie_detail_seasons:I

    .line 278
    .line 279
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    new-array v1, v1, [Ljava/lang/Object;

    .line 284
    .line 285
    aput-object v5, v1, v0

    .line 286
    .line 287
    invoke-virtual {v7, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    :cond_12
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    check-cast v1, Llm/p;

    .line 296
    .line 297
    if-eqz v1, :cond_19

    .line 298
    .line 299
    iget-object v1, v1, Llm/p;->p:Landroidx/appcompat/widget/AppCompatTextView;

    .line 300
    .line 301
    if-eqz v1, :cond_19

    .line 302
    .line 303
    if-nez v3, :cond_13

    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_13
    move-object v4, v3

    .line 307
    :goto_5
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    .line 309
    .line 310
    goto/16 :goto_7

    .line 311
    .line 312
    :cond_14
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubtitles()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v7

    .line 316
    if-eqz v7, :cond_15

    .line 317
    .line 318
    filled-new-array {v6}, [Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v8

    .line 322
    const/4 v11, 0x6

    .line 323
    const/4 v12, 0x0

    .line 324
    const/4 v9, 0x0

    .line 325
    const/4 v10, 0x0

    .line 326
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    if-eqz v3, :cond_15

    .line 331
    .line 332
    check-cast v3, Ljava/util/Collection;

    .line 333
    .line 334
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 335
    .line 336
    .line 337
    move-result v3

    .line 338
    goto :goto_6

    .line 339
    :cond_15
    move v3, v0

    .line 340
    :goto_6
    const/16 v4, 0xa

    .line 341
    .line 342
    if-le v3, v4, :cond_16

    .line 343
    .line 344
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    check-cast v3, Llm/p;

    .line 349
    .line 350
    if-eqz v3, :cond_19

    .line 351
    .line 352
    iget-object v3, v3, Llm/p;->p:Landroidx/appcompat/widget/AppCompatTextView;

    .line 353
    .line 354
    if-eqz v3, :cond_19

    .line 355
    .line 356
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    sget v5, Lcom/transsion/moviedetail/R$string;->movie_detail_subtitles_count:I

    .line 361
    .line 362
    new-array v1, v1, [Ljava/lang/Object;

    .line 363
    .line 364
    const-string v7, "10+"

    .line 365
    .line 366
    aput-object v7, v1, v0

    .line 367
    .line 368
    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    .line 374
    .line 375
    goto :goto_7

    .line 376
    :cond_16
    if-le v3, v1, :cond_17

    .line 377
    .line 378
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 379
    .line 380
    .line 381
    move-result-object v4

    .line 382
    check-cast v4, Llm/p;

    .line 383
    .line 384
    if-eqz v4, :cond_19

    .line 385
    .line 386
    iget-object v4, v4, Llm/p;->p:Landroidx/appcompat/widget/AppCompatTextView;

    .line 387
    .line 388
    if-eqz v4, :cond_19

    .line 389
    .line 390
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 391
    .line 392
    .line 393
    move-result-object v5

    .line 394
    sget v7, Lcom/transsion/moviedetail/R$string;->movie_detail_subtitles_count:I

    .line 395
    .line 396
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    new-array v1, v1, [Ljava/lang/Object;

    .line 401
    .line 402
    aput-object v3, v1, v0

    .line 403
    .line 404
    invoke-virtual {v5, v7, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    .line 410
    .line 411
    goto :goto_7

    .line 412
    :cond_17
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    check-cast v1, Llm/p;

    .line 417
    .line 418
    if-eqz v1, :cond_18

    .line 419
    .line 420
    iget-object v1, v1, Llm/p;->p:Landroidx/appcompat/widget/AppCompatTextView;

    .line 421
    .line 422
    if-eqz v1, :cond_18

    .line 423
    .line 424
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 425
    .line 426
    .line 427
    :cond_18
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    check-cast v1, Llm/p;

    .line 432
    .line 433
    if-eqz v1, :cond_19

    .line 434
    .line 435
    iget-object v1, v1, Llm/p;->s:Landroid/view/View;

    .line 436
    .line 437
    if-eqz v1, :cond_19

    .line 438
    .line 439
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 440
    .line 441
    .line 442
    :cond_19
    :goto_7
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->isMusicType()Z

    .line 443
    .line 444
    .line 445
    move-result v1

    .line 446
    if-eqz v1, :cond_1e

    .line 447
    .line 448
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    check-cast v1, Llm/p;

    .line 453
    .line 454
    if-eqz v1, :cond_1a

    .line 455
    .line 456
    iget-object v1, v1, Llm/p;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 457
    .line 458
    if-eqz v1, :cond_1a

    .line 459
    .line 460
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 461
    .line 462
    .line 463
    :cond_1a
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    check-cast v1, Llm/p;

    .line 468
    .line 469
    if-eqz v1, :cond_1b

    .line 470
    .line 471
    iget-object v1, v1, Llm/p;->o:Landroidx/appcompat/widget/AppCompatTextView;

    .line 472
    .line 473
    if-eqz v1, :cond_1b

    .line 474
    .line 475
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 476
    .line 477
    .line 478
    :cond_1b
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    if-eqz v1, :cond_1c

    .line 483
    .line 484
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    check-cast v3, Llm/p;

    .line 489
    .line 490
    if-eqz v3, :cond_1c

    .line 491
    .line 492
    iget-object v3, v3, Llm/p;->k:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    .line 493
    .line 494
    if-eqz v3, :cond_1c

    .line 495
    .line 496
    invoke-virtual {v3, v1}, Lcom/transsion/moviedetail/view/CustomTextViewGroup;->setText(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    :cond_1c
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v7

    .line 503
    if-eqz v7, :cond_1d

    .line 504
    .line 505
    filled-new-array {v6}, [Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v8

    .line 509
    const/4 v11, 0x6

    .line 510
    const/4 v12, 0x0

    .line 511
    const/4 v9, 0x0

    .line 512
    const/4 v10, 0x0

    .line 513
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    check-cast v0, Ljava/lang/String;

    .line 522
    .line 523
    invoke-static {v0}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    check-cast v1, Llm/p;

    .line 536
    .line 537
    if-eqz v1, :cond_1d

    .line 538
    .line 539
    iget-object v1, v1, Llm/p;->r:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    .line 540
    .line 541
    if-eqz v1, :cond_1d

    .line 542
    .line 543
    invoke-virtual {v1, v0}, Lcom/transsion/moviedetail/view/CustomTextViewGroup;->setText(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    :cond_1d
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    if-eqz v0, :cond_23

    .line 551
    .line 552
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 553
    .line 554
    .line 555
    move-result-object v1

    .line 556
    check-cast v1, Llm/p;

    .line 557
    .line 558
    if-eqz v1, :cond_23

    .line 559
    .line 560
    iget-object v1, v1, Llm/p;->q:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    .line 561
    .line 562
    if-eqz v1, :cond_23

    .line 563
    .line 564
    invoke-direct {p0, v0}, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->q0(Ljava/lang/String;)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    invoke-virtual {v1, v0}, Lcom/transsion/moviedetail/view/CustomTextViewGroup;->setText(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    goto/16 :goto_8

    .line 572
    .line 573
    :cond_1e
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getRestrictLevel()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    if-eqz v1, :cond_1f

    .line 578
    .line 579
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 580
    .line 581
    .line 582
    move-result-object v3

    .line 583
    check-cast v3, Llm/p;

    .line 584
    .line 585
    if-eqz v3, :cond_1f

    .line 586
    .line 587
    iget-object v3, v3, Llm/p;->n:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    .line 588
    .line 589
    if-eqz v3, :cond_1f

    .line 590
    .line 591
    invoke-virtual {v3, v1}, Lcom/transsion/moviedetail/view/CustomTextViewGroup;->setText(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    :cond_1f
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    if-eqz v1, :cond_20

    .line 599
    .line 600
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    check-cast v3, Llm/p;

    .line 605
    .line 606
    if-eqz v3, :cond_20

    .line 607
    .line 608
    iget-object v3, v3, Llm/p;->q:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    .line 609
    .line 610
    if-eqz v3, :cond_20

    .line 611
    .line 612
    invoke-direct {p0, v1}, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->q0(Ljava/lang/String;)Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v1

    .line 616
    invoke-virtual {v3, v1}, Lcom/transsion/moviedetail/view/CustomTextViewGroup;->setText(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    :cond_20
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    if-eqz v1, :cond_21

    .line 624
    .line 625
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 626
    .line 627
    .line 628
    move-result-object v3

    .line 629
    check-cast v3, Llm/p;

    .line 630
    .line 631
    if-eqz v3, :cond_21

    .line 632
    .line 633
    iget-object v3, v3, Llm/p;->k:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    .line 634
    .line 635
    if-eqz v3, :cond_21

    .line 636
    .line 637
    invoke-virtual {v3, v1}, Lcom/transsion/moviedetail/view/CustomTextViewGroup;->setText(Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    :cond_21
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v7

    .line 644
    if-eqz v7, :cond_22

    .line 645
    .line 646
    filled-new-array {v6}, [Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v8

    .line 650
    const/4 v11, 0x6

    .line 651
    const/4 v12, 0x0

    .line 652
    const/4 v9, 0x0

    .line 653
    const/4 v10, 0x0

    .line 654
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 655
    .line 656
    .line 657
    move-result-object v1

    .line 658
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    check-cast v0, Ljava/lang/String;

    .line 663
    .line 664
    invoke-static {v0}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    check-cast v1, Llm/p;

    .line 677
    .line 678
    if-eqz v1, :cond_22

    .line 679
    .line 680
    iget-object v1, v1, Llm/p;->r:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    .line 681
    .line 682
    if-eqz v1, :cond_22

    .line 683
    .line 684
    invoke-virtual {v1, v0}, Lcom/transsion/moviedetail/view/CustomTextViewGroup;->setText(Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    :cond_22
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    check-cast v0, Llm/p;

    .line 692
    .line 693
    if-eqz v0, :cond_23

    .line 694
    .line 695
    iget-object v0, v0, Llm/p;->o:Landroidx/appcompat/widget/AppCompatTextView;

    .line 696
    .line 697
    if-eqz v0, :cond_23

    .line 698
    .line 699
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getImdbRate()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v1

    .line 703
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    .line 705
    .line 706
    :cond_23
    :goto_8
    iget-object v0, p0, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 707
    .line 708
    invoke-direct {p0, v0}, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->u0(Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 709
    .line 710
    .line 711
    iget-object v0, p0, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 712
    .line 713
    invoke-direct {p0, v0}, Lcom/transsion/moviedetail/dialog/SubjectInfoMoreDetailDialog;->v0(Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 714
    .line 715
    .line 716
    :cond_24
    return-void
.end method

.method public initViewModel()V
    .locals 0

    .line 1
    return-void
.end method

.method public newLogViewConfig()Lqi/b;
    .locals 5

    .line 1
    new-instance v0, Lqi/b;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "detail_info"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v0, v3, v4, v1, v2}, Lqi/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->logPause()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->logResume()V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void
.end method

.method public r0(Landroid/view/LayoutInflater;)Llm/p;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Llm/p;->c(Landroid/view/LayoutInflater;)Llm/p;

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

.method public retryLoadData()V
    .locals 0

    .line 1
    return-void
.end method
