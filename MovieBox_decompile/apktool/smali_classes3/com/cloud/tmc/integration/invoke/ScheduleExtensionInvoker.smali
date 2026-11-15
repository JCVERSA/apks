.class public Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker;
.super Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;
.source "source.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TmcKernel:ExtensionInvoker:Schedule"


# instance fields
.field private mIExecutorService:Lcom/cloud/tmc/kernel/executor/IExecutorService;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;-><init>(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)V

    .line 2
    .line 3
    .line 4
    const-class p1, Lcom/cloud/tmc/kernel/executor/IExecutorService;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/cloud/tmc/kernel/executor/IExecutorService;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker;->mIExecutorService:Lcom/cloud/tmc/kernel/executor/IExecutorService;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method protected onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v3

    .line 5
    const-class v0, Lcom/cloud/tmc/kernel/annotation/ThreadType;

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/cloud/tmc/kernel/annotation/ThreadType;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/annotation/ThreadType;->value()Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->SYNC:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 21
    .line 22
    :goto_0
    sget-object v1, Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker$3;->$SwitchMap$com$cloud$tmc$kernel$executor$ExecutorType:[I

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    aget v1, v1, v2

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    const-string v5, "TmcKernel:ExtensionInvoker:Schedule"

    .line 32
    .line 33
    if-eq v1, v2, :cond_5

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    if-eq v1, v2, :cond_4

    .line 37
    .line 38
    const/4 v2, 0x3

    .line 39
    if-eq v1, v2, :cond_1

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    array-length v1, v1

    .line 51
    if-lez v1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const/4 v2, 0x0

    .line 62
    aget-object v1, v1, v2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const/4 v1, 0x0

    .line 66
    :goto_1
    if-eqz v1, :cond_3

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v1, "extension "

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v1, " want to execute on URGENT_DISPLAY but not nebulax class!"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v5, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sget-object v0, Lcom/cloud/tmc/kernel/executor/ExecutorType;->URGENT:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    .line 95
    .line 96
    :goto_2
    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker;->mIExecutorService:Lcom/cloud/tmc/kernel/executor/IExecutorService;

    .line 97
    .line 98
    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/executor/IExecutorService;->getExecutor(Lcom/cloud/tmc/kernel/executor/ExecutorType;)Ljava/util/concurrent/Executor;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    new-instance v8, Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker$2;

    .line 103
    .line 104
    move-object v0, v8

    .line 105
    move-object v1, p0

    .line 106
    move-object v2, p2

    .line 107
    move-object v5, p1

    .line 108
    move-object v6, p3

    .line 109
    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker$2;-><init>(Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker;Ljava/lang/reflect/Method;JLjava/lang/Object;[Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 113
    .line 114
    .line 115
    invoke-static {}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->pending()Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    return-object p1

    .line 120
    :cond_4
    new-instance v7, Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker$1;

    .line 121
    .line 122
    move-object v0, v7

    .line 123
    move-object v1, p0

    .line 124
    move-object v2, p2

    .line 125
    move-object v5, p1

    .line 126
    move-object v6, p3

    .line 127
    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker$1;-><init>(Lcom/cloud/tmc/integration/invoke/ScheduleExtensionInvoker;Ljava/lang/reflect/Method;JLjava/lang/Object;[Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-static {v7}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 131
    .line 132
    .line 133
    invoke-static {}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->pending()Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    return-object p1

    .line 138
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string p3, "method "

    .line 144
    .line 145
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string p2, " cost "

    .line 152
    .line 153
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 157
    .line 158
    .line 159
    move-result-wide p2

    .line 160
    sub-long/2addr p2, v3

    .line 161
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-static {v5, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-static {}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->proceed()Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    return-object p1
.end method
