.class public Lcom/transsion/playercommon/widgets/NewAppFootActionBar;
.super Lcom/transsion/playercommon/widgets/AppFootActionBar;
.source "SourceFile"


# static fields
.field public static final BOTTOM_ADD_MENU_INDEX:I = 0x2

.field public static final BOTTOM_DELETE_MENU_INDEX:I = 0x3

.field public static final BOTTOM_HIDE_MENU_INDEX:I = 0x1

.field public static final BOTTOM_SHARE_OR_HISTORY_DELETE_MENU_INDEX:I


# instance fields
.field public b:[I

.field public c:[I

.field public d:Z


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


# virtual methods
.method public checkItemIndex(I)I
    .locals 2

    iget v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mListFlag:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v1, 0x35

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->d:Z

    if-nez p0, :cond_1

    if-lez p1, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    :goto_0
    return p1
.end method

.method public initMenuState()V
    .locals 4

    iget v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mListFlag:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_clear_history_menu_all:I

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->b:[I

    sget v0, Lcom/transsion/playercommon/R$string;->clear:I

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->c:[I

    goto/16 :goto_1

    :cond_0
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mDownloadIcon:I

    iget v1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mDeleteIcon:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->b:[I

    sget v0, Lcom/transsion/playercommon/R$string;->download:I

    sget v1, Lcom/transsion/playercommon/R$string;->delete:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->c:[I

    goto/16 :goto_1

    :cond_1
    const/16 v1, 0x15

    if-eq v0, v1, :cond_5

    const/16 v1, 0x35

    if-eq v0, v1, :cond_5

    const/16 v1, 0x18

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_clear_history_menu_all:I

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->b:[I

    sget v0, Lcom/transsion/playercommon/R$string;->clear:I

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->c:[I

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->d:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mShareIcon:I

    iget v1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mHideIcon:I

    iget v2, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mAddIcon:I

    iget v3, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mDeleteIcon:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->b:[I

    sget v0, Lcom/transsion/playercommon/R$string;->share:I

    sget v1, Lcom/transsion/playercommon/R$string;->hide:I

    sget v2, Lcom/transsion/playercommon/R$string;->add_to:I

    sget v3, Lcom/transsion/playercommon/R$string;->delete:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->c:[I

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mShareIcon:I

    iget v1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mAddIcon:I

    iget v2, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mDeleteIcon:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->b:[I

    sget v0, Lcom/transsion/playercommon/R$string;->share:I

    sget v1, Lcom/transsion/playercommon/R$string;->add_to:I

    sget v2, Lcom/transsion/playercommon/R$string;->delete:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->c:[I

    goto :goto_1

    :cond_5
    :goto_0
    iget v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mShareIcon:I

    iget v1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mFilterIcon:I

    iget v2, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mAddIcon:I

    iget v3, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mDeleteIcon:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->b:[I

    sget v0, Lcom/transsion/playercommon/R$string;->share:I

    sget v1, Lcom/transsion/playercommon/R$string;->visha_file_filter:I

    sget v2, Lcom/transsion/playercommon/R$string;->add_to:I

    sget v3, Lcom/transsion/playercommon/R$string;->delete:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->c:[I

    :goto_1
    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mContext:Landroid/content/Context;

    sget-boolean v0, Lpp3;->p:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

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
    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->d:Z

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

.method public setAllEnable(Z)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    iget v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mListFlag:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->d:Z

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    if-ne v0, v4, :cond_1

    invoke-virtual {p0, v3, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    invoke-virtual {p0, v4, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    invoke-virtual {p0, v2, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    invoke-virtual {p0, v4, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    invoke-virtual {p0, v2, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    :goto_0
    return-void
.end method

.method public setEnabled(IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    return-void
.end method

.method public setListFlag(I)V
    .locals 2

    iput p1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mListFlag:I

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->initMenuState()V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->b:[I

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/NewAppFootActionBar;->c:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItems([I[I)V

    return-void
.end method
