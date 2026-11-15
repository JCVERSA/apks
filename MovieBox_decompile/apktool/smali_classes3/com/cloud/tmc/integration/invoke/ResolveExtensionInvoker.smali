.class public Lcom/cloud/tmc/integration/invoke/ResolveExtensionInvoker;
.super Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;
.source "source.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TmcKernel:ExtensionInvoker:Resolve"

.field private static final sDefaultResolver:Lcom/cloud/tmc/kernel/resolver/ResultResolver;


# instance fields
.field private mResultResolver:Lcom/cloud/tmc/kernel/resolver/ResultResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/invoke/ResolveExtensionInvoker$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/integration/invoke/ResolveExtensionInvoker$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/integration/invoke/ResolveExtensionInvoker;->sDefaultResolver:Lcom/cloud/tmc/kernel/resolver/ResultResolver;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/kernel/resolver/ResultResolver;Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;-><init>(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/ResolveExtensionInvoker;->mResultResolver:Lcom/cloud/tmc/kernel/resolver/ResultResolver;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const-string p1, "TmcKernel:ExtensionInvoker:Resolve"

    .line 9
    .line 10
    const-string p2, "use default resolver!"

    .line 11
    .line 12
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object p1, Lcom/cloud/tmc/integration/invoke/ResolveExtensionInvoker;->sDefaultResolver:Lcom/cloud/tmc/kernel/resolver/ResultResolver;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/ResolveExtensionInvoker;->mResultResolver:Lcom/cloud/tmc/kernel/resolver/ResultResolver;

    .line 18
    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method protected onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/ReflectUtils;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->decide(Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->invokeCallback:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeCallback;

    .line 26
    .line 27
    instance-of v2, v1, Lcom/cloud/tmc/integration/invoke/ExtensionCallback;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    check-cast v1, Lcom/cloud/tmc/integration/invoke/ExtensionCallback;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move-object v1, v3

    .line 36
    :goto_0
    if-eqz v1, :cond_2

    .line 37
    .line 38
    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;->mutable()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v1, v2}, Lcom/cloud/tmc/integration/invoke/ExtensionCallback;->onStart(Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    move-object v4, v3

    .line 54
    move-object v5, v4

    .line 55
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_7

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    check-cast v6, Lcom/cloud/tmc/kernel/extension/Extension;

    .line 66
    .line 67
    instance-of v7, v6, Lcom/cloud/tmc/kernel/scheduler/Interruptable;

    .line 68
    .line 69
    if-eqz v7, :cond_5

    .line 70
    .line 71
    if-nez v4, :cond_4

    .line 72
    .line 73
    new-instance v4, Lcom/cloud/tmc/kernel/scheduler/internal/DefaultInterruptor;

    .line 74
    .line 75
    invoke-direct {v4}, Lcom/cloud/tmc/kernel/scheduler/internal/DefaultInterruptor;-><init>()V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    const/4 v7, 0x0

    .line 80
    invoke-virtual {v4, v7}, Lcom/cloud/tmc/kernel/scheduler/internal/DefaultInterruptor;->setInterrupted(Z)V

    .line 81
    .line 82
    .line 83
    :goto_1
    move-object v7, v6

    .line 84
    check-cast v7, Lcom/cloud/tmc/kernel/scheduler/Interruptable;

    .line 85
    .line 86
    invoke-interface {v7, v4}, Lcom/cloud/tmc/kernel/scheduler/Interruptable;->setInterruptor(Lcom/cloud/tmc/kernel/scheduler/Interruptor;)V

    .line 87
    .line 88
    .line 89
    :cond_5
    :try_start_0
    iget-object v7, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->nextInvoker:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;

    .line 90
    .line 91
    new-instance v8, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    .line 92
    .line 93
    invoke-direct {v8, v6}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;-><init>(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iput-object v8, v7, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    .line 97
    .line 98
    iget-object v7, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->nextInvoker:Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;

    .line 99
    .line 100
    invoke-virtual {v7, p1, p2, p3}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    if-eqz v1, :cond_6

    .line 108
    .line 109
    invoke-interface {v1, v6, v5}, Lcom/cloud/tmc/integration/invoke/ExtensionCallback;->onProgress(Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :catchall_0
    move-exception p1

    .line 114
    move-object v3, p1

    .line 115
    goto :goto_3

    .line 116
    :cond_6
    :goto_2
    if-eqz v4, :cond_3

    .line 117
    .line 118
    invoke-virtual {v4}, Lcom/cloud/tmc/kernel/scheduler/internal/DefaultInterruptor;->isInterrupted()Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_3

    .line 123
    .line 124
    if-eqz v1, :cond_7

    .line 125
    .line 126
    invoke-interface {v1, v6}, Lcom/cloud/tmc/integration/invoke/ExtensionCallback;->onInterrupt(Lcom/cloud/tmc/kernel/extension/Extension;)V

    .line 127
    .line 128
    .line 129
    :cond_7
    move-object v6, v3

    .line 130
    goto :goto_4

    .line 131
    :goto_3
    if-eqz v1, :cond_8

    .line 132
    .line 133
    invoke-interface {v1, v6, v3}, Lcom/cloud/tmc/integration/invoke/ExtensionCallback;->onException(Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/ResolveExtensionInvoker;->mResultResolver:Lcom/cloud/tmc/kernel/resolver/ResultResolver;

    .line 137
    .line 138
    if-eqz p1, :cond_9

    .line 139
    .line 140
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/resolver/ResultResolver;->resolve(Ljava/util/List;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    :cond_9
    if-eqz v3, :cond_a

    .line 145
    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string p3, "return defaultValue due to exception "

    .line 152
    .line 153
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string p3, " in ext: "

    .line 160
    .line 161
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    const-string p3, "TmcKernel:ExtensionInvoker:Resolve"

    .line 172
    .line 173
    invoke-static {p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/ReflectUtils;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    :cond_a
    invoke-static {v5}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->decide(Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    return-object p1
.end method
