.class public final Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0$OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/offlineapps/download/OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "logoUrl"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "path"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0Oo:Ljava/util/Map;

    .line 17
    .line 18
    move-object v1, v0

    .line 19
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getLogoUrl()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    move-object v1, v2

    .line 38
    :goto_0
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_3

    .line 43
    .line 44
    move-object p2, v0

    .line 45
    check-cast p2, Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    check-cast p2, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;

    .line 52
    .line 53
    if-eqz p2, :cond_1

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->getLogoPath()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    :cond_1
    invoke-static {v2, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-nez p2, :cond_3

    .line 64
    .line 65
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;

    .line 72
    .line 73
    if-nez p1, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {p1, p3}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->setLogoPath(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :goto_1
    sget-object p1, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO0OO()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :goto_2
    sget-object p2, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;

    .line 86
    .line 87
    const-string p2, "OooO0O0"

    .line 88
    .line 89
    const-string p3, "[IconDownloadManager] download icon fail"

    .line 90
    .line 91
    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    :goto_3
    return-void
.end method
