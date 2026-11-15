.class public abstract Lm8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I


# direct methods
.method public static synthetic a(Landroidx/fragment/app/DialogFragment;Ljava/util/List;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lm8;->g(Landroidx/fragment/app/DialogFragment;Ljava/util/List;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/CheckBox;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lm8;->i(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/CheckBox;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lm8;->f(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Landroidx/fragment/app/DialogFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lm8;->j(Landroidx/fragment/app/DialogFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic e(Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V
    .locals 0

    invoke-static {p0}, Lm8;->h(Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V

    return-void
.end method

.method public static synthetic f(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V
    .locals 6

    move-object v0, p4

    move-object v1, p5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lm8;->l(Landroidx/fragment/app/DialogFragment;Landroid/view/View;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Landroidx/fragment/app/DialogFragment;Ljava/util/List;Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->DEFAULT:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    goto :goto_1

    :cond_0
    sget-object v2, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->IGNORE:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    :goto_1
    aput-object v2, p0, p3

    new-instance p3, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->DEFAULT:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    goto :goto_2

    :cond_1
    sget-object v2, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->IGNORE:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    :goto_2
    invoke-direct {p3, v2}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;-><init>(Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p3, v2}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->setPriority(Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;Z)V

    move p3, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lpk0;->f()Lpk0;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lpk0;->p(Ljava/lang/String;[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)V

    return-void
.end method

.method public static synthetic h(Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V
    .locals 0

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lm8;->a:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lm8;->a:I

    goto :goto_0

    :cond_0
    sget p0, Lm8;->a:I

    :goto_0
    sput p0, Lm8;->a:I

    return-void
.end method

.method public static synthetic i(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/CheckBox;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    sget v0, Lcom/transsion/bt_download/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {p4}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    check-cast p4, Landroid/widget/CheckBox;

    invoke-virtual {p4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p4

    invoke-virtual {p5, p4}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->setChecked(Z)V

    const/4 p5, 0x1

    if-eqz p4, :cond_0

    sget p4, Lm8;->a:I

    add-int/2addr p4, p5

    :goto_0
    sput p4, Lm8;->a:I

    goto :goto_1

    :cond_0
    sget p4, Lm8;->a:I

    sub-int/2addr p4, p5

    goto :goto_0

    :goto_1
    sput p4, Lm8;->a:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p4, Lm8;->a:I

    if-le p4, p5, :cond_1

    sget v0, Lcom/transsion/bt_download/R$string;->item:I

    goto :goto_2

    :cond_1
    sget v0, Lcom/transsion/bt_download/R$string;->items:I

    :goto_2
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, v0, p4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p0, Lm8;->a:I

    invoke-virtual {p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    if-ne p0, p1, :cond_2

    goto :goto_3

    :cond_2
    const/4 p5, 0x0

    :goto_3
    invoke-virtual {p2, p5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_3
    return-void
.end method

.method public static synthetic j(Landroidx/fragment/app/DialogFragment;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public static k(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;

    const-string v1, "add_torrent_file"

    sget v2, Lcom/transsion/bt_download/R$layout;->dialog_file_select:I

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->f(I)V

    new-instance v1, Lh8;

    invoke-direct {v1, p0, p1, p2, p3}, Lh8;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->e(Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$a;)V

    invoke-virtual {v0}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->g()V

    return-void
.end method

.method public static l(Landroidx/fragment/app/DialogFragment;Landroid/view/View;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 3

    sget v0, Lcom/transsion/bt_download/R$id;->tv_select_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/transsion/bt_download/R$id;->bt_start_converting:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Li8;

    invoke-direct {v2, p0, p3, p5}, Li8;-><init>(Landroidx/fragment/app/DialogFragment;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p3, Lcom/transsion/bt_download/R$id;->rv_select_list:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    new-instance p5, Lcom/transsion/btdownload/ui/AddFileAdapter;

    invoke-direct {p5, p2}, Lcom/transsion/btdownload/ui/AddFileAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p5, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    sget v1, Lcom/transsion/bt_download/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    new-instance v1, Lm8$a;

    invoke-direct {v1, p5, p1, v0, p2}, Lm8$a;-><init>(Lcom/transsion/btdownload/ui/AddFileAdapter;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p3, p5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p3, 0x0

    sput p3, Lm8;->a:I

    new-instance v1, Lj8;

    invoke-direct {v1}, Lj8;-><init>()V

    invoke-interface {p4, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    sget v1, Lm8;->a:I

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ne v1, p4, :cond_0

    move p3, v2

    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lm8;->a:I

    if-le p4, v2, :cond_1

    sget v1, Lcom/transsion/bt_download/R$string;->item:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/transsion/bt_download/R$string;->items:I

    :goto_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, v1, p4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p3, Lk8;

    invoke-direct {p3, v0, p2, p1}, Lk8;-><init>(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/CheckBox;)V

    invoke-virtual {p5, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    new-instance p3, Lm8$b;

    invoke-direct {p3, v0, p2, p1, p5}, Lm8$b;-><init>(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/CheckBox;Lcom/transsion/btdownload/ui/AddFileAdapter;)V

    invoke-virtual {p5, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    new-instance p2, Ll8;

    invoke-direct {p2, p0}, Ll8;-><init>(Landroidx/fragment/app/DialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
