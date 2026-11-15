.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->checkNow(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.cloud.tmc.miniapp.performanceanalyse.screen.ScreenInspectHelper$checkNow$1"
    f = "ScreenInspectHelper.kt"
    l = {
        0x141
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public OooO00o:I

.field public final synthetic OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

.field public final synthetic OooO0OO:Lcom/cloud/tmc/integration/structure/App;

.field public final synthetic OooO0Oo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;",
            "Lcom/cloud/tmc/integration/structure/App;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0OO:Lcom/cloud/tmc/integration/structure/App;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0Oo:Ljava/lang/String;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0OO:Lcom/cloud/tmc/integration/structure/App;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0Oo:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    new-instance p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0OO:Lcom/cloud/tmc/integration/structure/App;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0Oo:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO00o:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$getCheckNowDelay$p(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    const-wide/16 v5, 0x0

    .line 34
    .line 35
    cmp-long p1, v3, v5

    .line 36
    .line 37
    if-lez p1, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$getCheckNowDelay$p(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v5

    .line 45
    :cond_2
    iput v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO00o:I

    .line 46
    .line 47
    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-ne p1, v0, :cond_3

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$getAPP_MAP$p(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0OO:Lcom/cloud/tmc/integration/structure/App;

    .line 61
    .line 62
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    .line 71
    .line 72
    if-eqz p1, :cond_5

    .line 73
    .line 74
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 75
    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0Oo:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    .line 85
    .line 86
    if-eqz p1, :cond_5

    .line 87
    .line 88
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    .line 89
    .line 90
    iget-boolean v1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oO:Z

    .line 91
    .line 92
    if-eqz v1, :cond_4

    .line 93
    .line 94
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 95
    .line 96
    return-object p1

    .line 97
    :cond_4
    invoke-static {v0, p1}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$checkWhiteScreen(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V

    .line 98
    .line 99
    .line 100
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 101
    .line 102
    return-object p1
.end method
