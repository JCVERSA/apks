.class public Lnvd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private info:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "ab_info"
    .end annotation
.end field

.field private layerId:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "layer_id"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
    .end annotation
.end field

.field private requestTime:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "request_time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6
    .annotation build Landroidx/room/Ignore;
    .end annotation

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, p0

    .line 5
    invoke-direct/range {v0 .. v5}, Lnvd;-><init>(JJLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lnvd;->layerId:J

    .line 3
    iput-wide p3, p0, Lnvd;->requestTime:J

    .line 4
    iput-object p5, p0, Lnvd;->info:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnvd;->info:Ljava/lang/String;

    return-object p0
.end method

.method public final getLayerId()J
    .locals 2

    iget-wide v0, p0, Lnvd;->layerId:J

    return-wide v0
.end method

.method public final getRequestTime()J
    .locals 2

    iget-wide v0, p0, Lnvd;->requestTime:J

    return-wide v0
.end method

.method public final setInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnvd;->info:Ljava/lang/String;

    return-void
.end method

.method public final setLayerId(J)V
    .locals 0

    iput-wide p1, p0, Lnvd;->layerId:J

    return-void
.end method

.method public final setRequestTime(J)V
    .locals 0

    iput-wide p1, p0, Lnvd;->requestTime:J

    return-void
.end method
