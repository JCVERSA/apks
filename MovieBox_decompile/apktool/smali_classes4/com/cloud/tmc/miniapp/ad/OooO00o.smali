.class public final Lcom/cloud/tmc/miniapp/ad/OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/ad/interface/AdEventListener;


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/ad/AdManager;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/integration/structure/App;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ad/AdManager;Lcom/cloud/tmc/integration/structure/App;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ad/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ad/AdManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ad/OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public click(Ljava/lang/String;Lcom/cloud/tmc/ad/bean/DownUpPointBean;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "triggerId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pointBean"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ad/AdManager;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ad/AdManager;->access$getAppAdMap$p(Lcom/cloud/tmc/miniapp/ad/AdManager;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    .line 18
    .line 19
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/cloud/tmc/ad/interface/AdShowEventListener;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/ad/interface/AdShowEventListener;->click(Ljava/lang/String;Lcom/cloud/tmc/ad/bean/DownUpPointBean;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public clickHomePage(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "triggerId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/cloud/tmc/ad/interface/AdEventListener$DefaultImpls;->clickHomePage(Lcom/cloud/tmc/ad/interface/AdEventListener;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ad/AdManager;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ad/AdManager;->access$getAppAdMap$p(Lcom/cloud/tmc/miniapp/ad/AdManager;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    .line 16
    .line 17
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/cloud/tmc/ad/interface/AdShowEventListener;

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-interface {v0, p1}, Lcom/cloud/tmc/ad/interface/AdShowEventListener;->clickHomePage(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public clickPersonalization(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "triggerId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/cloud/tmc/ad/interface/AdEventListener$DefaultImpls;->clickPersonalization(Lcom/cloud/tmc/ad/interface/AdEventListener;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ad/AdManager;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ad/AdManager;->access$getAppAdMap$p(Lcom/cloud/tmc/miniapp/ad/AdManager;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    .line 16
    .line 17
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/cloud/tmc/ad/interface/AdShowEventListener;

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-interface {v0, p1}, Lcom/cloud/tmc/ad/interface/AdShowEventListener;->clickPersonalization(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public closeAd(Ljava/lang/String;Lcom/cloud/tmc/ad/bean/AdClickBean;)V
    .locals 2

    .line 1
    const-string v0, "triggerId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adClickBean"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ad/AdManager;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ad/AdManager;->access$getAppAdMap$p(Lcom/cloud/tmc/miniapp/ad/AdManager;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    .line 18
    .line 19
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/cloud/tmc/ad/interface/AdShowEventListener;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/ad/interface/AdShowEventListener;->closeAd(Ljava/lang/String;Lcom/cloud/tmc/ad/bean/AdClickBean;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public fillingResult(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    const-string v0, "triggerId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ad/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ad/AdManager;

    .line 9
    .line 10
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/ad/AdManager;->access$getAppAdMap$p(Lcom/cloud/tmc/miniapp/ad/AdManager;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    iget-object p2, p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0o0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Lcom/cloud/tmc/ad/interface/AdFillingEventListener;

    .line 37
    .line 38
    if-eqz p2, :cond_0

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    invoke-interface {p2, p1, v0}, Lcom/cloud/tmc/ad/interface/AdFillingEventListener;->fillingResult(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ad/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ad/AdManager;

    .line 45
    .line 46
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/ad/AdManager;->access$getAppAdMap$p(Lcom/cloud/tmc/miniapp/ad/AdManager;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    .line 51
    .line 52
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    check-cast p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    .line 61
    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    iget-object p2, p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0o0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    .line 66
    if-eqz p2, :cond_2

    .line 67
    .line 68
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lcom/cloud/tmc/ad/interface/AdFillingEventListener;

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ad/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ad/AdManager;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    .line 78
    .line 79
    const-string v1, ""

    .line 80
    .line 81
    invoke-static {p2, p1, v0, v1}, Lcom/cloud/tmc/miniapp/ad/AdManager;->access$fillingInterstitialFail(Lcom/cloud/tmc/miniapp/ad/AdManager;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_0
    return-void
.end method

.method public showResult(Ljava/lang/String;ZLcom/cloud/tmc/ad/bean/AdShowBean;)V
    .locals 4

    .line 1
    const-string v0, "triggerId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adShowBean"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_2

    .line 12
    .line 13
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ad/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ad/AdManager;

    .line 14
    .line 15
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/ad/AdManager;->access$getAppAdMap$p(Lcom/cloud/tmc/miniapp/ad/AdManager;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;

    .line 30
    .line 31
    if-eqz p2, :cond_3

    .line 32
    .line 33
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ad/AdManager;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    .line 36
    .line 37
    iget-object v2, p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0oO:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 38
    .line 39
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    iget-object v2, p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    .line 44
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/cloud/tmc/ad/interface/AdShowEventListener;

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    invoke-interface {v2, p1, v3, p3}, Lcom/cloud/tmc/ad/interface/AdShowEventListener;->showResult(Ljava/lang/String;ZLcom/cloud/tmc/ad/bean/AdShowBean;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object v2, p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    .line 58
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;

    .line 63
    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    iget-boolean v2, v2, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0o0:Z

    .line 67
    .line 68
    if-ne v2, v3, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object p2, p2, Lcom/cloud/tmc/miniapp/ad/AdManager$OooO00o;->OooO0OO:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    check-cast p2, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;

    .line 78
    .line 79
    if-eqz p2, :cond_3

    .line 80
    .line 81
    iget-boolean p2, p2, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0o0:Z

    .line 82
    .line 83
    if-ne p2, v3, :cond_3

    .line 84
    .line 85
    :goto_0
    invoke-virtual {p3}, Lcom/cloud/tmc/ad/bean/AdShowBean;->getShowReportTimeType()I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    const/4 p3, 0x3

    .line 90
    if-ne p2, p3, :cond_3

    .line 91
    .line 92
    invoke-static {v0, p1, v1}, Lcom/cloud/tmc/miniapp/ad/AdManager;->access$clearCache(Lcom/cloud/tmc/miniapp/ad/AdManager;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ad/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ad/AdManager;

    .line 97
    .line 98
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/ad/OooO00o;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    .line 99
    .line 100
    const-string v0, ""

    .line 101
    .line 102
    invoke-static {p2, p1, p3, v0}, Lcom/cloud/tmc/miniapp/ad/AdManager;->access$showInterstitialFail(Lcom/cloud/tmc/miniapp/ad/AdManager;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    :goto_1
    return-void
.end method
