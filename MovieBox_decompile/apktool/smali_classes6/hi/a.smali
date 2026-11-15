.class public Lhi/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Lcom/transsion/athena/data/TrackData;

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/transsion/athena/data/athena;->b()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lhi/a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FAILED! You should init Athena first before track the event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 4
    :cond_0
    iput-object p1, p0, Lhi/a;->b:Ljava/lang/String;

    .line 5
    new-instance p1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iput-object p1, p0, Lhi/a;->a:Lcom/transsion/athena/data/TrackData;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-long v0, p2

    .line 7
    iput-wide v0, p0, Lhi/a;->c:J

    .line 8
    iput-object p1, p0, Lhi/a;->b:Ljava/lang/String;

    .line 9
    new-instance p1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iput-object p1, p0, Lhi/a;->a:Lcom/transsion/athena/data/TrackData;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lhi/a;->a:Lcom/transsion/athena/data/TrackData;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Landroid/os/Bundle;)Lcom/transsion/athena/data/TrackData;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lhi/a;->c:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lcom/transsion/ga/AthenaAnalytics;->L(J)Lcom/transsion/ga/AthenaAnalytics;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lhi/a;->b:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lhi/a;->a:Lcom/transsion/athena/data/TrackData;

    .line 10
    .line 11
    iget-wide v3, p0, Lhi/a;->c:J

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/transsion/ga/AthenaAnalytics;->h0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public c(Landroid/os/Bundle;Landroid/os/Bundle;)Lhi/a;
    .locals 1

    .line 1
    const-string v0, "eparam"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lhi/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "ext"

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lhi/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
