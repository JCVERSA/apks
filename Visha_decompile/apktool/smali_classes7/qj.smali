.class public final synthetic Lqj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/ga/AthenaAnalytics;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/transsion/athena/data/TrackData;

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ga/AthenaAnalytics;Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqj;->b:Lcom/transsion/ga/AthenaAnalytics;

    iput-object p2, p0, Lqj;->c:Ljava/lang/String;

    iput-object p3, p0, Lqj;->d:Lcom/transsion/athena/data/TrackData;

    iput-wide p4, p0, Lqj;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lqj;->b:Lcom/transsion/ga/AthenaAnalytics;

    iget-object v1, p0, Lqj;->c:Ljava/lang/String;

    iget-object v2, p0, Lqj;->d:Lcom/transsion/athena/data/TrackData;

    iget-wide v3, p0, Lqj;->e:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/ga/AthenaAnalytics;->b(Lcom/transsion/ga/AthenaAnalytics;Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    return-void
.end method
