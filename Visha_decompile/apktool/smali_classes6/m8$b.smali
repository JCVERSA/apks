.class public Lm8$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm8;->l(Landroidx/fragment/app/DialogFragment;Landroid/view/View;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Landroid/widget/CheckBox;

.field public final synthetic e:Lcom/transsion/btdownload/ui/AddFileAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/CheckBox;Lcom/transsion/btdownload/ui/AddFileAdapter;)V
    .locals 0

    iput-object p1, p0, Lm8$b;->b:Landroid/widget/TextView;

    iput-object p2, p0, Lm8$b;->c:Landroid/content/Context;

    iput-object p3, p0, Lm8$b;->d:Landroid/widget/CheckBox;

    iput-object p4, p0, Lm8$b;->e:Lcom/transsion/btdownload/ui/AddFileAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 4

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    invoke-virtual {p2}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->isChecked()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->setChecked(Z)V

    const/4 p2, 0x1

    if-nez v0, :cond_0

    sget v0, Lm8;->a:I

    add-int/2addr v0, p2

    :goto_0
    sput v0, Lm8;->a:I

    goto :goto_1

    :cond_0
    sget v0, Lm8;->a:I

    sub-int/2addr v0, p2

    goto :goto_0

    :goto_1
    sput v0, Lm8;->a:I

    iget-object v0, p0, Lm8$b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lm8$b;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lm8;->a:I

    if-le v2, p2, :cond_1

    sget v3, Lcom/transsion/bt_download/R$string;->item:I

    goto :goto_2

    :cond_1
    sget v3, Lcom/transsion/bt_download/R$string;->items:I

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lm8$b;->d:Landroid/widget/CheckBox;

    sget v1, Lm8;->a:I

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    if-ne v1, p1, :cond_2

    goto :goto_3

    :cond_2
    const/4 p2, 0x0

    :goto_3
    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p0, p0, Lm8$b;->e:Lcom/transsion/btdownload/ui/AddFileAdapter;

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
