.class public Lcom/transsion/btdownload/ui/TorrentItemFileAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->t(Lcom/chad/library/adapter/base/BaseViewHolder;Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter$a;->b:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter$a;->b:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    invoke-static {v0}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->d(Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "vd_dl_manager_bt_main_task_add_cl"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter$a;->b:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    invoke-static {v0}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->g(Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;)Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter$a;->b:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    invoke-static {v1}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->c(Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->o(Ljava/lang/String;)Landroidx/core/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter$a;->b:Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;

    invoke-static {p0}, Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;->c(Lcom/transsion/btdownload/ui/TorrentItemFileAdapter;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, v1, p0}, Lm8;->k(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    sget p0, Lcom/transsion/bt_download/R$string;->all_file_added:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void
.end method
