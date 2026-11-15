.class Lcom/mbridge/msdk/system/a$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/system/a;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:J

.field final synthetic c:Lcom/mbridge/msdk/system/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/system/a;ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/mbridge/msdk/system/a$b;->a:Z

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/mbridge/msdk/system/a$b;->b:J

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    const-string v0, "com.mbridge.msdk"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    .line 5
    .line 6
    iget-object v2, v2, Lcom/mbridge/msdk/system/a;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/r0;->a(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    .line 12
    .line 13
    new-instance v3, Lcom/mbridge/msdk/system/b;

    .line 14
    .line 15
    invoke-direct {v3}, Lcom/mbridge/msdk/system/b;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v3}, Lcom/mbridge/msdk/system/a;->access$002(Lcom/mbridge/msdk/system/a;Lcom/mbridge/msdk/system/b;)Lcom/mbridge/msdk/system/b;

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/mbridge/msdk/system/a;->access$000(Lcom/mbridge/msdk/system/a;)Lcom/mbridge/msdk/system/b;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    sget-object v3, Lcom/mbridge/msdk/system/a;->map:Ljava/util/Map;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/system/b;->a(Ljava/util/Map;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/d;->a()Lcom/mbridge/msdk/foundation/controller/d;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    sget-object v3, Lcom/mbridge/msdk/system/a;->map:Ljava/util/Map;

    .line 37
    .line 38
    iget-object v4, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    .line 39
    .line 40
    iget-object v4, v4, Lcom/mbridge/msdk/system/a;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v2, v3, v4}, Lcom/mbridge/msdk/foundation/controller/d;->a(Ljava/util/Map;Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    .line 46
    .line 47
    sget-object v3, Lcom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;->COMPLETED:Lcom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

    .line 48
    .line 49
    iput-object v3, v2, Lcom/mbridge/msdk/system/a;->STATUS:Lcom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    .line 52
    .line 53
    invoke-static {v2}, Lcom/mbridge/msdk/system/a;->access$000(Lcom/mbridge/msdk/system/a;)Lcom/mbridge/msdk/system/b;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iget-object v3, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    .line 58
    .line 59
    iget-object v3, v3, Lcom/mbridge/msdk/system/a;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/system/b;->a(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/f;->a()Lcom/mbridge/msdk/foundation/same/report/f;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/same/report/f;->c()V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->f()V

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    .line 75
    .line 76
    invoke-static {v2}, Lcom/mbridge/msdk/system/a;->access$100(Lcom/mbridge/msdk/system/a;)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/e0;->a()Lcom/mbridge/msdk/foundation/tools/e0;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/tools/e0;->c()V

    .line 84
    .line 85
    .line 86
    iget-object v2, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    .line 87
    .line 88
    iget-object v2, v2, Lcom/mbridge/msdk/system/a;->sdkInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    .line 90
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 91
    .line 92
    .line 93
    iget-object v3, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    .line 94
    .line 95
    iget-boolean v2, v3, Lcom/mbridge/msdk/system/a;->initCallbacked:Z

    .line 96
    .line 97
    if-nez v2, :cond_0

    .line 98
    .line 99
    iput-boolean v1, v3, Lcom/mbridge/msdk/system/a;->initCallbacked:Z

    .line 100
    .line 101
    iget-boolean v4, p0, Lcom/mbridge/msdk/system/a$b;->a:Z

    .line 102
    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 104
    .line 105
    .line 106
    move-result-wide v5

    .line 107
    iget-wide v7, p0, Lcom/mbridge/msdk/system/a$b;->b:J

    .line 108
    .line 109
    sub-long/2addr v5, v7

    .line 110
    const-string v8, ""

    .line 111
    .line 112
    const/4 v7, 0x1

    .line 113
    invoke-static/range {v3 .. v8}, Lcom/mbridge/msdk/system/a;->access$200(Lcom/mbridge/msdk/system/a;ZJZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    goto :goto_2

    .line 119
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/e;->c()Lcom/mbridge/msdk/foundation/same/report/e;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/same/report/e;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :catchall_1
    move-exception v2

    .line 128
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    .line 134
    .line 135
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    .line 136
    .line 137
    iget-object v2, v2, Lcom/mbridge/msdk/system/a;->mContext:Landroid/content/Context;

    .line 138
    .line 139
    instance-of v2, v2, Landroid/app/Application;

    .line 140
    .line 141
    if-eqz v2, :cond_1

    .line 142
    .line 143
    iget-object v2, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    .line 144
    .line 145
    iget-object v3, v2, Lcom/mbridge/msdk/system/a;->mContext:Landroid/content/Context;

    .line 146
    .line 147
    check-cast v3, Landroid/app/Application;

    .line 148
    .line 149
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/system/a;->registerActivityLifecycleListener(Landroid/app/Application;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :catchall_2
    move-exception v2

    .line 154
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :goto_2
    iget-object v2, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    .line 163
    .line 164
    iget-object v2, v2, Lcom/mbridge/msdk/system/a;->sdkInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 165
    .line 166
    const/4 v3, 0x0

    .line 167
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 168
    .line 169
    .line 170
    iget-object v4, p0, Lcom/mbridge/msdk/system/a$b;->c:Lcom/mbridge/msdk/system/a;

    .line 171
    .line 172
    iget-boolean v2, v4, Lcom/mbridge/msdk/system/a;->initCallbacked:Z

    .line 173
    .line 174
    if-nez v2, :cond_1

    .line 175
    .line 176
    iput-boolean v1, v4, Lcom/mbridge/msdk/system/a;->initCallbacked:Z

    .line 177
    .line 178
    iget-boolean v5, p0, Lcom/mbridge/msdk/system/a$b;->a:Z

    .line 179
    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 181
    .line 182
    .line 183
    move-result-wide v1

    .line 184
    iget-wide v6, p0, Lcom/mbridge/msdk/system/a$b;->b:J

    .line 185
    .line 186
    sub-long v6, v1, v6

    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    const/4 v8, 0x0

    .line 193
    invoke-static/range {v4 .. v9}, Lcom/mbridge/msdk/system/a;->access$200(Lcom/mbridge/msdk/system/a;ZJZLjava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :cond_1
    :goto_3
    return-void
.end method
