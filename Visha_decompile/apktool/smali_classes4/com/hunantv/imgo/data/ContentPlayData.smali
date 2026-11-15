.class public Lcom/hunantv/imgo/data/ContentPlayData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# instance fields
.field private androidid:Ljava/lang/String;

.field private app_version:Ljava/lang/String;

.field private auto_play:I

.field private carrier:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private collection_id:Ljava/lang/String;

.field private cxid:Ljava/lang/String;

.field private device_id:Ljava/lang/String;

.field private element_id:Ljava/lang/String;

.field private err_info:Ljava/lang/String;

.field private event_duration:J

.field private event_name:Ljava/lang/String;

.field private event_type:Ljava/lang/String;

.field private extra:Ljava/lang/String;

.field private is_login:I

.field private is_vip:I

.field private lib:Ljava/lang/String;

.field private lib_version:Ljava/lang/String;

.field private lm_mid:I

.field private lob:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private mod_id:Ljava/lang/String;

.field private mod_position:Ljava/lang/String;

.field private mod_type:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private network_type:Ljava/lang/String;

.field private oaid:Ljava/lang/String;

.field private offline:I

.field private os:Ljava/lang/String;

.field private os_version:Ljava/lang/String;

.field private play_merge:I

.field private project:Ljava/lang/String;

.field private screen_height:I

.field private screen_width:I

.field private sdk_version:Ljava/lang/String;

.field private sid:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private src1:J

.field private src2:J

.field private src3:J

.field private status:Ljava/lang/String;

.field private suuid:Ljava/lang/String;

.field private time:J

.field private ua:Ljava/lang/String;

.field private user_type:I

.field private uuid:Ljava/lang/String;

.field private video_code:Ljava/lang/String;

.field private video_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->auto_play:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->src1:J

    iput-wide v0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->src2:J

    iput-wide v0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->src3:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->play_merge:I

    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/ContentPlayData;->setDevice_id(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/ContentPlayData;->setUuid(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/hunantv/imgo/util/b;->j()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/ContentPlayData;->setIs_vip(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-static {}, Lcom/hunantv/imgo/data/a;->a()Lcom/hunantv/imgo/data/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hunantv/imgo/data/a;->b()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/ContentPlayData;->setIs_vip(I)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/ContentPlayData;->setUser_type(I)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/ContentPlayData;->setIs_login(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/hunantv/imgo/data/ContentPlayData;->setTime(J)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/ContentPlayData;->setApp_version(Ljava/lang/String;)V

    const-string v0, "Android"

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/ContentPlayData;->setLib(Ljava/lang/String;)V

    const-string v1, "2.0.6"

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/ContentPlayData;->setLib_version(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hunantv/imgo/data/ContentPlayData;->setManufacturer(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hunantv/imgo/data/ContentPlayData;->setModel(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/ContentPlayData;->setOs(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/ContentPlayData;->setOs_version(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/imgo/util/t;->b(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/ContentPlayData;->setScreen_height(I)V

    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/imgo/util/t;->a(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/ContentPlayData;->setScreen_width(I)V

    invoke-static {}, Lcom/hunantv/imgo/util/p;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/ContentPlayData;->setNetwork_type(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/ContentPlayData;->setChannel(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/ContentPlayData;->setSdk_version(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/ContentPlayData;->setCarrier(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/ContentPlayData;->setAndroidid(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/a/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/ContentPlayData;->setSid(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/ContentPlayData;->setUa(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->ak()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/imgo/util/b;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/ContentPlayData;->setMod_id(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->A()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/ContentPlayData;->setCxid(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->U()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/ContentPlayData;->setOaid(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->j()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/ContentPlayData;->setIs_vip(I)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->ae()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/ContentPlayData;->setPlay_merge(I)V

    :try_start_1
    sget-object v0, Lcom/hunantv/imgo/data/MgtvPlayerConstants;->MGSDK_PPID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/hunantv/imgo/data/MgtvPlayerConstants;->MGSDK_PPID:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/ContentPlayData;->setLm_mid(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    const-string v0, "track"

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/ContentPlayData;->setEvent_type(Ljava/lang/String;)V

    const-string v0, "union-media"

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/ContentPlayData;->setProject(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v0

    iget-object v0, v0, Lcom/hunantv/imgo/b/c;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/ContentPlayData;->setSuuid(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createBaseRequestParams()Lcom/hunantv/imgo/net/RequestParams;
    .locals 6

    new-instance v0, Lcom/hunantv/imgo/net/RequestParams;

    invoke-direct {v0}, Lcom/hunantv/imgo/net/RequestParams;-><init>()V

    const-string v1, "$time"

    iget-wide v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->time:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;J)V

    const-string v1, "$uuid"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "$device_id"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->device_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "$is_vip"

    iget v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->is_vip:I

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "$user_type"

    iget v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->user_type:I

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "$is_login"

    iget v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->is_login:I

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "$app_version"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->app_version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "$lib"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->lib:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "$lib_version"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->lib_version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "$manufacturer"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "$model"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->model:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "$os"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->os:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "$os_version"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->os_version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "$screen_height"

    iget v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->screen_height:I

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "$screen_width"

    iget v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->screen_width:I

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "$network_type"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->network_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "$channel"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "$carrier"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "androidid"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->androidid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "oaid"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->oaid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sid"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->sid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "$ua"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->ua:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "$cxid"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->cxid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "$lm_mid"

    iget v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->lm_mid:I

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "$event_type"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->event_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "$event_name"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->event_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "$project"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->project:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->ac()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "2"

    goto :goto_0

    :cond_0
    const-string v1, "1"

    :goto_0
    const-string v2, "$lt"

    invoke-virtual {v0, v2, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->auto_play:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v2, "auto_play"

    invoke-virtual {v0, v2, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    :cond_1
    const-string v1, "suuid"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->suuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "$source"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->source:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mod_id"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->mod_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->mod_position:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "mod_position"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->mod_position:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "mod_type"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->mod_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "event_duration"

    iget-wide v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->event_duration:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;J)V

    const-string v1, "err_info"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->err_info:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->status:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->lob:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "lob"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->lob:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v1, "$play_merge"

    iget v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->play_merge:I

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const-string v1, "video_id"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->video_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "video_code"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->video_code:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "$sdk_version"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->sdk_version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->element_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "$element_id"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->element_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->collection_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "collection_id"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->collection_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v1, "time_cost"

    iget-object v2, p0, Lcom/hunantv/imgo/data/ContentPlayData;->event_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-wide v1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->src1:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-lez v5, :cond_6

    const-string v5, "src1"

    invoke-virtual {v0, v5, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;J)V

    :cond_6
    iget-wide v1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->src2:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_7

    const-string v5, "src2"

    invoke-virtual {v0, v5, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;J)V

    :cond_7
    iget-wide v1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->src3:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_8

    const-string v3, "src3"

    invoke-virtual {v0, v3, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;J)V

    :cond_8
    const-string v1, "$offline"

    iget p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->offline:I

    invoke-virtual {v0, v1, p0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getAndroidid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->androidid:Ljava/lang/String;

    return-object p0
.end method

.method public getApp_version()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->app_version:Ljava/lang/String;

    return-object p0
.end method

.method public getAuto_play()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->auto_play:I

    return p0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->carrier:Ljava/lang/String;

    return-object p0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->channel:Ljava/lang/String;

    return-object p0
.end method

.method public getCollection_id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->collection_id:Ljava/lang/String;

    return-object p0
.end method

.method public getCxid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->cxid:Ljava/lang/String;

    return-object p0
.end method

.method public getDevice_id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->device_id:Ljava/lang/String;

    return-object p0
.end method

.method public getElement_id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->element_id:Ljava/lang/String;

    return-object p0
.end method

.method public getErr_info()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->err_info:Ljava/lang/String;

    return-object p0
.end method

.method public getEvent_duration()J
    .locals 2

    iget-wide v0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->event_duration:J

    return-wide v0
.end method

.method public getEvent_name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->event_name:Ljava/lang/String;

    return-object p0
.end method

.method public getEvent_type()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->event_type:Ljava/lang/String;

    return-object p0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->extra:Ljava/lang/String;

    return-object p0
.end method

.method public getIs_login()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->is_login:I

    return p0
.end method

.method public getIs_vip()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->is_vip:I

    return p0
.end method

.method public getLib()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->lib:Ljava/lang/String;

    return-object p0
.end method

.method public getLib_version()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->lib_version:Ljava/lang/String;

    return-object p0
.end method

.method public getLm_mid()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->lm_mid:I

    return p0
.end method

.method public getLob()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->lob:Ljava/lang/String;

    return-object p0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->manufacturer:Ljava/lang/String;

    return-object p0
.end method

.method public getMod_id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->mod_id:Ljava/lang/String;

    return-object p0
.end method

.method public getMod_position()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->mod_position:Ljava/lang/String;

    return-object p0
.end method

.method public getMod_type()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->mod_type:Ljava/lang/String;

    return-object p0
.end method

.method public getModel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->model:Ljava/lang/String;

    return-object p0
.end method

.method public getNetwork_type()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->network_type:Ljava/lang/String;

    return-object p0
.end method

.method public getOaid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->oaid:Ljava/lang/String;

    return-object p0
.end method

.method public getOs()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->os:Ljava/lang/String;

    return-object p0
.end method

.method public getOs_version()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->os_version:Ljava/lang/String;

    return-object p0
.end method

.method public getPlay_merge()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->play_merge:I

    return p0
.end method

.method public getProject()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->project:Ljava/lang/String;

    return-object p0
.end method

.method public getScreen_height()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->screen_height:I

    return p0
.end method

.method public getScreen_width()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->screen_width:I

    return p0
.end method

.method public getSid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->sid:Ljava/lang/String;

    return-object p0
.end method

.method public getSource()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->source:Ljava/lang/String;

    return-object p0
.end method

.method public getSrc1()J
    .locals 2

    iget-wide v0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->src1:J

    return-wide v0
.end method

.method public getSrc2()J
    .locals 2

    iget-wide v0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->src2:J

    return-wide v0
.end method

.method public getSrc3()J
    .locals 2

    iget-wide v0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->src3:J

    return-wide v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->status:Ljava/lang/String;

    return-object p0
.end method

.method public getSuuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->suuid:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->time:J

    return-wide v0
.end method

.method public getUa()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->ua:Ljava/lang/String;

    return-object p0
.end method

.method public getUser_type()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->user_type:I

    return p0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public getVideo_code()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->video_code:Ljava/lang/String;

    return-object p0
.end method

.method public getVideo_id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/data/ContentPlayData;->video_id:Ljava/lang/String;

    return-object p0
.end method

.method public setAndroidid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->androidid:Ljava/lang/String;

    return-void
.end method

.method public setApp_version(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->app_version:Ljava/lang/String;

    return-void
.end method

.method public setAuto_play(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->auto_play:I

    return-void
.end method

.method public setCarrier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->carrier:Ljava/lang/String;

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->channel:Ljava/lang/String;

    return-void
.end method

.method public setCollection_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->collection_id:Ljava/lang/String;

    return-void
.end method

.method public setCxid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->cxid:Ljava/lang/String;

    return-void
.end method

.method public setDevice_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->device_id:Ljava/lang/String;

    return-void
.end method

.method public setElement_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->element_id:Ljava/lang/String;

    return-void
.end method

.method public setErr_info(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->err_info:Ljava/lang/String;

    return-void
.end method

.method public setEvent_duration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->event_duration:J

    return-void
.end method

.method public setEvent_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->event_name:Ljava/lang/String;

    return-void
.end method

.method public setEvent_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->event_type:Ljava/lang/String;

    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->extra:Ljava/lang/String;

    return-void
.end method

.method public setIs_login(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->is_login:I

    return-void
.end method

.method public setIs_vip(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->is_vip:I

    return-void
.end method

.method public setLib(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->lib:Ljava/lang/String;

    return-void
.end method

.method public setLib_version(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->lib_version:Ljava/lang/String;

    return-void
.end method

.method public setLm_mid(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->lm_mid:I

    return-void
.end method

.method public setLob(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->lob:Ljava/lang/String;

    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public setMod_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->mod_id:Ljava/lang/String;

    return-void
.end method

.method public setMod_position(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->mod_position:Ljava/lang/String;

    return-void
.end method

.method public setMod_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->mod_type:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->model:Ljava/lang/String;

    return-void
.end method

.method public setNetwork_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->network_type:Ljava/lang/String;

    return-void
.end method

.method public setOaid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->oaid:Ljava/lang/String;

    return-void
.end method

.method public setOffline(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->offline:I

    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->os:Ljava/lang/String;

    return-void
.end method

.method public setOs_version(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->os_version:Ljava/lang/String;

    return-void
.end method

.method public setPlay_merge(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->play_merge:I

    return-void
.end method

.method public setProject(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->project:Ljava/lang/String;

    return-void
.end method

.method public setScreen_height(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->screen_height:I

    return-void
.end method

.method public setScreen_width(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->screen_width:I

    return-void
.end method

.method public setSdk_version(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->sdk_version:Ljava/lang/String;

    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->sid:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->source:Ljava/lang/String;

    return-void
.end method

.method public setSrc1(J)V
    .locals 0

    iput-wide p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->src1:J

    return-void
.end method

.method public setSrc2(J)V
    .locals 0

    iput-wide p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->src2:J

    return-void
.end method

.method public setSrc3(J)V
    .locals 0

    iput-wide p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->src3:J

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->status:Ljava/lang/String;

    return-void
.end method

.method public setSuuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->suuid:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->time:J

    return-void
.end method

.method public setUa(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->ua:Ljava/lang/String;

    return-void
.end method

.method public setUser_type(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->user_type:I

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setVideo_code(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->video_code:Ljava/lang/String;

    return-void
.end method

.method public setVideo_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/ContentPlayData;->video_id:Ljava/lang/String;

    return-void
.end method
