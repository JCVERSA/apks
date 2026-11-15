.class public Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;
.super Lcom/mgtv/data/aphone/core/bean/BaseBean;
.source "SourceFile"


# static fields
.field public static ACT_PEND:Ljava/lang/String; = "pend"

.field public static BID_PEND:Ljava/lang/String; = "27.8.4"


# instance fields
.field public act:Ljava/lang/String;

.field public buffer_count:Ljava/lang/String;

.field public codec_type:Ljava/lang/String;

.field public decode_type:Ljava/lang/String;

.field public end_type:Ljava/lang/String;

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

.field public seek_count:Ljava/lang/String;

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

    sget-object p1, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;->ACT_PEND:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;->act:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;->BID_PEND:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/BaseBean;->bid:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->END_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;->end_type:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->DECODE_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;->decode_type:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->CODEC_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;->codec_type:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->RESOLUTION:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;->resolution:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->FPS:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;->fps:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->VIDEO_RATE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;->video_rate:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->HARD_DECODE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;->hard_decode:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->BUFFER_COUNT:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;->buffer_count:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->SEEK_COUNT:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;->seek_count:Ljava/lang/String;

    sget-object p1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->TICKET_TIME:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getMapValues(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;->ticket_time:Ljava/lang/String;

    iput-object p2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;->param:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getPlayerVideoEndParams()Ljava/util/Map;
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

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;->act:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->BID:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerCommonParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/BaseBean;->bid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->END_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;->end_type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->DECODE_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;->decode_type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->CODEC_TYPE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;->codec_type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->RESOLUTION:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;->resolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->FPS:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;->fps:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->VIDEO_RATE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;->video_rate:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->HARD_DECODE:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;->hard_decode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->BUFFER_COUNT:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;->buffer_count:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->SEEK_COUNT:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;->seek_count:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->TICKET_TIME:Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/KeysContants$PlayerEndParams;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;->ticket_time:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getCommonParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;->param:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lcom/mgtv/data/aphone/core/bean/BaseBean;->getParameter(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
