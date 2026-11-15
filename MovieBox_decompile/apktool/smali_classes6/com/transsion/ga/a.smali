.class public final synthetic Lcom/transsion/ga/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/ga/AthenaAnalytics;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/transsion/athena/data/TrackData;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ga/AthenaAnalytics;Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/ga/a;->a:Lcom/transsion/ga/AthenaAnalytics;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/ga/a;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/ga/a;->c:Lcom/transsion/athena/data/TrackData;

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/transsion/ga/a;->d:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/ga/a;->a:Lcom/transsion/ga/AthenaAnalytics;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ga/a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/ga/a;->c:Lcom/transsion/athena/data/TrackData;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/transsion/ga/a;->d:J

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/ga/AthenaAnalytics;->b(Lcom/transsion/ga/AthenaAnalytics;Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
