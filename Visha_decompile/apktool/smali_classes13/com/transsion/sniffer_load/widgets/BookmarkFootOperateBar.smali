.class public Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;
.super Lcom/transsion/widgetslib/widget/FootOperationBar;
.source "SourceFile"


# static fields
.field public static final BOTTOM_DELETE_MENU_INDEX:I = 0x1

.field public static final BOTTOM_EDIT_MENU_INDEX:I


# instance fields
.field public b:[I

.field public c:[I

.field public d:I

.field public e:I

.field public final f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;->initView(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public initMenuState()V
    .locals 2

    iget v0, p0, Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;->d:I

    iget v1, p0, Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;->e:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;->b:[I

    sget v0, Lcom/transsion/playercommon/R$string;->download_bookmark_bottom_edit:I

    sget v1, Lcom/transsion/playercommon/R$string;->remove:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;->c:[I

    return-void
.end method

.method public initResource()V
    .locals 1

    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_bookmark_edit_1:I

    iput v0, p0, Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;->d:I

    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_bookmark_remove_1:I

    iput v0, p0, Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;->e:I

    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;->initResource()V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v1, Lcom/transsion/common/R$attr;->foot_bar_background:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerBackgroundNoOverlay(I)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;->initMenuState()V

    iget-object p1, p0, Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;->b:[I

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;->c:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItems([I[I)V

    return-void
.end method

.method public setAllEnable(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    return-void
.end method

.method public setEditEnable(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    return-void
.end method

.method public setSelectItems(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
