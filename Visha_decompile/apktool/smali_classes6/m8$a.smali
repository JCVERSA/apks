.class public Lm8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm8;->l(Landroidx/fragment/app/DialogFragment;Landroid/view/View;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/btdownload/ui/AddFileAdapter;

.field public final synthetic c:Landroid/widget/CheckBox;

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/transsion/btdownload/ui/AddFileAdapter;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lm8$a;->b:Lcom/transsion/btdownload/ui/AddFileAdapter;

    iput-object p2, p0, Lm8$a;->c:Landroid/widget/CheckBox;

    iput-object p3, p0, Lm8$a;->d:Landroid/widget/TextView;

    iput-object p4, p0, Lm8$a;->e:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lm8$a;->b:Lcom/transsion/btdownload/ui/AddFileAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lm8$a$a;

    invoke-direct {v0, p0}, Lm8$a$a;-><init>(Lm8$a;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lm8$a;->b:Lcom/transsion/btdownload/ui/AddFileAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lm8$a;->c:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lm8$a;->b:Lcom/transsion/btdownload/ui/AddFileAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sput p1, Lm8;->a:I

    iget-object p1, p0, Lm8$a;->d:Landroid/widget/TextView;

    iget-object p0, p0, Lm8$a;->e:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lm8;->a:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    sget v1, Lcom/transsion/bt_download/R$string;->item:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/transsion/bt_download/R$string;->items:I

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
