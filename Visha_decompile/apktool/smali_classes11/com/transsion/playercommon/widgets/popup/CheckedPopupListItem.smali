.class public Lcom/transsion/playercommon/widgets/popup/CheckedPopupListItem;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field public b:Landroidx/appcompat/widget/AppCompatCheckedTextView;

.field public c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/playercommon/widgets/popup/CheckedPopupListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/playercommon/widgets/popup/CheckedPopupListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 5
    sget p2, Lcom/transsion/common/R$layout;->item_list_popup:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    sget p2, Lcom/transsion/common/R$id;->iv_Left:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/popup/CheckedPopupListItem;->c:Landroid/widget/ImageView;

    .line 7
    sget p2, Lcom/transsion/common/R$id;->iv_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatCheckedTextView;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/popup/CheckedPopupListItem;->b:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/popup/CheckedPopupListItem;->b:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p0

    return p0
.end method

.method public setActivated(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/popup/CheckedPopupListItem;->b:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/popup/CheckedPopupListItem;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/popup/CheckedPopupListItem;->b:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public toggle()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/popup/CheckedPopupListItem;->b:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->toggle()V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/popup/CheckedPopupListItem;->c:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/popup/CheckedPopupListItem;->b:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
