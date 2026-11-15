.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO00o"
.end annotation


# instance fields
.field public final OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

.field public final OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

.field public final synthetic OooO0OO:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;",
            "Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "appData"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pageData"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    .line 2
    .line 3
    iget v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o0:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-ne v1, v2, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oO:Z

    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    .line 14
    .line 15
    iget-object v3, v3, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO00o:Ljava/lang/String;

    .line 16
    .line 17
    iget-boolean v4, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oo:Z

    .line 18
    .line 19
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO00o()J

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    invoke-static {v1, v3, v2, v4, v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$reportAthenaWhiteScreen(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Ljava/lang/String;IZLjava/lang/Long;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public OooO0O0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    .line 2
    .line 3
    iget v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o0:I

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public OooO0OO()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    .line 4
    .line 5
    iget v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o0:I

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    if-ne v2, v3, :cond_1

    .line 9
    .line 10
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :cond_1
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    .line 19
    .line 20
    const-string v3, "connectionRender"

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    if-eqz v2, :cond_4

    .line 24
    .line 25
    iget v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0O0:I

    .line 26
    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    iput v4, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0O0:I

    .line 30
    .line 31
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    .line 32
    .line 33
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$connectRender(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    if-ne v2, v4, :cond_4

    .line 38
    .line 39
    invoke-static {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$getEventCenter$p(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0OO:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 46
    .line 47
    invoke-interface {v2, v3, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    .line 53
    .line 54
    invoke-static {v1, v0, v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$connectRender(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V

    .line 55
    .line 56
    .line 57
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    .line 60
    .line 61
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0OO:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 62
    .line 63
    if-eqz v2, :cond_7

    .line 64
    .line 65
    iget v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0Oo:I

    .line 66
    .line 67
    if-nez v2, :cond_5

    .line 68
    .line 69
    iput v4, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0Oo:I

    .line 70
    .line 71
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    .line 72
    .line 73
    invoke-static {v1, v0, v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$connectWorker(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_5
    if-ne v2, v4, :cond_7

    .line 78
    .line 79
    invoke-static {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$getEventCenter$p(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_6

    .line 84
    .line 85
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0o0:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 86
    .line 87
    invoke-interface {v2, v3, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 88
    .line 89
    .line 90
    :cond_6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    .line 91
    .line 92
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    .line 93
    .line 94
    invoke-static {v1, v0, v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$connectWorker(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V

    .line 95
    .line 96
    .line 97
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    .line 98
    .line 99
    iget v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0O0:I

    .line 100
    .line 101
    const/4 v2, 0x2

    .line 102
    if-ne v1, v2, :cond_8

    .line 103
    .line 104
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    .line 105
    .line 106
    iget v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0Oo:I

    .line 107
    .line 108
    if-ne v1, v2, :cond_8

    .line 109
    .line 110
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    .line 111
    .line 112
    invoke-static {v1, v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$checkWhiteScreen(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V

    .line 113
    .line 114
    .line 115
    :cond_8
    return-void
.end method
