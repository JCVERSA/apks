.class public Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;
.super Lcom/mgtv/data/aphone/core/bean/BaseBean;
.source "SourceFile"


# static fields
.field public static ACT_PERR:Ljava/lang/String; = "perr"

.field public static BID_PERR:Ljava/lang/String; = "27.8.3"


# instance fields
.field public act:Ljava/lang/String;

.field public codec_type:Ljava/lang/String;

.field public current_position:Ljava/lang/String;

.field public decode_type:Ljava/lang/String;

.field public dsc:Ljava/lang/String;

.field public et:Ljava/lang/String;

.field public exr:Ljava/lang/String;

.field public fps:Ljava/lang/String;

.field public hard_decode:Ljava/lang/String;

.field public param:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public resolution:Ljava/lang/String;

.field public sc:Ljava/lang/String;

.field public ticket_time:Ljava/lang/String;

.field public video_rate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

    invoke-direct {p0, p1, p2}, Lcom/mgtv/data/aphone/core/bean/BaseBean;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    sget-object p1, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->ACT_PERR:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->act:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->BID_PERR:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/BaseBean;->bid:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->ET:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->et:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->SC:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->sc:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->EXR:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->exr:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->DSC:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->dsc:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->DECODE_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->decode_type:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->CODEC_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->codec_type:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->CURRENT_POSITION:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->current_position:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->RESOLUTION:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->resolution:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->FPS:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->fps:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->VIDEO_RATE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->video_rate:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->HARD_DECODE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->hard_decode:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->TICKET_TIME:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->ticket_time:Ljava/lang/String;

    iput-object p2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->param:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getPlayerVideoErrParams()Ljava/util/Map;
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

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->ACT:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->act:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->BID:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->BID_PERR:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->ET:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->et:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->SC:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->sc:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->EXR:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->exr:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->DSC:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->dsc:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->DECODE_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->decode_type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->CODEC_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->codec_type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->CURRENT_POSITION:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->current_position:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->RESOLUTION:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->resolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->FPS:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->fps:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->VIDEO_RATE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->video_rate:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->HARD_DECODE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerErrParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->hard_decode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getCommonParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->param:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getParameter(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
