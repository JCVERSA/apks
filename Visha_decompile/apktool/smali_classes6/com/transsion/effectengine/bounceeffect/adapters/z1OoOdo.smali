.class public final Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOdo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;


# instance fields
.field public final z1OoOdo:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOdo;->z1OoOdo:Landroid/widget/AbsListView;

    return-void
.end method


# virtual methods
.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOdo;->z1OoOdo:Landroid/widget/AbsListView;

    return-object p0
.end method

.method public final isInAbsoluteEnd()Z
    .locals 5

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOdo;->z1OoOdo:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOdo;->z1OoOdo:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOdo;->z1OoOdo:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOdo;->z1OoOdo:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOdo;->z1OoOdo:Landroid/widget/AbsListView;

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    if-lt v2, v1, :cond_0

    iget-object v1, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOdo;->z1OoOdo:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOdo;->z1OoOdo:Landroid/widget/AbsListView;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingBottom()I

    move-result p0

    sub-int/2addr v1, p0

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v4, 0x0

    :cond_1
    return v4
.end method

.method public final isInAbsoluteStart()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOdo;->z1OoOdo:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOdo;->z1OoOdo:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOdo;->z1OoOdo:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    if-gtz v2, :cond_1

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOdo;->z1OoOdo:Landroid/widget/AbsListView;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingTop()I

    move-result p0

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method
