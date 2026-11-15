.class public Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# instance fields
.field public abroad:Ljava/lang/String;

.field public bdsv:Ljava/lang/String;

.field public bid:Ljava/lang/String;

.field public buffer_kind:Ljava/lang/String;

.field public ch:Ljava/lang/String;

.field public chip_type:Ljava/lang/String;

.field public did:Ljava/lang/String;

.field public gps:Ljava/lang/String;

.field public guid:Ljava/lang/String;

.field public isdebug:Ljava/lang/String;

.field public log_verison:Ljava/lang/String;

.field public mf:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public net:Ljava/lang/String;

.field public os:Ljava/lang/String;

.field public p2p:Ljava/lang/String;

.field public package_name:Ljava/lang/String;

.field public plat:Ljava/lang/String;

.field public play_sessionid:Ljava/lang/String;

.field public player_type:Ljava/lang/String;

.field public protocol_type:Ljava/lang/String;

.field public proxy:Ljava/lang/String;

.field public pver:Ljava/lang/String;

.field public rch:Ljava/lang/String;

.field public rdc:Ljava/lang/String;

.field public render_type:Ljava/lang/String;

.field public renderview_type:Ljava/lang/String;

.field public resolution_change:Ljava/lang/String;

.field public retry_count:Ljava/lang/String;

.field public runsid:Ljava/lang/String;

.field public sdk_version:Ljava/lang/String;

.field public service_acp:Ljava/lang/String;

.field public service_ap:Ljava/lang/String;

.field public service_bdid:Ljava/lang/String;

.field public service_bsid:Ljava/lang/String;

.field public service_cdnip:Ljava/lang/String;

.field public service_cf:Ljava/lang/String;

.field public service_cid:Ljava/lang/String;

.field public service_cpn:Ljava/lang/String;

.field public service_ct:Ljava/lang/String;

.field public service_datano:Ljava/lang/String;

.field public service_def:Ljava/lang/String;

.field public service_et:Ljava/lang/String;

.field public service_fpa:Ljava/lang/String;

.field public service_fpid:Ljava/lang/String;

.field public service_fpn:Ljava/lang/String;

.field public service_isad:Ljava/lang/String;

.field public service_istry:Ljava/lang/String;

.field public service_pay:Ljava/lang/String;

.field public service_plid:Ljava/lang/String;

.field public service_pt:Ljava/lang/String;

.field public service_pver:Ljava/lang/String;

.field public service_refmdid:Ljava/lang/String;

.field public service_submit:Ljava/lang/String;

.field public service_switcher:Ljava/lang/String;

.field public service_td:Ljava/lang/String;

.field public service_url:Ljava/lang/String;

.field public service_vid:Ljava/lang/String;

.field public service_vts:Ljava/lang/String;

.field public sessionid:Ljava/lang/String;

.field public source_type:Ljava/lang/String;

.field public src:Ljava/lang/String;

.field public statics_num1:Ljava/lang/String;

.field public statics_num2:Ljava/lang/String;

.field public statics_num3:Ljava/lang/String;

.field public statics_num4:Ljava/lang/String;

.field public statics_num5:Ljava/lang/String;

.field public sver:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field public uuid:Ljava/lang/String;

.field public uvip:Ljava/lang/String;

.field public ver:Ljava/lang/String;

.field public video_session:Ljava/lang/String;

.field public video_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->setBigDataCommonParams(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-direct {p0, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->setBigDataCommonParams(Landroid/content/Context;)V

    .line 5
    invoke-direct {p0, p2}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->setPlayerCommonParams(Ljava/util/HashMap;)V

    .line 6
    invoke-direct {p0, p2}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->setPlayerCommon(Ljava/util/HashMap;)V

    return-void
.end method

.method private getBfType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "1"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "4"

    return-object p0

    :cond_0
    const-string p0, "3"

    return-object p0
.end method

.method private getIsad(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "0"

    if-nez p0, :cond_0

    const-string p0, "FALSE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "TRUE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "1"

    return-object p0

    :cond_1
    return-object v0
.end method

.method private getP2p(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "0"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const-string p0, "1"

    return-object p0
.end method

.method private getPt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "0"

    const-string v1, "1"

    if-nez p0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "2"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v1

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "3"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p0

    :cond_2
    return-object v0
.end method

.method private setBigDataCommonParams(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->did:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->ver:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->sver:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mgtv/data/aphone/core/j/e;->b(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->time:Ljava/lang/String;

    invoke-static {}, Lcom/mgtv/data/aphone/core/j/f;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->mf:Ljava/lang/String;

    invoke-static {}, Lcom/mgtv/data/aphone/core/j/f;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->model:Ljava/lang/String;

    invoke-static {}, Lcom/mgtv/data/aphone/core/j/f;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->bdsv:Ljava/lang/String;

    invoke-static {}, Lcom/mgtv/data/aphone/core/j/f;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->isdebug:Ljava/lang/String;

    invoke-static {p1}, Lcom/mgtv/data/aphone/core/j/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->net:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/b/a;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/mgtv/data/aphone/core/j/i;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/mgtv/data/aphone/b/a;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->uuid:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/b/a;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/mgtv/data/aphone/core/j/i;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/mgtv/data/aphone/b/a;->g:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/mgtv/data/aphone/core/j/f;->f()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->gps:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/b/a;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/mgtv/data/aphone/core/j/i;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/mgtv/data/aphone/b/a;->c:Ljava/lang/String;

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/hunantv/imgo/util/b;->K()Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->guid:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/b/a;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/mgtv/data/aphone/core/j/i;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/mgtv/data/aphone/b/a;->e:Ljava/lang/String;

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/hunantv/imgo/util/b;->y()Ljava/lang/String;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->ch:Ljava/lang/String;

    invoke-static {}, Lcom/mgtv/data/aphone/core/f/a;->c()Lcom/mgtv/data/aphone/core/f/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/data/aphone/core/f/a;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->sessionid:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/bean/CommonParamsBean;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/mgtv/data/aphone/core/j/i;->a(Ljava/lang/String;)Z

    move-result p1

    const-string v0, ""

    if-nez p1, :cond_4

    sget-object p1, Lcom/mgtv/data/aphone/core/bean/CommonParamsBean;->c:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object p1, v0

    :goto_4
    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->rdc:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/bean/CommonParamsBean;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/mgtv/data/aphone/core/j/i;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object v0, Lcom/mgtv/data/aphone/core/bean/CommonParamsBean;->d:Ljava/lang/String;

    :cond_5
    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->rch:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/b/a;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "0"

    if-nez p1, :cond_7

    invoke-static {}, Lcom/hunantv/imgo/b/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/data/aphone/core/j/i;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    invoke-static {}, Lcom/hunantv/imgo/b/a;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_7
    :goto_5
    move-object p1, v0

    :goto_6
    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->abroad:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/b/a;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->p2p:Ljava/lang/String;

    invoke-static {}, Lcom/mgtv/data/aphone/core/f/a;->c()Lcom/mgtv/data/aphone/core/f/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/data/aphone/core/f/a;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->runsid:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->N()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->src:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/global/SessionManager;->isUserVIP()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string v0, "1"

    :cond_8
    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->uvip:Ljava/lang/String;

    return-void
.end method

.method private setPlayerCommon(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceBsid:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_bsid:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->servicePay:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_pay:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceFpid:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_fpid:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceAp:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_ap:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceTd:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_td:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceDef:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_def:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceFpn:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_fpn:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceUrl:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_url:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->servicePver:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_pver:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceVid:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_vid:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceCdnip:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_cdnip:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->servicePlid:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_plid:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceFpa:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_fpa:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceCt:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_ct:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceCid:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_cid:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceEt:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_et:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceIstry:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_istry:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceIsad:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_isad:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->servicePt:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_pt:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceCf:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_cf:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceVts:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_vts:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceSwitcher:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_switcher:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceSubmit:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_submit:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceBdid:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_bdid:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceCpn:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_cpn:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceAcp:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_acp:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->BUFFER_KIND:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->buffer_kind:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceRefmdid:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_refmdid:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceDatano:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_datano:Ljava/lang/String;

    return-void
.end method

.method private setPlayerCommonParams(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->VIDEO_SESSION:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->video_session:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->PVER:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->pver:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->PROTOCOL_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->protocol_type:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->PLAYER_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->player_type:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->PLAT:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->plat:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->SOURCE_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->source_type:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->VIDEO_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->video_type:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->PROXY:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->proxy:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->RESOLUTION_CHANGE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->resolution_change:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->OS:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->os:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->PACKAGE_NAME:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->package_name:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->RETRY_COUNT:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->retry_count:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->PLAY_SESSIONID:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->play_sessionid:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->RENDER_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->render_type:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->SDK_VERSION:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->sdk_version:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->LOG_VERISON:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->log_verison:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->CHIP_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->chip_type:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->RENDERVIEW_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->renderview_type:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->STATICS_NUM1:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->statics_num1:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->STATICS_NUM2:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->statics_num2:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->STATICS_NUM3:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->statics_num3:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->STATICS_NUM4:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->statics_num4:Ljava/lang/String;

    sget-object v0, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->STATICS_NUM5:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->statics_num5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommonParams()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->DID:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->did:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->VER:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->ver:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->UVIP:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->uvip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->SVER:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->sver:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->TIME:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->time:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->NET:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->net:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->GUID:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->guid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->SESSIONID:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->sessionid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->UUID:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->uuid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->GPS:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->gps:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->MF:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->mf:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->MODEL:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->model:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->CH:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->ch:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->BDSV:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->bdsv:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->RDC:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->rdc:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->RCH:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->rch:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->ABROAD:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->abroad:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->P2P:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->p2p:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->RUNSID:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->runsid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->SRC:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->src:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getParameter(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "service"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public getPlayerAddVid()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceVid:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_vid:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getPlayerBufferCommon()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceTd:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_td:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceVts:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_vts:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceCf:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_cf:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$Buffer;->BFTYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$Buffer;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$Buffer;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->buffer_kind:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getBfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getPlayerCommon()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->VIDEO_SESSION:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->video_session:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->UVIP:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/hunantv/imgo/global/SessionManager;->isUserVIP()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceBsid:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_bsid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->servicePay:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_pay:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceAp:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_ap:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceDef:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_def:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceVid:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_vid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->servicePlid:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_plid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceCt:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_ct:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceCid:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_cid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceIstry:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_istry:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->servicePt:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->video_type:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getPt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceBdid:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_bdid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceCpn:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_cpn:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getPlayerCommonParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->VIDEO_SESSION:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->video_session:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->PVER:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->pver:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->PROTOCOL_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->protocol_type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->PLAYER_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->player_type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->PLAT:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->plat:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->SOURCE_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->source_type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->VIDEO_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->video_type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->PROXY:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->proxy:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->RESOLUTION_CHANGE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->resolution_change:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->OS:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->os:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->PACKAGE_NAME:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->package_name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->RETRY_COUNT:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->retry_count:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->PLAY_SESSIONID:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->play_sessionid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->RENDER_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->render_type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->SDK_VERSION:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->sdk_version:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->LOG_VERISON:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->log_verison:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->CHIP_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->chip_type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->RENDERVIEW_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->renderview_type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->STATICS_NUM1:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->statics_num1:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->STATICS_NUM2:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->statics_num2:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->STATICS_NUM3:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->statics_num3:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->STATICS_NUM4:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->statics_num4:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->STATICS_NUM5:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->statics_num5:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getPlayerHbCommon()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceSwitcher:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_switcher:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceSubmit:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_submit:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceVts:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_vts:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceCf:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_cf:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getPlayerOflineVvCommon()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->PVER:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->pver:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getPlayerVvCommon()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceFpid:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_fpid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceUrl:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_url:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceEt:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceFpa:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_fpa:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceIsad:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_isad:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getIsad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceFpn:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_fpn:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceCdnip:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_cdnip:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->P2P:Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$CommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->proxy:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getP2p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceRefmdid:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_refmdid:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceDatano:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_datano:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->serviceAcp:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/mgtv/data/aphone/core/bean/BaseBeanNew;->service_acp:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "none"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method
