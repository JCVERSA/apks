.class public Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;
.super Ljava/lang/Object;

# interfaces
.implements Lo/w24;


# instance fields
.field public final a:Ljava/util/List;

.field public b:Lcom/snaptube/extractor/pluginlib/models/Format;

.field public c:Landroid/app/Dialog;

.field public d:Lo/ta3;

.field public e:Lcom/snaptube/mixed_list/view/FABBatchDownload;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Z

.field public final q:Landroid/view/View$OnClickListener;

.field public r:Lo/wu7;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->j:Z

    iput-boolean v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->p:Z

    new-instance v0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager$a;

    invoke-direct {v0, p0}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager$a;-><init>(Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;)V

    iput-object v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->q:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/snaptube/extractor/pluginlib/models/Format$Builder;

    sget-object v1, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->MP4_1080P:Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;

    invoke-direct {v0, v1}, Lcom/snaptube/extractor/pluginlib/models/Format$Builder;-><init>(Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;)V

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/Format$Builder;->a()Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->b:Lcom/snaptube/extractor/pluginlib/models/Format;

    return-void
.end method

.method private W()V
    .locals 7

    iget-object v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->e:Lcom/snaptube/mixed_list/view/FABBatchDownload;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/az7;->i(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Lcom/snaptube/premium/whatsapp/WhatsAppStatusActivity;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->Y()V

    goto/16 :goto_2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snaptube/premium/batch_download/b;

    invoke-virtual {v3}, Lcom/snaptube/premium/batch_download/b;->i()Lcom/wandoujia/em/common/protomodel/Card;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wandoujia/em/common/protomodel/Card;

    invoke-static {v4}, Lo/ri0;->G(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->d0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lo/pn0$a;

    invoke-direct {v4}, Lo/pn0$a;-><init>()V

    new-instance v5, Lo/pn0$b;

    invoke-direct {v5}, Lo/pn0$b;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v1, v6}, Lo/pn0$b;->b(Ljava/util/List;I)Lo/pn0$b;

    move-result-object v1

    invoke-virtual {v1, v3}, Lo/pn0$b;->e(Ljava/lang/String;)Lo/pn0$b;

    move-result-object v1

    invoke-virtual {v1}, Lo/pn0$b;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v4, v1}, Lo/pn0$a;->b(Ljava/util/Map;)Lo/pn0$a;

    move-result-object v1

    new-instance v3, Lo/pn0$c;

    invoke-direct {v3}, Lo/pn0$c;-><init>()V

    iget-object v4, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lo/pn0$c;->m(Ljava/lang/String;)Lo/pn0$c;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lo/pn0$c;->h(Z)Lo/pn0$c;

    move-result-object v3

    iget-object v5, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->o:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lo/pn0$c;->o(Ljava/lang/String;)Lo/pn0$c;

    move-result-object v3

    invoke-virtual {v1, v3}, Lo/pn0$a;->c(Lo/pn0$c;)Lo/pn0$a;

    move-result-object v1

    invoke-virtual {v1, v2, v4, v0}, Lo/pn0$a;->f(Ljava/util/List;ZLandroid/content/Context;)Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;

    :goto_2
    return-void
.end method

.method public static synthetic a(Lcom/snaptube/premium/batch_download/b;Lcom/snaptube/premium/batch_download/b;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->m0(Lcom/snaptube/premium/batch_download/b;Lcom/snaptube/premium/batch_download/b;)I

    move-result p0

    return p0
.end method

.method public static a0(Landroid/app/Activity;)Lcom/snaptube/mixed_list/view/FABBatchDownload;
    .locals 5

    invoke-static {p0}, Lo/az7;->U(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-static {v2}, Lcom/snaptube/ktx/fragment/FragmentKt;->d(Landroidx/fragment/app/Fragment;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    instance-of v3, v2, Lcom/snaptube/premium/batch_download/a$a;

    if-eqz v3, :cond_2

    move-object v1, v2

    check-cast v1, Lcom/snaptube/premium/batch_download/a$a;

    invoke-interface {v1}, Lcom/snaptube/premium/batch_download/a$a;->y1()Lcom/snaptube/mixed_list/view/FABBatchDownload;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_4

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    instance-of v4, v3, Lcom/snaptube/premium/batch_download/a$a;

    if-eqz v4, :cond_3

    check-cast v3, Lcom/snaptube/premium/batch_download/a$a;

    invoke-interface {v3}, Lcom/snaptube/premium/batch_download/a$a;->y1()Lcom/snaptube/mixed_list/view/FABBatchDownload;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_0

    :cond_5
    if-nez v1, :cond_6

    instance-of v0, p0, Lcom/snaptube/premium/batch_download/a$a;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/snaptube/premium/batch_download/a$a;

    invoke-interface {p0}, Lcom/snaptube/premium/batch_download/a$a;->y1()Lcom/snaptube/mixed_list/view/FABBatchDownload;

    move-result-object v1

    :cond_6
    return-object v1
.end method

.method public static synthetic c(Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;Lcom/wandoujia/base/utils/RxBus$d;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->n0(Lcom/wandoujia/base/utils/RxBus$d;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static c0(Landroid/app/Activity;Lcom/snaptube/premium/batch_download/a;)Lcom/snaptube/mixed_list/view/FABBatchDownload;
    .locals 1

    invoke-static {p0}, Lo/az7;->U(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p1, Lcom/snaptube/premium/batch_download/a$a;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/snaptube/premium/batch_download/a$a;

    invoke-interface {p1}, Lcom/snaptube/premium/batch_download/a$a;->y1()Lcom/snaptube/mixed_list/view/FABBatchDownload;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->a0(Landroid/app/Activity;)Lcom/snaptube/mixed_list/view/FABBatchDownload;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;Lcom/snaptube/mixed_list/view/FABBatchDownload;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->q0(Lcom/snaptube/mixed_list/view/FABBatchDownload;Z)V

    return-void
.end method

.method public static synthetic e(Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->o0(Lcom/wandoujia/base/utils/RxBus$d;)V

    return-void
.end method

.method public static synthetic f(Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;Lcom/snaptube/mixed_list/view/FABBatchDownload;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->p0(Lcom/snaptube/mixed_list/view/FABBatchDownload;Z)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;)Lcom/snaptube/mixed_list/view/FABBatchDownload;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->e:Lcom/snaptube/mixed_list/view/FABBatchDownload;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->c:Landroid/app/Dialog;

    return-void
.end method

.method public static bridge synthetic i(Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;Lo/ru8;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->V(Lo/ru8;)V

    return-void
.end method

.method public static synthetic m0(Lcom/snaptube/premium/batch_download/b;Lcom/snaptube/premium/batch_download/b;)I
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/premium/batch_download/b;->l()I

    move-result p0

    invoke-virtual {p1}, Lcom/snaptube/premium/batch_download/b;->l()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public static bridge synthetic n(Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->W()V

    return-void
.end method

.method public static bridge synthetic o(Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->D0(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic r(Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->E0()V

    return-void
.end method


# virtual methods
.method public A0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->m:Ljava/lang/String;

    iput-object p2, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->l:Ljava/lang/String;

    return-void
.end method

.method public B(Landroid/app/Activity;Lcom/snaptube/premium/batch_download/a;)V
    .locals 2

    invoke-static {p1}, Lo/az7;->U(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->p:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->p:Z

    instance-of v0, p1, Lo/x24;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lo/x24;

    invoke-interface {v0}, Lo/x24;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->a(Lo/w24;)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->k0(Landroid/app/Activity;Lcom/snaptube/premium/batch_download/a;)V

    if-nez p2, :cond_3

    instance-of p2, p1, Lo/va3;

    if-eqz p2, :cond_2

    check-cast p1, Lo/va3;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lo/va3;->h(Lo/ta3;)V

    :cond_2
    iget-object p1, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->e:Lcom/snaptube/mixed_list/view/FABBatchDownload;

    invoke-virtual {p0, p1, v1}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->x0(Lcom/snaptube/mixed_list/view/FABBatchDownload;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->F0(Landroid/app/Activity;Lcom/snaptube/premium/batch_download/a;)V

    :goto_0
    return-void
.end method

.method public B0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->k:Ljava/lang/String;

    return-void
.end method

.method public C0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->n:Ljava/lang/String;

    iput-object p2, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->o:Ljava/lang/String;

    return-void
.end method

.method public final D0(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lo/zl1;->b(Landroid/content/Context;I)I

    move-result v0

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final E0()V
    .locals 3

    new-instance v0, Lcom/snaptube/premium/log/ReportPropertyBuilder;

    invoke-direct {v0}, Lcom/snaptube/premium/log/ReportPropertyBuilder;-><init>()V

    const-string v1, "Click"

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/ReportPropertyBuilder;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v0

    const-string v1, "fab_batch_download_btn"

    invoke-interface {v0, v1}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->f0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "batch_download_count"

    invoke-interface {v0, v2, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v1, "position_source"

    invoke-virtual {p0}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->e0()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    invoke-interface {v0}, Lo/ah3;->reportEvent()V

    return-void
.end method

.method public F0(Landroid/app/Activity;Lcom/snaptube/premium/batch_download/a;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->k0(Landroid/app/Activity;Lcom/snaptube/premium/batch_download/a;)V

    iget-object p2, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->e:Lcom/snaptube/mixed_list/view/FABBatchDownload;

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->d:Lo/ta3;

    if-nez p2, :cond_2

    new-instance p2, Lo/a20;

    invoke-direct {p2, p1, p0}, Lo/a20;-><init>(Landroid/app/Activity;Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;)V

    iput-object p2, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->d:Lo/ta3;

    :cond_2
    instance-of p2, p1, Lo/va3;

    if-eqz p2, :cond_3

    check-cast p1, Lo/va3;

    iget-object p2, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->d:Lo/ta3;

    invoke-interface {p1, p2}, Lo/va3;->h(Lo/ta3;)V

    :cond_3
    invoke-virtual {p0}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->f0()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->G0(I)V

    return-void
.end method

.method public final G0(I)V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->e:Lcom/snaptube/mixed_list/view/FABBatchDownload;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_2

    invoke-virtual {p0}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->v0()V

    iget-object v1, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->e:Lcom/snaptube/mixed_list/view/FABBatchDownload;

    invoke-virtual {p0, v1, v0}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->x0(Lcom/snaptube/mixed_list/view/FABBatchDownload;Z)V

    iget-boolean v1, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->j:Z

    if-nez v1, :cond_1

    iput-boolean v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->j:Z

    sget-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/ChooseFormatAdRewardViewModel;->j:Lcom/snaptube/plugin/extension/nonlifecycle/ad/ChooseFormatAdRewardViewModel$a;

    invoke-virtual {v1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/ChooseFormatAdRewardViewModel$a;->d()V

    :cond_1
    iget-object v1, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->e:Lcom/snaptube/mixed_list/view/FABBatchDownload;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->e:Lcom/snaptube/mixed_list/view/FABBatchDownload;

    invoke-virtual {v1, v0}, Lcom/snaptube/mixed_list/view/FABBatchDownload;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->w0()V

    :goto_0
    iget-object v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->e:Lcom/snaptube/mixed_list/view/FABBatchDownload;

    invoke-virtual {v0, p1}, Lcom/snaptube/mixed_list/view/FABBatchDownload;->g(I)V

    return-void
.end method

.method public M()V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->R()V

    return-void
.end method

.method public R()V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->r0()V

    return-void
.end method

.method public T(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/wandoujia/base/view/c$e;

    iget-object v1, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->e:Lcom/snaptube/mixed_list/view/FABBatchDownload;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wandoujia/base/view/c$e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110144

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/view/c$e;->m(I)Lcom/wandoujia/base/view/c$e;

    move-result-object v0

    const v1, 0x7f110143

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/view/c$e;->f(I)Lcom/wandoujia/base/view/c$e;

    move-result-object v0

    new-instance v1, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager$c;

    invoke-direct {v1, p0, p1}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager$c;-><init>(Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;Landroid/content/DialogInterface$OnClickListener;)V

    const p1, 0x7f1104dc

    invoke-virtual {v0, p1, v1}, Lcom/wandoujia/base/view/c$e;->k(ILandroid/content/DialogInterface$OnClickListener;)Lcom/wandoujia/base/view/c$e;

    move-result-object p1

    new-instance v0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager$b;

    invoke-direct {v0, p0, p2}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager$b;-><init>(Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;Landroid/content/DialogInterface$OnClickListener;)V

    const p2, 0x7f11060a

    invoke-virtual {p1, p2, v0}, Lcom/wandoujia/base/view/c$e;->h(ILandroid/content/DialogInterface$OnClickListener;)Lcom/wandoujia/base/view/c$e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wandoujia/base/view/c$e;->a()Lcom/wandoujia/base/view/c;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->c:Landroid/app/Dialog;

    new-instance p2, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager$d;

    invoke-direct {p2, p0}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager$d;-><init>(Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->c:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public U(Lcom/wandoujia/em/common/protomodel/Card;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->h0(Lcom/wandoujia/em/common/protomodel/Card;)Lcom/snaptube/premium/batch_download/b;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final V(Lo/ru8;)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->e:Lcom/snaptube/mixed_list/view/FABBatchDownload;

    invoke-static {v3}, Lo/az7;->j(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_4

    :cond_0
    :try_start_0
    instance-of v4, v3, Lcom/snaptube/premium/activity/ExploreActivity;

    if-eqz v4, :cond_1

    const v4, 0x7f0902ed

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v4, :cond_2

    return-void

    :cond_2
    new-array v5, v2, [I

    iget-object v6, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->e:Lcom/snaptube/mixed_list/view/FABBatchDownload;

    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Lo/ru8;->e()I

    move-result v8

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Lo/ru8;->c()I

    move-result v8

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v8, 0x3

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Lo/ru8;->d()I

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Lcom/snaptube/mixed_list/imageload/ImageLoaderWrapper;->c()Lcom/snaptube/mixed_list/imageload/ImageLoaderWrapper;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/snaptube/mixed_list/imageload/ImageLoaderWrapper;->b(Landroid/content/Context;)Lcom/snaptube/mixed_list/imageload/ImageLoaderWrapper$a;

    move-result-object v7

    invoke-virtual {p1}, Lo/ru8;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/snaptube/mixed_list/imageload/ImageLoaderWrapper$a;->o(Ljava/lang/String;)Lcom/snaptube/mixed_list/imageload/ImageLoaderWrapper$a;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/snaptube/mixed_list/imageload/ImageLoaderWrapper$a;->a(Z)Lcom/snaptube/mixed_list/imageload/ImageLoaderWrapper$a;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/snaptube/mixed_list/imageload/ImageLoaderWrapper$a;->g(Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lo/ru8;->d()I

    move-result v7

    if-ne v7, v0, :cond_4

    invoke-virtual {p1}, Lo/ru8;->a()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    instance-of v7, v3, Lcom/snaptube/premium/whatsapp/WhatsAppStatusActivity;

    if-eqz v7, :cond_4

    move-object v7, v3

    check-cast v7, Lcom/snaptube/premium/whatsapp/WhatsAppStatusActivity;

    invoke-virtual {v7}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroidx/appcompat/app/ActionBar;->getHeight()I

    move-result v7

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v7, 0x0

    :goto_2
    new-array v8, v2, [I

    invoke-virtual {v4, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v8, v8, v0

    invoke-virtual {p1}, Lo/ru8;->f()I

    move-result v9

    invoke-virtual {p1}, Lo/ru8;->g()I

    move-result p1

    sub-int/2addr p1, v8

    sub-int/2addr p1, v7

    aget v10, v5, v1

    iget-object v11, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->e:Lcom/snaptube/mixed_list/view/FABBatchDownload;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    div-int/2addr v11, v2

    add-int/2addr v10, v11

    aget v5, v5, v0

    sub-int/2addr v5, v8

    sub-int/2addr v5, v7

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v9, p1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v10, v5}, Landroid/graphics/Point;-><init>(II)V

    if-le p1, v5, :cond_5

    const/16 p1, 0x64

    invoke-static {v3, p1}, Lo/zl1;->b(Landroid/content/Context;I)I

    move-result p1

    sub-int p1, v5, p1

    :cond_5
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v10, p1}, Landroid/graphics/Point;-><init>(II)V

    new-instance p1, Lo/ha0;

    invoke-direct {p1, v3}, Lo/ha0;-><init>(Landroid/graphics/Point;)V

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v7, v3, v1

    aput-object v8, v3, v0

    invoke-static {p1, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v3, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager$f;

    invoke-direct {v3, p0, v6}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager$f;-><init>(Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v5, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager$g;

    invoke-direct {v5, p0, v6}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager$g;-><init>(Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p1, v2, v1

    aput-object v3, v2, v0

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p1, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager$h;

    invoke-direct {p1, p0, v6, v4}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager$h;-><init>(Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V

    invoke-virtual {v5, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :goto_3
    invoke-static {p1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method public Y()V
    .locals 5

    iget-object v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snaptube/premium/batch_download/b;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/snaptube/premium/batch_download/b;->i()Lcom/wandoujia/em/common/protomodel/Card;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "wa_settings"

    invoke-static {v2, v1, v3, v4}, Lo/x59;->a(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->M()V

    new-instance v0, Lcom/snaptube/premium/log/ReportPropertyBuilder;

    invoke-direct {v0}, Lcom/snaptube/premium/log/ReportPropertyBuilder;-><init>()V

    const-string v1, "Click"

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/ReportPropertyBuilder;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v0

    const-string v1, "whatsapp_page"

    invoke-interface {v0, v1}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object v0

    const-string v1, "extra_info"

    const-string v2, "download whatsapp media from batch"

    invoke-interface {v0, v1, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const/16 v1, 0xbba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "card_id"

    invoke-interface {v0, v2, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    invoke-interface {v0}, Lo/ah3;->reportEvent()V

    return-void
.end method

.method public final d0()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lo/i90;

    invoke-direct {v1}, Lo/i90;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snaptube/premium/batch_download/b;

    invoke-virtual {v0}, Lcom/snaptube/premium/batch_download/b;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public e0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->k:Ljava/lang/String;

    return-object v0
.end method

.method public f0()I
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final g0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lo/if9;->D(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lo/if9;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final h0(Lcom/wandoujia/em/common/protomodel/Card;)Lcom/snaptube/premium/batch_download/b;
    .locals 4

    iget-object v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Lo/ri0;->G(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->g0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->g0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v1

    :cond_2
    iget-object p1, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snaptube/premium/batch_download/b;

    invoke-virtual {v2}, Lcom/snaptube/premium/batch_download/b;->i()Lcom/wandoujia/em/common/protomodel/Card;

    move-result-object v3

    invoke-static {v3}, Lo/ri0;->G(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->g0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v2

    :cond_4
    return-object v1
.end method

.method public i0()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->a:Ljava/util/List;

    return-object v0
.end method

.method public final j0(Ljava/util/List;Lcom/wandoujia/em/common/protomodel/Card;)Lcom/snaptube/premium/batch_download/b;
    .locals 2

    invoke-static {p2}, Lo/x59;->l(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snaptube/premium/batch_download/b;

    invoke-virtual {v0}, Lcom/snaptube/premium/batch_download/b;->i()Lcom/wandoujia/em/common/protomodel/Card;

    move-result-object v1

    invoke-static {v1}, Lo/x59;->l(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final k0(Landroid/app/Activity;Lcom/snaptube/premium/batch_download/a;)V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->e:Lcom/snaptube/mixed_list/view/FABBatchDownload;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->c0(Landroid/app/Activity;Lcom/snaptube/premium/batch_download/a;)Lcom/snaptube/mixed_list/view/FABBatchDownload;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->e:Lcom/snaptube/mixed_list/view/FABBatchDownload;

    :cond_0
    return-void
.end method

.method public l0(Lcom/wandoujia/em/common/protomodel/Card;)Z
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->a:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->j0(Ljava/util/List;Lcom/wandoujia/em/common/protomodel/Card;)Lcom/snaptube/premium/batch_download/b;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final synthetic n0(Lcom/wandoujia/base/utils/RxBus$d;)Ljava/lang/Boolean;
    .locals 0

    iget-boolean p1, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->p:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic o0(Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->R()V

    return-void
.end method

.method public onCreate()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    const/16 v1, 0x45a

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/utils/RxBus;->c([I)Lrx/c;

    move-result-object v0

    new-instance v1, Lo/g90;

    invoke-direct {v1, p0}, Lo/g90;-><init>(Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;)V

    invoke-virtual {v0, v1}, Lrx/c;->E(Lo/xw2;)Lrx/c;

    move-result-object v0

    invoke-static {}, Lo/sh;->c()Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/c;->Y(Lrx/d;)Lrx/c;

    move-result-object v0

    new-instance v1, Lo/h90;

    invoke-direct {v1, p0}, Lo/h90;-><init>(Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;)V

    invoke-virtual {v0, v1}, Lrx/c;->t0(Lo/l3;)Lo/wu7;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->r:Lo/wu7;

    return-void
.end method

.method public onDestroy()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->r:Lo/wu7;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/wu7;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->r:Lo/wu7;

    invoke-interface {v0}, Lo/wu7;->unsubscribe()V

    :cond_0
    return-void
.end method

.method public final synthetic p0(Lcom/snaptube/mixed_list/view/FABBatchDownload;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->y0(Lcom/snaptube/mixed_list/view/FABBatchDownload;Z)V

    return-void
.end method

.method public final synthetic q0(Lcom/snaptube/mixed_list/view/FABBatchDownload;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->y0(Lcom/snaptube/mixed_list/view/FABBatchDownload;Z)V

    return-void
.end method

.method public final r0()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->s0(Lo/ru8;)V

    return-void
.end method

.method public s(Lcom/wandoujia/em/common/protomodel/Card;Lo/ru8;Lo/rw4;)Z
    .locals 3

    invoke-static {p1}, Lo/ri0;->G(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lo/ri0;->D(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->h0(Lcom/wandoujia/em/common/protomodel/Card;)Lcom/snaptube/premium/batch_download/b;

    move-result-object v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-static {}, Lcom/snaptube/premium/batch_download/b;->q()Lcom/snaptube/premium/batch_download/b$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/snaptube/premium/batch_download/b$a;->f(Lcom/wandoujia/em/common/protomodel/Card;)Lcom/snaptube/premium/batch_download/b$a;

    move-result-object p1

    iget-object v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->b:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {p1, v0}, Lcom/snaptube/premium/batch_download/b$a;->g(Lcom/snaptube/extractor/pluginlib/models/Format;)Lcom/snaptube/premium/batch_download/b$a;

    move-result-object p1

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$a0;->getLayoutPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/snaptube/premium/batch_download/b$a;->h(I)Lcom/snaptube/premium/batch_download/b$a;

    invoke-virtual {p3}, Lo/rw4;->Y()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/snaptube/premium/batch_download/b$a;->i(Ljava/lang/String;)Lcom/snaptube/premium/batch_download/b$a;

    :cond_2
    invoke-virtual {p1}, Lcom/snaptube/premium/batch_download/b$a;->e()Lcom/snaptube/premium/batch_download/b;

    move-result-object p1

    iget-object p3, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->a:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_3

    invoke-virtual {p0, p2}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->s0(Lo/ru8;)V

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v2
.end method

.method public final s0(Lo/ru8;)V
    .locals 2

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    const/16 v1, 0x422

    invoke-virtual {v0, v1, p1}, Lcom/wandoujia/base/utils/RxBus;->g(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->f0()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->G0(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->t(Lo/ru8;)V

    :cond_0
    return-void
.end method

.method public final t(Lo/ru8;)V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->e:Lcom/snaptube/mixed_list/view/FABBatchDownload;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->e:Lcom/snaptube/mixed_list/view/FABBatchDownload;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager$e;

    invoke-direct {v1, p0, p1}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager$e;-><init>(Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;Lo/ru8;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object p1, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->e:Lcom/snaptube/mixed_list/view/FABBatchDownload;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/snaptube/mixed_list/view/FABBatchDownload;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->V(Lo/ru8;)V

    :goto_0
    return-void
.end method

.method public t0(Lcom/wandoujia/em/common/protomodel/Card;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->u0(Lcom/wandoujia/em/common/protomodel/Card;Z)V

    return-void
.end method

.method public u0(Lcom/wandoujia/em/common/protomodel/Card;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lo/ri0;->G(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->g0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snaptube/premium/batch_download/b;

    invoke-virtual {v1}, Lcom/snaptube/premium/batch_download/b;->i()Lcom/wandoujia/em/common/protomodel/Card;

    move-result-object v1

    invoke-static {v1}, Lo/ri0;->G(Lcom/wandoujia/em/common/protomodel/Card;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->g0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->r0()V

    :cond_3
    return-void
.end method

.method public v0()V
    .locals 7

    invoke-virtual {p0}, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->f0()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->f:Z

    const/4 v1, 0x1

    const-string v2, "position_source"

    const-string v3, "action"

    const-string v4, "Click"

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->h:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/snaptube/premium/log/ReportPropertyBuilder;

    invoke-direct {v0}, Lcom/snaptube/premium/log/ReportPropertyBuilder;-><init>()V

    invoke-interface {v0, v4}, Lo/ah3;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v5

    const-string v6, "click_add_to_download_list"

    invoke-interface {v5, v3, v6}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v5

    iget-object v6, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->k:Ljava/lang/String;

    invoke-interface {v5, v2, v6}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    invoke-interface {v0}, Lo/ah3;->reportEvent()V

    iput-boolean v1, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->h:Z

    :cond_1
    iget-boolean v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->g:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->i:Z

    if-nez v0, :cond_2

    new-instance v0, Lcom/snaptube/premium/log/ReportPropertyBuilder;

    invoke-direct {v0}, Lcom/snaptube/premium/log/ReportPropertyBuilder;-><init>()V

    invoke-interface {v0, v4}, Lo/ah3;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v4

    const-string v5, "press_add_to_download_list"

    invoke-interface {v4, v3, v5}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v3

    iget-object v4, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->k:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    invoke-interface {v0}, Lo/ah3;->reportEvent()V

    iput-boolean v1, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->i:Z

    :cond_2
    return-void
.end method

.method public final w0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->f:Z

    iput-boolean v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->h:Z

    iput-boolean v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->g:Z

    iput-boolean v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->i:Z

    iput-boolean v0, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->j:Z

    return-void
.end method

.method public final x0(Lcom/snaptube/mixed_list/view/FABBatchDownload;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Lo/e90;

    invoke-direct {v0, p0, p1, p2}, Lo/e90;-><init>(Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;Lcom/snaptube/mixed_list/view/FABBatchDownload;Z)V

    invoke-static {v0}, Lo/a58;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    new-instance v0, Lo/f90;

    invoke-direct {v0, p0, p1, p2}, Lo/f90;-><init>(Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;Lcom/snaptube/mixed_list/view/FABBatchDownload;Z)V

    invoke-static {v0}, Lo/a58;->c(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final y0(Lcom/snaptube/mixed_list/view/FABBatchDownload;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Lcom/snaptube/mixed_list/view/FABBatchDownload;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public z0(Lcom/snaptube/mixed_list/view/FABBatchDownload;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;->e:Lcom/snaptube/mixed_list/view/FABBatchDownload;

    return-void
.end method
