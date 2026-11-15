.class public Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;
.super Lcom/transsion/widgetslib/widget/FootOperationBar;
.source "SourceFile"


# static fields
.field public static final BOTTOM_OPERATION_DELETE_MENU_INDEX:I


# instance fields
.field public b:I

.field public c:I

.field public d:Landroid/content/Context;

.field public e:[I

.field public f:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/FootOperationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;->initView(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public initMenu(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    sget p1, Lcom/transsion/playercommon/R$string;->delete:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/playercommon/R$string;->visha_download_cancel:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/transsion/playercommon/R$string;->visha_upload_cancel:I

    :goto_0
    iget v0, p0, Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;->b:I

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;->e:[I

    filled-new-array {p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;->f:[I

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItems([I[I)V

    return-void
.end method

.method public initResource()V
    .locals 1

    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_delete:I

    iput v0, p0, Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;->b:I

    iput v0, p0, Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;->c:I

    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;->initResource()V

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    iget-object v0, p0, Lcom/transsion/cloud/updownload/widgets/TransferOperationBar;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$attr;->foot_bar_background:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerBackgroundNoOverlay(I)V

    return-void
.end method
