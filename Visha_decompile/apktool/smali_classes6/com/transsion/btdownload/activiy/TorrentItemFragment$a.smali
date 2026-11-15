.class public Lcom/transsion/btdownload/activiy/TorrentItemFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/btdownload/ui/TorrentItemAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/btdownload/activiy/TorrentItemFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/btdownload/activiy/TorrentItemFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment$a;->a:Lcom/transsion/btdownload/activiy/TorrentItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/bt_download/R$id;->iv_bucket_fragment_checkBox:I

    if-ne v0, v1, :cond_0

    check-cast p1, Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment$a;->a:Lcom/transsion/btdownload/activiy/TorrentItemFragment;

    invoke-static {v0}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->e0(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)Lcom/transsion/btdownload/ui/TorrentItemAdapter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {v0, p2, p1}, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->A(IZ)V

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment$a;->a:Lcom/transsion/btdownload/activiy/TorrentItemFragment;

    invoke-static {p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->i0(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)V

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment$a;->a:Lcom/transsion/btdownload/activiy/TorrentItemFragment;

    invoke-static {p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->g0(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)V

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment$a;->a:Lcom/transsion/btdownload/activiy/TorrentItemFragment;

    invoke-static {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->h0(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;I)Z
    .locals 0

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment$a;->a:Lcom/transsion/btdownload/activiy/TorrentItemFragment;

    invoke-static {p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->f0(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment$a;->a:Lcom/transsion/btdownload/activiy/TorrentItemFragment;

    invoke-static {p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->e0(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)Lcom/transsion/btdownload/ui/TorrentItemAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->z(I)V

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment$a;->a:Lcom/transsion/btdownload/activiy/TorrentItemFragment;

    invoke-static {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->f0(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->G(Z)V

    return p1
.end method

.method public c(Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment$a;->a:Lcom/transsion/btdownload/activiy/TorrentItemFragment;

    invoke-static {p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->f0(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment$a;->a:Lcom/transsion/btdownload/activiy/TorrentItemFragment;

    invoke-static {p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->e0(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)Lcom/transsion/btdownload/ui/TorrentItemAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->D(I)V

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment$a;->a:Lcom/transsion/btdownload/activiy/TorrentItemFragment;

    invoke-static {p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->i0(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)V

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment$a;->a:Lcom/transsion/btdownload/activiy/TorrentItemFragment;

    invoke-static {p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->g0(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)V

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment$a;->a:Lcom/transsion/btdownload/activiy/TorrentItemFragment;

    invoke-static {p0}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->h0(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)V

    goto :goto_0

    :cond_0
    const-string p1, "vd_dl_manager_bt_main_task_cl"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment$a;->a:Lcom/transsion/btdownload/activiy/TorrentItemFragment;

    invoke-static {p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->e0(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)Lcom/transsion/btdownload/ui/TorrentItemAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/btdownload/ui/TorrentItemAdapter;->r(I)Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    move-result-object p1

    invoke-static {}, Lpk0;->f()Lpk0;

    move-result-object p2

    iget-object v0, p1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->torrentId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lpk0;->i(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment$a;->a:Lcom/transsion/btdownload/activiy/TorrentItemFragment;

    invoke-static {v0}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->f0(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->H(Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;)V

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment$a;->a:Lcom/transsion/btdownload/activiy/TorrentItemFragment;

    invoke-static {p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->f0(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->I(Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;)V

    invoke-static {}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->l0()Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemFragment$a;->a:Lcom/transsion/btdownload/activiy/TorrentItemFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setNeedBg(Z)V

    invoke-static {p0, p1, p1}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    :goto_0
    return-void
.end method
