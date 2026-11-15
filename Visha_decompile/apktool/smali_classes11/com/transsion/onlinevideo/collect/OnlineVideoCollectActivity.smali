.class public Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;
.super Lcom/transsion/onlinevideo/OnlineBaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter$a;


# static fields
.field public static p0:Z = false


# instance fields
.field public N:Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;

.field public O:Landroid/view/View;

.field public P:Landroid/widget/TextView;

.field public Q:Landroid/widget/ImageView;

.field public R:Landroidx/recyclerview/widget/RecyclerView;

.field public S:Landroid/view/View;

.field public T:Landroid/widget/ImageView;

.field public U:Landroid/widget/TextView;

.field public V:Landroid/widget/CheckBox;

.field public W:I

.field public X:Z

.field public Y:Ljava/lang/String;

.field public Z:J

.field public a0:Ljava/util/List;

.field public final b0:Ljava/util/ArrayList;

.field public c0:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

.field public d0:Lcom/transsion/onlinevideo/viewmodel/CollectViewModel;

.field public e0:Landroid/view/View;

.field public f0:Landroid/widget/TextView;

.field public g0:Landroid/widget/TextView;

.field public h0:Landroid/widget/LinearLayout;

.field public i0:Landroid/widget/LinearLayout;

.field public j0:Landroid/widget/LinearLayout;

.field public k0:Landroid/widget/ImageView;

.field public l0:Landroid/widget/Button;

.field public m0:Landroidx/recyclerview/widget/RecyclerView;

.field public n0:Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;

.field public o0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->a0:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->b0:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic A0(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->g1()V

    return-void
.end method

.method public static synthetic B0(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->Z0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic C0(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->r1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic D0(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->f1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E0(Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->k1(Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;)I

    move-result p0

    return p0
.end method

.method public static synthetic F0(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->e1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic G0(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->c1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic H0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->d1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic I0(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;[Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->p1([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic J0(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->b1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic K0(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;ZLandroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->X0(ZLandroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic L0(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->init()V

    return-void
.end method

.method private P0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;

    invoke-virtual {v0, p0}, Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;->setOnSelectListener(Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter$a;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;

    new-instance v1, Lvg7;

    invoke-direct {v1, p0}, Lvg7;-><init>(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;

    new-instance v1, Lgh7;

    invoke-direct {v1, p0}, Lgh7;-><init>(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;

    new-instance v1, Ljh7;

    invoke-direct {v1, p0}, Ljh7;-><init>(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    return-void
.end method

.method private synthetic Z0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->O0()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->Z:J

    invoke-virtual/range {p1 .. p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;

    iget-boolean v3, v0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->X:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    invoke-virtual {v0, v3, v5, v1, v4}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->s1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getIsYoutube()I

    move-result v1

    const-wide/16 v5, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    move-wide v9, v5

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getTopicId()J

    move-result-wide v7

    move-wide v9, v7

    :goto_0
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getIsYoutube()I

    move-result v1

    if-ne v1, v3, :cond_3

    :goto_1
    move-wide v11, v5

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getVideoId()J

    move-result-wide v5

    goto :goto_1

    :goto_2
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getIsYoutube()I

    move-result v1

    if-ne v1, v3, :cond_4

    move v14, v4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getPayType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v14, v1

    :goto_3
    const-string v13, "favorite_more"

    invoke-static/range {v9 .. v14}, Ld06;->h(JJLjava/lang/String;I)V

    const-string v1, "vd_ott_farpage_video_cl"

    invoke-static {v1}, Lhb0;->markDirect(Ljava/lang/String;)V

    new-instance v5, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {v5}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    invoke-virtual {v5, v3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getIsYoutube()I

    move-result v6

    if-ne v6, v3, :cond_5

    new-instance v3, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getSourceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getVideoName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getChannelName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getChannelCover()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getCoverX()Ljava/lang/String;

    move-result-object v13

    const/4 v8, 0x1

    move-object v7, v3

    invoke-direct/range {v7 .. v13}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    new-instance v3, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getVideoId()J

    move-result-wide v15

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getVideoLink()Ljava/lang/String;

    move-result-object v17

    const-wide/16 v18, 0x0

    const/16 v20, 0x1

    move-object v14, v3

    invoke-direct/range {v14 .. v20}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(JLjava/lang/String;JI)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getVideoId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->isShortVideo(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setShortVideo(Z)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object v3

    :goto_4
    invoke-virtual {v5, v3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withMarkParam(Ljava/lang/String;I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    :goto_5
    return-void
.end method

.method public static synthetic d1(Landroid/view/View;)V
    .locals 1

    const-string v0, "vd_ott_farlog_cl"

    invoke-static {v0}, Lp06;->d0(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/transsion/palmsdk/b;->C(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/transsion/palmsdk/b;->g(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method private init()V
    .locals 6

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_login:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/magicvideo/R$string;->collect_login_content:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v2, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity$a;

    invoke-direct {v2, p0, p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity$a;-><init>(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;Landroid/content/Context;)V

    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcom/transsion/magicvideo/R$string;->login:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result p0

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, p0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initView()V
    .locals 1

    sget v0, Lcom/transsion/onlinevideo/R$id;->ll_content:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->i0:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/onlinevideo/R$id;->ll_login:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->h0:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_close_login:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->k0:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->bt_login:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->l0:Landroid/widget/Button;

    return-void
.end method

.method public static synthetic k1(Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;)I
    .locals 4

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getCollectStamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getCollectStamp()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getCollectStamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getCollectStamp()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-lez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic p0(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->Y0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->j1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->q1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic s0(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->o1()V

    return-void
.end method

.method public static synthetic t0(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->m1()V

    return-void
.end method

.method public static synthetic u0(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->i1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v0(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->W0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w0(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->a1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method private w1(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->S:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    sget v1, Lcom/transsion/playercommon/R$string;->os_close:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/playercommon/R$string;->os_back:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->S:Landroid/view/View;

    if-eqz p1, :cond_1

    sget p1, Lcom/transsion/playercommon/R$string;->talkback_close:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/transsion/playercommon/R$string;->talkback_back:I

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public static synthetic x0(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->n1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic y0(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->l1()V

    return-void
.end method

.method public static synthetic z0(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->h1()V

    return-void
.end method


# virtual methods
.method public M0(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->o0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->T:Landroid/widget/ImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->X:Z

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->inflateOperationBar()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->O:Landroid/view/View;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;

    invoke-virtual {v0, v2}, Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;->h(Z)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;

    if-nez p1, :cond_3

    iget v3, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->W:I

    goto :goto_2

    :cond_3
    const/16 v3, 0xc

    :goto_2
    invoke-virtual {v0, v3}, Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;->r(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->V:Landroid/widget/CheckBox;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->V:Landroid/widget/CheckBox;

    if-eqz p1, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->V:Landroid/widget/CheckBox;

    new-instance v1, Lph7;

    invoke-direct {v1, p0}, Lph7;-><init>(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->S:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->w1(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->S:Landroid/view/View;

    new-instance v1, Lqh7;

    invoke-direct {v1, p0, p1}, Lqh7;-><init>(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->U:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->Y:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method public N0(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->b0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;

    iget-object v1, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->b0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->b0:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->b0:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->Q0()V

    :cond_2
    iget-object p1, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->i0:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->b0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->e0:Landroid/view/View;

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->b0:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public O0()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->Z:J

    sub-long/2addr v0, v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ingoreClickEvent interval:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "OnlineVideoCollectActivity"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final Q0()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->T:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->e0:Landroid/view/View;

    if-nez v0, :cond_2

    sget v0, Lcom/transsion/onlinevideo/R$id;->vs_empty_content:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->e0:Landroid/view/View;

    sget v2, Lcom/transsion/onlinevideo/R$id;->rv_recommends:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->m0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->e0:Landroid/view/View;

    sget v2, Lcom/transsion/onlinevideo/R$id;->ll_recommend:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->j0:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->e0:Landroid/view/View;

    sget v2, Lcom/transsion/onlinevideo/R$id;->tv_content_retry:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->f0:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->e0:Landroid/view/View;

    sget v2, Lcom/transsion/onlinevideo/R$id;->tv_no_content:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->g0:Landroid/widget/TextView;

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/transsion/onlinevideo/R$string;->no_videos:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/transsion/onlinevideo/R$string;->empty_collect_content:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->n0:Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;->d(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->n0:Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;->g(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->n0:Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;

    new-instance v3, Lxg7;

    invoke-direct {v3, p0}, Lxg7;-><init>(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;)V

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->f0:Landroid/widget/TextView;

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->f0:Landroid/widget/TextView;

    new-instance v1, Lyg7;

    invoke-direct {v1}, Lyg7;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->m0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->m0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->n0:Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->c0:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    new-instance v1, Lzg7;

    invoke-direct {v1, p0}, Lzg7;-><init>(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->W(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->c0:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->z()V

    return-void
.end method

.method public final R0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->h0:Landroid/widget/LinearLayout;

    sget-boolean v1, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->p0:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->k0:Landroid/widget/ImageView;

    new-instance v1, Lmh7;

    invoke-direct {v1, p0}, Lmh7;-><init>(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public S0()V
    .locals 2

    new-instance v0, Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;->r(I)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->rv_collect:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->R:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->R:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public T0()V
    .locals 2

    sget v0, Lcom/transsion/onlinevideo/R$id;->topic_pull_damping_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->o0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Llh7;

    invoke-direct {v1, p0}, Llh7;-><init>(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setOnRefreshListener(Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method public U0()V
    .locals 4

    sget v0, Lcom/transsion/onlinevideo/R$id;->title_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/onlinevideo/R$id;->title_bar_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->U:Landroid/widget/TextView;

    sget v1, Lcom/transsion/onlinevideo/R$id;->title_bar_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->S:Landroid/view/View;

    new-instance v2, Lnh7;

    invoke-direct {v2, p0}, Lnh7;-><init>(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/onlinevideo/R$id;->title_bar_checkBox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->V:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$string;->my_favorites:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->Y:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->U:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->U:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/onlinevideo/R$color;->os_text_primary_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget v1, Lcom/transsion/onlinevideo/R$id;->iv_history_clear:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->T:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->T:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/onlinevideo/R$drawable;->ic_multi_edit:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->T:Landroid/widget/ImageView;

    new-instance v1, Loh7;

    invoke-direct {v1, p0}, Loh7;-><init>(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public V0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->c0:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iput-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->c0:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->d0:Lcom/transsion/onlinevideo/viewmodel/CollectViewModel;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/transsion/onlinevideo/viewmodel/CollectViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/onlinevideo/viewmodel/CollectViewModel;

    iput-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->d0:Lcom/transsion/onlinevideo/viewmodel/CollectViewModel;

    :cond_1
    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "OnlineVideoCollectActivity"

    const-string v1, "init Collecty palm is login!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->d0:Lcom/transsion/onlinevideo/viewmodel/CollectViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/onlinevideo/viewmodel/CollectViewModel;->b(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->d0:Lcom/transsion/onlinevideo/viewmodel/CollectViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/viewmodel/CollectViewModel;->c()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lkh7;

    invoke-direct {v1, p0}, Lkh7;-><init>(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->d()Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->a0:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->N0(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public final synthetic W0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;

    iget-object p0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->V:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;->h(Z)V

    return-void
.end method

.method public final synthetic X0(ZLandroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->M0(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public final synthetic Y0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;->g()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->v1(Ljava/util/List;)V

    return-void
.end method

.method public final synthetic a1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 3

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;

    iget-boolean v1, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->X:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->M0(Z)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;

    invoke-virtual {p0, v0, v2, p3}, Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;->i(Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;ZI)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->s1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    :goto_0
    return v2
.end method

.method public b(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->setTitle(I)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->t1(Z)V

    return-void
.end method

.method public final synthetic b1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->O0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->X:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->Z:J

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->X:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->s1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->b0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->setTitle(I)V

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->t1(Z)V

    return-void
.end method

.method public final synthetic c1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 4

    iget-object p1, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->n0:Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;

    new-instance p2, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p2

    new-instance p3, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getVideo_id()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getVideo_serial_source_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getVideo_name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, v0, v1, v2, v3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;->getVideo_id()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->isShortVideo(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p3, p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setShortVideo(Z)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    sget-object p2, Ld06;->b:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withMarkParam(Ljava/lang/String;I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 p2, 0x436

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->V0()V

    :cond_0
    return-void
.end method

.method public final synthetic e1(Ljava/util/List;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->j0:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->n0:Lcom/transsion/onlinevideo/adapter/SuperiorRecommendAdapter;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->j0:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final synthetic f1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    sput-boolean p1, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->p0:Z

    iget-object p0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->h0:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final synthetic g1()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->o0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomSwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public final synthetic h1()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->V0()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->o0:Lcom/transsion/widgets/CustomSwipeRefreshLayout;

    new-instance v1, Lah7;

    invoke-direct {v1, p0}, Lah7;-><init>(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final synthetic i1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->onBackPressed()V

    return-void
.end method

.method public inflateOperationBar()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->O:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/onlinevideo/R$id;->option_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->O:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->option_bar_tip:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->P:Landroid/widget/TextView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->option_bar_icon:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->Q:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->O:Landroid/view/View;

    new-instance v1, Lwg7;

    invoke-direct {v1, p0}, Lwg7;-><init>(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final synthetic j1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->M0(Z)V

    return-void
.end method

.method public final synthetic l1()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->a0:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->N0(Ljava/util/List;)V

    return-void
.end method

.method public final synthetic m1()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->d()Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getIsYoutube()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getSourceId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getVideoId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v1, Lch7;

    invoke-direct {v1}, Lch7;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->a0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ldh7;

    invoke-direct {v0, p0}, Ldh7;-><init>(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic n1(Ljava/util/List;)V
    .locals 0

    new-instance p1, Lbh7;

    invoke-direct {p1, p0}, Lbh7;-><init>(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;)V

    invoke-static {p1}, Liia;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic o1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->b0:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;

    invoke-virtual {v1}, Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->X:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->M0(Z)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/onlinevideo/R$layout;->activity_online_video_collect:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const/16 p1, 0xb

    iput p1, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->W:I

    invoke-direct {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->initView()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->S0()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->P0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->U0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->V0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->R0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->registerPalmIdListeners()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->T0()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->init()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->unRegisterPalmIdListeners()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onResume()V

    const-string p0, "vd_ott_farpage_show"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public onUserLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->onUserLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->V0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->R0()V

    return-void
.end method

.method public onUserReLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->onUserReLogin(Lcom/transsion/dbdata/beans/VishaPalmUserInfo;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->V0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->R0()V

    return-void
.end method

.method public final synthetic p1([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lih7;

    invoke-direct {v0, p0}, Lih7;-><init>(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->d()Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->j([Ljava/lang/String;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 v0, 0x436

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic q1(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object p1, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;->g()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iget-object p2, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;

    invoke-virtual {p2}, Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;->g()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, p2, :cond_1

    iget-object v4, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;

    invoke-virtual {v4}, Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;->g()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getIsYoutube()I

    move-result v4

    if-ne v4, v3, :cond_0

    iget-object v3, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;

    invoke-virtual {v3}, Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;->g()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getSourceId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    invoke-static {}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->d()Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;

    invoke-virtual {v3}, Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;->g()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getVideoId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    iget-object v3, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->N:Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;

    invoke-virtual {v3}, Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;->g()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getVideoId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p2, p1, [J

    move v2, v1

    :goto_2
    if-ge v2, p1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    invoke-static {p2, p1, v3}, Lcom/transsion/onlinevideo/viewmodel/CollectViewModel;->d([JLandroid/widget/ImageView;I)V

    goto :goto_3

    :cond_3
    new-instance p2, Lhh7;

    invoke-direct {p2, p0, p1}, Lhh7;-><init>(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;[Ljava/lang/String;)V

    invoke-static {p2}, Liia;->a(Ljava/lang/Runnable;)V

    :goto_3
    invoke-virtual {p0, v1}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->M0(Z)V

    return-void
.end method

.method public final synthetic r1(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->M0(Z)V

    return-void
.end method

.method public registerPalmIdListeners()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->registerPalmIdListeners()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x436

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    return-void
.end method

.method public s1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V
    .locals 3

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;

    sget v1, Lcom/transsion/magicvideo/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    check-cast p1, Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p4, p2, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    invoke-virtual {p1, v0, p2, p3}, Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;->i(Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;ZI)V

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;->g()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/adapter/OnlineCollectAdapter;->g()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->t1(Z)V

    return-void
.end method

.method public setTitle(I)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->U:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    sget v2, Lcom/transsion/magicvideo/R$string;->none_select:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    if-le p1, v1, :cond_1

    sget v2, Lcom/transsion/magicvideo/R$string;->items:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/transsion/magicvideo/R$string;->item:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->V:Landroid/widget/CheckBox;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->b0:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p1, p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_4
    return-void
.end method

.method public final t1(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->O:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->P:Landroid/widget/TextView;

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->Q:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public u1(Ljava/util/List;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    sget v0, Lcom/transsion/onlinevideo/R$string;->remove_video_collect_multi:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget p1, Lcom/transsion/onlinevideo/R$string;->remove_video_collect_single:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    sget v0, Lcom/transsion/onlinevideo/R$string;->remove:I

    new-instance v1, Leh7;

    invoke-direct {v1, p0}, Leh7;-><init>(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    sget v0, Lcom/transsion/onlinevideo/R$string;->cancel:I

    new-instance v1, Lfh7;

    invoke-direct {v1, p0}, Lfh7;-><init>(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method

.method public unRegisterPalmIdListeners()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->unRegisterPalmIdListeners()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x436

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    return-void
.end method

.method public userLogout()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->userLogout()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->V0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->R0()V

    return-void
.end method

.method public v1(Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->u1(Ljava/util/List;)V

    return-void
.end method
