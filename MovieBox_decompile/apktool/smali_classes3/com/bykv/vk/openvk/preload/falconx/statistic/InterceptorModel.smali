.class public Lcom/bykv/vk/openvk/preload/falconx/statistic/InterceptorModel;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public ac:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/a/a/b;
        a = "ac"
    .end annotation
.end field

.field public accessKey:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/a/a/b;
        a = "access_key"
    .end annotation
.end field

.field public channel:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/a/a/b;
        a = "channel"
    .end annotation
.end field

.field public errCode:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/a/a/b;
        a = "err_code"
    .end annotation
.end field

.field public errMsg:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/a/a/b;
        a = "err_msg"
    .end annotation
.end field

.field public logId:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/a/a/b;
        a = "log_id"
    .end annotation
.end field

.field public mimeType:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/a/a/b;
        a = "mime_type"
    .end annotation
.end field

.field public offlineDuration:Ljava/lang/Long;
    .annotation runtime Lcom/bykv/vk/openvk/preload/a/a/b;
        a = "offline_duration"
    .end annotation
.end field

.field public offlineRule:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/a/a/b;
        a = "offline_rule"
    .end annotation
.end field

.field public offlineStatus:Ljava/lang/Integer;
    .annotation runtime Lcom/bykv/vk/openvk/preload/a/a/b;
        a = "offline_status"
    .end annotation
.end field

.field public onlineDuration:Ljava/lang/Long;
    .annotation runtime Lcom/bykv/vk/openvk/preload/a/a/b;
        a = "online_duration"
    .end annotation
.end field

.field public pageUrl:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/a/a/b;
        a = "page_url"
    .end annotation
.end field

.field public pkgVersion:Ljava/lang/Long;
    .annotation runtime Lcom/bykv/vk/openvk/preload/a/a/b;
        a = "pkg_version"
    .end annotation
.end field

.field public resRootDir:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/a/a/b;
        a = "res_root_dir"
    .end annotation
.end field

.field public startTime:Ljava/lang/Long;

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/bykv/vk/openvk/preload/a/a/b;
        a = "resource_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/falconx/statistic/InterceptorModel;->startTime:Ljava/lang/Long;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public loadFinish(Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/falconx/statistic/InterceptorModel;->startTime:Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    sub-long/2addr v0, v2

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/falconx/statistic/InterceptorModel;->offlineDuration:Ljava/lang/Long;

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/falconx/statistic/InterceptorModel;->offlineStatus:Ljava/lang/Integer;

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/falconx/statistic/InterceptorModel;->offlineStatus:Ljava/lang/Integer;

    .line 34
    .line 35
    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/falconx/statistic/InterceptorModel;->errCode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/falconx/statistic/InterceptorModel;->errMsg:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
