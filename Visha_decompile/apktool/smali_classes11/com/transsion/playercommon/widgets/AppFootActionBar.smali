.class public Lcom/transsion/playercommon/widgets/AppFootActionBar;
.super Lcom/transsion/widgetslib/widget/FootOperationBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/widgets/AppFootActionBar$c;
    }
.end annotation


# static fields
.field public static final BOTTOM_ADD_MENU_INDEX:I = 0x2

.field public static final BOTTOM_DELETE_FILE_MENU_INDEX:I = 0x0

.field public static final BOTTOM_DELETE_MENU_INDEX:I = 0x3

.field public static final BOTTOM_DELETE_PRIVATE_INDEX:I = 0x0

.field public static final BOTTOM_FILE_DELETE_MENU_INDEX:I = 0x4

.field public static final BOTTOM_HIDE_FILE_MENU_INDEX:I = 0x1

.field public static final BOTTOM_HIDE_MENU_INDEX:I = 0x1

.field public static final BOTTOM_RESTORE_PRIVATE_INDEX:I = 0x1

.field public static final BOTTOM_SHARE_MENU_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AppFootActionBar"


# instance fields
.field protected mAddIcon:I

.field private final mAllBucketMediaItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mDeleteIcon:I

.field protected mDownloadIcon:I

.field protected mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

.field protected mFilterIcon:I

.field private mFirstClickTime:J

.field protected mHideIcon:I

.field private mIsXHideExist:Z

.field protected mListFlag:I

.field protected mListener:Lcom/transsion/playercommon/widgets/AppFootActionBar$c;

.field private mOriginMenuIconIds:[I

.field private mOriginMenuTitleIds:[I

.field private mPromptDialog:Lcom/transsion/widgetslib/dialog/d;

.field protected mRemoveIcon:I

.field protected mRestoreIcon:I

.field private final mSelectMediaBuckets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/MediaBucket;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectMediaItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mShareIcon:I

.field private final mSupportHide:Z

.field mTempInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoCloudDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/VideoCloudData;",
            ">;"
        }
    .end annotation
.end field

.field private progressDialog:Lcom/transsion/widgetslib/dialog/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mSelectMediaItems:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mSelectMediaBuckets:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mAllBucketMediaItem:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mVideoCloudDataList:Ljava/util/ArrayList;

    .line 7
    sget-object v0, Lcom/transsion/playercommon/R$styleable;->AppFootActionBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 8
    sget v0, Lcom/transsion/playercommon/R$styleable;->AppFootActionBar_support_hide:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mSupportHide:Z

    .line 9
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic W(Lcom/transsion/playercommon/widgets/AppFootActionBar;)Lcom/transsion/widgetslib/dialog/d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mPromptDialog:Lcom/transsion/widgetslib/dialog/d;

    return-object p0
.end method

.method public static bridge synthetic X(Lcom/transsion/playercommon/widgets/AppFootActionBar;)Lcom/transsion/widgetslib/dialog/c;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->progressDialog:Lcom/transsion/widgetslib/dialog/c;

    return-object p0
.end method

.method public static bridge synthetic Y(Lcom/transsion/playercommon/widgets/AppFootActionBar;Lcom/transsion/widgetslib/dialog/d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mPromptDialog:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public static bridge synthetic Z(Lcom/transsion/playercommon/widgets/AppFootActionBar;Lcom/transsion/widgetslib/dialog/c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->progressDialog:Lcom/transsion/widgetslib/dialog/c;

    return-void
.end method


# virtual methods
.method public final a0()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mFirstClickTime:J

    sub-long/2addr v0, v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ingoreClickEvent interval:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "AppFootActionBar"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public checkItemIndex(I)I
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mIsXHideExist:Z

    if-nez p0, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    return p1
.end method

.method public delete(Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppFootActionBar"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {p1, p2, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j0(ZZ)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    new-instance p2, Lcom/transsion/playercommon/widgets/AppFootActionBar$b;

    invoke-direct {p2, p0}, Lcom/transsion/playercommon/widgets/AppFootActionBar$b;-><init>(Lcom/transsion/playercommon/widgets/AppFootActionBar;)V

    invoke-virtual {p1, p2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->f0(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;)V

    return-void
.end method

.method public enableHide(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableHide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppFootActionBar"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mIsXHideExist:Z

    return-void
.end method

.method public initMenuState()V
    .locals 8

    iget v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mListFlag:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mIsXHideExist:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mDeleteIcon:I

    iget v1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mHideIcon:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mOriginMenuIconIds:[I

    sget v0, Lcom/transsion/playercommon/R$string;->delete:I

    sget v1, Lcom/transsion/playercommon/R$string;->hide:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mOriginMenuTitleIds:[I

    goto/16 :goto_d

    :cond_0
    iget v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mDeleteIcon:I

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mOriginMenuIconIds:[I

    sget v0, Lcom/transsion/playercommon/R$string;->delete:I

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mOriginMenuTitleIds:[I

    goto/16 :goto_d

    :cond_1
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mDeleteIcon:I

    iget v1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mRestoreIcon:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mOriginMenuIconIds:[I

    sget v0, Lcom/transsion/playercommon/R$string;->delete:I

    sget v1, Lcom/transsion/playercommon/R$string;->privacy_cancel_hide:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mOriginMenuTitleIds:[I

    goto/16 :goto_d

    :cond_2
    const/16 v1, 0x22

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mDeleteIcon:I

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mOriginMenuIconIds:[I

    sget v0, Lcom/transsion/playercommon/R$string;->delete:I

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mOriginMenuTitleIds:[I

    goto/16 :goto_d

    :cond_3
    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_farvorite_w:I

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mOriginMenuIconIds:[I

    sget v0, Lcom/transsion/playercommon/R$string;->clear_collect_tip:I

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mOriginMenuTitleIds:[I

    goto/16 :goto_d

    :cond_4
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_clear_history_menu_all:I

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mOriginMenuIconIds:[I

    sget v0, Lcom/transsion/playercommon/R$string;->clear:I

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mOriginMenuTitleIds:[I

    goto/16 :goto_d

    :cond_5
    const/16 v2, 0xd

    if-ne v0, v2, :cond_7

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mIsXHideExist:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mShareIcon:I

    iget v1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mHideIcon:I

    iget v2, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mAddIcon:I

    iget v3, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mDeleteIcon:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mOriginMenuIconIds:[I

    sget v0, Lcom/transsion/playercommon/R$string;->share:I

    sget v1, Lcom/transsion/playercommon/R$string;->hide:I

    sget v2, Lcom/transsion/playercommon/R$string;->add_to:I

    sget v3, Lcom/transsion/playercommon/R$string;->delete:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mOriginMenuTitleIds:[I

    goto/16 :goto_d

    :cond_6
    iget v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mShareIcon:I

    iget v1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mAddIcon:I

    iget v2, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mDeleteIcon:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mOriginMenuIconIds:[I

    sget v0, Lcom/transsion/playercommon/R$string;->share:I

    sget v1, Lcom/transsion/playercommon/R$string;->add_to:I

    sget v2, Lcom/transsion/playercommon/R$string;->delete:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mOriginMenuTitleIds:[I

    goto/16 :goto_d

    :cond_7
    const/16 v2, 0x1e

    const/4 v3, 0x0

    if-ne v0, v2, :cond_8

    move v2, v1

    goto :goto_0

    :cond_8
    move v2, v3

    :goto_0
    const/4 v4, 0x6

    if-ne v0, v4, :cond_9

    move v4, v1

    goto :goto_1

    :cond_9
    move v4, v3

    :goto_1
    const/16 v5, 0x21

    if-ne v0, v5, :cond_a

    goto :goto_2

    :cond_a
    move v1, v3

    :goto_2
    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mIsXHideExist:Z

    if-eqz v0, :cond_19

    if-nez v2, :cond_12

    if-eqz v1, :cond_b

    goto :goto_5

    :cond_b
    iget v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mShareIcon:I

    iget v3, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mHideIcon:I

    iget v5, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mAddIcon:I

    if-eqz v4, :cond_c

    sget v6, Lcom/transsion/playercommon/R$drawable;->ic_clear_history_menu_all:I

    goto :goto_3

    :cond_c
    if-eqz v1, :cond_d

    sget v6, Lcom/transsion/playercommon/R$drawable;->ic_cancel_favorite:I

    goto :goto_3

    :cond_d
    if-eqz v2, :cond_e

    iget v6, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mRemoveIcon:I

    goto :goto_3

    :cond_e
    iget v6, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mDeleteIcon:I

    :goto_3
    filled-new-array {v0, v3, v5, v6}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mOriginMenuIconIds:[I

    sget v0, Lcom/transsion/playercommon/R$string;->share:I

    sget v3, Lcom/transsion/playercommon/R$string;->hide:I

    sget v5, Lcom/transsion/playercommon/R$string;->add_to:I

    if-eqz v4, :cond_f

    sget v1, Lcom/transsion/playercommon/R$string;->clear:I

    goto :goto_4

    :cond_f
    if-eqz v1, :cond_10

    sget v1, Lcom/transsion/playercommon/R$string;->unfavorite:I

    goto :goto_4

    :cond_10
    if-eqz v2, :cond_11

    sget v1, Lcom/transsion/playercommon/R$string;->remove:I

    goto :goto_4

    :cond_11
    sget v1, Lcom/transsion/playercommon/R$string;->delete:I

    :goto_4
    filled-new-array {v0, v3, v5, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mOriginMenuTitleIds:[I

    goto/16 :goto_d

    :cond_12
    :goto_5
    iget v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mShareIcon:I

    iget v3, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mHideIcon:I

    iget v5, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mAddIcon:I

    if-eqz v4, :cond_13

    sget v6, Lcom/transsion/playercommon/R$drawable;->ic_clear_history_menu_all:I

    goto :goto_6

    :cond_13
    if-eqz v1, :cond_14

    sget v6, Lcom/transsion/playercommon/R$drawable;->ic_cancel_favorite:I

    goto :goto_6

    :cond_14
    if-eqz v2, :cond_15

    iget v6, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mRemoveIcon:I

    goto :goto_6

    :cond_15
    iget v6, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mDeleteIcon:I

    :goto_6
    iget v7, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mDeleteIcon:I

    filled-new-array {v0, v3, v5, v6, v7}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mOriginMenuIconIds:[I

    sget v0, Lcom/transsion/playercommon/R$string;->share:I

    sget v3, Lcom/transsion/playercommon/R$string;->hide:I

    sget v5, Lcom/transsion/playercommon/R$string;->add_to:I

    if-eqz v4, :cond_16

    sget v1, Lcom/transsion/playercommon/R$string;->clear:I

    goto :goto_7

    :cond_16
    if-eqz v1, :cond_17

    sget v1, Lcom/transsion/playercommon/R$string;->unfavorite:I

    goto :goto_7

    :cond_17
    if-eqz v2, :cond_18

    sget v1, Lcom/transsion/playercommon/R$string;->remove:I

    goto :goto_7

    :cond_18
    sget v1, Lcom/transsion/playercommon/R$string;->delete:I

    :goto_7
    sget v2, Lcom/transsion/playercommon/R$string;->delete:I

    filled-new-array {v0, v3, v5, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mOriginMenuTitleIds:[I

    goto/16 :goto_d

    :cond_19
    if-nez v2, :cond_21

    if-eqz v1, :cond_1a

    goto :goto_a

    :cond_1a
    iget v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mShareIcon:I

    iget v3, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mAddIcon:I

    if-eqz v4, :cond_1b

    sget v5, Lcom/transsion/playercommon/R$drawable;->ic_clear_history_menu_all:I

    goto :goto_8

    :cond_1b
    if-eqz v1, :cond_1c

    sget v5, Lcom/transsion/playercommon/R$drawable;->ic_cancel_favorite:I

    goto :goto_8

    :cond_1c
    if-eqz v2, :cond_1d

    iget v5, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mRemoveIcon:I

    goto :goto_8

    :cond_1d
    iget v5, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mDeleteIcon:I

    :goto_8
    filled-new-array {v0, v3, v5}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mOriginMenuIconIds:[I

    sget v0, Lcom/transsion/playercommon/R$string;->share:I

    sget v3, Lcom/transsion/playercommon/R$string;->add_to:I

    if-eqz v4, :cond_1e

    sget v1, Lcom/transsion/playercommon/R$string;->clear:I

    goto :goto_9

    :cond_1e
    if-eqz v1, :cond_1f

    sget v1, Lcom/transsion/playercommon/R$string;->unfavorite:I

    goto :goto_9

    :cond_1f
    if-eqz v2, :cond_20

    sget v1, Lcom/transsion/playercommon/R$string;->remove:I

    goto :goto_9

    :cond_20
    sget v1, Lcom/transsion/playercommon/R$string;->delete:I

    :goto_9
    filled-new-array {v0, v3, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mOriginMenuTitleIds:[I

    goto :goto_d

    :cond_21
    :goto_a
    iget v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mShareIcon:I

    iget v3, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mAddIcon:I

    if-eqz v4, :cond_22

    sget v5, Lcom/transsion/playercommon/R$drawable;->ic_clear_history_menu_all:I

    goto :goto_b

    :cond_22
    if-eqz v1, :cond_23

    sget v5, Lcom/transsion/playercommon/R$drawable;->ic_cancel_favorite:I

    goto :goto_b

    :cond_23
    if-eqz v2, :cond_24

    iget v5, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mRemoveIcon:I

    goto :goto_b

    :cond_24
    iget v5, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mDeleteIcon:I

    :goto_b
    iget v6, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mDeleteIcon:I

    filled-new-array {v0, v3, v5, v6}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mOriginMenuIconIds:[I

    sget v0, Lcom/transsion/playercommon/R$string;->share:I

    sget v3, Lcom/transsion/playercommon/R$string;->add_to:I

    if-eqz v4, :cond_25

    sget v1, Lcom/transsion/playercommon/R$string;->clear:I

    goto :goto_c

    :cond_25
    if-eqz v1, :cond_26

    sget v1, Lcom/transsion/playercommon/R$string;->unfavorite:I

    goto :goto_c

    :cond_26
    if-eqz v2, :cond_27

    sget v1, Lcom/transsion/playercommon/R$string;->remove:I

    goto :goto_c

    :cond_27
    sget v1, Lcom/transsion/playercommon/R$string;->delete:I

    :goto_c
    sget v2, Lcom/transsion/playercommon/R$string;->delete:I

    filled-new-array {v0, v3, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mOriginMenuTitleIds:[I

    :goto_d
    return-void
.end method

.method public initResource()V
    .locals 1

    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_share:I

    iput v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mShareIcon:I

    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_filter:I

    iput v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mFilterIcon:I

    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_delete:I

    iput v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mDeleteIcon:I

    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_remove:I

    iput v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mRemoveIcon:I

    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_hide_menu:I

    iput v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mHideIcon:I

    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_add_song:I

    iput v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mAddIcon:I

    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_no_privacy:I

    iput v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mRestoreIcon:I

    sget v0, Lcom/transsion/playercommon/R$drawable;->icon_download_file:I

    iput v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mDownloadIcon:I

    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mContext:Landroid/content/Context;

    sget-boolean v0, Lpp3;->p:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mSupportHide:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljf;->o(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mIsXHideExist:Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->initResource()V

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v2, Lcom/transsion/playercommon/R$attr;->foot_bar_background:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerBackgroundNoOverlay(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->M()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/d;->g(Landroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method public onItemClick(IZ)V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mFirstClickTime:J

    iget v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mListFlag:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mSelectMediaBuckets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v4

    invoke-virtual {v4, v3}, Ltpb;->i(Lcom/transsion/dbdata/beans/media/MediaBucket;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mAllBucketMediaItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-object p2, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mAllBucketMediaItem:Ljava/util/ArrayList;

    iget v1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mListFlag:I

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;-><init>(Landroid/content/Context;Ljava/util/ArrayList;IZ)V

    invoke-virtual {p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->V()V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mListener:Lcom/transsion/playercommon/widgets/AppFootActionBar$c;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Lcom/transsion/playercommon/widgets/AppFootActionBar$c;->finish()V

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mAllBucketMediaItem:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->preDelete(ILjava/util/ArrayList;Z)V

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    if-eqz p1, :cond_7

    if-eq p1, v2, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mSelectMediaItems:Ljava/util/ArrayList;

    invoke-direct {p1, v1, v3, v0, v2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;-><init>(Landroid/content/Context;Ljava/util/ArrayList;IZ)V

    sget-boolean v0, Lpp3;->p:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->m0()V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->V()V

    :goto_1
    const-string p1, "vd_mul_encry_cl"

    const-wide v0, 0xd91af27327L

    invoke-static {p2, p1, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mListener:Lcom/transsion/playercommon/widgets/AppFootActionBar$c;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Lcom/transsion/playercommon/widgets/AppFootActionBar$c;->finish()V

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v2}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->preShare(Z)V

    const-string p0, "vd_mul_share_cl"

    const-wide v0, 0xd91af27329L

    invoke-static {p2, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_8
    :goto_2
    return-void
.end method

.method public preDelete(ILjava/util/ArrayList;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preDelete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppFootActionBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mTempInfos:Ljava/util/ArrayList;

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ge p1, v0, :cond_4

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mTempInfos:Ljava/util/ArrayList;

    new-instance v3, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v4, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/transsion/playercommon/activities/BaseActivity;

    iget-object v3, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v2, v3}, Lnx8;->b(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mContext:Landroid/content/Context;

    move-object v8, v1

    check-cast v8, Lcom/transsion/playercommon/activities/BaseActivity;

    iget-object v9, v7, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    new-instance v10, Lcom/transsion/playercommon/widgets/AppFootActionBar$a;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move v4, v0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/transsion/playercommon/widgets/AppFootActionBar$a;-><init>(Lcom/transsion/playercommon/widgets/AppFootActionBar;IILjava/util/ArrayList;ZLcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-static {v8, v9, v10}, Lnx8;->e(Landroid/app/Activity;Ljava/lang/String;Ls08;)Z

    const/4 v1, 0x0

    :cond_2
    if-nez v1, :cond_3

    return-void

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0, p2, p3}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->delete(Ljava/util/ArrayList;Z)V

    :cond_5
    return-void
.end method

.method public preShare(Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mSelectMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mSelectMediaItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->originUrl:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lrr3;->c(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2

    :cond_0
    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri()Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p0}, Lrr3;->a(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mSelectMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x12c

    if-le v0, v1, :cond_2

    sget p0, Lcom/transsion/playercommon/R$string;->share_too_more_tip:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mSelectMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    const-string p1, "video/*"

    goto :goto_1

    :cond_4
    const-string p1, "audio/*"

    :goto_1
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, p0}, Lrr3;->b(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;)V

    :goto_2
    return-void
.end method

.method public setAllEnable(Z)V
    .locals 6

    iget v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mListFlag:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v3, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mIsXHideExist:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0, v2, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    goto :goto_2

    :cond_0
    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v3, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    goto :goto_2

    :cond_1
    if-ne v0, v2, :cond_2

    invoke-virtual {p0, v3, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    goto :goto_2

    :cond_2
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v3

    :goto_0
    const/16 v4, 0x21

    if-ne v0, v4, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_1
    invoke-virtual {p0, v3, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    iget-boolean v3, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mIsXHideExist:Z

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v3, :cond_7

    if-nez v1, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    :cond_6
    invoke-virtual {p0, v2, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    invoke-virtual {p0, v5, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    invoke-virtual {p0, v4, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    goto :goto_2

    :cond_7
    if-nez v1, :cond_8

    if-eqz v0, :cond_9

    :cond_8
    invoke-virtual {p0, v5, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    :cond_9
    invoke-virtual {p0, v4, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    invoke-virtual {p0, v2, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    :cond_a
    :goto_2
    return-void
.end method

.method public setDeleteIcon(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mDeleteIcon:I

    return-void
.end method

.method public setFileOperateUtils(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mFileOperateUtils:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    return-void
.end method

.method public setListFlag(I)V
    .locals 2

    iput p1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mListFlag:I

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->initMenuState()V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mOriginMenuIconIds:[I

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mOriginMenuTitleIds:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItems([I[I)V

    return-void
.end method

.method public setOperateFinishListener(Lcom/transsion/playercommon/widgets/AppFootActionBar$c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mListener:Lcom/transsion/playercommon/widgets/AppFootActionBar$c;

    return-void
.end method

.method public setSelectItems(Ljava/util/ArrayList;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mListFlag:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mSelectMediaBuckets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mSelectMediaBuckets:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mSelectMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mSelectMediaItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mVideoCloudDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mVideoCloudDataList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    return-void
.end method
