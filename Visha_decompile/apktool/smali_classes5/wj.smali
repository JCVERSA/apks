.class public Lwj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/transsion/athena/data/TrackData;

.field public b:Ljava/lang/String;

.field public c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-long v0, p2

    iput-wide v0, p0, Lwj;->c:J

    iput-object p1, p0, Lwj;->b:Ljava/lang/String;

    new-instance p1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {p1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iput-object p1, p0, Lwj;->a:Lcom/transsion/athena/data/TrackData;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lwj;->a:Lcom/transsion/athena/data/TrackData;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Landroid/os/Bundle;)Lcom/transsion/athena/data/TrackData;

    :cond_0
    return-void
.end method

.method public b()V
    .locals 5

    iget-wide v0, p0, Lwj;->c:J

    invoke-static {v0, v1}, Lcom/transsion/ga/AthenaAnalytics;->K(J)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object v0

    iget-object v1, p0, Lwj;->b:Ljava/lang/String;

    iget-object v2, p0, Lwj;->a:Lcom/transsion/athena/data/TrackData;

    iget-wide v3, p0, Lwj;->c:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/transsion/ga/AthenaAnalytics;->d0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    return-void
.end method

.method public c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;
    .locals 1

    const-string v0, "eparam"

    invoke-virtual {p0, v0, p1}, Lwj;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "ext"

    invoke-virtual {p0, p1, p2}, Lwj;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method
