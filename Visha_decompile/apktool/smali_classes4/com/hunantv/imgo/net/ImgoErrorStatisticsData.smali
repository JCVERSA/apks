.class public Lcom/hunantv/imgo/net/ImgoErrorStatisticsData;
.super Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;
    }
.end annotation


# static fields
.field public static final AD_RES_PIC:Ljava/lang/String; = "pic"

.field public static final AD_RES_VIDEO:Ljava/lang/String; = "video"

.field public static final A_JSON:Ljava/lang/String; = "01.100001"

.field public static final A_NULL:Ljava/lang/String; = "01.100002"

.field public static final C_AD:Ljava/lang/String; = "08."

.field public static final C_AD_RESOURCE:Ljava/lang/String; = "09."

.field public static final C_API:Ljava/lang/String; = "01."

.field public static final C_CATCH_EXCEPTION:Ljava/lang/String; = "03"

.field public static final C_CORE_PLAYER_MGTV:Ljava/lang/String; = "21."

.field public static final C_CORE_PLAYER_MGTV_WARN:Ljava/lang/String; = "22."

.field public static final C_CRASH:Ljava/lang/String; = "33"

.field public static final C_DOWNLOAD:Ljava/lang/String; = "05."

.field public static final C_LIVE_PLAYER:Ljava/lang/String; = "06."

.field public static final C_LOCAL_PLAYER:Ljava/lang/String; = "07."

.field public static final C_MID_AD:Ljava/lang/String; = "15."

.field public static final C_P2P:Ljava/lang/String; = "12."

.field public static final C_PAY:Ljava/lang/String; = "13."

.field public static final C_PIC_DOWNLOAD:Ljava/lang/String; = "10."

.field public static final C_PRE_AD:Ljava/lang/String; = "14."

.field public static final C_PUSH:Ljava/lang/String; = "04."

.field public static final C_SO_UPDATE:Ljava/lang/String; = "11."

.field public static final C_VOD_PLAYER:Ljava/lang/String; = "02."

.field public static final D200002:Ljava/lang/String; = "200002"

.field public static final D200003:Ljava/lang/String; = "200003"

.field public static final D200004:Ljava/lang/String; = "200004"

.field public static final D200005:Ljava/lang/String; = "200005"

.field public static final D_PIC:Ljava/lang/String; = "10.300001"

.field public static final D_VIDEO:Ljava/lang/String; = "05.100001"

.field public static final D_VIDEOID_NULL:Ljava/lang/String; = "05.000001"

.field public static final L_200002:Ljava/lang/String; = "06.200002"

.field public static final L_200003:Ljava/lang/String; = "06.200003"

.field public static final L_200004:Ljava/lang/String; = "06.200004"

.field public static final L_200005:Ljava/lang/String; = "06.200005"

.field public static final L_300001:Ljava/lang/String; = "06.300001"

.field public static final PAY_ERR_4000:Ljava/lang/String; = "104000"

.field public static final PAY_ERR_6001:Ljava/lang/String; = "106001"

.field public static final PAY_ERR_6002:Ljava/lang/String; = "106002"

.field public static final PAY_ERR_8000:Ljava/lang/String; = "108000"

.field public static final PAY_ERR_9000:Ljava/lang/String; = "109000"

.field public static final P_200001:Ljava/lang/String; = "02.200001"

.field public static final P_200002:Ljava/lang/String; = "02.200002"

.field public static final P_200003:Ljava/lang/String; = "02.200003"

.field public static final P_200004:Ljava/lang/String; = "02.200004"

.field public static final P_200005:Ljava/lang/String; = "02.200005"

.field public static final P_300001:Ljava/lang/String; = "02.300001"

.field public static final STRING_LIVE:Ljava/lang/String; = "live"

.field public static final STRING_LOCAL:Ljava/lang/String; = "local"

.field public static final STRING_MID_AD:Ljava/lang/String; = "midad"

.field public static final STRING_PRE_AD:Ljava/lang/String; = "pread"

.field public static final STRING_VOD:Ljava/lang/String; = "vod"


# instance fields
.field public error_code:Ljava/lang/String;

.field public error_detail:Ljava/lang/String;

.field public error_time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/f;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData;->error_time:Ljava/lang/String;

    .line 3
    const-string v0, "error"

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->setData_type(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;-><init>()V

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/f;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData;->error_time:Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;->a(Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData;->error_code:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;->b(Lcom/hunantv/imgo/net/ImgoErrorStatisticsData$a;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData;->error_detail:Ljava/lang/String;

    .line 33
    const-string p1, "error"

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->setData_type(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;-><init>()V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/f;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData;->error_time:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData;->error_code:Ljava/lang/String;

    .line 7
    const-string p1, "error"

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->setData_type(Ljava/lang/String;)V

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v0, "httpCode:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "@"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "response:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "curPosition:"

    .line 10
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "videoId:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "videoInfo:"

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData;->error_detail:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;-><init>()V

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/f;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData;->error_time:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData;->error_code:Ljava/lang/String;

    .line 24
    const-string p1, "error"

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->setData_type(Ljava/lang/String;)V

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v0, "url:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "@"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "videoId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "errorMessage:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData;->error_detail:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;-><init>()V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/f;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData;->error_time:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData;->error_code:Ljava/lang/String;

    .line 16
    const-string p1, "error"

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/net/ImgoBaseStatisticsData;->setData_type(Ljava/lang/String;)V

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    const-string v0, "url:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "@"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "response:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "errorMessage:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/net/ImgoErrorStatisticsData;->error_detail:Ljava/lang/String;

    return-void
.end method
