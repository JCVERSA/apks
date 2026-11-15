.class public final Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;
.super Lcom/cloud/tmc/miniapp/base/BaseActivity;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/action/StatusAction;
.implements Ljava/lang/Runnable;
.implements Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;
.implements Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion;

.field private static final IMAGE_MAX_SELECT:Ljava/lang/String; = "maxSelect"

.field private static final IMAGE_SELECT_LIST:Ljava/lang/String; = "imageList"

.field public static final SELECT_MODE_MULTIPLE:I = 0x2

.field public static final SELECT_MODE_PREVIEW:I = 0x3

.field public static final SELECT_MODE_SINGLE:I = 0x1

.field private static selectMode:I


# instance fields
.field private final adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

.field private albumDialog:Lcom/cloud/tmc/miniapp/dialog/o00Ooo;

.field private final allAlbum:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final allImage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final flTitleBack$delegate:Lkotlin/Lazy;

.field private final ivImageSelect$delegate:Lkotlin/Lazy;

.field private final llAlbumSelect$delegate:Lkotlin/Lazy;

.field private maxSelect:I

.field private final rvImageSelectList$delegate:Lkotlin/Lazy;

.field private final selectImage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final selectPosition:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final slImageSelectStatus$delegate:Lkotlin/Lazy;

.field private final tempData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tvImageSelect$delegate:Lkotlin/Lazy;

.field private final tvTitle$delegate:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    sput v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectMode:I

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$flTitleBack$2;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$flTitleBack$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->flTitleBack$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$tvTitle$2;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$tvTitle$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tvTitle$delegate:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$ivImageSelect$2;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$ivImageSelect$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->ivImageSelect$delegate:Lkotlin/Lazy;

    .line 36
    .line 37
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$slImageSelectStatus$2;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$slImageSelectStatus$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->slImageSelectStatus$delegate:Lkotlin/Lazy;

    .line 47
    .line 48
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$rvImageSelectList$2;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$rvImageSelectList$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->rvImageSelectList$delegate:Lkotlin/Lazy;

    .line 58
    .line 59
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$llAlbumSelect$2;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$llAlbumSelect$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->llAlbumSelect$delegate:Lkotlin/Lazy;

    .line 69
    .line 70
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$tvImageSelect$2;

    .line 71
    .line 72
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$tvImageSelect$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tvImageSelect$delegate:Lkotlin/Lazy;

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    iput v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->maxSelect:I

    .line 83
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectImage:Ljava/util/ArrayList;

    .line 90
    .line 91
    new-instance v1, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectPosition:Ljava/util/ArrayList;

    .line 97
    .line 98
    new-instance v1, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allImage:Ljava/util/ArrayList;

    .line 104
    .line 105
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 106
    .line 107
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 108
    .line 109
    .line 110
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allAlbum:Ljava/util/concurrent/ConcurrentHashMap;

    .line 111
    .line 112
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    .line 113
    .line 114
    invoke-direct {v1, p0, v0}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 115
    .line 116
    .line 117
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    .line 118
    .line 119
    new-instance v0, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .line 123
    .line 124
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tempData:Ljava/util/ArrayList;

    .line 125
    .line 126
    return-void
.end method

.method public static synthetic R(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->notifyImageListView$lambda$4(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic S(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->initData$lambda$1(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic U(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->run$lambda$2(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic V(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->run$lambda$3(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$changeSelectTv(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->changeSelectTv()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getAllAlbum$p(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allAlbum:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getAllImage$p(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allImage:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRvImageSelectList(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getRvImageSelectList()Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getSelectImage$p(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectImage:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSelectMode$cp()I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectMode:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getSelectPosition$p(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectPosition:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTvTitle(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getTvTitle()Landroid/widget/TextView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$setSelectMode$cp(I)V
    .locals 0

    .line 1
    sput p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectMode:I

    .line 2
    .line 3
    return-void
.end method

.method private final changeSelectTv()V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectImage:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getTvImageSelect()Landroid/widget/TextView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget v1, Lcom/cloud/tmc/miniapp/R$string;->mini_image_select_done:I

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getTvImageSelect()Landroid/widget/TextView;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    sget v1, Lcom/cloud/tmc/miniapp/R$color;->mini_color_505358:I

    .line 34
    .line 35
    invoke-static {p0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getTvImageSelect()Landroid/widget/TextView;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    iget v3, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->maxSelect:I

    .line 51
    .line 52
    if-ne v3, v1, :cond_3

    .line 53
    .line 54
    sget v0, Lcom/cloud/tmc/miniapp/R$string;->mini_image_select_done:I

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    :try_start_0
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 62
    .line 63
    sget v3, Lcom/cloud/tmc/miniapp/R$string;->mini_image_select_mutiple_done:I

    .line 64
    .line 65
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const-string v4, "getString(R.string.mini_image_select_mutiple_done)"

    .line 70
    .line 71
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectImage:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    iget v5, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->maxSelect:I

    .line 85
    .line 86
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    new-array v6, v0, [Ljava/lang/Object;

    .line 91
    .line 92
    const/4 v7, 0x0

    .line 93
    aput-object v4, v6, v7

    .line 94
    .line 95
    aput-object v5, v6, v1

    .line 96
    .line 97
    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-string v1, "format(format, *args)"

    .line 106
    .line 107
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :catchall_0
    const-string v0, ""

    .line 112
    .line 113
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    :goto_2
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getTvImageSelect()Landroid/widget/TextView;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-eqz v0, :cond_4

    .line 121
    .line 122
    sget v1, Lcom/cloud/tmc/miniapp/R$color;->mini_color_white:I

    .line 123
    .line 124
    invoke-static {p0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    .line 130
    .line 131
    :cond_4
    :goto_3
    return-void
.end method

.method private final getFlTitleBack()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->flTitleBack$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/FrameLayout;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getIvImageSelect()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->ivImageSelect$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getLlAlbumSelect()Landroidx/appcompat/widget/LinearLayoutCompat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->llAlbumSelect$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getLocalLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "pictures"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget v0, Lcom/cloud/tmc/miniapp/R$string;->image_select_album_pictures:I

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "screenshot"

    .line 18
    .line 19
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    sget v0, Lcom/cloud/tmc/miniapp/R$string;->image_select_album_screenshot:I

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-string v0, "camera"

    .line 33
    .line 34
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    sget v0, Lcom/cloud/tmc/miniapp/R$string;->image_select_album_camera:I

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move-object v0, p1

    .line 48
    :goto_0
    const-string v1, "{\n            when {\n   \u2026}\n            }\n        }"

    .line 49
    .line 50
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    move-object p1, v0

    .line 54
    :catchall_0
    return-object p1
.end method

.method private final getRvImageSelectList()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->rvImageSelectList$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getSlImageSelectStatus()Lcom/cloud/tmc/miniapp/widget/StatusLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->slImageSelectStatus$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getTvImageSelect()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tvImageSelect$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getTvTitle()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tvTitle$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final initData$lambda$1(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    :catchall_0
    return-void
.end method

.method private final jumpPreviewActivity(I)V
    .locals 8

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion;

    .line 2
    .line 3
    iget v2, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->maxSelect:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getData()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectImage:Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectPosition:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v7, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$jumpPreviewActivity$1;

    .line 20
    .line 21
    invoke-direct {v7, p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$jumpPreviewActivity$1;-><init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    .line 22
    .line 23
    .line 24
    move-object v1, p0

    .line 25
    move v4, p1

    .line 26
    invoke-virtual/range {v0 .. v7}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion;->launch(Lcom/cloud/tmc/miniapp/base/BaseActivity;ILjava/util/List;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private final notifyImageListView()V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/e;-><init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    :catchall_0
    return-void
.end method

.method private static final notifyImageListView$lambda$4(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allImage:Ljava/util/ArrayList;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tempData:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allImage:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->setData(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tempData:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->changeSelectTv()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getRvImageSelectList()Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getActivity()Landroid/app/Activity;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget v2, Lcom/cloud/tmc/miniapp/R$anim;->layout_fall_down:I

    .line 40
    .line 41
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getRvImageSelectList()Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/ViewGroup;->scheduleLayoutAnimation()V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allImage:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    sget v0, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_photo_empty:I

    .line 66
    .line 67
    sget v1, Lcom/cloud/tmc/miniapp/R$string;->status_empty_photo:I

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-virtual {p0, v0, v1, v2}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->showPhotoEmpty(IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->showComplete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    :catchall_0
    :goto_1
    return-void
.end method

.method private static final run$lambda$2(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tempData:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->addData(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static final run$lambda$3(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$finishLoad"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allImage:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->notifyImageListView()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tempData:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->addData(Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tempData:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->activity_image_select:I

    .line 2
    .line 3
    return v0
.end method

.method public getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getSlImageSelectStatus()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getTempData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tempData:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getViewThemeMode()Ljava/lang/Integer;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public hideStatusLoading()V
    .locals 0

    .line 1
    return-void
.end method

.method public initData()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->maxSelect:I

    .line 2
    .line 3
    const-string v1, "maxSelect"

    .line 4
    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getInt(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->maxSelect:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    .line 12
    .line 13
    sget v1, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectMode:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;->setSelectMode(I)V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->maxSelect:I

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getTvImageSelect()Landroid/widget/TextView;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x4

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/f;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/f;-><init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    const-string v1, "ImageSelectActivity"

    .line 51
    .line 52
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_1
    return-void
.end method

.method public initView()V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/MiniBarUtils;->setStatusBarNightMode(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getFlTitleBack()Landroid/widget/FrameLayout;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/high16 v2, 0x43340000    # 180.0f

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    move v3, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v3, v1

    .line 23
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setRotationY(F)V

    .line 24
    .line 25
    .line 26
    :goto_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getIvImageSelect()Landroidx/appcompat/widget/AppCompatImageView;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_3

    .line 38
    .line 39
    move v1, v2

    .line 40
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    .line 41
    .line 42
    .line 43
    :goto_2
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getFlTitleBack()Landroid/widget/FrameLayout;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getLlAlbumSelect()Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getTvImageSelect()Landroid/widget/TextView;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const/4 v3, 0x3

    .line 56
    new-array v3, v3, [Landroid/view/View;

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    aput-object v0, v3, v4

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    aput-object v1, v3, v0

    .line 63
    .line 64
    const/4 v0, 0x2

    .line 65
    aput-object v2, v3, v0

    .line 66
    .line 67
    invoke-virtual {p0, v3}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->setOnClickListener([Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->setOnItemClickListener(Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    .line 76
    .line 77
    sget v1, Lcom/cloud/tmc/miniapp/R$id;->fl_image_select_check:I

    .line 78
    .line 79
    invoke-virtual {v0, v1, p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->setOnChildClickListener(ILcom/cloud/tmc/miniapp/base/BaseAdapter$OnChildClickListener;)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getRvImageSelectList()Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 91
    .line 92
    .line 93
    new-instance v1, Lcom/cloud/tmc/miniapp/widget/OooO00o;

    .line 94
    .line 95
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    sget v3, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_3:I

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    float-to-int v2, v2

    .line 106
    invoke-direct {v1, v2}, Lcom/cloud/tmc/miniapp/widget/OooO00o;-><init>(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 110
    .line 111
    .line 112
    :cond_4
    return-void
.end method

.method public isLoadStatusLoadingOrError()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->isLoadStatusLoadingOrError(Lcom/cloud/tmc/miniapp/action/StatusAction;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onChildClick(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)V
    .locals 4

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget v1, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectMode:I

    .line 11
    .line 12
    if-ne v1, v0, :cond_1

    .line 13
    .line 14
    invoke-direct {p0, p3}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->jumpPreviewActivity(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    if-eqz p2, :cond_9

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    sget v1, Lcom/cloud/tmc/miniapp/R$id;->fl_image_select_check:I

    .line 25
    .line 26
    if-ne p2, v1, :cond_9

    .line 27
    .line 28
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    .line 29
    .line 30
    invoke-virtual {p2, p3}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Ljava/lang/String;

    .line 35
    .line 36
    new-instance v1, Ljava/io/File;

    .line 37
    .line 38
    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    .line 48
    .line 49
    invoke-virtual {p1, p3}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->removeItem(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    sget p2, Lcom/cloud/tmc/miniapp/R$string;->image_select_error:I

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string p2, "resources.getString(R.string.image_select_error)"

    .line 63
    .line 64
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/widget/OooO;->OooO0O0(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectImage:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-ltz v1, :cond_6

    .line 78
    .line 79
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectPosition:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectImage:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->changeSelectTv()V

    .line 94
    .line 95
    .line 96
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    .line 97
    .line 98
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 99
    .line 100
    .line 101
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectPosition:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    if-eqz p3, :cond_5

    .line 112
    .line 113
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    add-int/lit8 v2, p1, 0x1

    .line 118
    .line 119
    if-gez p1, :cond_3

    .line 120
    .line 121
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 122
    .line 123
    .line 124
    :cond_3
    check-cast p3, Ljava/lang/Number;

    .line 125
    .line 126
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 127
    .line 128
    .line 129
    move-result p3

    .line 130
    if-lt p1, v1, :cond_4

    .line 131
    .line 132
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    .line 133
    .line 134
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 135
    .line 136
    .line 137
    :cond_4
    move p1, v2

    .line 138
    goto :goto_0

    .line 139
    :cond_5
    return-void

    .line 140
    :cond_6
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectImage:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    iget v2, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->maxSelect:I

    .line 147
    .line 148
    if-lt v1, v2, :cond_7

    .line 149
    .line 150
    :try_start_0
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 151
    .line 152
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    sget p3, Lcom/cloud/tmc/miniapp/R$string;->image_select_max_hint:I

    .line 157
    .line 158
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    const-string p3, "resources.getString(R.st\u2026ng.image_select_max_hint)"

    .line 163
    .line 164
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget p3, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->maxSelect:I

    .line 168
    .line 169
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p3

    .line 173
    new-array v1, v0, [Ljava/lang/Object;

    .line 174
    .line 175
    aput-object p3, v1, p1

    .line 176
    .line 177
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    const-string p2, "format(format, *args)"

    .line 186
    .line 187
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/widget/OooO;->OooO00o(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .line 192
    .line 193
    :catchall_0
    return-void

    .line 194
    :cond_7
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectImage:Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->maxSelect:I

    .line 201
    .line 202
    if-ge p1, v0, :cond_8

    .line 203
    .line 204
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectImage:Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectPosition:Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->changeSelectTv()V

    .line 219
    .line 220
    .line 221
    :cond_8
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    .line 222
    .line 223
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 224
    .line 225
    .line 226
    :cond_9
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const-string v4, "view"

    .line 8
    .line 9
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-super/range {p0 .. p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onClick(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getTvImageSelect()Landroid/widget/TextView;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/4 v5, -0x1

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectImage:Ljava/util/ArrayList;

    .line 27
    .line 28
    if-eqz v1, :cond_b

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-lez v1, :cond_b

    .line 35
    .line 36
    new-instance v1, Landroid/content/Intent;

    .line 37
    .line 38
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectImage:Ljava/util/ArrayList;

    .line 42
    .line 43
    const-string v3, "imageList"

    .line 44
    .line 45
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v5, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_5

    .line 56
    .line 57
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getFlTitleBack()Landroid/widget/FrameLayout;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_1

    .line 66
    .line 67
    new-instance v1, Landroid/content/Intent;

    .line 68
    .line 69
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v5, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_5

    .line 79
    .line 80
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getLlAlbumSelect()Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_b

    .line 89
    .line 90
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allImage:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_2

    .line 97
    .line 98
    return-void

    .line 99
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 100
    .line 101
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allAlbum:Ljava/util/concurrent/ConcurrentHashMap;

    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    add-int/2addr v4, v3

    .line 108
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    .line 110
    .line 111
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allAlbum:Ljava/util/concurrent/ConcurrentHashMap;

    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    const-string v5, "allAlbum.keys"

    .line 118
    .line 119
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    move v5, v2

    .line 127
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    const-string v7, "format(format, *args)"

    .line 132
    .line 133
    const-string v8, "getString(R.string.image_select_total)"

    .line 134
    .line 135
    if-eqz v6, :cond_6

    .line 136
    .line 137
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    move-object v12, v6

    .line 142
    check-cast v12, Ljava/lang/String;

    .line 143
    .line 144
    iget-object v6, v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allAlbum:Ljava/util/concurrent/ConcurrentHashMap;

    .line 145
    .line 146
    invoke-virtual {v6, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    check-cast v6, Ljava/util/List;

    .line 151
    .line 152
    if-eqz v6, :cond_3

    .line 153
    .line 154
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    if-eqz v9, :cond_4

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    add-int/2addr v5, v9

    .line 166
    new-instance v15, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;

    .line 167
    .line 168
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    move-object v10, v9

    .line 173
    check-cast v10, Ljava/lang/String;

    .line 174
    .line 175
    invoke-direct {v0, v12}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->getLocalLanguage(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v11

    .line 179
    sget-object v9, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 180
    .line 181
    sget v9, Lcom/cloud/tmc/miniapp/R$string;->image_select_total:I

    .line 182
    .line 183
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 191
    .line 192
    .line 193
    move-result v8

    .line 194
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    new-array v13, v3, [Ljava/lang/Object;

    .line 199
    .line 200
    aput-object v8, v13, v2

    .line 201
    .line 202
    invoke-static {v13, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v13

    .line 210
    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iget-object v7, v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    .line 214
    .line 215
    invoke-virtual {v7}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getData()Ljava/util/List;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    if-ne v7, v6, :cond_5

    .line 220
    .line 221
    move v14, v3

    .line 222
    goto :goto_1

    .line 223
    :cond_5
    move v14, v2

    .line 224
    :goto_1
    move-object v9, v15

    .line 225
    invoke-direct/range {v9 .. v14}, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    goto :goto_0

    .line 232
    :cond_6
    new-instance v4, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;

    .line 233
    .line 234
    iget-object v6, v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allImage:Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    const-string v9, "allImage[0]"

    .line 241
    .line 242
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    move-object/from16 v17, v6

    .line 246
    .line 247
    check-cast v17, Ljava/lang/String;

    .line 248
    .line 249
    sget v6, Lcom/cloud/tmc/miniapp/R$string;->image_select_all:I

    .line 250
    .line 251
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    const-string v9, "getString(R.string.image_select_all)"

    .line 256
    .line 257
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    sget v10, Lcom/cloud/tmc/miniapp/R$string;->image_select_all:I

    .line 261
    .line 262
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v10

    .line 266
    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    sget-object v9, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 270
    .line 271
    sget v9, Lcom/cloud/tmc/miniapp/R$string;->image_select_total:I

    .line 272
    .line 273
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v9

    .line 277
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    new-array v8, v3, [Ljava/lang/Object;

    .line 285
    .line 286
    aput-object v5, v8, v2

    .line 287
    .line 288
    invoke-static {v8, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    iget-object v7, v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    .line 300
    .line 301
    invoke-virtual {v7}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getData()Ljava/util/List;

    .line 302
    .line 303
    .line 304
    move-result-object v7

    .line 305
    iget-object v8, v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allImage:Ljava/util/ArrayList;

    .line 306
    .line 307
    if-ne v7, v8, :cond_7

    .line 308
    .line 309
    move/from16 v21, v3

    .line 310
    .line 311
    goto :goto_2

    .line 312
    :cond_7
    move/from16 v21, v2

    .line 313
    .line 314
    :goto_2
    move-object/from16 v16, v4

    .line 315
    .line 316
    move-object/from16 v18, v6

    .line 317
    .line 318
    move-object/from16 v19, v10

    .line 319
    .line 320
    move-object/from16 v20, v5

    .line 321
    .line 322
    invoke-direct/range {v16 .. v21}, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->albumDialog:Lcom/cloud/tmc/miniapp/dialog/o00Ooo;

    .line 329
    .line 330
    if-nez v4, :cond_8

    .line 331
    .line 332
    new-instance v4, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;

    .line 333
    .line 334
    invoke-direct {v4, v0}, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;-><init>(Landroid/content/Context;)V

    .line 335
    .line 336
    .line 337
    new-instance v5, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$onClick$1;

    .line 338
    .line 339
    invoke-direct {v5, v0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$onClick$1;-><init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    .line 340
    .line 341
    .line 342
    iput-object v5, v4, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo000o;

    .line 343
    .line 344
    iput-object v4, v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->albumDialog:Lcom/cloud/tmc/miniapp/dialog/o00Ooo;

    .line 345
    .line 346
    :cond_8
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->albumDialog:Lcom/cloud/tmc/miniapp/dialog/o00Ooo;

    .line 347
    .line 348
    if-eqz v4, :cond_b

    .line 349
    .line 350
    const-string v5, "data"

    .line 351
    .line 352
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    iget-object v5, v4, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;->OooO0OO:Lcom/cloud/tmc/miniapp/dialog/o00O0O;

    .line 356
    .line 357
    invoke-virtual {v5, v1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->setData(Ljava/util/List;)V

    .line 358
    .line 359
    .line 360
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 361
    .line 362
    .line 363
    move-result v5

    .line 364
    :goto_3
    if-ge v2, v5, :cond_a

    .line 365
    .line 366
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v6

    .line 370
    check-cast v6, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;

    .line 371
    .line 372
    iget-boolean v6, v6, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;->OooO0o0:Z

    .line 373
    .line 374
    if-eqz v6, :cond_9

    .line 375
    .line 376
    iget-object v1, v4, Lcom/cloud/tmc/miniapp/dialog/o00Ooo;->OooO0O0:Lkotlin/Lazy;

    .line 377
    .line 378
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 383
    .line 384
    if-eqz v1, :cond_a

    .line 385
    .line 386
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 387
    .line 388
    .line 389
    goto :goto_4

    .line 390
    :cond_9
    add-int/2addr v2, v3

    .line 391
    goto :goto_3

    .line 392
    :cond_a
    :goto_4
    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->show()V

    .line 393
    .line 394
    .line 395
    :cond_b
    :goto_5
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0, p3}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->jumpPreviewActivity(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onRestart()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->selectImage:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "selectImage.iterator()"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/String;

    .line 26
    .line 27
    new-instance v2, Ljava/io/File;

    .line 28
    .line 29
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allImage:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-nez v2, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allAlbum:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Ljava/util/List;

    .line 65
    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->adapter:Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    .line 72
    .line 73
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->changeSelectTv()V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    return-void
.end method

.method public run()V
    .locals 15

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allAlbum:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allImage:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    const-string v0, "external"

    .line 12
    .line 13
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v0, "getContentUri(\"external\")"

    .line 18
    .line 19
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v6, "date_modified DESC"

    .line 23
    .line 24
    const-string v4, "(media_type=?) AND _size>0"

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v0, "contentResolver"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v7, "_id"

    .line 36
    .line 37
    const-string v8, "_data"

    .line 38
    .line 39
    const-string v9, "_display_name"

    .line 40
    .line 41
    const-string v10, "date_modified"

    .line 42
    .line 43
    const-string v11, "mime_type"

    .line 44
    .line 45
    const-string v12, "width"

    .line 46
    .line 47
    const-string v13, "height"

    .line 48
    .line 49
    const-string v14, "_size"

    .line 50
    .line 51
    filled-new-array/range {v7 .. v14}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const-string v0, "1"

    .line 56
    .line 57
    filled-new-array {v0}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 66
    .line 67
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 68
    .line 69
    .line 70
    if-eqz v0, :cond_8

    .line 71
    .line 72
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_8

    .line 77
    .line 78
    const-string v2, "_data"

    .line 79
    .line 80
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    const-string v3, "mime_type"

    .line 85
    .line 86
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    const-string v4, "_size"

    .line 91
    .line 92
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    const/4 v5, 0x0

    .line 97
    :cond_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 98
    .line 99
    .line 100
    move-result-wide v6

    .line 101
    const-wide/16 v8, 0x400

    .line 102
    .line 103
    cmp-long v6, v6, v8

    .line 104
    .line 105
    if-gez v6, :cond_1

    .line 106
    .line 107
    goto/16 :goto_0

    .line 108
    .line 109
    :cond_1
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    const-string v7, "cursor.getString(mimeTypeIndex)"

    .line 114
    .line 115
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    const-string v8, "cursor.getString(pathIndex)"

    .line 123
    .line 124
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-nez v8, :cond_7

    .line 132
    .line 133
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    if-eqz v6, :cond_2

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_2
    new-instance v6, Ljava/io/File;

    .line 141
    .line 142
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    if-eqz v8, :cond_7

    .line 150
    .line 151
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    if-nez v8, :cond_3

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    if-nez v6, :cond_4

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    const-string v8, "parentFile.name"

    .line 170
    .line 171
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v8, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allAlbum:Ljava/util/concurrent/ConcurrentHashMap;

    .line 175
    .line 176
    invoke-virtual {v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    check-cast v8, Ljava/util/List;

    .line 181
    .line 182
    if-nez v8, :cond_5

    .line 183
    .line 184
    new-instance v8, Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .line 188
    .line 189
    iget-object v9, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->allAlbum:Ljava/util/concurrent/ConcurrentHashMap;

    .line 190
    .line 191
    invoke-interface {v9, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    :cond_5
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tempData:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    add-int/lit8 v5, v5, 0x1

    .line 203
    .line 204
    const/16 v6, 0x32

    .line 205
    .line 206
    if-ne v5, v6, :cond_6

    .line 207
    .line 208
    const/4 v6, 0x1

    .line 209
    iput-boolean v6, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 210
    .line 211
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->notifyImageListView()V

    .line 212
    .line 213
    .line 214
    goto :goto_0

    .line 215
    :cond_6
    rem-int/lit8 v6, v5, 0x64

    .line 216
    .line 217
    if-nez v6, :cond_7

    .line 218
    .line 219
    new-instance v6, Lcom/cloud/tmc/miniapp/ui/c;

    .line 220
    .line 221
    invoke-direct {v6, p0}, Lcom/cloud/tmc/miniapp/ui/c;-><init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, v6}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->post(Ljava/lang/Runnable;)Z

    .line 225
    .line 226
    .line 227
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tempData:Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 230
    .line 231
    .line 232
    :cond_7
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 233
    .line 234
    .line 235
    move-result v6

    .line 236
    if-nez v6, :cond_0

    .line 237
    .line 238
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 239
    .line 240
    .line 241
    :cond_8
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->tempData:Ljava/util/ArrayList;

    .line 242
    .line 243
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-nez v0, :cond_9

    .line 248
    .line 249
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/d;

    .line 250
    .line 251
    invoke-direct {v0, p0, v1}, Lcom/cloud/tmc/miniapp/ui/d;-><init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->post(Ljava/lang/Runnable;)Z

    .line 255
    .line 256
    .line 257
    :cond_9
    iget-boolean v0, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 258
    .line 259
    if-nez v0, :cond_a

    .line 260
    .line 261
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->notifyImageListView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    .line 263
    .line 264
    :catchall_0
    :cond_a
    return-void
.end method

.method public setLoadingProgressConfig(Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->setLoadingProgressConfig(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public showComplete()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showComplete(Lcom/cloud/tmc/miniapp/action/StatusAction;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public showCustomErrorLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showCustomErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public showError(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showError(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public showErrorLayout(IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showErrorLayout(IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 2
    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showErrorLayout(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 3
    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showErrorLayout(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 4
    invoke-static/range {p0 .. p8}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout(Lcom/cloud/tmc/miniapp/action/StatusAction;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;Ljava/lang/String;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    return-void
.end method

.method public showLoading()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showLoading(Lcom/cloud/tmc/miniapp/action/StatusAction;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public showLoadingLogo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showLoadingLogo(Lcom/cloud/tmc/miniapp/action/StatusAction;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public showMainLayoutAlpha(F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showMainLayoutAlpha(Lcom/cloud/tmc/miniapp/action/StatusAction;F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public showNoNetwork(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showNoNetwork(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public showPhotoEmpty(IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showPhotoEmpty(Lcom/cloud/tmc/miniapp/action/StatusAction;IILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public showStatusLoading()V
    .locals 0

    .line 1
    return-void
.end method

.method public showUnstableNetwork(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showUnstableNetwork(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ILjava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public statusLayoutCreateShortCutsSuccess(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->statusLayoutCreateShortCutsSuccess(Lcom/cloud/tmc/miniapp/action/StatusAction;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public statusLayoutOnResume()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->statusLayoutOnResume(Lcom/cloud/tmc/miniapp/action/StatusAction;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public updateStepAnimation(Lcom/cloud/tmc/integration/activity/LoadStepAction;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->updateStepAnimation(Lcom/cloud/tmc/miniapp/action/StatusAction;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
