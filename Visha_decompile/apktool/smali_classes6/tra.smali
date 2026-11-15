.class public abstract Ltra;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I


# direct methods
.method public static synthetic a(Landroidx/fragment/app/DialogFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Ltra;->n(Landroidx/fragment/app/DialogFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Ljava/util/List;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltra;->h(Landroid/content/Context;Ljava/util/List;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Landroidx/fragment/app/DialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltra;->i(Landroidx/fragment/app/DialogFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Landroid/widget/CheckBox;Lcom/transsion/btdownload/ui/DownloadableFileItem;)V
    .locals 0

    invoke-static {p0, p1}, Ltra;->j(Landroid/widget/CheckBox;Lcom/transsion/btdownload/ui/DownloadableFileItem;)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/btdownload/ui/FileSelectAdapter;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Ltra;->k(Lcom/transsion/btdownload/ui/FileSelectAdapter;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/btdownload/ui/FileSelectAdapter;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/CheckBox;Landroid/widget/Button;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static/range {p0 .. p7}, Ltra;->m(Lcom/transsion/btdownload/ui/FileSelectAdapter;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/CheckBox;Landroid/widget/Button;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic g(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/CheckBox;Landroid/widget/Button;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static/range {p0 .. p6}, Ltra;->l(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/CheckBox;Landroid/widget/Button;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic h(Landroid/content/Context;Ljava/util/List;Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p2, p3, p0, p1}, Ltra;->p(Landroidx/fragment/app/DialogFragment;Landroid/view/View;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic i(Landroidx/fragment/app/DialogFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "visha_TorrentDialogUtils"

    sget v0, Ltra;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "vd_dl_brower_rp_bt_list_dl_cl"

    const-string v2, "num"

    invoke-static {v1, v2, v0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    invoke-static {}, Lpk0;->f()Lpk0;

    move-result-object v0

    invoke-virtual {v0}, Lpk0;->s()Z

    sget v0, Lcom/transsion/bt_download/R$string;->add_to_download_list:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V
    :try_end_0
    .catch Lorg/proninyaroslav/libretorrent/core/exception/FreeSpaceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDownload error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    sget v0, Lcom/transsion/bt_download/R$string;->not_enough_storage:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDownload FreeSpaceException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public static synthetic j(Landroid/widget/CheckBox;Lcom/transsion/btdownload/ui/DownloadableFileItem;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    iput-boolean p0, p1, Lcom/transsion/btdownload/ui/DownloadableFileItem;->selected:Z

    return-void
.end method

.method public static synthetic k(Lcom/transsion/btdownload/ui/FileSelectAdapter;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/Button;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p5

    new-instance v0, Lsra;

    invoke-direct {v0, p1}, Lsra;-><init>(Landroid/widget/CheckBox;)V

    invoke-interface {p5, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    const/4 p5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, p5

    :goto_0
    sput p0, Ltra;->a:I

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Ltra;->a:I

    const/4 p3, 0x1

    if-le p1, p3, :cond_1

    sget v0, Lcom/transsion/bt_download/R$string;->item:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/transsion/bt_download/R$string;->items:I

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p0, Ltra;->a:I

    if-lez p0, :cond_2

    move p5, p3

    :cond_2
    invoke-virtual {p4, p5}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public static synthetic l(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/CheckBox;Landroid/widget/Button;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    sget v0, Lcom/transsion/bt_download/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/transsion/btdownload/ui/DownloadableFileItem;

    check-cast p5, Landroid/widget/CheckBox;

    invoke-virtual {p5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p5

    iput-boolean p5, p6, Lcom/transsion/btdownload/ui/DownloadableFileItem;->selected:Z

    const/4 p6, 0x1

    if-eqz p5, :cond_0

    sget p5, Ltra;->a:I

    add-int/2addr p5, p6

    :goto_0
    sput p5, Ltra;->a:I

    goto :goto_1

    :cond_0
    sget p5, Ltra;->a:I

    sub-int/2addr p5, p6

    goto :goto_0

    :goto_1
    sput p5, Ltra;->a:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p5, Ltra;->a:I

    if-le p5, p6, :cond_1

    sget v0, Lcom/transsion/bt_download/R$string;->item:I

    goto :goto_2

    :cond_1
    sget v0, Lcom/transsion/bt_download/R$string;->items:I

    :goto_2
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p1, v0, p5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p0, Ltra;->a:I

    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    const/4 p4, 0x0

    if-ne p0, p1, :cond_2

    move p0, p6

    goto :goto_3

    :cond_2
    move p0, p4

    :goto_3
    invoke-virtual {p2, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    sget p0, Ltra;->a:I

    if-lez p0, :cond_3

    goto :goto_4

    :cond_3
    move p6, p4

    :goto_4
    invoke-virtual {p3, p6}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    return-void
.end method

.method public static synthetic m(Lcom/transsion/btdownload/ui/FileSelectAdapter;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/CheckBox;Landroid/widget/Button;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0, p7}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/transsion/btdownload/ui/DownloadableFileItem;

    iget-boolean p6, p6, Lcom/transsion/btdownload/ui/DownloadableFileItem;->selected:Z

    xor-int/lit8 v0, p6, 0x1

    invoke-virtual {p0, p7}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/btdownload/ui/DownloadableFileItem;

    iput-boolean v0, v1, Lcom/transsion/btdownload/ui/DownloadableFileItem;->selected:Z

    invoke-virtual {p0, p7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    const/4 p0, 0x1

    if-nez p6, :cond_0

    sget p6, Ltra;->a:I

    add-int/2addr p6, p0

    :goto_0
    sput p6, Ltra;->a:I

    goto :goto_1

    :cond_0
    sget p6, Ltra;->a:I

    sub-int/2addr p6, p0

    goto :goto_0

    :goto_1
    sput p6, Ltra;->a:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p6, Ltra;->a:I

    if-le p6, p0, :cond_1

    sget p7, Lcom/transsion/bt_download/R$string;->item:I

    goto :goto_2

    :cond_1
    sget p7, Lcom/transsion/bt_download/R$string;->items:I

    :goto_2
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    filled-new-array {p6}, [Ljava/lang/Object;

    move-result-object p6

    invoke-virtual {p2, p7, p6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Ltra;->a:I

    invoke-virtual {p5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p2

    const/4 p5, 0x0

    if-ne p1, p2, :cond_2

    move p1, p0

    goto :goto_3

    :cond_2
    move p1, p5

    :goto_3
    invoke-virtual {p3, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    sget p1, Ltra;->a:I

    if-lez p1, :cond_3

    goto :goto_4

    :cond_3
    move p0, p5

    :goto_4
    invoke-virtual {p4, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public static synthetic n(Landroidx/fragment/app/DialogFragment;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public static o(Landroid/content/Context;Ljava/util/List;)V
    .locals 3

    new-instance v0, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;

    const-string v1, "bt_file_select"

    sget v2, Lcom/transsion/bt_download/R$layout;->dialog_file_select:I

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->f(I)V

    new-instance v1, Lmra;

    invoke-direct {v1, p0, p1}, Lmra;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->e(Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil$a;)V

    invoke-virtual {v0}, Lcom/transsion/playercommon/utils/views/HalfListDialogFragmentUtil;->g()V

    const-string p0, "vd_dl_brower_rp_bt_list_show"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public static p(Landroidx/fragment/app/DialogFragment;Landroid/view/View;Landroid/content/Context;Ljava/util/List;)V
    .locals 11

    sget v0, Lcom/transsion/bt_download/R$id;->tv_select_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/transsion/bt_download/R$id;->bt_start_converting:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/Button;

    new-instance v1, Lnra;

    invoke-direct {v1, p0}, Lnra;-><init>(Landroidx/fragment/app/DialogFragment;)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/bt_download/R$id;->rv_select_list:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v9, Lcom/transsion/btdownload/ui/FileSelectAdapter;

    invoke-direct {v9, p2}, Lcom/transsion/btdownload/ui/FileSelectAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    sget v1, Lcom/transsion/bt_download/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    new-instance v10, Lora;

    move-object v1, v10

    move-object v2, v9

    move-object v3, p1

    move-object v4, v0

    move-object v5, p2

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lora;-><init>(Lcom/transsion/btdownload/ui/FileSelectAdapter;Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/Button;)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-virtual {v8, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sput p3, Ltra;->a:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Ltra;->a:I

    if-le v1, v2, :cond_0

    sget v2, Lcom/transsion/bt_download/R$string;->item:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/transsion/bt_download/R$string;->items:I

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p3, Lpra;

    invoke-direct {p3, v0, p2, p1, v7}, Lpra;-><init>(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/CheckBox;Landroid/widget/Button;)V

    invoke-virtual {v9, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    new-instance p3, Lqra;

    move-object v1, p3

    move-object v2, v9

    move-object v3, v0

    move-object v4, p2

    move-object v5, p1

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lqra;-><init>(Lcom/transsion/btdownload/ui/FileSelectAdapter;Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/CheckBox;Landroid/widget/Button;)V

    invoke-virtual {v9, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    new-instance p2, Lrra;

    invoke-direct {p2, p0}, Lrra;-><init>(Landroidx/fragment/app/DialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
