.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public final OooO00o:Ljava/lang/String;

.field public final OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0OO:Lcom/cloud/tmc/kernel/worker/JSI;

.field public OooO0Oo:I

.field public OooO0o0:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/kernel/worker/JSI;ILcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;",
            ">;",
            "Lcom/cloud/tmc/kernel/worker/JSI;",
            "I",
            "Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pages"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO00o:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0OO:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 19
    .line 20
    iput p4, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0Oo:I

    .line 21
    .line 22
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0o0:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO00o:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO00o:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0OO:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0OO:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0Oo:I

    .line 47
    .line 48
    iget v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0Oo:I

    .line 49
    .line 50
    if-eq v1, v3, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0o0:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0o0:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 56
    .line 57
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO00o:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0OO:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    move v0, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :goto_0
    add-int/2addr v1, v0

    .line 30
    mul-int/lit8 v1, v1, 0x1f

    .line 31
    .line 32
    iget v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0Oo:I

    .line 33
    .line 34
    add-int/2addr v0, v1

    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0o0:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 38
    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    :goto_1
    add-int/2addr v0, v2

    .line 47
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO00o:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0O0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0OO:Lcom/cloud/tmc/kernel/worker/JSI;

    .line 6
    .line 7
    iget v3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0Oo:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0o0:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 10
    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v6, "AppData(appId="

    .line 17
    .line 18
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, ", pages="

    .line 25
    .line 26
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, ", worker="

    .line 33
    .line 34
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ", workerConnectionStatus="

    .line 41
    .line 42
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", workerSubscriber="

    .line 49
    .line 50
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ")"

    .line 57
    .line 58
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
