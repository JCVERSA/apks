.class public Lcom/transsion/playercommon/widgets/popup/SimplePopupAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lgw4;",
        ">",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "TT;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    sget v0, Lcom/transsion/playercommon/R$layout;->layout_item_simple_list_popup:I

    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/chad/library/adapter/base/BaseViewHolder;Lgw4;)V
    .locals 0

    sget p0, Lcom/transsion/playercommon/R$id;->simple_popup_list_item:I

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/widgets/popup/CheckedPopupListItem;

    invoke-interface {p2}, Lgw4;->displayText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/popup/CheckedPopupListItem;->setTitle(Ljava/lang/String;)V

    invoke-interface {p2}, Lgw4;->isCheck()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/popup/CheckedPopupListItem;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lgw4;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/popup/SimplePopupAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lgw4;)V

    return-void
.end method
