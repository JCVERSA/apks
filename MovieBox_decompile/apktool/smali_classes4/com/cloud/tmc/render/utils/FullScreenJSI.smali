.class public final Lcom/cloud/tmc/render/utils/FullScreenJSI;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0010\u0010\u0010\u001a\u00020\n2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/cloud/tmc/render/utils/FullScreenJSI;",
        "",
        "()V",
        "page",
        "Lcom/cloud/tmc/kernel/node/Node;",
        "getPage",
        "()Lcom/cloud/tmc/kernel/node/Node;",
        "setPage",
        "(Lcom/cloud/tmc/kernel/node/Node;)V",
        "enterFullScreen",
        "",
        "width",
        "",
        "height",
        "isVideo",
        "",
        "setNode",
        "node",
        "com.cloud.tmc.render"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private page:Lcom/cloud/tmc/kernel/node/Node;


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
.method public final enterFullScreen(IIZ)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "getRect->width:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", height:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ", isVideo:"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "pom"

    .line 35
    .line 36
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/cloud/tmc/render/utils/FullScreenJSI;->page:Lcom/cloud/tmc/kernel/node/Node;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    const-class v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 50
    .line 51
    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v3, "eventFullScreen_"

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/Node;->getNodeId()J

    .line 68
    .line 69
    .line 70
    move-result-wide v4

    .line 71
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    new-instance v4, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;

    .line 79
    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/node/Node;->getNodeId()J

    .line 89
    .line 90
    .line 91
    move-result-wide v6

    .line 92
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-direct {v4, v0}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string v0, "eventFullScreenParamKeyWidth"

    .line 107
    .line 108
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    const-string v0, "eventFullScreenParamKeyHeight"

    .line 117
    .line 118
    invoke-static {v0, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    const-string v0, "eventFullScreenParamKeyIsVideo"

    .line 127
    .line 128
    invoke-static {v0, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    const/4 v0, 0x3

    .line 133
    new-array v0, v0, [Lkotlin/Pair;

    .line 134
    .line 135
    const/4 v3, 0x0

    .line 136
    aput-object p1, v0, v3

    .line 137
    .line 138
    const/4 p1, 0x1

    .line 139
    aput-object p2, v0, p1

    .line 140
    .line 141
    const/4 p1, 0x2

    .line 142
    aput-object p3, v0, p1

    .line 143
    .line 144
    invoke-static {v0}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {v4, p1}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;->setData(Ljava/util/Map;)V

    .line 149
    .line 150
    .line 151
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 152
    .line 153
    invoke-interface {v1, v2, v4}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    .line 154
    .line 155
    .line 156
    :cond_0
    return-void
.end method

.method public final getPage()Lcom/cloud/tmc/kernel/node/Node;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/render/utils/FullScreenJSI;->page:Lcom/cloud/tmc/kernel/node/Node;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setNode(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/utils/FullScreenJSI;->page:Lcom/cloud/tmc/kernel/node/Node;

    .line 2
    .line 3
    return-void
.end method

.method public final setPage(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/render/utils/FullScreenJSI;->page:Lcom/cloud/tmc/kernel/node/Node;

    .line 2
    .line 3
    return-void
.end method
