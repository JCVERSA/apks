.class public final Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$getUniqueId$2;
.super Lcom/cloud/tmc/integration/net/TmcResponseCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/integration/net/TmcResponseCallback<",
        "Lcom/cloud/tmc/integration/model/UniqueIdBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/integration/structure/App;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;Lcom/cloud/tmc/integration/structure/App;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$getUniqueId$2;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$getUniqueId$2;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/cloud/tmc/integration/net/TmcResponseCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/reflect/Type;
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$getUniqueId$2$getType$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$getUniqueId$2$getType$1;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "object :\n               \u2026niqueIdBean?>?>() {}.type"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public onFail(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p2, "fail"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$getUniqueId$2;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->access$getUniqueIdMaps$p(Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$getUniqueId$2;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    .line 13
    .line 14
    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$UniqueIdBean;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$UniqueIdBean;->getRequesting()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "Lcom/cloud/tmc/integration/model/UniqueIdBean;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p2, "bean"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/net/BaseResponse;->getData()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    check-cast p2, Lcom/cloud/tmc/integration/model/UniqueIdBean;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/UniqueIdBean;->getUniqueId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p2, 0x0

    .line 20
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "\u57cb\u70b9getUniqueId success: "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    const-string v0, "AthenaReport"

    .line 38
    .line 39
    invoke-static {v0, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$getUniqueId$2;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;

    .line 43
    .line 44
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->access$getUniqueIdMaps$p(Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$getUniqueId$2;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    .line 49
    .line 50
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$UniqueIdBean;

    .line 59
    .line 60
    if-eqz p2, :cond_1

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$UniqueIdBean;->getRequesting()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    if-eqz p2, :cond_1

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/net/BaseResponse;->getData()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lcom/cloud/tmc/integration/model/UniqueIdBean;

    .line 77
    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/UniqueIdBean;->getUniqueId()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$getUniqueId$2;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;

    .line 87
    .line 88
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$getUniqueId$2;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    .line 89
    .line 90
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->access$getUniqueIdMaps$p(Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    check-cast p2, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$UniqueIdBean;

    .line 103
    .line 104
    if-nez p2, :cond_2

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    invoke-virtual {p2, p1}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$UniqueIdBean;->setUniqueId(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_3
    :goto_1
    return-void
.end method
