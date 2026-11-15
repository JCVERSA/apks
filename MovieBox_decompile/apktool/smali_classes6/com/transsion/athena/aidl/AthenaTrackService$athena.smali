.class Lcom/transsion/athena/aidl/AthenaTrackService$athena;
.super Lcom/transsion/athena/athena$athena;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/athena/aidl/AthenaTrackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/transsion/athena/aidl/AthenaTrackService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/athena/athena$athena;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v0, v1, v2

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    aput-object p1, v1, v0

    .line 13
    .line 14
    const-string v0, "AthenaTrackService receive appId : %d, eventName : %s"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p3, p4}, Lcom/transsion/ga/AthenaAnalytics;->L(J)Lcom/transsion/ga/AthenaAnalytics;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/transsion/ga/AthenaAnalytics;->h0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
