.class public final Lcom/transsion/commercialization/pslink/PsLinkServiceHelper$register$1$1;
.super Lww/a$a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->l(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lww/a$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public M0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "callBackName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "param"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v1, "onProgress"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    sparse-switch v0, :sswitch_data_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :sswitch_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :sswitch_1
    const-string v0, "removeTask"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper$register$1$1$callBackCommon$info$1;

    .line 39
    .line 40
    invoke-direct {v0}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper$register$1$1$callBackCommon$info$1;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {p2, v0}, Lcom/blankj/utilcode/util/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->getPkgName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto :goto_1

    .line 58
    :sswitch_2
    const-string v0, "onAction"

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :sswitch_3
    const-string v0, "addTask"

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    :cond_1
    new-instance v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper$register$1$1$callBackCommon$1;

    .line 76
    .line 77
    invoke-direct {v0}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper$register$1$1$callBackCommon$1;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {p2, v0}, Lcom/blankj/utilcode/util/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    move-object v3, v0

    .line 89
    check-cast v3, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;

    .line 90
    .line 91
    if-eqz v3, :cond_2

    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->getPkgName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    :cond_2
    move-object v7, v2

    .line 98
    move-object v2, v0

    .line 99
    move-object v0, v7

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    :goto_0
    const-string v0, ""

    .line 102
    .line 103
    :goto_1
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_4

    .line 108
    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 110
    .line 111
    .line 112
    move-result-wide v3

    .line 113
    invoke-static {}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->b()J

    .line 114
    .line 115
    .line 116
    move-result-wide v5

    .line 117
    sub-long/2addr v3, v5

    .line 118
    const-wide/16 v5, 0x3e8

    .line 119
    .line 120
    cmp-long v1, v3, v5

    .line 121
    .line 122
    if-gez v1, :cond_4

    .line 123
    .line 124
    return-void

    .line 125
    :cond_4
    sget-object v1, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->a:Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;

    .line 126
    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 128
    .line 129
    .line 130
    move-result-wide v3

    .line 131
    invoke-static {v3, v4}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->e(J)V

    .line 132
    .line 133
    .line 134
    invoke-static {}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->c()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-eqz v3, :cond_5

    .line 147
    .line 148
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    check-cast v3, Lcom/transsion/commercialization/pslink/b;

    .line 153
    .line 154
    move-object v4, v2

    .line 155
    check-cast v4, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;

    .line 156
    .line 157
    invoke-interface {v3, p1, p2, v4, v0}, Lcom/transsion/commercialization/pslink/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_5
    return-void

    .line 162
    nop

    .line 163
    :sswitch_data_0
    .sparse-switch
        -0x4476163a -> :sswitch_3
        0x3a2454f5 -> :sswitch_2
        0x417ac029 -> :sswitch_1
        0x696ee52c -> :sswitch_0
    .end sparse-switch
.end method
