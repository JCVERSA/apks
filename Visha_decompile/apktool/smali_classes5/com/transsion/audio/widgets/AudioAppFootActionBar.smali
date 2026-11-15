.class public Lcom/transsion/audio/widgets/AudioAppFootActionBar;
.super Lcom/transsion/playercommon/widgets/AppFootActionBar;
.source "SourceFile"


# static fields
.field public static final BOTTOM_ADD_MENU_INDEX:I = 0x2

.field public static final BOTTOM_DELETE_MENU_INDEX:I = 0x3

.field public static final BOTTOM_FILE_DELETE_MENU_INDEX:I = 0x4

.field public static final BOTTOM_FILTER_MENU_INDEX:I = 0x1

.field public static final BOTTOM_SHARE_MENU_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioAppFootActionBar"


# instance fields
.field private mOriginMenuIconIds:[I

.field private mOriginMenuTitleIds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/playercommon/widgets/AppFootActionBar;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/transsion/playercommon/widgets/AppFootActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private isFilter()Z
    .locals 1

    iget p0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mListFlag:I

    const/16 v0, 0x24

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public initMenuState()V
    .locals 7

    iget v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mListFlag:I

    const/16 v1, 0x1e

    const/16 v2, 0x21

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    const/16 v5, 0x20

    if-ne v0, v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    if-ne v0, v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    move v2, v4

    :goto_3
    const/16 v6, 0x24

    if-ne v0, v6, :cond_4

    goto :goto_4

    :cond_4
    move v3, v4

    :goto_4
    if-nez v1, :cond_8

    iget v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mShareIcon:I

    iget v1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mFilterIcon:I

    iget v2, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mAddIcon:I

    if-eqz v5, :cond_5

    sget v4, Lcom/transsion/audio/R$drawable;->ic_delete_all:I

    goto :goto_5

    :cond_5
    iget v4, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mDeleteIcon:I

    :goto_5
    filled-new-array {v0, v1, v2, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioAppFootActionBar;->mOriginMenuIconIds:[I

    sget v0, Lcom/transsion/playercommon/R$string;->share:I

    if-eqz v3, :cond_6

    sget v1, Lcom/transsion/audio/R$string;->visha_file_not_filter:I

    goto :goto_6

    :cond_6
    sget v1, Lcom/transsion/audio/R$string;->visha_file_filter:I

    :goto_6
    sget v2, Lcom/transsion/playercommon/R$string;->add_to:I

    if-eqz v5, :cond_7

    sget v3, Lcom/transsion/audio/R$string;->clear:I

    goto :goto_7

    :cond_7
    sget v3, Lcom/transsion/playercommon/R$string;->delete:I

    :goto_7
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioAppFootActionBar;->mOriginMenuTitleIds:[I

    goto :goto_a

    :cond_8
    iget v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mShareIcon:I

    iget v1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mFilterIcon:I

    iget v3, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mAddIcon:I

    if-eqz v2, :cond_9

    sget v4, Lcom/transsion/playercommon/R$drawable;->ic_cancel_favorite:I

    goto :goto_8

    :cond_9
    iget v4, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mRemoveIcon:I

    :goto_8
    iget v5, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mDeleteIcon:I

    filled-new-array {v0, v1, v3, v4, v5}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioAppFootActionBar;->mOriginMenuIconIds:[I

    sget v0, Lcom/transsion/playercommon/R$string;->share:I

    sget v1, Lcom/transsion/audio/R$string;->visha_file_filter:I

    sget v3, Lcom/transsion/playercommon/R$string;->add_to:I

    if-eqz v2, :cond_a

    sget v2, Lcom/transsion/playercommon/R$string;->unfavorite:I

    goto :goto_9

    :cond_a
    sget v2, Lcom/transsion/audio/R$string;->remove:I

    :goto_9
    sget v4, Lcom/transsion/playercommon/R$string;->delete:I

    filled-new-array {v0, v1, v3, v2, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/AudioAppFootActionBar;->mOriginMenuTitleIds:[I

    :goto_a
    return-void
.end method

.method public initResource()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/widgets/AppFootActionBar;->initResource()V

    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioAppFootActionBar;->initResource()V

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$attr;->foot_bar_background:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerBackgroundNoOverlay(I)V

    return-void
.end method

.method public setAllEnable(Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/AudioAppFootActionBar;->isFilter()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->getItemView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mListFlag:I

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x21

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    :cond_2
    return-void
.end method

.method public setListFlag(I)V
    .locals 2

    iput p1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mListFlag:I

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioAppFootActionBar;->initMenuState()V

    iget-object p1, p0, Lcom/transsion/audio/widgets/AudioAppFootActionBar;->mOriginMenuIconIds:[I

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioAppFootActionBar;->mOriginMenuTitleIds:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItems([I[I)V

    return-void
.end method
