.class public Lcom/transsion/onlinevideo/widgets/history/OnlineFootActionBar;
.super Lcom/transsion/playercommon/widgets/AppFootActionBar;
.source "SourceFile"


# instance fields
.field public b:[I

.field public c:[I


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
.method public initMenuState()V
    .locals 1

    iget v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mDeleteIcon:I

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/history/OnlineFootActionBar;->b:[I

    sget v0, Lcom/transsion/playercommon/R$string;->delete:I

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/widgets/history/OnlineFootActionBar;->c:[I

    return-void
.end method

.method public initResource()V
    .locals 1

    sget v0, Lcom/transsion/onlinevideo/R$drawable;->ic_clear_history_all:I

    iput v0, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mDeleteIcon:I

    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/widgets/history/OnlineFootActionBar;->initResource()V

    sget p1, Lcom/transsion/onlinevideo/R$color;->online_video_bottom_player_operate_bar:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerBackgroundNoOverlay(I)V

    return-void
.end method

.method public setAllEnable(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItemEnable(IZ)V

    return-void
.end method

.method public setListFlag(I)V
    .locals 2

    iput p1, p0, Lcom/transsion/playercommon/widgets/AppFootActionBar;->mListFlag:I

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/widgets/history/OnlineFootActionBar;->initMenuState()V

    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/history/OnlineFootActionBar;->c:[I

    if-eqz p1, :cond_0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    sget v1, Lcom/transsion/onlinevideo/R$string;->clear:I

    aput v1, p1, v0

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/widgets/history/OnlineFootActionBar;->b:[I

    if-eqz p1, :cond_1

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    sget v1, Lcom/transsion/onlinevideo/R$drawable;->ic_clear_history_all:I

    aput v1, p1, v0

    :cond_1
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/onlinevideo/widgets/history/OnlineFootActionBar;->c:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->changeItems([I[I)V

    return-void
.end method
