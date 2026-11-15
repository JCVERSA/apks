.class public Lcom/cloud/tmc/integration/invoke/RemoteNormalExtensionInvoker;
.super Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;
.source "source.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TmcKernel:ExtensionInvoker:Remote"


# instance fields
.field private mIsMainProcess:Z

.field private mRemoteController:Lcom/cloud/tmc/kernel/remote/RemoteController;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/kernel/remote/RemoteController;Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;-><init>(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMainProcess()Z

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    iput-boolean p2, p0, Lcom/cloud/tmc/integration/invoke/RemoteNormalExtensionInvoker;->mIsMainProcess:Z

    .line 9
    .line 10
    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/RemoteNormalExtensionInvoker;->mRemoteController:Lcom/cloud/tmc/kernel/remote/RemoteController;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method protected onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-boolean p1, p0, Lcom/cloud/tmc/integration/invoke/RemoteNormalExtensionInvoker;->mIsMainProcess:Z

    .line 6
    .line 7
    if-nez p1, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/RemoteNormalExtensionInvoker;->mRemoteController:Lcom/cloud/tmc/kernel/remote/RemoteController;

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {p1, v2}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/cloud/tmc/kernel/extension/Extension;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/RemoteNormalExtensionInvoker;->mRemoteController:Lcom/cloud/tmc/kernel/remote/RemoteController;

    .line 23
    .line 24
    invoke-interface {v2, p1, p2}, Lcom/cloud/tmc/kernel/remote/RemoteController;->isRemoteCallExtension(Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/reflect/Method;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v4, "extension: "

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v8, " method: "

    .line 48
    .line 49
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v4, " isRemote: "

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-string v9, "TmcKernel:ExtensionInvoker:Remote"

    .line 68
    .line 69
    invoke-static {v9, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v10, Lcom/cloud/tmc/kernel/remote/RemoteCallArgs;

    .line 73
    .line 74
    iget-object v3, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetNode:Lcom/cloud/tmc/kernel/node/Node;

    .line 75
    .line 76
    const/4 v7, 0x0

    .line 77
    move-object v2, v10

    .line 78
    move-object v4, p1

    .line 79
    move-object v5, p2

    .line 80
    move-object v6, p3

    .line 81
    invoke-direct/range {v2 .. v7}, Lcom/cloud/tmc/kernel/remote/RemoteCallArgs;-><init>(Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/reflect/Method;[Ljava/lang/Object;Landroid/os/Parcelable;)V

    .line 82
    .line 83
    .line 84
    iget-object p3, p0, Lcom/cloud/tmc/integration/invoke/RemoteNormalExtensionInvoker;->mRemoteController:Lcom/cloud/tmc/kernel/remote/RemoteController;

    .line 85
    .line 86
    invoke-interface {p3, v10}, Lcom/cloud/tmc/kernel/remote/RemoteController;->remoteCall(Lcom/cloud/tmc/kernel/remote/RemoteCallArgs;)Lcom/cloud/tmc/kernel/remote/RemoteCallResult;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    invoke-virtual {p3}, Lcom/cloud/tmc/kernel/remote/RemoteCallResult;->getValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {p3}, Lcom/cloud/tmc/kernel/remote/RemoteCallResult;->isError()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_1

    .line 99
    .line 100
    instance-of v3, v2, Ljava/lang/Throwable;

    .line 101
    .line 102
    if-nez v3, :cond_0

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    check-cast v2, Ljava/lang/Throwable;

    .line 106
    .line 107
    throw v2

    .line 108
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v3, "extension "

    .line 114
    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string p1, " cost "

    .line 128
    .line 129
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 133
    .line 134
    .line 135
    move-result-wide p1

    .line 136
    sub-long/2addr p1, v0

    .line 137
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-static {v9, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3}, Lcom/cloud/tmc/kernel/remote/RemoteCallResult;->getValue()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-static {p1}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->decide(Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    return-object p1

    .line 156
    :cond_2
    invoke-static {}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->proceed()Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    return-object p1
.end method
