.class Lcom/mbridge/msdk/mbbanner/common/manager/b$e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/foundation/same/image/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/mbbanner/common/manager/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/mbbanner/common/manager/b;

.field private b:Ljava/lang/String;

.field private c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/mbbanner/common/manager/b;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$e;->a:Lcom/mbridge/msdk/mbbanner/common/manager/b;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$e;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$e;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-boolean p1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "DownloadImageListener campaign image fail"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$e;->a:Lcom/mbridge/msdk/mbbanner/common/manager/b;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$e;->b:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v6, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$e;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    const/4 v5, 0x0

    .line 24
    move-object v4, p2

    .line 25
    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a(Ljava/lang/String;ILjava/lang/String;ZLcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$e;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCurrentLocalRid()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$e;->b:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0, p1}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$e;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 43
    .line 44
    .line 45
    const/16 v0, 0xa

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->e(I)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    .line 51
    .line 52
    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->e(I)V

    .line 56
    .line 57
    .line 58
    const-string v2, "resource_type"

    .line 59
    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    const-string v0, "result"

    .line 68
    .line 69
    const/4 v2, 0x3

    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v0, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    const-string v0, "url"

    .line 78
    .line 79
    invoke-virtual {v1, v0, p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    const-string p2, "m_download_end"

    .line 83
    .line 84
    invoke-static {p2, p1, v1}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    invoke-static {}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :goto_0
    return-void
.end method

.method public onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-boolean p1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "DownloadImageListener campaign image success"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$e;->a:Lcom/mbridge/msdk/mbbanner/common/manager/b;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$e;->b:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v6, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$e;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    const/4 v5, 0x1

    .line 24
    move-object v4, p2

    .line 25
    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a(Ljava/lang/String;ILjava/lang/String;ZLcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$e;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCurrentLocalRid()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$e;->b:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0, p1}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$e;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 43
    .line 44
    .line 45
    const/16 v0, 0xa

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->e(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->e(I)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    .line 54
    .line 55
    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v2, "resource_type"

    .line 59
    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    const-string v0, "result"

    .line 68
    .line 69
    const/4 v2, 0x1

    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v0, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    const-string v0, "url"

    .line 78
    .line 79
    invoke-virtual {v1, v0, p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    const-string p2, "m_download_end"

    .line 83
    .line 84
    invoke-static {p2, p1, v1}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    invoke-static {}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :goto_0
    return-void
.end method
