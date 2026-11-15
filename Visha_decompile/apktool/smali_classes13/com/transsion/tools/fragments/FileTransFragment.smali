.class public final Lcom/transsion/tools/fragments/FileTransFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J-\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0003J\u000f\u0010\u0013\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0003R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/tools/fragments/FileTransFragment;",
        "Lcom/transsion/playercommon/fragments/BaseFragment;",
        "<init>",
        "()V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "Lzfb;",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "R",
        "S",
        "Q",
        "Landroid/widget/TextView;",
        "l",
        "Landroid/widget/TextView;",
        "mTitleBarTitle",
        "Landroid/widget/ImageView;",
        "m",
        "Landroid/widget/ImageView;",
        "mIvHistory",
        "Landroid/view/View$OnClickListener;",
        "n",
        "Landroid/view/View$OnClickListener;",
        "mOnclickListener",
        "tools_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/ImageView;

.field public final n:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    new-instance v0, Ljs3;

    invoke-direct {v0, p0}, Ljs3;-><init>(Lcom/transsion/tools/fragments/FileTransFragment;)V

    iput-object v0, p0, Lcom/transsion/tools/fragments/FileTransFragment;->n:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic P(Lcom/transsion/tools/fragments/FileTransFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/fragments/FileTransFragment;->T(Lcom/transsion/tools/fragments/FileTransFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final T(Lcom/transsion/tools/fragments/FileTransFragment;Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/tools/R$id;->title_bar_back:I

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/tools/R$id;->iv_file_trans_history:I

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/FileTransFragment;->Q()V

    goto :goto_0

    :cond_1
    sget v0, Lcom/transsion/tools/R$id;->cv_send_files:I

    if-ne v0, p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/FileTransFragment;->S()V

    goto :goto_0

    :cond_2
    sget v0, Lcom/transsion/tools/R$id;->cv_receive_files:I

    if-ne v0, p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/FileTransFragment;->R()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final Q()V
    .locals 1

    new-instance v0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;

    invoke-direct {v0}, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;-><init>()V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setNeedBg(Z)V

    invoke-virtual {p0, v0}, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->p0(Z)V

    invoke-static {p0, v0, v0}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    sget-object p0, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    invoke-virtual {p0}, Lcom/transsion/dbdata/markpoint/a$a;->k()V

    return-void
.end method

.method public final R()V
    .locals 6

    sget-object v0, Lmu3;->a:Lmu3;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lmu3;->l(Lmu3;Landroid/content/Context;ZLjava/util/List;ILjava/lang/Object;)V

    sget-object p0, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    invoke-virtual {p0}, Lcom/transsion/dbdata/markpoint/a$a;->n()V

    return-void
.end method

.method public final S()V
    .locals 1

    new-instance v0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;

    invoke-direct {v0}, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;-><init>()V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setNeedBg(Z)V

    invoke-static {p0, v0, v0}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    sget-object p0, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    invoke-virtual {p0}, Lcom/transsion/dbdata/markpoint/a$a;->p()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p0, "inflater"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget p0, Lcom/transsion/tools/R$layout;->fragment_file_trans:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/tools/R$dimen;->video_main_activity_fragment_top_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->backgroundFollowBaseWindowByPx(Landroid/view/View;I)V

    sget p2, Lcom/transsion/tools/R$id;->title_bar_back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/tools/fragments/FileTransFragment;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lkdc;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setRotationY(F)V

    sget p2, Lcom/transsion/tools/R$id;->cv_send_files:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/tools/fragments/FileTransFragment;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/transsion/tools/R$id;->cv_receive_files:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/tools/fragments/FileTransFragment;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/transsion/tools/R$id;->title_bar_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/tools/fragments/FileTransFragment;->l:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    sget v0, Lcom/transsion/tools/R$string;->visha_file_trans:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    sget p2, Lcom/transsion/tools/R$id;->iv_file_trans_history:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/tools/fragments/FileTransFragment;->m:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/tools/fragments/FileTransFragment;->m:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/transsion/tools/fragments/FileTransFragment;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    sget-object p0, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    invoke-virtual {p0}, Lcom/transsion/dbdata/markpoint/a$a;->j()V

    return-void
.end method
