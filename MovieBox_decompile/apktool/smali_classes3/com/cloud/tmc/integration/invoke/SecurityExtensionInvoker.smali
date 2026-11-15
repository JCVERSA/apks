.class public Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker;
.super Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;
.source "source.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Tmcintegration:ExtensionInvoker:Security"


# instance fields
.field private mAccessController:Lcom/cloud/tmc/kernel/security/AccessController;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/kernel/security/AccessController;Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;-><init>(Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker;->mAccessController:Lcom/cloud/tmc/kernel/security/AccessController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;
    .locals 10
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
    move-result-wide v3

    .line 5
    new-instance v8, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/cloud/tmc/kernel/extension/Extension;

    .line 27
    .line 28
    instance-of v2, v1, Lcom/cloud/tmc/kernel/security/Guard;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    move-object v2, v1

    .line 33
    check-cast v2, Lcom/cloud/tmc/kernel/security/Guard;

    .line 34
    .line 35
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    const-class v5, Lcom/cloud/tmc/kernel/annotation/UsePermission;

    .line 57
    .line 58
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Lcom/cloud/tmc/kernel/annotation/UsePermission;

    .line 63
    .line 64
    if-eqz v5, :cond_2

    .line 65
    .line 66
    invoke-interface {v5}, Lcom/cloud/tmc/kernel/annotation/UsePermission;->value()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    if-eqz v6, :cond_2

    .line 71
    .line 72
    invoke-interface {v5}, Lcom/cloud/tmc/kernel/annotation/UsePermission;->value()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-lez v6, :cond_2

    .line 81
    .line 82
    new-instance v1, Lcom/cloud/tmc/kernel/extension/bridge/BridgePermission;

    .line 83
    .line 84
    invoke-interface {v5}, Lcom/cloud/tmc/kernel/annotation/UsePermission;->value()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-interface {v5}, Lcom/cloud/tmc/kernel/annotation/UsePermission;->desc()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-direct {v1, v2, v5}, Lcom/cloud/tmc/kernel/extension/bridge/BridgePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-instance v2, Lcom/cloud/tmc/kernel/extension/bridge/BridgeGuard;

    .line 96
    .line 97
    invoke-direct {v2, v1}, Lcom/cloud/tmc/kernel/extension/bridge/BridgeGuard;-><init>(Lcom/cloud/tmc/kernel/security/Permission;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    instance-of v1, v1, Lcom/cloud/tmc/kernel/extension/BridgeExtension;

    .line 105
    .line 106
    if-eqz v1, :cond_0

    .line 107
    .line 108
    const-class v1, Lcom/cloud/tmc/kernel/annotation/ActionFilter;

    .line 109
    .line 110
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    if-eqz v5, :cond_0

    .line 115
    .line 116
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Lcom/cloud/tmc/kernel/annotation/ActionFilter;

    .line 121
    .line 122
    if-eqz v1, :cond_3

    .line 123
    .line 124
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/annotation/ActionFilter;->value()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-nez v5, :cond_3

    .line 133
    .line 134
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/annotation/ActionFilter;->value()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    goto :goto_1

    .line 139
    :cond_3
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    :goto_1
    new-instance v2, Lcom/cloud/tmc/kernel/extension/bridge/BridgePermission;

    .line 144
    .line 145
    invoke-direct {v2, v1, v1}, Lcom/cloud/tmc/kernel/extension/bridge/BridgePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    new-instance v1, Lcom/cloud/tmc/kernel/extension/bridge/BridgeGuard;

    .line 149
    .line 150
    invoke-direct {v1, v2}, Lcom/cloud/tmc/kernel/extension/bridge/BridgeGuard;-><init>(Lcom/cloud/tmc/kernel/security/Permission;)V

    .line 151
    .line 152
    .line 153
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_4
    new-instance v9, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;

    .line 159
    .line 160
    move-object v0, v9

    .line 161
    move-object v1, p0

    .line 162
    move-object v2, p2

    .line 163
    move-object v5, p1

    .line 164
    move-object v6, p3

    .line 165
    move-object v7, v8

    .line 166
    invoke-direct/range {v0 .. v7}, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker$1;-><init>(Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker;Ljava/lang/reflect/Method;JLjava/lang/Object;[Ljava/lang/Object;Ljava/util/List;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/SecurityExtensionInvoker;->mAccessController:Lcom/cloud/tmc/kernel/security/AccessController;

    .line 170
    .line 171
    if-eqz p1, :cond_5

    .line 172
    .line 173
    iget-object p2, p0, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetNode:Lcom/cloud/tmc/kernel/node/Node;

    .line 174
    .line 175
    invoke-interface {p1, p2, v8, v9}, Lcom/cloud/tmc/kernel/security/AccessController;->check(Lcom/cloud/tmc/kernel/security/Accessor;Ljava/util/List;Lcom/cloud/tmc/kernel/security/AccessController$ApplyCallback;)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_5

    .line 180
    .line 181
    invoke-static {}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->pending()Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    return-object p1

    .line 186
    :cond_5
    invoke-static {}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;->proceed()Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    return-object p1
.end method
