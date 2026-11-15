.class public final Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;
.super Lcom/cloud/tmc/miniapp/base/BaseActivity;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;
.implements Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion;

.field private static final IMAGE_LIST:Ljava/lang/String; = "imageList"

.field private static final IMAGE_MAX_SELECT:Ljava/lang/String; = "imageMaxSelect"

.field private static final IMAGE_PREVIEW_CURRENT:Ljava/lang/String; = "current"

.field private static final IMAGE_PREVIEW_SHOW_MENU:Ljava/lang/String; = "showMenu"

.field private static final IMAGE_SELECT_BACK_PRESSED:Ljava/lang/String; = "imageBackPressed"

.field private static final IMAGE_SELECT_INDEX:Ljava/lang/String; = "imageIndex"

.field private static final IMAGE_SELECT_LIST:Ljava/lang/String; = "imageSelectList"

.field private static final IMAGE_SELECT_POSITION_LIST:Ljava/lang/String; = "imageSelectPositionList"

.field private static final TAG:Ljava/lang/String; = "ImagePreviewActivity"


# instance fields
.field private final adapter$delegate:Lkotlin/Lazy;

.field private final flOperateDownload$delegate:Lkotlin/Lazy;

.field private final flOperateShare$delegate:Lkotlin/Lazy;

.field private final flTitleBack$delegate:Lkotlin/Lazy;

.field private index:I

.field private final linearOperatePanel$delegate:Lkotlin/Lazy;

.field private final mPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field private final mTaskQueue$delegate:Lkotlin/Lazy;

.field private maxSelect:I

.field private final selectImage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectMode:I

.field private final selectPosition:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final tvImageSelect$delegate:Lkotlin/Lazy;

.field private final tvPreviewTitle$delegate:Lkotlin/Lazy;

.field private final tvTitle$delegate:Lkotlin/Lazy;

.field private final vpPreviewImage$delegate:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->Companion:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$flTitleBack$2;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$flTitleBack$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->flTitleBack$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$tvTitle$2;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$tvTitle$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->tvTitle$delegate:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$tvPreviewTitle$2;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$tvPreviewTitle$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->tvPreviewTitle$delegate:Lkotlin/Lazy;

    .line 36
    .line 37
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$tvImageSelect$2;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$tvImageSelect$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->tvImageSelect$delegate:Lkotlin/Lazy;

    .line 47
    .line 48
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$vpPreviewImage$2;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$vpPreviewImage$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->vpPreviewImage$delegate:Lkotlin/Lazy;

    .line 58
    .line 59
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$linearOperatePanel$2;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$linearOperatePanel$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->linearOperatePanel$delegate:Lkotlin/Lazy;

    .line 69
    .line 70
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$flOperateShare$2;

    .line 71
    .line 72
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$flOperateShare$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->flOperateShare$delegate:Lkotlin/Lazy;

    .line 80
    .line 81
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$flOperateDownload$2;

    .line 82
    .line 83
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$flOperateDownload$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->flOperateDownload$delegate:Lkotlin/Lazy;

    .line 91
    .line 92
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$adapter$2;

    .line 93
    .line 94
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$adapter$2;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->adapter$delegate:Lkotlin/Lazy;

    .line 102
    .line 103
    const/4 v0, 0x1

    .line 104
    iput v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectMode:I

    .line 105
    .line 106
    sget-object v1, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$mTaskQueue$2;->INSTANCE:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$mTaskQueue$2;

    .line 107
    .line 108
    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->mTaskQueue$delegate:Lkotlin/Lazy;

    .line 113
    .line 114
    iput v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->maxSelect:I

    .line 115
    .line 116
    new-instance v0, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .line 120
    .line 121
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    .line 122
    .line 123
    new-instance v0, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .line 127
    .line 128
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectPosition:Ljava/util/ArrayList;

    .line 129
    .line 130
    new-instance v0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$mPageChangeCallback$1;

    .line 131
    .line 132
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$mPageChangeCallback$1;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V

    .line 133
    .line 134
    .line 135
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->mPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 136
    .line 137
    return-void
.end method

.method public static final synthetic access$getAdapter(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getMTaskQueue(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)Lcom/cloud/tmc/miniapp/task/OooO0O0;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getMTaskQueue()Lcom/cloud/tmc/miniapp/task/OooO0O0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getSelectImage$p(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTvPreviewTitle(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvPreviewTitle()Landroid/widget/TextView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getTvTitle(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvTitle()Landroid/widget/TextView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$systemShare(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->systemShare(Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final changeSelectTv()V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

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
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvImageSelect()Landroid/widget/TextView;

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
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvImageSelect()Landroid/widget/TextView;

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
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvImageSelect()Landroid/widget/TextView;

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
    iget v3, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->maxSelect:I

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
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

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
    iget v5, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->maxSelect:I

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

    .line 108
    .line 109
    .line 110
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    :goto_2
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvImageSelect()Landroid/widget/TextView;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-eqz v0, :cond_4

    .line 118
    .line 119
    sget v1, Lcom/cloud/tmc/miniapp/R$color;->mini_color_white:I

    .line 120
    .line 121
    invoke-static {p0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    .line 127
    .line 128
    :cond_4
    :goto_3
    return-void
.end method

.method private final doDownloadFile()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getCurrentImageUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "ImagePreviewActivity"

    .line 8
    .line 9
    const-string v1, "doDownloadFile imagePath is null"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget v2, Lcom/cloud/tmc/miniapp/R$string;->mini_image_select_save_failed:I

    .line 15
    .line 16
    const/16 v7, 0xe

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(IIJZILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    sget-object v1, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doDownloadFile$1;->INSTANCE:Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doDownloadFile$1;

    .line 28
    .line 29
    invoke-direct {p0, v0, v1}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->loadFile(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private final doShareFile()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getCurrentImageUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "ImagePreviewActivity"

    .line 8
    .line 9
    const-string v1, "doShareFile imagePath is null"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget v2, Lcom/cloud/tmc/miniapp/R$string;->mini_image_select_shared_failed:I

    .line 15
    .line 16
    const/16 v7, 0xe

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/utils/toast/ToastUtils;->showToast$default(IIJZILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doShareFile$1;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$doShareFile$1;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v0, v1}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->loadFile(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private final getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->adapter$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getCurrentImageUrl()Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getData()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget v2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->index:I

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v2, v3, :cond_4

    .line 17
    .line 18
    iget v2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->index:I

    .line 19
    .line 20
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/String;

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_0
    const-string v2, ".miniapp.transsion.com"

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x2

    .line 33
    invoke-static {v1, v2, v3, v4, v0}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    move-object v0, v1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    sget-object v2, Lcom/cloud/tmc/integration/utils/FilePathUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/FilePathUtils;

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Lcom/cloud/tmc/integration/utils/FilePathUtils;->getAppIdFormVurl(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    const-string v2, ""

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->getBaseResourceManager()Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-interface {v3, v1, v2}, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_3
    :goto_1
    return-object v0

    .line 73
    :goto_2
    const-string v2, "ImagePreviewActivity"

    .line 74
    .line 75
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :cond_4
    return-object v0
.end method

.method private final getFlOperateDownload()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->flOperateDownload$delegate:Lkotlin/Lazy;

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

.method private final getFlOperateShare()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->flOperateShare$delegate:Lkotlin/Lazy;

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

.method private final getFlTitleBack()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->flTitleBack$delegate:Lkotlin/Lazy;

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

.method private final getLinearOperatePanel()Landroid/widget/LinearLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->linearOperatePanel$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/LinearLayout;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getMTaskQueue()Lcom/cloud/tmc/miniapp/task/OooO0O0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->mTaskQueue$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/task/OooO0O0;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getTvImageSelect()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->tvImageSelect$delegate:Lkotlin/Lazy;

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

.method private final getTvPreviewTitle()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->tvPreviewTitle$delegate:Lkotlin/Lazy;

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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->tvTitle$delegate:Lkotlin/Lazy;

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

.method private final getVpPreviewImage()Landroidx/viewpager2/widget/ViewPager2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->vpPreviewImage$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 8
    .line 9
    return-object v0
.end method

.method private final loadFile(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/File;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v4, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p0, p1, p2, v0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$loadFile$1;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final systemShare(Ljava/io/File;)V
    .locals 9

    .line 1
    new-instance v6, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$systemShare$1;

    .line 2
    .line 3
    invoke-direct {v6, p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$systemShare$1;-><init>(Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;)V

    .line 4
    .line 5
    .line 6
    const/16 v7, 0x3c

    .line 7
    .line 8
    const/4 v8, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    move-object v0, p0

    .line 14
    move-object v1, p1

    .line 15
    invoke-static/range {v0 .. v8}, Lcom/cloud/tmc/integration/utils/share/ShareUtils;->shareFile$default(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/cloud/tmc/integration/utils/share/OnShareListener;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->index:I

    .line 2
    .line 3
    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->activity_image_preview:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMaxSelect()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->maxSelect:I

    .line 2
    .line 3
    return v0
.end method

.method public hideStatusLoading()V
    .locals 0

    .line 1
    return-void
.end method

.method public initData()V
    .locals 8

    .line 1
    const-string v0, "imageList"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "imageSelectList"

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "imageSelectPositionList"

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "showMenu"

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-virtual {p0, v3, v4}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 31
    .line 32
    .line 33
    :cond_0
    if-eqz v2, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectPosition:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 38
    .line 39
    .line 40
    :cond_1
    const-string v1, "imageMaxSelect"

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getInt(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iput v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->maxSelect:I

    .line 47
    .line 48
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/ScreenUtils;->setFullScreen(Landroid/app/Activity;)V

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->maxSelect:I

    .line 52
    .line 53
    const/4 v2, 0x3

    .line 54
    const/4 v5, 0x4

    .line 55
    const/4 v6, 0x1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    if-eq v1, v6, :cond_2

    .line 59
    .line 60
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/MiniBarUtils;->setStatusBarNightMode(Landroid/app/Activity;)V

    .line 61
    .line 62
    .line 63
    const/4 v1, 0x2

    .line 64
    goto :goto_3

    .line 65
    :cond_2
    invoke-static {p0}, Lcom/cloud/tmc/integration/utils/MiniBarUtils;->setStatusBarNightMode(Landroid/app/Activity;)V

    .line 66
    .line 67
    .line 68
    move v1, v6

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    invoke-static {p0, v4}, Lcom/cloud/tmc/miniutils/util/BarUtils;->setNavBarVisibility(Landroid/app/Activity;Z)V

    .line 71
    .line 72
    .line 73
    invoke-static {p0, v4}, Lcom/cloud/tmc/miniutils/util/BarUtils;->setStatusBarVisibility(Landroid/app/Activity;Z)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvImageSelect()Landroid/widget/TextView;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-nez v1, :cond_4

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    :goto_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getFlTitleBack()Landroid/widget/FrameLayout;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    if-nez v1, :cond_5

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvPreviewTitle()Landroid/widget/TextView;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-nez v1, :cond_6

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_6
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    :goto_2
    move v1, v2

    .line 107
    :goto_3
    iput v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectMode:I

    .line 108
    .line 109
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iget v7, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectMode:I

    .line 114
    .line 115
    invoke-virtual {v1, v7}, Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;->setSelectMode(I)V

    .line 116
    .line 117
    .line 118
    if-eqz v0, :cond_13

    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_7

    .line 125
    .line 126
    goto/16 :goto_9

    .line 127
    .line 128
    :cond_7
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->setData(Ljava/util/List;)V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v1, p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->setOnItemClickListener(Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;)V

    .line 140
    .line 141
    .line 142
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    sget v7, Lcom/cloud/tmc/miniapp/R$id;->fl_image_select_check:I

    .line 147
    .line 148
    invoke-virtual {v1, v7, p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->setOnChildClickListener(ILcom/cloud/tmc/miniapp/base/BaseAdapter$OnChildClickListener;)V

    .line 149
    .line 150
    .line 151
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getVpPreviewImage()Landroidx/viewpager2/widget/ViewPager2;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    if-nez v1, :cond_8

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_8
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    invoke-virtual {v1, v7}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 163
    .line 164
    .line 165
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-eq v1, v6, :cond_f

    .line 170
    .line 171
    iget v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectMode:I

    .line 172
    .line 173
    if-ne v1, v2, :cond_b

    .line 174
    .line 175
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvTitle()Landroid/widget/TextView;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    if-nez v1, :cond_9

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_9
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 183
    .line 184
    .line 185
    :goto_5
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvPreviewTitle()Landroid/widget/TextView;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    if-nez v1, :cond_a

    .line 190
    .line 191
    goto :goto_7

    .line 192
    :cond_a
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 193
    .line 194
    .line 195
    goto :goto_7

    .line 196
    :cond_b
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvPreviewTitle()Landroid/widget/TextView;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    if-nez v1, :cond_c

    .line 201
    .line 202
    goto :goto_6

    .line 203
    :cond_c
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .line 205
    .line 206
    :goto_6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvTitle()Landroid/widget/TextView;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    if-nez v1, :cond_d

    .line 211
    .line 212
    goto :goto_7

    .line 213
    :cond_d
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 214
    .line 215
    .line 216
    :goto_7
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getVpPreviewImage()Landroidx/viewpager2/widget/ViewPager2;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    if-eqz v1, :cond_e

    .line 221
    .line 222
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->mPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 223
    .line 224
    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 225
    .line 226
    .line 227
    :cond_e
    const-string v1, "imageIndex"

    .line 228
    .line 229
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getInt(Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    iput v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->index:I

    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-ge v1, v0, :cond_f

    .line 240
    .line 241
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getVpPreviewImage()Landroidx/viewpager2/widget/ViewPager2;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    if-eqz v0, :cond_f

    .line 246
    .line 247
    iget v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->index:I

    .line 248
    .line 249
    invoke-virtual {v0, v1, v4}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 250
    .line 251
    .line 252
    :cond_f
    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectMode:I

    .line 253
    .line 254
    if-ne v0, v6, :cond_10

    .line 255
    .line 256
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvImageSelect()Landroid/widget/TextView;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    if-eqz v0, :cond_11

    .line 261
    .line 262
    sget v1, Lcom/cloud/tmc/miniapp/R$color;->mini_color_white:I

    .line 263
    .line 264
    invoke-static {p0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    .line 270
    .line 271
    goto :goto_8

    .line 272
    :cond_10
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->changeSelectTv()V

    .line 273
    .line 274
    .line 275
    :cond_11
    :goto_8
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getLinearOperatePanel()Landroid/widget/LinearLayout;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    if-eqz v0, :cond_12

    .line 280
    .line 281
    invoke-static {v0, v3}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    .line 282
    .line 283
    .line 284
    :cond_12
    return-void

    .line 285
    :cond_13
    :goto_9
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    .line 286
    .line 287
    .line 288
    return-void
.end method

.method public initView()V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getVpPreviewImage()Landroidx/viewpager2/widget/ViewPager2;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getFlTitleBack()Landroid/widget/FrameLayout;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    const/high16 v2, 0x43340000    # 180.0f

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    const/4 v2, 0x0

    .line 29
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setRotationY(F)V

    .line 30
    .line 31
    .line 32
    :goto_2
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getFlTitleBack()Landroid/widget/FrameLayout;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvImageSelect()Landroid/widget/TextView;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getFlOperateShare()Landroid/widget/FrameLayout;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getFlOperateDownload()Landroid/widget/FrameLayout;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const/4 v5, 0x4

    .line 49
    new-array v5, v5, [Landroid/view/View;

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    aput-object v1, v5, v6

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    aput-object v2, v5, v1

    .line 56
    .line 57
    const/4 v1, 0x2

    .line 58
    aput-object v3, v5, v1

    .line 59
    .line 60
    aput-object v4, v5, v0

    .line 61
    .line 62
    invoke-virtual {p0, v5}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->setOnClickListener([Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectMode:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/content/Intent;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    .line 12
    .line 13
    const-string v2, "imageSelectList"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectPosition:Ljava/util/ArrayList;

    .line 19
    .line 20
    const-string v2, "imageSelectPositionList"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const-string v1, "imageBackPressed"

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    const/4 v1, -0x1

    .line 32
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onChildClick(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)V
    .locals 4

    .line 1
    const/4 p1, 0x0

    .line 2
    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectMode:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-eqz p2, :cond_9

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    sget v0, Lcom/cloud/tmc/miniapp/R$id;->fl_image_select_check:I

    .line 15
    .line 16
    if-ne p2, v0, :cond_9

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2, p3}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Ljava/lang/String;

    .line 27
    .line 28
    if-nez p2, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 32
    .line 33
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1, p3}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->removeItem(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    sget p2, Lcom/cloud/tmc/miniapp/R$string;->image_select_error:I

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string p2, "resources.getString(R.string.image_select_error)"

    .line 60
    .line 61
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/widget/OooO;->OooO0O0(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-ltz v0, :cond_6

    .line 75
    .line 76
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectPosition:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->changeSelectTv()V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 98
    .line 99
    .line 100
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectPosition:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    if-eqz p3, :cond_5

    .line 111
    .line 112
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    add-int/lit8 v2, p1, 0x1

    .line 117
    .line 118
    if-gez p1, :cond_3

    .line 119
    .line 120
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 121
    .line 122
    .line 123
    :cond_3
    check-cast p3, Ljava/lang/Integer;

    .line 124
    .line 125
    if-lt p1, v0, :cond_4

    .line 126
    .line 127
    if-eqz p3, :cond_4

    .line 128
    .line 129
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 134
    .line 135
    .line 136
    move-result p3

    .line 137
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 138
    .line 139
    .line 140
    :cond_4
    move p1, v2

    .line 141
    goto :goto_0

    .line 142
    :cond_5
    return-void

    .line 143
    :cond_6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    iget v2, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->maxSelect:I

    .line 150
    .line 151
    if-lt v0, v2, :cond_7

    .line 152
    .line 153
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 154
    .line 155
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    sget p3, Lcom/cloud/tmc/miniapp/R$string;->image_select_max_hint:I

    .line 160
    .line 161
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    const-string p3, "resources.getString(R.st\u2026ng.image_select_max_hint)"

    .line 166
    .line 167
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget p3, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->maxSelect:I

    .line 171
    .line 172
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    new-array v0, v1, [Ljava/lang/Object;

    .line 177
    .line 178
    aput-object p3, v0, p1

    .line 179
    .line 180
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    const-string p2, "format(format, *args)"

    .line 189
    .line 190
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/widget/OooO;->OooO00o(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :cond_7
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->maxSelect:I

    .line 204
    .line 205
    if-ge p1, v0, :cond_8

    .line 206
    .line 207
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectPosition:Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->changeSelectTv()V

    .line 222
    .line 223
    .line 224
    :cond_8
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 229
    .line 230
    .line 231
    :cond_9
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getFlTitleBack()Landroid/widget/FrameLayout;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->onBackPressed()V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getTvImageSelect()Landroid/widget/TextView;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectMode:I

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    const/4 v1, -0x1

    .line 42
    const-string v2, "imageSelectList"

    .line 43
    .line 44
    if-ne p1, v0, :cond_2

    .line 45
    .line 46
    iget p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->index:I

    .line 47
    .line 48
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getData()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-ge p1, v0, :cond_5

    .line 61
    .line 62
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getAdapter()Lcom/cloud/tmc/miniapp/ui/adapter/ImagePreviewAdapter;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getData()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->index:I

    .line 71
    .line 72
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Ljava/lang/String;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    new-instance p1, Landroid/content/Intent;

    .line 84
    .line 85
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-lez p1, :cond_5

    .line 107
    .line 108
    new-instance p1, Landroid/content/Intent;

    .line 109
    .line 110
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->selectImage:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_3
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getFlOperateShare()Landroid/widget/FrameLayout;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->doShareFile()V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_4
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getFlOperateDownload()Landroid/widget/FrameLayout;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_5

    .line 148
    .line 149
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->doDownloadFile()V

    .line 150
    .line 151
    .line 152
    :cond_5
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getMTaskQueue()Lcom/cloud/tmc/miniapp/task/OooO0O0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/task/OooO0O0;->OooO00o:Ljava/util/LinkedList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getVpPreviewImage()Landroidx/viewpager2/widget/ViewPager2;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->mPageChangeCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->getMTaskQueue()Lcom/cloud/tmc/miniapp/task/OooO0O0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/task/OooO0O0;->OooO00o()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->index:I

    .line 2
    .line 3
    return-void
.end method

.method public final setMaxSelect(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity;->maxSelect:I

    .line 2
    .line 3
    return-void
.end method

.method public showStatusLoading()V
    .locals 0

    .line 1
    return-void
.end method
