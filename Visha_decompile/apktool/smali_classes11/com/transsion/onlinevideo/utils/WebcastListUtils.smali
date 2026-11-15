.class public Lcom/transsion/onlinevideo/utils/WebcastListUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/onlinevideo/utils/WebcastListUtils$e;
    }
.end annotation


# instance fields
.field public A:Lcom/transsion/onlinevideo/utils/WebcastListUtils$e;

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:I

.field public F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public H:Ljava/lang/String;

.field public I:Ljava/lang/String;

.field public J:Z

.field public K:Z

.field public L:Ljava/lang/String;

.field public M:Ljava/lang/String;

.field public N:Z

.field public O:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;

.field public final P:Ljava/lang/Runnable;

.field public final Q:Ljava/lang/Runnable;

.field public a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

.field public b:Landroid/view/View;

.field public final c:Landroid/content/Context;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:I

.field public g:J

.field public h:J

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:Ljava/lang/String;

.field public m:I

.field public n:I

.field public o:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

.field public p:Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;

.field public q:Ljava/lang/String;

.field public r:J

.field public s:Ljava/lang/String;

.field public t:J

.field public u:Z

.field public v:I

.field public w:J

.field public x:J

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->e:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->m:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->B:Z

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->C:Z

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->D:Z

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->N:Z

    new-instance v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils$b;-><init>(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->O:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;

    new-instance v0, Lsic;

    invoke-direct {v0, p0}, Lsic;-><init>(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->P:Ljava/lang/Runnable;

    new-instance v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$3;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils$3;-><init>(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->Q:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->c:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->J()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->e:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->B:Z

    return p0
.end method

.method public static bridge synthetic d(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->o:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->b:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)I
    .locals 0

    iget p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->v:I

    return p0
.end method

.method public static bridge synthetic h(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->D:Z

    return p0
.end method

.method public static bridge synthetic i(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->C:Z

    return p0
.end method

.method public static bridge synthetic j(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)I
    .locals 0

    iget p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->f:I

    return p0
.end method

.method public static bridge synthetic k(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/transsion/onlinevideo/utils/WebcastListUtils;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->e:Z

    return-void
.end method

.method public static bridge synthetic m(Lcom/transsion/onlinevideo/utils/WebcastListUtils;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->B:Z

    return-void
.end method

.method public static bridge synthetic n(Lcom/transsion/onlinevideo/utils/WebcastListUtils;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->D:Z

    return-void
.end method

.method public static bridge synthetic o(Lcom/transsion/onlinevideo/utils/WebcastListUtils;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->C:Z

    return-void
.end method

.method public static bridge synthetic p(Lcom/transsion/onlinevideo/utils/WebcastListUtils;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->d:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic q(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->y()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic r(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->F()Z

    move-result p0

    return p0
.end method

.method public static t(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p0}, Le07;->g(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-boolean v0, Lzdc;->h:Z

    const-string v2, "webcast"

    if-nez v0, :cond_0

    const-string p0, "canAutoPlay: allowStreamPlay is false"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v3, "ott_cellular_autoplay"

    invoke-virtual {v0, v3, v1}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lzdc;->h:Z

    const-string v1, "allow_stream_auto_play"

    invoke-static {p0, v1, v0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canAutoPlay: allowStreamPlay is true, mobileAutoPlay = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    invoke-static {p0}, Le07;->h(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "ott_wifi_autoplay"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method


# virtual methods
.method public final A()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->K()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->p:Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;

    check-cast v0, Lcom/transsion/dbdata/beans/appconfig/BannerBean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getTarget()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getTarget()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->c:Landroid/content/Context;

    const-string v1, "VIP"

    const-string v2, "vd_ott_vip_banner_cl"

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lcom/transsion/onlinevideo/web/VipWebActivity;->I0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->c:Landroid/content/Context;

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getTarget()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object v1

    const-string v2, "vd_ott_banner_cl"

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setFrom_card(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsBannerAd:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->setType(I)V

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setVideo_force_play(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->c:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->c:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/playercommon/router/RouterUtils;->routeDefaultTarget(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public B()V
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->K()V

    new-instance v1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v1

    new-instance v10, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    iget-wide v3, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->t:J

    iget-wide v5, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->r:J

    iget-object v7, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->s:Ljava/lang/String;

    iget-object v8, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->q:Ljava/lang/String;

    iget v9, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->f:I

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(JJLjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v10}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v11

    iget-wide v12, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->h:J

    iget-wide v14, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->g:J

    iget-object v1, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->i:Ljava/lang/String;

    iget-object v2, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->j:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->l:Ljava/lang/String;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-virtual/range {v11 .. v18}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withMarkParam(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object v1

    iget-object v0, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    return-void
.end method

.method public C(Z)V
    .locals 25

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->K()V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    new-instance v3, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {v3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    invoke-virtual {v3, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v1

    new-instance v15, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    iget-wide v4, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->t:J

    iget-wide v6, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->r:J

    iget-object v8, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->q:Ljava/lang/String;

    iget-object v9, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->s:Ljava/lang/String;

    iget-object v10, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->j:Ljava/lang/String;

    iget-object v13, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->G:Ljava/lang/String;

    iget-object v14, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->H:Ljava/lang/String;

    iget-object v12, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->M:Ljava/lang/String;

    iget-object v11, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->I:Ljava/lang/String;

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object v3, v15

    move-object/from16 v18, v11

    move/from16 v11, v16

    move-object/from16 v16, v12

    move/from16 v12, v17

    move-object v2, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v18

    invoke-direct/range {v3 .. v16}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v19

    sget-object v20, Ld06;->b:Ljava/lang/String;

    iget-object v1, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->l:Ljava/lang/String;

    iget-wide v2, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->g:J

    const/16 v21, 0x0

    move-object/from16 v22, v1

    move-wide/from16 v23, v2

    invoke-virtual/range {v19 .. v24}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withMarkParam(Ljava/lang/String;ILjava/lang/String;J)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_0
    iget-boolean v2, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->K:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->p:Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideo()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    move-result-object v2

    new-instance v3, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {v3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    invoke-virtual {v3, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v1

    new-instance v9, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getVkVideoId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getVideoLink()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getSourceType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v3, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->p:Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;

    invoke-static {v3}, Lek4;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v9}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v10

    sget-object v11, Ld06;->b:Ljava/lang/String;

    iget-object v13, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->l:Ljava/lang/String;

    iget-wide v14, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->g:J

    const/4 v12, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withMarkParam(Ljava/lang/String;ILjava/lang/String;J)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {v2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v1

    new-instance v11, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    iget-wide v3, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->t:J

    iget-wide v5, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->r:J

    iget-object v7, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->q:Ljava/lang/String;

    iget-object v8, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->s:Ljava/lang/String;

    iget-object v9, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->j:Ljava/lang/String;

    const/4 v10, 0x1

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->t:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->isShortVideo(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setShortVideo(Z)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v3

    sget-object v4, Ld06;->b:Ljava/lang/String;

    iget-object v6, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->l:Ljava/lang/String;

    iget-wide v7, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->g:J

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withMarkParam(Ljava/lang/String;ILjava/lang/String;J)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object v1

    goto/16 :goto_0

    :goto_1
    iget-object v3, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->c:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    iget-boolean v1, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->K:Z

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getVkVideoId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "topic"

    invoke-static {v1, v2}, Ld06;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-wide v3, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->t:J

    iget-wide v5, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->g:J

    const-string v7, "topic"

    iget v8, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->z:I

    invoke-static/range {v3 .. v8}, Ld06;->h(JJLjava/lang/String;I)V

    :goto_2
    iget-wide v9, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->g:J

    iget-wide v11, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->t:J

    iget v13, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->y:I

    iget v14, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->k:I

    iget-wide v1, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->h:J

    iget-object v3, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->j:Ljava/lang/String;

    iget v4, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->E:I

    iget-object v5, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->s:Ljava/lang/String;

    iget-object v6, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->i:Ljava/lang/String;

    iget-object v7, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->F:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->l:Ljava/lang/String;

    const/16 v18, 0x0

    move-wide v15, v1

    move-object/from16 v17, v3

    move/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v0

    invoke-static/range {v9 .. v23}, Ld06;->g(JJIIJLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    return-void
.end method

.method public D()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->N:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->x()Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->N:Z

    new-instance v1, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    invoke-direct {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setIsTouchWiget(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setRotateViewAuto(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setLockLand(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setAutoFullWithSize(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setShowFullAnimation(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setNeedLockFull(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setCacheWithPlay(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setShowSubtitle(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->z()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setPlayerInitConfig(Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setHardwareAccelerated(Z)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->O:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->setVideoAllCallBack(Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;)Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/builder/GSYVideoOptionBuilder;->build(Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;)V

    new-instance v0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$a;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils$a;-><init>(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public final E()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->c:Landroid/content/Context;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Landroidx/lifecycle/LifecycleOwner;

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p0

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p0

    return p0
.end method

.method public final F()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->listener()Lcom/transsion/vishaplayersdk/gsyplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    :catchall_0
    :cond_1
    return v1
.end method

.method public G()Z
    .locals 2

    sget-object p0, Lo18;->g:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/transsion/magicvideo/services/VideosService;

    if-eqz p0, :cond_0

    return v0

    :cond_0
    sget-object p0, Lo18;->f:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    return v1
.end method

.method public final H(Landroid/view/View;I)Z
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/16 v1, 0x64

    if-eq p2, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->I(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    mul-int/2addr p1, p2

    div-int/2addr p1, v1

    if-lt p0, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public final I(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p1, 0x1

    aget v0, v0, p1

    iget p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->n:I

    if-lt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final synthetic J()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->G()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->Y()V

    :cond_0
    return-void
.end method

.method public final K()V
    .locals 11

    sget-wide v0, Lcom/transsion/vishaplayersdk/base/config/PlayerStatisticInfo;->playRealDuration:J

    const-wide/16 v9, 0x0

    cmp-long v2, v0, v9

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->p:Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->K:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->h:J

    iget v4, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->v:I

    invoke-static {v4}, Lyz5;->b(I)Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->p:Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;

    check-cast p0, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideo()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getVkVideoId()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lyz5;->d(JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->t:J

    iget-wide v4, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->h:J

    iget-wide v6, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->g:J

    iget p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->v:I

    invoke-static {p0}, Lyz5;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lyz5;->c(JJJJLjava/lang/String;)V

    :goto_0
    sput-wide v9, Lcom/transsion/vishaplayersdk/base/config/PlayerStatisticInfo;->playRealDuration:J

    :cond_1
    return-void
.end method

.method public L(ZILjava/util/List;Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->M(ZILjava/util/List;Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;I)V

    return-void
.end method

.method public M(ZILjava/util/List;Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;I)V
    .locals 15

    move-object v12, p0

    move/from16 v13, p2

    move-object/from16 v14, p3

    if-eqz p4, :cond_0

    if-eqz v14, :cond_0

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p4 .. p4}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v1, v0

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getTopic_id()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getRequestId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getHorizontalFlag()I

    move-result v10

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getN_biz_group_id()Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x1

    move-object v0, p0

    move/from16 v7, p2

    invoke-virtual/range {v0 .. v11}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->S(JJLjava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->setTaskAutoPlay(Z)V

    invoke-virtual/range {p4 .. p4}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->isYoutubeChannel()Z

    move-result v0

    move/from16 v1, p5

    invoke-virtual {p0, v13, v14, v1, v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->u(ILjava/util/List;IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual/range {p4 .. p4}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->isYoutubeChannel()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->Z(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a0()V

    :cond_2
    :goto_0
    return-void
.end method

.method public N()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->P()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->m:I

    return-void
.end method

.method public O()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->b0()V

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->release()V

    :cond_0
    return-void
.end method

.method public P()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getFullWindowPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->b0()V

    iget-object v1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->b:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->b:Landroid/view/View;

    sget v3, Lcom/transsion/onlinevideo/R$id;->loading_view:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/LoadingView;

    if-eqz v1, :cond_1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iput-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->b:Landroid/view/View;

    :cond_2
    iget-object v1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->K()V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_3
    iget-object v1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->o:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->showMuteButton(Z)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->o:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    invoke-virtual {v1, v0}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->setListener(Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$b;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->o:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    :cond_4
    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->stopPlay()V

    return-void
.end method

.method public Q(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->b0()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsBannerAd:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->P()V

    :cond_1
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->stop()V

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->B()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->A()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    if-ne p1, v0, :cond_4

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->J:Z

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->C(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public R(IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->b0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->P()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;->instance()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoBaseManager;->stop()V

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->B()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->A()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->C(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public S(JJLjava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->h:J

    iput-object p6, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->i:Ljava/lang/String;

    iput-wide p3, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->g:J

    iput-object p5, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->j:Ljava/lang/String;

    iput p7, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->k:I

    iput-object p8, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->l:Ljava/lang/String;

    iput p9, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->y:I

    iput p10, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->E:I

    iput-object p11, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->F:Ljava/lang/String;

    return-void
.end method

.method public T()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setMute(Z)V

    :cond_0
    return-void
.end method

.method public U(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->f:I

    return-void
.end method

.method public V(Lcom/transsion/onlinevideo/utils/WebcastListUtils$e;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->A:Lcom/transsion/onlinevideo/utils/WebcastListUtils$e;

    return-void
.end method

.method public W(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->n:I

    return-void
.end method

.method public X()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->c:Landroid/content/Context;

    invoke-static {v0}, Le07;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lzdc;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->A:Lcom/transsion/onlinevideo/utils/WebcastListUtils$e;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils$e;->a()V

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/onlinevideo/R$string;->auto_play_stream_toast:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    sput-boolean p0, Lzdc;->j:Z

    :cond_2
    return-void
.end method

.method public Y()V
    .locals 14

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->E()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->x()Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setPlayerType(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    sget-object v2, Lcom/transsion/vishaplayersdk/base/config/PlayType;->PLAY_TYPE_LIVE:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setPlayType(Lcom/transsion/vishaplayersdk/base/config/PlayType;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iput-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsYoutube:Z

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setPlayerType(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    sget-object v2, Lcom/transsion/vishaplayersdk/base/config/PlayType;->PLAY_TYPE_LIVE:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setPlayType(Lcom/transsion/vishaplayersdk/base/config/PlayType;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iput-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsVk:Z

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setPlayerType(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    sget-object v2, Lcom/transsion/vishaplayersdk/base/config/PlayType;->PLAY_TYPE_LIVE:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setPlayType(Lcom/transsion/vishaplayersdk/base/config/PlayType;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setPlayerType(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    sget-object v2, Lcom/transsion/vishaplayersdk/base/config/PlayType;->PLAY_TYPE_LIVE:Lcom/transsion/vishaplayersdk/base/config/PlayType;

    invoke-virtual {v0, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setPlayType(Lcom/transsion/vishaplayersdk/base/config/PlayType;)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->q:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->stopPlay()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsBannerAd:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onVideoReset()V

    :cond_5
    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0, v4}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setIfCurrentIsFullscreen(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->z()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setPlayerInitConfig(Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;)V

    iget-object v5, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    iget-object v6, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->d:Ljava/lang/String;

    iget-wide v7, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->t:J

    iget-wide v9, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->r:J

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->s:Ljava/lang/String;

    invoke-virtual/range {v5 .. v12}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setUp(Ljava/lang/String;JJZLjava/lang/String;)Z

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    iget-wide v5, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->w:J

    mul-long/2addr v5, v2

    invoke-virtual {v0, v5, v6}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setSeekOnStart(J)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    iget-wide v5, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->x:J

    mul-long/2addr v5, v2

    invoke-virtual {v0, v5, v6}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->setEndPosition(J)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->startPlay()V

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->K:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->L:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;->stopPlay()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onVideoReset()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0, v4}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setIfCurrentIsFullscreen(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->z()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setPlayerInitConfig(Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;)V

    iget-object v6, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    iget-object v7, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->d:Ljava/lang/String;

    iget-wide v8, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->t:J

    iget-wide v10, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->r:J

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->s:Ljava/lang/String;

    invoke-virtual/range {v6 .. v13}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setUp(Ljava/lang/String;JJZLjava/lang/String;)Z

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    iget-wide v5, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->w:J

    mul-long/2addr v5, v2

    invoke-virtual {v0, v5, v6}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setSeekOnStart(J)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    iget-wide v5, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->x:J

    mul-long/2addr v5, v2

    invoke-virtual {v0, v5, v6}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->setEndPosition(J)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->startPlay()V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iput-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mVkInitMute:Z

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iput-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mVkTouchCheck:Z

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsBannerAd:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->startPlay()V

    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->b:Landroid/view/View;

    if-eqz v0, :cond_a

    sget v1, Lcom/transsion/onlinevideo/R$id;->loading_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/LoadingView;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->b:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_play_logo:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_a

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method public Z(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->b0()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->y()Z

    iget v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->v:I

    invoke-virtual {p0, v0, p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->R(IZ)V

    return-void
.end method

.method public a0()V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->b0()V

    iget v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->f:I

    invoke-static {v0}, Lkfc;->m(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->u:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->f:I

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->P:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->v:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->C:Z

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->B:Z

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->Q:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public b0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->P:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->Q:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public s(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->x()Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->K()V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/4 v0, -0x1

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->b:Landroid/view/View;

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->b:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->loading_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgetslib/view/LoadingView;

    if-eqz p2, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iput-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->b:Landroid/view/View;

    :cond_3
    :goto_0
    return-void
.end method

.method public final u(ILjava/util/List;IZ)Z
    .locals 4

    iput-boolean p4, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->J:Z

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_e

    if-eq p3, v1, :cond_e

    if-eqz p2, :cond_e

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    :try_start_0
    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    const/4 p3, 0x5

    if-eq v1, p3, :cond_7

    const/4 v3, 0x7

    if-eq v1, v3, :cond_1

    goto/16 :goto_2

    :cond_1
    iput v3, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->v:I

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getFirstFeedStreamBean()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideo()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->D()V

    return v0

    :cond_2
    :try_start_1
    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getSourceType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p3, :cond_3

    move p3, v2

    goto :goto_0

    :cond_3
    move p3, v0

    :goto_0
    iput-boolean p3, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->K:Z

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getSourceType()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->U(I)V

    iget-boolean p3, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->K:Z

    if-nez p3, :cond_4

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideoSerialSourceId()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->q:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->isVip()Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->u:Z

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getStartTime()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->w:J

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getEndTime()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->x:J

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideoSerialId()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->r:J

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideoId()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->t:J

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideo()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getPayType()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->z:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideo()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getVideoLink()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->L:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getTitle()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->s:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->p:Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;

    if-eqz p4, :cond_6

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->U(I)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getChannelName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->G:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getChannelConver()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->H:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideo()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideo()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getCoverX()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->I:Ljava/lang/String;

    :cond_5
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean;->getVideo()Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/FeedStreamBean$VideoBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->M:Ljava/lang/String;

    :cond_6
    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->setBannerAd(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->D()V

    return v2

    :cond_7
    :try_start_2
    iput p3, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->v:I

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getFirstWebcastBean()Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->getFirstWebcastSerialBean()Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p2, :cond_8

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->D()V

    return v0

    :cond_8
    :try_start_3
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/WebcastBean;->getSourceType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->U(I)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->getVideoLink()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->q:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->getSerialId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p3, p1

    iput-wide p3, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->r:J

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->getVideoId()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->t:J

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->getPayType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->z:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->getSerialTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->s:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->p:Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/WebcastSerialBean;->isVip()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->u:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->w:J

    iput-wide p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->x:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->setBannerAd(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->D()V

    return v2

    :cond_9
    :try_start_4
    iput v2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->v:I

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p1, p3}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getBanner(I)Lcom/transsion/dbdata/beans/appconfig/BannerBean;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->D()V

    return v0

    :cond_a
    :try_start_5
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getTarget()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez p2, :cond_b

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->D()V

    return v0

    :cond_b
    :try_start_6
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getTarget()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getSourceType()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->U(I)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getTarget()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getTarget()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getTarget()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getVideo_serial_source_id()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->q:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getTarget()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getSerialId()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->r:J

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getTarget()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getVideo_id()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->t:J

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getTarget()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getTitle()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->s:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->p:Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;

    iput-boolean v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->u:Z

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getTarget()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getStart_time()I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->w:J

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getTarget()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getParam()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->getEnd_time()I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->x:J

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/appconfig/BannerBean;->getTarget()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;->getType()I

    move-result p1

    const/4 p3, 0x3

    if-ne p1, p3, :cond_c

    move v0, v2

    :cond_c
    invoke-virtual {p2, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->setBannerAd(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->D()V

    return v2

    :cond_d
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->D()V

    return v0

    :goto_3
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->D()V

    throw p1

    :cond_e
    :goto_4
    return v0
.end method

.method public v(Landroidx/recyclerview/widget/LinearLayoutManager;Ljava/util/List;Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;)V
    .locals 10

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->E()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return-void

    :cond_1
    iget v3, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->m:I

    if-eq v3, v2, :cond_3

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    iget v4, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->m:I

    if-lt v4, v0, :cond_2

    if-gt v4, v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->I(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;->isYoutubeChannel()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->P()V

    iput v2, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->m:I

    :cond_3
    iget-object v1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->t(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-boolean v1, Lzdc;->i:Z

    if-eqz v1, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-gt v0, v1, :cond_c

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_5

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x7

    if-eq v2, v4, :cond_5

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_b

    :cond_5
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->G()Z

    move-result v4

    if-nez v4, :cond_b

    if-eqz v2, :cond_b

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_6

    const/16 v4, 0x64

    invoke-virtual {p0, v2, v4}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->H(Landroid/view/View;I)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    const/16 v4, 0x32

    invoke-virtual {p0, v2, v4}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->H(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_7
    iget p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->m:I

    if-eq p1, v0, :cond_c

    iput v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->m:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;->getData_type()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    if-ne p1, v3, :cond_a

    sget p1, Lcom/transsion/onlinevideo/R$id;->banner_channel:I

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    invoke-static {}, Lcom/transsion/playercommon/core/MainApp;->f()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Le07;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string p0, "webcast"

    const-string p1, "ott channel start play,but no network"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    if-eqz p1, :cond_c

    iput-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->o:Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    invoke-virtual {p1, v1}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->showMuteButton(Z)V

    new-instance v1, Lcom/transsion/onlinevideo/utils/WebcastListUtils$c;

    invoke-direct {v1, p0, p2, v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils$c;-><init>(Lcom/transsion/onlinevideo/utils/WebcastListUtils;Ljava/util/List;I)V

    invoke-virtual {p1, v1}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->setListener(Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$b;)V

    new-instance v1, Lcom/transsion/onlinevideo/utils/WebcastListUtils$d;

    move-object v4, v1

    move-object v5, p0

    move-object v6, p1

    move v7, v0

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/transsion/onlinevideo/utils/WebcastListUtils$d;-><init>(Lcom/transsion/onlinevideo/utils/WebcastListUtils;Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;ILjava/util/List;Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;)V

    invoke-virtual {p1, v1}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->setListener2(Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner$b;)V

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->getCurrentView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_9

    return-void

    :cond_9
    sget v2, Lcom/transsion/onlinevideo/R$id;->video_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    sget v3, Lcom/transsion/onlinevideo/R$id;->cover_container:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->s(Landroid/view/View;Landroid/view/ViewGroup;)V

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->getCurrentItem()I

    move-result v9

    move-object v4, p0

    move v6, v0

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v4 .. v9}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->M(ZILjava/util/List;Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;I)V

    goto :goto_1

    :cond_a
    sget p1, Lcom/transsion/onlinevideo/R$id;->video_container:I

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    sget v3, Lcom/transsion/onlinevideo/R$id;->cover_container:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->s(Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->L(ZILjava/util/List;Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;)V

    goto :goto_1

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_c
    :goto_1
    return-void
.end method

.method public w(Landroidx/recyclerview/widget/LinearLayoutManager;Ljava/util/List;Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;I)V
    .locals 2

    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->G()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iput p4, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->m:I

    sget v0, Lcom/transsion/onlinevideo/R$id;->video_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/onlinevideo/R$id;->cover_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->s(Landroid/view/View;Landroid/view/ViewGroup;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->L(ZILjava/util/List;Lcom/transsion/dbdata/beans/appconfig/ChannelsBean;)V

    :cond_0
    return-void
.end method

.method public final x()Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    iget-object v1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->a:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    return-object p0
.end method

.method public final y()Z
    .locals 2

    sget-object p0, Lo18;->g:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Lcom/transsion/magicvideo/services/VideosService;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/transsion/magicvideo/services/VideosService;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/services/VideosService;->n()V

    return v0

    :cond_0
    sget-object p0, Lo18;->f:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final z()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;
    .locals 2

    new-instance v0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->c:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withPlayerActivity(Landroid/app/Activity;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withLoginState(Z)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/palmsdk/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withUserOpenID(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lgec;->c()Lgec;

    move-result-object v1

    invoke-virtual {v1}, Lgec;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withUserToken(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lgec;->c()Lgec;

    move-result-object v1

    invoke-virtual {v1}, Lgec;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->whitTokenType(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/palmsdk/b;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withPalmToken(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withClientIP(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/utils/deviceinfo/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withGAID(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withCountryCode(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/ga/AthenaAnalytics;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withVAID(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object v0

    iget p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->f:I

    invoke-static {p0}, Lkfc;->m(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->whitVIP(Z)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object p0

    invoke-static {}, Lcom/blankj/utilcode/util/LanguageUtils;->b()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->withLanguageCode(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->build()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    move-result-object p0

    return-object p0
.end method
