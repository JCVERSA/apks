.class public Lt6b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt6b$b;
    }
.end annotation


# instance fields
.field public b:Lcom/transsion/cloudcore/db/CloudTaskEntity;

.field public c:Landroid/content/Context;

.field public d:Lt6b$b;

.field public e:Lcom/transsion/widgetslib/dialog/d;

.field public f:Lcom/transsion/widgetslib/dialog/InputDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/cloudcore/db/CloudTaskEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lt6b;->b:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    iput-object p1, p0, Lt6b;->c:Landroid/content/Context;

    return-void
.end method

.method public static synthetic B(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public static synthetic C(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic F(Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method public static synthetic a(Lt6b;Ljava/util/List;ZLjava/util/List;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lt6b;->s(Ljava/util/List;ZLjava/util/List;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lt6b;Ljava/lang/String;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lt6b;->v(Ljava/lang/String;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lt6b;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lt6b;->x(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic d(Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1}, Lt6b;->F(Landroid/widget/EditText;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic e(Lt6b;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lt6b;->t(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic f(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lt6b;->C(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic g(Lt6b;Ljava/util/List;ZLandroid/widget/CheckBox;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lt6b;->A(Ljava/util/List;ZLandroid/widget/CheckBox;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic h(Lt6b;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lt6b;->E(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic i(Lt6b;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lt6b;->w(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic j(Lt6b;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lt6b;->u(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic k(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lt6b;->z(Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lt6b;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lt6b;->D(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic m(Lcom/transsion/cloudcore/db/CloudTaskEntity;)Z
    .locals 0

    invoke-static {p0}, Lt6b;->y(Lcom/transsion/cloudcore/db/CloudTaskEntity;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lt6b;->B(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static bridge synthetic o(Lt6b;)Lcom/transsion/cloudcore/db/CloudTaskEntity;
    .locals 0

    iget-object p0, p0, Lt6b;->b:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    return-object p0
.end method

.method public static bridge synthetic p(Lt6b;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lt6b;->H(Z)V

    return-void
.end method

.method public static synthetic y(Lcom/transsion/cloudcore/db/CloudTaskEntity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isLocalFileExist:Z

    return p0
.end method

.method public static synthetic z(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public final synthetic A(Ljava/util/List;ZLandroid/widget/CheckBox;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lt6b;->r(Ljava/util/List;Z)V

    return-void
.end method

.method public final synthetic D(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lt6b;->G(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/audio/R$string;->empty_text:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :goto_0
    return-void
.end method

.method public final synthetic E(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lt6b;->e:Lcom/transsion/widgetslib/dialog/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final G(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lt6b;->c:Landroid/content/Context;

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {v0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v1

    invoke-virtual {v0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lr6b;

    invoke-direct {v1, p0, p1}, Lr6b;-><init>(Lt6b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Ls6b;

    invoke-direct {v1, p0, p1}, Ls6b;-><init>(Lt6b;Ljava/lang/String;)V

    new-instance v2, Lg6b;

    invoke-direct {v2, p0, p1}, Lg6b;-><init>(Lt6b;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public final H(Z)V
    .locals 1

    iget-object p0, p0, Lt6b;->e:Lcom/transsion/widgetslib/dialog/d;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/d;->e(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public I(Ljava/util/List;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lk6b;

    invoke-direct {v1}, Lk6b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    iget-object v1, p0, Lt6b;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsion/sniffer_load/R$layout;->dialog_delete_task:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/transsion/sniffer_load/R$id;->tv_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/transsion/sniffer_load/R$id;->tv_info:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/transsion/sniffer_load/R$id;->cb_delete:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Ll6b;

    invoke-direct {v5, v4}, Ll6b;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v5, Lcom/transsion/playercommon/R$string;->visha_delete_local_file_also:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_2

    iget-object v3, p0, Lt6b;->c:Landroid/content/Context;

    sget v5, Lcom/transsion/playercommon/R$string;->visha_delete_transfer_records_confirm:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lt6b;->c:Landroid/content/Context;

    sget v5, Lcom/transsion/playercommon/R$string;->visha_delete_transfer_record_confirm:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v3, p0, Lt6b;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$string;->delete:I

    new-instance v3, Lm6b;

    invoke-direct {v3, p0, p1, v0, v4}, Lm6b;-><init>(Lt6b;Ljava/util/List;ZLandroid/widget/CheckBox;)V

    invoke-virtual {v1, v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget p1, Lcom/transsion/playercommon/R$string;->cancel:I

    new-instance v0, Ln6b;

    invoke-direct {v0}, Ln6b;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method

.method public J()V
    .locals 12

    iget-object v0, p0, Lt6b;->b:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/transsion/playercommon/R$layout;->dialog_details:I

    iget-object v1, p0, Lt6b;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$id;->rv_bucket_fragment_info:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$InfoAdapter;

    sget v3, Lcom/transsion/playercommon/R$layout;->item_bucket_fragment_info:I

    invoke-direct {v2, v3}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$InfoAdapter;-><init>(I)V

    new-instance v3, Lcom/transsion/utils/CustomLinearLayoutManager;

    iget-object v4, p0, Lt6b;->c:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lt6b;->b:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    iget-object v3, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_1

    new-instance v7, Lcom/transsion/playercommon/data/InfoBean;

    sget v8, Lcom/transsion/playercommon/R$string;->name:I

    invoke-direct {v7, v8, v3, v5, v6}, Lcom/transsion/playercommon/data/InfoBean;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v7, v4}, Lcom/transsion/playercommon/data/InfoBean;->setMultiLines(Z)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, p0, Lt6b;->b:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    iget-object v3, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->mimeType:Ljava/lang/String;

    if-eqz v3, :cond_2

    new-instance v7, Lcom/transsion/playercommon/data/InfoBean;

    sget v8, Lcom/transsion/playercommon/R$string;->type:I

    invoke-direct {v7, v8, v3, v5, v6}, Lcom/transsion/playercommon/data/InfoBean;-><init>(ILjava/lang/String;J)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v3, p0, Lt6b;->b:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    iget-wide v7, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->duration:J

    cmp-long v3, v7, v5

    if-eqz v3, :cond_3

    new-instance v3, Lcom/transsion/playercommon/data/InfoBean;

    sget v9, Lcom/transsion/playercommon/R$string;->duration:I

    invoke-static {v7, v8}, Lwna;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v9, v7, v5, v6}, Lcom/transsion/playercommon/data/InfoBean;-><init>(ILjava/lang/String;J)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v3, p0, Lt6b;->b:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    iget-wide v7, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileSize:J

    cmp-long v3, v7, v5

    if-eqz v3, :cond_4

    new-instance v3, Lcom/transsion/playercommon/data/InfoBean;

    sget v9, Lcom/transsion/playercommon/R$string;->size:I

    iget-object v10, p0, Lt6b;->c:Landroid/content/Context;

    invoke-static {v10, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v9, v7, v5, v6}, Lcom/transsion/playercommon/data/InfoBean;-><init>(ILjava/lang/String;J)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v3, p0, Lt6b;->b:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    iget-wide v7, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->createTime:J

    cmp-long v3, v7, v5

    if-eqz v3, :cond_5

    new-instance v3, Lcom/transsion/playercommon/data/InfoBean;

    sget v9, Lcom/transsion/playercommon/R$string;->date:I

    const-wide/16 v10, 0x3e8

    div-long/2addr v7, v10

    invoke-static {v7, v8}, Lwna;->i(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v9, v7, v5, v6}, Lcom/transsion/playercommon/data/InfoBean;-><init>(ILjava/lang/String;J)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :try_start_0
    iget-object v3, p0, Lt6b;->b:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    iget-object v3, v3, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    if-eqz v3, :cond_7

    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v7, p0, Lt6b;->b:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    iget-object v7, v7, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    const/4 v8, -0x1

    if-ne v3, v8, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    :cond_6
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/transsion/playercommon/data/InfoBean;

    sget v8, Lcom/transsion/playercommon/R$string;->path:I

    invoke-direct {v7, v8, v3, v5, v6}, Lcom/transsion/playercommon/data/InfoBean;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v7, v4}, Lcom/transsion/playercommon/data/InfoBean;->setMultiLines(Z)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    invoke-virtual {v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object p0, p0, Lt6b;->c:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/transsion/playercommon/R$string;->info:I

    invoke-virtual {v1, p0}, Lcom/transsion/widgetslib/dialog/d$a;->A(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget v0, Lcom/transsion/playercommon/R$string;->ok:I

    new-instance v1, Lf6b;

    invoke-direct {v1}, Lf6b;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/transsion/widgetslib/dialog/d$a;->c(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public K()V
    .locals 6

    new-instance v0, Lcom/transsion/widgetslib/dialog/InputDialog;

    iget-object v1, p0, Lt6b;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/audio/R$string;->rename:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->A(I)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$string;->Save:I

    new-instance v2, Lo6b;

    invoke-direct {v2, p0}, Lo6b;-><init>(Lt6b;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->s(ILcom/transsion/widgetslib/dialog/InputDialog$g;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$string;->cancel:I

    new-instance v2, Lp6b;

    invoke-direct {v2, p0}, Lp6b;-><init>(Lt6b;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->x(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->z(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->r(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    iput-object v0, p0, Lt6b;->f:Lcom/transsion/widgetslib/dialog/InputDialog;

    iget-object v2, p0, Lt6b;->b:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    iget-object v2, v2, Lcom/transsion/cloudcore/db/CloudTaskEntity;->fileName:Ljava/lang/String;

    new-instance v3, Lq6b;

    invoke-direct {v3}, Lq6b;-><init>()V

    const-string v4, ""

    const/16 v5, 0x3d

    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/transsion/widgetslib/dialog/InputDialog;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/transsion/widgetslib/dialog/InputDialog$f;)Lcom/transsion/widgetslib/dialog/InputDialog;

    iget-object v0, p0, Lt6b;->f:Lcom/transsion/widgetslib/dialog/InputDialog;

    new-instance v2, Lt6b$a;

    invoke-direct {v2, p0}, Lt6b$a;-><init>(Lt6b;)V

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->setTextWatcher(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lt6b;->f:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->m()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lt6b;->e:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    iget-object v0, p0, Lt6b;->f:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->w(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {p0, v1}, Lt6b;->H(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final q(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lt6b;->c:Landroid/content/Context;

    invoke-static {p0, v0}, Lnx8;->f(Landroid/content/Context;Ljava/io/File;)Z

    move-result p0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method public final r(Ljava/util/List;Z)V
    .locals 2

    iget-object v0, p0, Lt6b;->d:Lt6b$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lt6b$b;->d()V

    :cond_0
    iget-object v0, p0, Lt6b;->c:Landroid/content/Context;

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v1

    invoke-virtual {v0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lh6b;

    invoke-direct {v1, p0, p1, p2}, Lh6b;-><init>(Lt6b;Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Li6b;

    invoke-direct {p2, p0}, Li6b;-><init>(Lt6b;)V

    new-instance v0, Lj6b;

    invoke-direct {v0, p0}, Lj6b;-><init>(Lt6b;)V

    invoke-virtual {p1, p2, v0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public final synthetic s(Ljava/util/List;ZLjava/util/List;)Ljava/lang/Boolean;
    .locals 6

    new-instance p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    invoke-static {}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->getInstance()Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    move-result-object v2

    iget-object v3, v1, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->deleteTaskByTaskId(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object v1, v1, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lt6b;->q(Ljava/lang/String;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lt6b;->d:Lt6b$b;

    if-eqz v1, :cond_0

    int-to-double v2, v0

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-interface {v1, v2, v3}, Lt6b$b;->a(D)V

    goto :goto_0

    :cond_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setOnOperateListener(Lt6b$b;)V
    .locals 0

    iput-object p1, p0, Lt6b;->d:Lt6b$b;

    return-void
.end method

.method public final synthetic t(Ljava/lang/Boolean;)V
    .locals 1

    iget-object p0, p0, Lt6b;->d:Lt6b$b;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lt6b$b;->b(Z)V

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deleteTask finished "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TransferRecordOperateUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final synthetic u(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteTask "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TransferRecordOperateUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lt6b;->d:Lt6b$b;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lt6b$b;->b(Z)V

    :cond_0
    return-void
.end method

.method public final synthetic v(Ljava/lang/String;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Integer;
    .locals 2

    invoke-static {}, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->getInstance()Lcom/transsion/cloudcore/db/CloudTaskDatabase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->cloudTaskDao()Lcom/transsion/cloudcore/db/CloudTaskDao;

    move-result-object p2

    iget-object p0, p0, Lt6b;->b:Lcom/transsion/cloudcore/db/CloudTaskEntity;

    iget-object p0, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->taskId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p2, p0, p1, v0, v1}, Lcom/transsion/cloudcore/db/CloudTaskDao;->updateTaskFileName(Ljava/lang/String;Ljava/lang/String;J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic w(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lt6b;->d:Lt6b$b;

    if-eqz p0, :cond_0

    const/4 p2, 0x1

    invoke-interface {p0, p2, p1}, Lt6b$b;->c(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final synthetic x(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lt6b;->d:Lt6b$b;

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1}, Lt6b$b;->c(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
