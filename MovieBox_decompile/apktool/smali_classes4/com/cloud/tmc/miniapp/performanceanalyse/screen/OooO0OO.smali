.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0OO;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

.field public final synthetic OooO0OO:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0OO;->OooO0OO:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->getData()Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    const-string v1, "eventData"

    .line 11
    .line 12
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0OO;->OooO0OO:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v4, "true"

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x2

    .line 32
    const/4 v7, 0x0

    .line 33
    invoke-static {p1, v4, v5, v6, v7}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    const/4 p1, 0x3

    .line 40
    iput p1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o0:I

    .line 41
    .line 42
    iput-boolean v0, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oO:Z

    .line 43
    .line 44
    iget-boolean v4, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oo:Z

    .line 45
    .line 46
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO00o()J

    .line 51
    .line 52
    .line 53
    move-result-wide v5

    .line 54
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    :cond_0
    invoke-static {v2, v3, p1, v4, v7}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$reportAthenaWhiteScreen(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Ljava/lang/String;IZLjava/lang/Long;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iput v6, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o0:I

    .line 63
    .line 64
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$getEventCenter$p(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    const-string v1, "renderStatus"

    .line 73
    .line 74
    invoke-interface {p1, v1, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    return v0
.end method
