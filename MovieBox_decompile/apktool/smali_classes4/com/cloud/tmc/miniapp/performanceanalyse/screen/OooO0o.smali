.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

.field public final synthetic OooO0OO:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0o;->OooO0OO:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

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
    .locals 2

    .line 1
    const-string p1, "miniapp"

    .line 2
    .line 3
    const-string v0, "connectRender success"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    iput v0, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0O0:I

    .line 12
    .line 13
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$getEventCenter$p(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const-string v1, "connectionRender"

    .line 22
    .line 23
    invoke-interface {p1, v1, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0o;->OooO0OO:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    .line 27
    .line 28
    iget p1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0Oo:I

    .line 29
    .line 30
    if-ne p1, v0, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    .line 35
    .line 36
    invoke-static {p1, v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$checkWhiteScreen(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    const/4 p1, 0x1

    .line 40
    return p1
.end method
