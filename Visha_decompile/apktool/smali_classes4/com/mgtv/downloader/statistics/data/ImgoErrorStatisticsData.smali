.class public Lcom/mgtv/downloader/statistics/data/ImgoErrorStatisticsData;
.super Lcom/mgtv/downloader/statistics/data/ImgoBaseStatisticsData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/downloader/statistics/data/ImgoErrorStatisticsData$a;
    }
.end annotation


# static fields
.field public static final C_AD:Ljava/lang/String; = "08."

.field public static final C_AD_RESOURCE:Ljava/lang/String; = "09."

.field public static final C_API:Ljava/lang/String; = "01."

.field public static final C_CATCH_EXCEPTION:Ljava/lang/String; = "03"

.field public static final C_DOWNLOAD:Ljava/lang/String; = "05."

.field public static final C_LIVE_PLAYER:Ljava/lang/String; = "06."

.field public static final C_LOCAL_PLAYER:Ljava/lang/String; = "07."

.field public static final C_PIC_DOWNLOAD:Ljava/lang/String; = "10."

.field public static final C_PUSH:Ljava/lang/String; = "04."

.field public static final C_SO_UPDATE:Ljava/lang/String; = "11."

.field public static final C_VOD_PLAYER:Ljava/lang/String; = "02."

.field public static final D_VIDEO:Ljava/lang/String; = "05.100001"


# instance fields
.field public error_code:Ljava/lang/String;

.field public error_detail:Ljava/lang/String;

.field public error_time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mgtv/downloader/statistics/data/ImgoErrorStatisticsData$a;)V
    .locals 2

    invoke-direct {p0}, Lcom/mgtv/downloader/statistics/data/ImgoBaseStatisticsData;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/f;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/downloader/statistics/data/ImgoErrorStatisticsData;->error_time:Ljava/lang/String;

    invoke-static {p1}, Lcom/mgtv/downloader/statistics/data/ImgoErrorStatisticsData$a;->a(Lcom/mgtv/downloader/statistics/data/ImgoErrorStatisticsData$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/downloader/statistics/data/ImgoErrorStatisticsData;->error_code:Ljava/lang/String;

    invoke-static {p1}, Lcom/mgtv/downloader/statistics/data/ImgoErrorStatisticsData$a;->b(Lcom/mgtv/downloader/statistics/data/ImgoErrorStatisticsData$a;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/downloader/statistics/data/ImgoErrorStatisticsData;->error_detail:Ljava/lang/String;

    const-string p1, "error"

    invoke-virtual {p0, p1}, Lcom/mgtv/downloader/statistics/data/ImgoBaseStatisticsData;->setData_type(Ljava/lang/String;)V

    return-void
.end method
