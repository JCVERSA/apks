.class public final Lcom/apm/insight/k/b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apm/insight/k/b$a;,
        Lcom/apm/insight/k/b$b;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/apm/insight/k/b;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Lcom/apm/insight/k/b$b;

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/apm/insight/k/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private volatile h:Z

.field private i:Ljava/lang/Runnable;

.field private j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/apm/insight/k/b;->c:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/apm/insight/k/b;->d:Ljava/util/List;

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/apm/insight/k/b;->e:I

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/apm/insight/k/b;->h:Z

    .line 23
    .line 24
    new-instance v0, Lcom/apm/insight/k/b$1;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/apm/insight/k/b$1;-><init>(Lcom/apm/insight/k/b;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/apm/insight/k/b;->i:Ljava/lang/Runnable;

    .line 30
    .line 31
    new-instance v0, Lcom/apm/insight/k/b$2;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/apm/insight/k/b$2;-><init>(Lcom/apm/insight/k/b;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/apm/insight/k/b;->j:Ljava/lang/Runnable;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/apm/insight/k/b;->a:Landroid/content/Context;

    .line 39
    .line 40
    return-void
.end method

.method private a(Ljava/io/File;Lcom/apm/insight/CrashType;Ljava/lang/String;JJ)Lcom/apm/insight/f/b;
    .locals 19
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p2

    move-wide/from16 v1, p4

    .line 144
    const-string v3, "data"

    const-string v4, "unauthentic_version"

    const-string v5, "unknown"

    const-string v6, "true"

    const-string v7, "has_dump"

    const-string v8, "logcat"

    const-string v9, "header"

    const-string v10, "lastAliveTime"

    const-string v11, "filters"

    .line 145
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v13, :cond_0

    .line 146
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v12, 0x0

    move-object/from16 v8, p0

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    :goto_0
    const/4 v12, 0x0

    move-object/from16 v8, p0

    goto/16 :goto_7

    .line 147
    :cond_0
    :try_start_2
    sget-object v13, Lcom/apm/insight/CrashType;->LAUNCH:Lcom/apm/insight/CrashType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    const/4 v14, 0x0

    if-ne v0, v13, :cond_1

    const/4 v14, 0x1

    :cond_1
    if-nez v0, :cond_2

    .line 148
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v13, p1

    :try_start_4
    invoke-direct {v0, v13, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apm/insight/l/f;->b(Ljava/lang/String;)Lcom/apm/insight/f/b;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v13, p1

    goto :goto_0

    :cond_2
    move-object/from16 v13, p1

    .line 149
    :try_start_5
    invoke-static/range {p1 .. p2}, Lcom/apm/insight/l/f;->a(Ljava/io/File;Lcom/apm/insight/CrashType;)Lcom/apm/insight/f/b;

    move-result-object v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 150
    :try_start_6
    invoke-virtual {v15}, Lcom/apm/insight/f/b;->b()Lorg/json/JSONObject;

    move-result-object v12

    .line 151
    invoke-virtual {v15}, Lcom/apm/insight/f/b;->b()Lorg/json/JSONObject;

    move-result-object v16

    if-eqz v16, :cond_d

    .line 152
    sget-object v13, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    if-ne v0, v13, :cond_3

    return-object v15

    .line 153
    :cond_3
    const-string v0, "crash_time"

    invoke-virtual {v12, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 154
    const-string v0, "app_start_time"

    move-object v13, v3

    move-object/from16 v16, v4

    move-wide/from16 v3, p6

    invoke-virtual {v12, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 155
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_4

    .line 156
    invoke-static/range {p4 .. p5}, Lcom/apm/insight/entity/Header;->a(J)Lcom/apm/insight/entity/Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/entity/Header;->f()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v8, p0

    :goto_1
    move-object v12, v15

    goto/16 :goto_7

    :cond_4
    if-eqz v14, :cond_5

    .line 157
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    :cond_5
    :goto_2
    const-string v3, "sdk_version_name"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 159
    const-string v4, "sdk_version"

    if-nez v3, :cond_6

    const-string v3, "2008-20250701130429"

    :cond_6
    invoke-static {v12, v11, v4, v3}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 161
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_8

    .line 162
    :cond_7
    invoke-static/range {p3 .. p3}, Lcom/apm/insight/runtime/h;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v12, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    :cond_8
    invoke-static {v12, v11, v7, v6}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v3, "has_logcat"

    invoke-static {v12, v8}, Lcom/apm/insight/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    const/4 v8, 0x1

    xor-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v11, v3, v4}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v3, "memory_leak"

    invoke-static/range {p3 .. p3}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v11, v3, v4}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v3, "fd_leak"

    invoke-static/range {p3 .. p3}, Lcom/apm/insight/entity/a;->b(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v11, v3, v4}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v3, "threads_leak"

    invoke-static/range {p3 .. p3}, Lcom/apm/insight/entity/a;->c(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v11, v3, v4}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v3, "is_64_devices"

    invoke-static {}, Lcom/apm/insight/entity/Header;->a()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v11, v3, v4}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v3, "is_64_runtime"

    invoke-static {}, Lcom/apm/insight/nativecrash/NativeImpl;->f()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v11, v3, v4}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v3, "is_x86_devices"

    invoke-static {}, Lcom/apm/insight/entity/Header;->b()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v11, v3, v4}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v3, "has_meminfo_file"

    .line 172
    invoke-static/range {p3 .. p3}, Lcom/apm/insight/l/j;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    .line 173
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v11, v3, v4}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v3, "is_root"

    invoke-static {}, Lcom/apm/insight/nativecrash/a;->k()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v11, v3, v4}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v3, "launch_did"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v8, p0

    :try_start_7
    iget-object v4, v8, Lcom/apm/insight/k/b;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/apm/insight/i/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string v3, "crash_uuid"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object/from16 v3, p3

    .line 177
    :try_start_8
    invoke-static {v1, v2, v3}, Lcom/apm/insight/runtime/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sub-long v1, v3, v1

    .line 178
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v17, 0xea60

    cmp-long v1, v1, v17

    if-gez v1, :cond_9

    const-string v1, "< 60s"

    goto :goto_3

    :cond_9
    const-string v1, "> 60s"

    :goto_3
    invoke-static {v12, v11, v10, v1}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    .line 180
    :catchall_3
    :try_start_9
    invoke-virtual {v12, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    invoke-static {v12, v11, v10, v5}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :goto_4
    invoke-virtual {v12, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const-string v1, "storage"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a

    .line 184
    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    invoke-static {}, Lcom/apm/insight/l/n;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_5

    :catchall_4
    move-exception v0

    goto/16 :goto_1

    .line 185
    :cond_a
    :goto_5
    invoke-static {v0}, Lcom/apm/insight/entity/Header;->b(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v1, v16

    .line 186
    invoke-static {v12, v11, v1, v1}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_b
    invoke-static {v12}, Lcom/apm/insight/entity/d;->b(Lorg/json/JSONObject;)V

    .line 188
    invoke-virtual {v15}, Lcom/apm/insight/f/b;->b()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "upload_scene"

    const-string v3, "launch_scan"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v14, :cond_c

    .line 189
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 190
    const-string v2, "event_type"

    const-string v3, "start_crash"

    invoke-virtual {v12, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string v2, "stack"

    move-object v3, v13

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    invoke-virtual {v1, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    invoke-virtual {v15, v1}, Lcom/apm/insight/f/b;->a(Lorg/json/JSONObject;)V

    goto :goto_6

    .line 195
    :cond_c
    const-string v0, "isJava"

    const/4 v1, 0x1

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_6

    :cond_d
    move-object/from16 v8, p0

    .line 196
    invoke-static/range {p1 .. p1}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :goto_6
    move-object v12, v15

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object/from16 v8, p0

    const/4 v4, 0x0

    move-object v12, v4

    .line 197
    :goto_7
    invoke-static/range {p1 .. p1}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z

    .line 198
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    const-string v1, "NPTH_CATCH"

    .line 199
    invoke-static {v0, v1}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_8
    return-object v12
.end method

.method public static a()Lcom/apm/insight/k/b;
    .locals 3

    .line 2
    sget-object v0, Lcom/apm/insight/k/b;->b:Lcom/apm/insight/k/b;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/apm/insight/k/b;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/apm/insight/k/b;->b:Lcom/apm/insight/k/b;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/apm/insight/k/b;

    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/apm/insight/k/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/apm/insight/k/b;->b:Lcom/apm/insight/k/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_2
    sget-object v0, Lcom/apm/insight/k/b;->b:Lcom/apm/insight/k/b;

    return-object v0
.end method

.method private static a(Lcom/apm/insight/nativecrash/a;)Lorg/json/JSONObject;
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/apm/insight/nativecrash/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 84
    :cond_0
    invoke-static {}, Lcom/apm/insight/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/apm/insight/nativecrash/a;->j()V

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/apm/insight/nativecrash/a;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/apm/insight/nativecrash/a;->i()Z

    return-object v1

    .line 88
    :cond_2
    invoke-virtual {p0}, Lcom/apm/insight/nativecrash/a;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 89
    invoke-virtual {p0}, Lcom/apm/insight/nativecrash/a;->i()Z

    return-object v1

    .line 90
    :cond_3
    invoke-virtual {p0}, Lcom/apm/insight/nativecrash/a;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 91
    invoke-virtual {p0}, Lcom/apm/insight/nativecrash/a;->i()Z

    return-object v1

    .line 92
    :cond_4
    invoke-virtual {p0}, Lcom/apm/insight/nativecrash/a;->c()V

    .line 93
    invoke-virtual {p0}, Lcom/apm/insight/nativecrash/a;->h()Lorg/json/JSONObject;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method private a(Lcom/apm/insight/k/b$b;ZLcom/apm/insight/runtime/f;)V
    .locals 20
    .param p3    # Lcom/apm/insight/runtime/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 94
    const-string v3, "crash_thread_name"

    const-string v4, "NPTH_CATCH"

    const-string v5, "aid"

    iget-object v0, v1, Lcom/apm/insight/k/b$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object v0, v1, Lcom/apm/insight/k/b$b;->e:Lcom/apm/insight/k/b$a;

    if-nez v0, :cond_1

    .line 96
    iget-object v0, v1, Lcom/apm/insight/k/b$b;->d:Lcom/apm/insight/k/b$a;

    iput-object v0, v1, Lcom/apm/insight/k/b$b;->e:Lcom/apm/insight/k/b$a;

    .line 97
    :cond_1
    iget-object v0, v1, Lcom/apm/insight/k/b$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/apm/insight/k/b$a;

    .line 98
    :try_start_0
    iget-object v14, v7, Lcom/apm/insight/k/b$a;->a:Ljava/io/File;

    .line 99
    iget-object v15, v7, Lcom/apm/insight/k/b$a;->d:Lcom/apm/insight/CrashType;

    .line 100
    iget-object v11, v1, Lcom/apm/insight/k/b$b;->a:Ljava/lang/String;

    iget-wide v12, v7, Lcom/apm/insight/k/b$a;->b:J

    iget-wide v9, v7, Lcom/apm/insight/k/b$a;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object/from16 v8, p0

    move-wide/from16 v16, v9

    move-object v9, v14

    move-object v10, v15

    move-object/from16 v19, v6

    move-object/from16 v18, v14

    move-object v6, v15

    move-wide/from16 v14, v16

    :try_start_1
    invoke-direct/range {v8 .. v15}, Lcom/apm/insight/k/b;->a(Ljava/io/File;Lcom/apm/insight/CrashType;Ljava/lang/String;JJ)Lcom/apm/insight/f/b;

    move-result-object v8

    if-nez v8, :cond_3

    .line 101
    invoke-static/range {v18 .. v18}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z

    :cond_2
    :goto_1
    move-object/from16 v6, v19

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    move-object/from16 v6, p0

    goto/16 :goto_7

    .line 102
    :cond_3
    invoke-virtual {v8}, Lcom/apm/insight/f/b;->b()Lorg/json/JSONObject;

    move-result-object v9

    if-nez v9, :cond_4

    .line 103
    invoke-static/range {v18 .. v18}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z

    goto :goto_1

    .line 104
    :cond_4
    const-string v0, "header"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_5

    .line 105
    invoke-static/range {v18 .. v18}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z

    goto :goto_1

    :cond_5
    if-nez v6, :cond_7

    .line 106
    new-instance v10, Ljava/io/File;

    .line 107
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, v18

    invoke-direct {v10, v12, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_6

    .line 108
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    const/4 v11, 0x5

    if-ge v10, v11, :cond_8

    .line 109
    :cond_6
    invoke-virtual {v8}, Lcom/apm/insight/f/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 111
    invoke-static {v0, v6}, Lcom/apm/insight/k/e;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/l/f;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/apm/insight/l/f;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-static {v12}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z

    goto :goto_1

    :cond_7
    move-object/from16 v12, v18

    .line 114
    :cond_8
    invoke-static {v12}, Lcom/apm/insight/entity/b;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v10

    .line 115
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_9

    .line 116
    invoke-static {v12}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 117
    :cond_9
    :try_start_2
    new-instance v11, Lorg/json/JSONArray;

    .line 118
    const-string v13, "\n"

    invoke-static {v10, v13}, Lcom/apm/insight/l/f;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 119
    invoke-direct {v11, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 120
    :try_start_3
    sget-object v10, Lcom/apm/insight/CrashType;->LAUNCH:Lcom/apm/insight/CrashType;

    if-ne v6, v10, :cond_a

    .line 121
    const-string v10, "data"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/json/JSONArray;

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_a
    move-object v10, v9

    .line 122
    :goto_3
    const-string v13, "ignore"

    const-string v14, "filters"

    if-nez p2, :cond_b

    :try_start_4
    iget-object v15, v1, Lcom/apm/insight/k/b$b;->e:Lcom/apm/insight/k/b$a;

    if-ne v15, v7, :cond_c

    :cond_b
    iget-object v15, v7, Lcom/apm/insight/k/b$a;->e:Ljava/lang/String;

    .line 123
    invoke-virtual {v15, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v15, :cond_d

    .line 124
    :cond_c
    :try_start_5
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v10, v14, v5, v15}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v15, "has_ignore"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v16, v6

    :try_start_6
    iget-object v6, v7, Lcom/apm/insight/k/b$a;->e:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v14, v15, v6}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x7da

    .line 126
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v16, v6

    .line 127
    :goto_4
    :try_start_7
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 128
    invoke-static {v0, v4}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    move-object/from16 v16, v6

    if-eqz v2, :cond_e

    .line 129
    const-string v0, "crash_md5"

    const-string v6, "default"

    invoke-virtual {v10, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/apm/insight/runtime/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 130
    iget-object v0, v7, Lcom/apm/insight/k/b$a;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z

    goto/16 :goto_1

    .line 131
    :cond_e
    :goto_5
    const-string v0, "start_uuid"

    iget-object v6, v1, Lcom/apm/insight/k/b$b;->a:Ljava/lang/String;

    invoke-static {v10, v14, v0, v6}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "leak_threads_count"

    iget v6, v1, Lcom/apm/insight/k/b$b;->g:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v14, v0, v6}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "unknown"

    invoke-virtual {v10, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v14, v3, v0}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v0, Lcom/apm/insight/k/b$3;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v6, p0

    :try_start_8
    invoke-direct {v0, v6, v8, v12, v1}, Lcom/apm/insight/k/b$3;-><init>(Lcom/apm/insight/k/b;Lcom/apm/insight/f/b;Ljava/io/File;Lcom/apm/insight/k/b$b;)V

    invoke-static {v9, v11, v0}, Lcom/apm/insight/entity/b;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/apm/insight/entity/b$a;)V

    .line 135
    invoke-static {v12}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 136
    invoke-static {}, Lcom/apm/insight/e/a;->a()Lcom/apm/insight/e/a;

    move-result-object v0

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/apm/insight/d/a;->b(Ljava/lang/String;)Lcom/apm/insight/d/a;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/apm/insight/e/a;->a(Lcom/apm/insight/d/a;)V

    :cond_f
    move-object/from16 v8, v16

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_7

    .line 137
    :goto_6
    invoke-static {v8, v9}, Lcom/apm/insight/k/c;->a(Lcom/apm/insight/CrashType;Lorg/json/JSONObject;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto/16 :goto_1

    :catchall_4
    move-object/from16 v6, p0

    goto/16 :goto_1

    :catchall_5
    move-exception v0

    move-object/from16 v19, v6

    goto/16 :goto_2

    .line 138
    :goto_7
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 139
    invoke-static {v0, v4}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 140
    iget-object v0, v7, Lcom/apm/insight/k/b$a;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z

    goto/16 :goto_1

    :cond_10
    move-object/from16 v6, p0

    return-void
.end method

.method static synthetic a(Lcom/apm/insight/k/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apm/insight/k/b;->f()V

    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/apm/insight/k/b$b;",
            ">;)V"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/apm/insight/k/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/apm/insight/l/j;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 25
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 27
    aget-object v2, v0, v1

    .line 28
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 29
    invoke-static {v2}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "G"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 31
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/apm/insight/k/b$b;

    if-nez v4, :cond_2

    .line 33
    new-instance v4, Lcom/apm/insight/k/b$b;

    invoke-direct {v4, v3}, Lcom/apm/insight/k/b$b;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_2
    invoke-static {v2}, Lcom/apm/insight/l/j;->l(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 36
    invoke-static {v2}, Lcom/apm/insight/l/j;->m(Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 37
    invoke-static {v3, v5}, Lcom/apm/insight/nativecrash/b;->a(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONArray;

    move-result-object v3

    .line 38
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    iput v5, v4, Lcom/apm/insight/k/b$b;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v5, :cond_4

    .line 39
    :try_start_1
    invoke-static {v2}, Lcom/apm/insight/l/j;->n(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 40
    invoke-static {v2, v3}, Lcom/apm/insight/l/f;->a(Ljava/io/File;Lorg/json/JSONArray;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 41
    :cond_3
    :try_start_2
    invoke-static {v2}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 42
    :goto_1
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    const-string v4, "NPTH_CATCH"

    .line 43
    invoke-static {v3, v4}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 44
    invoke-static {v2}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z

    :catchall_1
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method private a(Ljava/util/HashMap;Lcom/apm/insight/k/b$b;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/apm/insight/k/b$b;",
            ">;",
            "Lcom/apm/insight/k/b$b;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 45
    const-string v3, "NPTH_CATCH"

    move-object/from16 v4, p0

    iget-object v0, v4, Lcom/apm/insight/k/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/apm/insight/l/j;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v6, 0x0

    move v7, v6

    .line 47
    :goto_0
    array-length v0, v5

    if-ge v7, v0, :cond_11

    .line 48
    aget-object v0, v5, v7

    .line 49
    :try_start_0
    invoke-static {}, Lcom/apm/insight/e/a;->a()Lcom/apm/insight/e/a;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/apm/insight/e/a;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 50
    invoke-static {v0}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 51
    :cond_1
    invoke-static {v0}, Lcom/apm/insight/l/f;->e(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto/16 :goto_5

    .line 52
    :cond_2
    invoke-static {}, Lcom/apm/insight/g/a;->a()Lcom/apm/insight/g/a;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/apm/insight/g/a;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto/16 :goto_5

    .line 53
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 54
    invoke-static {v0}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z

    goto/16 :goto_5

    .line 55
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 56
    const-string v9, "G"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 57
    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 58
    array-length v10, v9

    const/4 v11, 0x5

    const/4 v12, 0x0

    if-ge v10, v11, :cond_5

    .line 59
    iget-object v8, v2, Lcom/apm/insight/k/b$b;->b:Ljava/util/List;

    new-instance v9, Lcom/apm/insight/k/b$a;

    invoke-direct {v9, v0, v12}, Lcom/apm/insight/k/b$a;-><init>(Ljava/io/File;Lcom/apm/insight/CrashType;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    .line 60
    :cond_5
    :try_start_1
    aget-object v10, v9, v6

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const/4 v13, 0x4

    .line 61
    aget-object v13, v9, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v15, 0x2

    .line 62
    :try_start_2
    aget-object v6, v9, v15

    const/4 v12, 0x1

    .line 63
    aget-object v9, v9, v12

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v15

    const v12, -0x4226dc4d

    if-eq v15, v12, :cond_8

    const v12, 0x179e5

    if-eq v15, v12, :cond_7

    const v12, 0x31aa22

    if-eq v15, v12, :cond_6

    goto :goto_1

    :cond_6
    const-string v12, "java"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    goto :goto_2

    :cond_7
    const-string v12, "anr"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x2

    goto :goto_2

    :cond_8
    const-string v12, "launch"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    goto :goto_2

    :cond_9
    :goto_1
    const/4 v9, -0x1

    :goto_2
    if-eqz v9, :cond_c

    const/4 v12, 0x1

    if-eq v9, v12, :cond_b

    const/4 v12, 0x2

    if-eq v9, v12, :cond_a

    const/4 v12, 0x0

    goto :goto_3

    .line 64
    :cond_a
    sget-object v12, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    goto :goto_3

    .line 65
    :cond_b
    sget-object v12, Lcom/apm/insight/CrashType;->JAVA:Lcom/apm/insight/CrashType;

    goto :goto_3

    .line 66
    :cond_c
    sget-object v12, Lcom/apm/insight/CrashType;->LAUNCH:Lcom/apm/insight/CrashType;

    .line 67
    :goto_3
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/apm/insight/k/b$b;

    if-nez v9, :cond_d

    .line 68
    new-instance v9, Lcom/apm/insight/k/b$b;

    invoke-direct {v9, v6}, Lcom/apm/insight/k/b$b;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_d
    new-instance v6, Lcom/apm/insight/k/b$a;

    invoke-direct {v6, v0, v10, v11, v12}, Lcom/apm/insight/k/b$a;-><init>(Ljava/io/File;JLcom/apm/insight/CrashType;)V

    .line 71
    iput-wide v13, v6, Lcom/apm/insight/k/b$a;->c:J

    .line 72
    iget-object v0, v9, Lcom/apm/insight/k/b$b;->d:Lcom/apm/insight/k/b$a;

    if-eqz v0, :cond_e

    iget-wide v10, v0, Lcom/apm/insight/k/b$a;->b:J

    iget-wide v13, v6, Lcom/apm/insight/k/b$a;->b:J

    cmp-long v0, v10, v13

    if-lez v0, :cond_f

    :cond_e
    if-eqz v12, :cond_f

    .line 73
    sget-object v0, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    if-eq v12, v0, :cond_f

    const-string v0, "ignore"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 74
    iput-object v6, v9, Lcom/apm/insight/k/b$b;->d:Lcom/apm/insight/k/b$a;

    .line 75
    :cond_f
    iget-object v0, v9, Lcom/apm/insight/k/b$b;->b:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 76
    :catchall_1
    iget-object v6, v2, Lcom/apm/insight/k/b$b;->b:Ljava/util/List;

    new-instance v9, Lcom/apm/insight/k/b$a;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10}, Lcom/apm/insight/k/b$a;-><init>(Ljava/io/File;Lcom/apm/insight/CrashType;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v6, "err format crashTime:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-static {v0, v3}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_5

    .line 79
    :cond_10
    invoke-static {v0}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 80
    :goto_4
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 81
    invoke-static {v0, v3}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_11
    return-void
.end method

.method private static a(Ljava/io/File;)Z
    .locals 5

    .line 141
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 142
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 143
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private b(Lcom/apm/insight/k/b$b;ZLcom/apm/insight/runtime/f;)V
    .locals 18
    .param p3    # Lcom/apm/insight/runtime/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    .line 20
    const-string v4, "crash_thread_name"

    const-string v5, "header"

    const-string v6, "aid"

    iget-object v0, v2, Lcom/apm/insight/k/b$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v7, 0x1

    if-gt v0, v7, :cond_0

    .line 21
    iget-object v0, v2, Lcom/apm/insight/k/b$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, v2, Lcom/apm/insight/k/b$b;->d:Lcom/apm/insight/k/b$a;

    iput-object v0, v2, Lcom/apm/insight/k/b$b;->e:Lcom/apm/insight/k/b$a;

    return-void

    .line 23
    :cond_0
    iget-object v0, v1, Lcom/apm/insight/k/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/apm/insight/l/k;->b(Landroid/content/Context;)Z

    move-result v8

    .line 24
    iget-object v0, v2, Lcom/apm/insight/k/b$b;->d:Lcom/apm/insight/k/b$a;

    iput-object v0, v2, Lcom/apm/insight/k/b$b;->e:Lcom/apm/insight/k/b$a;

    .line 25
    new-instance v9, Lcom/apm/insight/nativecrash/a;

    iget-object v0, v1, Lcom/apm/insight/k/b;->a:Landroid/content/Context;

    invoke-direct {v9, v0}, Lcom/apm/insight/nativecrash/a;-><init>(Landroid/content/Context;)V

    .line 26
    iget-object v0, v2, Lcom/apm/insight/k/b$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apm/insight/k/b$a;

    .line 27
    iget-object v11, v0, Lcom/apm/insight/k/b$a;->a:Ljava/io/File;

    .line 28
    :try_start_0
    invoke-virtual {v9, v11}, Lcom/apm/insight/nativecrash/a;->a(Ljava/io/File;)V

    .line 29
    invoke-static {v9}, Lcom/apm/insight/k/b;->a(Lcom/apm/insight/nativecrash/a;)Lorg/json/JSONObject;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 30
    invoke-virtual {v12}, Lorg/json/JSONObject;->length()I

    move-result v13

    if-nez v13, :cond_2

    :cond_1
    move-object/from16 v17, v10

    move v10, v8

    goto/16 :goto_9

    .line 31
    :cond_2
    invoke-virtual {v12}, Lorg/json/JSONObject;->length()I

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v13, :cond_c

    .line 32
    const-string v13, "filters"

    const-string v14, "default"

    if-nez p2, :cond_8

    .line 33
    :try_start_1
    const-string v15, "crash_time"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 34
    :try_start_2
    iget-object v7, v2, Lcom/apm/insight/k/b$b;->e:Lcom/apm/insight/k/b$a;

    if-nez v7, :cond_4

    .line 35
    iput-object v0, v2, Lcom/apm/insight/k/b$b;->e:Lcom/apm/insight/k/b$a;

    const/4 v7, 0x1

    .line 36
    iput-boolean v7, v2, Lcom/apm/insight/k/b$b;->f:Z

    if-eqz v3, :cond_3

    .line 37
    invoke-virtual {v3, v14}, Lcom/apm/insight/runtime/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 38
    invoke-virtual {v9}, Lcom/apm/insight/nativecrash/a;->i()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    const/4 v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v17, v10

    const/4 v7, 0x1

    :goto_2
    move v10, v8

    goto/16 :goto_a

    :cond_3
    move-object/from16 v17, v10

    const/4 v7, 0x1

    move v10, v8

    goto/16 :goto_7

    :cond_4
    move-object/from16 v17, v10

    .line 39
    :try_start_3
    iget-boolean v10, v2, Lcom/apm/insight/k/b$b;->f:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-nez v10, :cond_7

    move v10, v8

    :try_start_4
    iget-wide v7, v7, Lcom/apm/insight/k/b$a;->b:J

    cmp-long v7, v15, v7

    if-gez v7, :cond_6

    .line 40
    iput-object v0, v2, Lcom/apm/insight/k/b$b;->e:Lcom/apm/insight/k/b$a;

    if-eqz v3, :cond_5

    .line 41
    invoke-virtual {v3, v14}, Lcom/apm/insight/runtime/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 42
    invoke-virtual {v9}, Lcom/apm/insight/nativecrash/a;->i()Z

    move v8, v10

    move-object/from16 v10, v17

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_3
    const/4 v7, 0x1

    goto/16 :goto_a

    .line 43
    :cond_5
    invoke-static {v11}, Lcom/apm/insight/k/b;->a(Ljava/io/File;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v7, 0x1

    .line 44
    :try_start_5
    iput-boolean v7, v2, Lcom/apm/insight/k/b$b;->f:Z

    goto :goto_7

    :catchall_2
    move-exception v0

    goto/16 :goto_a

    :cond_6
    :goto_4
    const/4 v7, 0x1

    goto :goto_5

    :cond_7
    move v10, v8

    goto :goto_4

    .line 45
    :goto_5
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v12, v13, v6, v0}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/16 v8, 0x7da

    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_7

    :catchall_3
    move-exception v0

    move v10, v8

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object/from16 v17, v10

    goto :goto_2

    :cond_8
    move-object/from16 v17, v10

    move v10, v8

    if-eqz v3, :cond_9

    .line 48
    invoke-virtual {v3, v14}, Lcom/apm/insight/runtime/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 49
    invoke-virtual {v9}, Lcom/apm/insight/nativecrash/a;->i()Z

    :goto_6
    move v8, v10

    move-object/from16 v10, v17

    goto/16 :goto_0

    .line 50
    :cond_9
    :goto_7
    const-string v0, "start_uuid"

    iget-object v8, v2, Lcom/apm/insight/k/b$b;->a:Ljava/lang/String;

    invoke-static {v12, v13, v0, v8}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "unknown"

    invoke-virtual {v12, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v13, v4, v0}, Lcom/apm/insight/entity/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_b

    .line 52
    new-instance v0, Lcom/apm/insight/k/c$a;

    sget-object v8, Lcom/apm/insight/CrashType;->NATIVE:Lcom/apm/insight/CrashType;

    invoke-direct {v0, v12, v8}, Lcom/apm/insight/k/c$a;-><init>(Lorg/json/JSONObject;Lcom/apm/insight/CrashType;)V

    .line 53
    invoke-static {}, Lcom/apm/insight/runtime/o;->a()Lcom/apm/insight/runtime/o;

    move-result-object v8

    invoke-virtual {v0}, Lcom/apm/insight/k/c$a;->b()J

    move-result-wide v13

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-nez v13, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    goto :goto_8

    :cond_a
    invoke-virtual {v0}, Lcom/apm/insight/k/c$a;->b()J

    move-result-wide v13

    :goto_8
    invoke-virtual {v8, v13, v14}, Lcom/apm/insight/runtime/o;->b(J)Lorg/json/JSONArray;

    move-result-object v8

    .line 54
    invoke-virtual {v0}, Lcom/apm/insight/k/c$a;->c()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lcom/apm/insight/k/c$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0, v8}, Lcom/apm/insight/entity/b;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v8, Lcom/apm/insight/k/b$4;

    invoke-direct {v8, v1, v11, v2}, Lcom/apm/insight/k/b$4;-><init>(Lcom/apm/insight/k/b;Ljava/io/File;Lcom/apm/insight/k/b$b;)V

    invoke-static {v12, v0, v8}, Lcom/apm/insight/entity/b;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/apm/insight/entity/b$a;)V

    .line 55
    invoke-virtual {v9}, Lcom/apm/insight/nativecrash/a;->i()Z

    move-result v0

    if-nez v0, :cond_b

    .line 56
    invoke-virtual {v9}, Lcom/apm/insight/nativecrash/a;->f()V

    .line 57
    :cond_b
    sget-object v0, Lcom/apm/insight/CrashType;->NATIVE:Lcom/apm/insight/CrashType;

    invoke-static {v0, v12}, Lcom/apm/insight/k/c;->a(Lcom/apm/insight/CrashType;Lorg/json/JSONObject;)V

    goto :goto_6

    :cond_c
    move-object/from16 v17, v10

    move v10, v8

    goto :goto_6

    .line 58
    :goto_9
    invoke-virtual {v9}, Lcom/apm/insight/nativecrash/a;->i()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    .line 59
    :goto_a
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    const-string v8, "NPTH_CATCH"

    .line 60
    invoke-static {v0, v8}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 61
    invoke-static {v11}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z

    goto :goto_6

    :cond_d
    return-void
.end method

.method static synthetic b(Lcom/apm/insight/k/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apm/insight/k/b;->d()V

    return-void
.end method

.method private b(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/apm/insight/k/b$b;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/apm/insight/k/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/apm/insight/l/j;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_4

    const/4 v2, 0x5

    if-ge v1, v2, :cond_4

    .line 7
    aget-object v2, v0, v1

    .line 8
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 9
    invoke-static {v2}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "G"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/apm/insight/k/b$b;

    if-nez v4, :cond_2

    .line 13
    new-instance v4, Lcom/apm/insight/k/b$b;

    invoke-direct {v4, v3}, Lcom/apm/insight/k/b$b;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_2
    iget-object v3, v4, Lcom/apm/insight/k/b$b;->c:Ljava/util/List;

    new-instance v4, Lcom/apm/insight/k/b$a;

    sget-object v5, Lcom/apm/insight/CrashType;->NATIVE:Lcom/apm/insight/CrashType;

    invoke-direct {v4, v2, v5}, Lcom/apm/insight/k/b$a;-><init>(Ljava/io/File;Lcom/apm/insight/CrashType;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_3
    invoke-static {v2}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 17
    :goto_1
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    const-string v4, "NPTH_CATCH"

    .line 18
    invoke-static {v3, v4}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 19
    invoke-static {v2}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method static synthetic c(Lcom/apm/insight/k/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/apm/insight/k/b;->a:Landroid/content/Context;

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/apm/insight/k/b;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_8

    .line 4
    .line 5
    iget-object v0, p0, Lcom/apm/insight/k/b;->g:Ljava/util/HashMap;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/apm/insight/k/b;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/apm/insight/l/k;->b(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/apm/insight/k/b;->e()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget v0, p0, Lcom/apm/insight/k/b;->e:I

    .line 23
    .line 24
    const/4 v1, -0x1

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x1

    .line 27
    if-ne v0, v1, :cond_3

    .line 28
    .line 29
    invoke-static {}, Lcom/apm/insight/runtime/a;->a()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-static {}, Lcom/apm/insight/runtime/a;->f()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iput v3, p0, Lcom/apm/insight/k/b;->e:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iput v2, p0, Lcom/apm/insight/k/b;->e:I

    .line 45
    .line 46
    :cond_3
    :goto_0
    iget v0, p0, Lcom/apm/insight/k/b;->e:I

    .line 47
    .line 48
    if-ne v0, v3, :cond_4

    .line 49
    .line 50
    move v2, v3

    .line 51
    :cond_4
    new-instance v0, Lcom/apm/insight/runtime/f;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/apm/insight/k/b;->a:Landroid/content/Context;

    .line 54
    .line 55
    invoke-direct {v0, v1}, Lcom/apm/insight/runtime/f;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/apm/insight/k/b;->g:Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_5

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Lcom/apm/insight/k/b$b;

    .line 79
    .line 80
    invoke-direct {p0, v3, v2, v0}, Lcom/apm/insight/k/b;->b(Lcom/apm/insight/k/b$b;ZLcom/apm/insight/runtime/f;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_5
    iget-object v1, p0, Lcom/apm/insight/k/b;->g:Ljava/util/HashMap;

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_6

    .line 99
    .line 100
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Lcom/apm/insight/k/b$b;

    .line 105
    .line 106
    invoke-direct {p0, v3, v2, v0}, Lcom/apm/insight/k/b;->a(Lcom/apm/insight/k/b$b;ZLcom/apm/insight/runtime/f;)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_6
    iget-object v1, p0, Lcom/apm/insight/k/b;->g:Ljava/util/HashMap;

    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_7

    .line 125
    .line 126
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    check-cast v2, Lcom/apm/insight/k/b$b;

    .line 131
    .line 132
    iget-object v3, p0, Lcom/apm/insight/k/b;->a:Landroid/content/Context;

    .line 133
    .line 134
    iget-object v2, v2, Lcom/apm/insight/k/b$b;->a:Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {v3, v2}, Lcom/apm/insight/l/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-static {v2}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_7
    invoke-virtual {v0}, Lcom/apm/insight/runtime/f;->a()V

    .line 145
    .line 146
    .line 147
    invoke-static {}, Lcom/apm/insight/runtime/b;->a()V

    .line 148
    .line 149
    .line 150
    invoke-direct {p0}, Lcom/apm/insight/k/b;->e()V

    .line 151
    .line 152
    .line 153
    :cond_8
    :goto_4
    return-void
.end method

.method private e()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/apm/insight/k/b;->h:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/apm/insight/k/b;->g:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-static {}, Lcom/apm/insight/nativecrash/NativeImpl;->j()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private f()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/apm/insight/k/b;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/apm/insight/k/b;->a:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/apm/insight/l/k;->b(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-wide/16 v1, 0x1388

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    invoke-static {}, Lcom/apm/insight/e;->j()J

    .line 21
    .line 22
    .line 23
    move-result-wide v5

    .line 24
    sub-long/2addr v3, v5

    .line 25
    cmp-long v0, v3, v1

    .line 26
    .line 27
    if-gtz v0, :cond_1

    .line 28
    .line 29
    invoke-static {}, Lcom/apm/insight/e;->i()Lcom/apm/insight/runtime/ConfigManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isApmExists()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-static {}, Lcom/apm/insight/Npth;->hasCrash()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    :cond_1
    invoke-direct {p0}, Lcom/apm/insight/k/b;->d()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    invoke-static {}, Lcom/apm/insight/runtime/m;->a()Lcom/apm/insight/runtime/p;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v3, p0, Lcom/apm/insight/k/b;->i:Ljava/lang/Runnable;

    .line 54
    .line 55
    invoke-virtual {v0, v3, v1, v2}, Lcom/apm/insight/runtime/p;->a(Ljava/lang/Runnable;J)Z

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private g()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/apm/insight/k/b;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/apm/insight/l/j;->i(Landroid/content/Context;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    array-length v2, v0

    .line 16
    if-ge v1, v2, :cond_5

    .line 17
    .line 18
    const/4 v2, 0x5

    .line 19
    if-ge v1, v2, :cond_5

    .line 20
    .line 21
    aget-object v2, v0, v1

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v4, ".atmp"

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-static {}, Lcom/apm/insight/a/a;->a()Lcom/apm/insight/a/a;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {v3}, Lcom/apm/insight/l/f;->c(Ljava/lang/String;)Lcom/apm/insight/f/b;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/apm/insight/f/b;->b()Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/apm/insight/f/b;->b()Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const-string v5, "upload_scene"

    .line 63
    .line 64
    const-string v6, "launch_scan"

    .line 65
    .line 66
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception v2

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    :goto_1
    invoke-static {}, Lcom/apm/insight/k/e;->d()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v3}, Lcom/apm/insight/f/b;->e()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v3}, Lcom/apm/insight/f/b;->d()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v3}, Lcom/apm/insight/f/b;->f()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-virtual {v3}, Lcom/apm/insight/f/b;->g()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    invoke-static {v4, v5, v6, v7, v8}, Lcom/apm/insight/k/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_4

    .line 97
    .line 98
    invoke-static {v2}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Lcom/apm/insight/f/b;->c()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-nez v3, :cond_4

    .line 110
    .line 111
    new-instance v3, Ljava/io/File;

    .line 112
    .line 113
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v3}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_3
    invoke-static {v2}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :goto_2
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 125
    .line 126
    .line 127
    const-string v3, "NPTH_CATCH"

    .line 128
    .line 129
    invoke-static {v2, v3}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_5
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 8
    invoke-static {}, Lcom/apm/insight/Npth;->isStopUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/apm/insight/k/b;->f:Lcom/apm/insight/k/b$b;

    if-nez p1, :cond_2

    .line 10
    new-instance p1, Lcom/apm/insight/k/b$b;

    const-string v0, "old_uuid"

    invoke-direct {p1, v0}, Lcom/apm/insight/k/b$b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/apm/insight/k/b;->f:Lcom/apm/insight/k/b$b;

    .line 11
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/apm/insight/k/b;->g:Ljava/util/HashMap;

    .line 12
    invoke-direct {p0, p1}, Lcom/apm/insight/k/b;->a(Ljava/util/HashMap;)V

    .line 13
    iget-object p1, p0, Lcom/apm/insight/k/b;->g:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/apm/insight/k/b;->f:Lcom/apm/insight/k/b$b;

    invoke-direct {p0, p1, v0}, Lcom/apm/insight/k/b;->a(Ljava/util/HashMap;Lcom/apm/insight/k/b$b;)V

    .line 14
    iget-object p1, p0, Lcom/apm/insight/k/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/apm/insight/l/j;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/apm/insight/l/f;->a(Ljava/io/File;)Z

    .line 15
    iget-object p1, p0, Lcom/apm/insight/k/b;->g:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/apm/insight/k/b;->b(Ljava/util/HashMap;)V

    .line 16
    iget-object p1, p0, Lcom/apm/insight/k/b;->f:Lcom/apm/insight/k/b$b;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/apm/insight/k/b;->b(Lcom/apm/insight/k/b$b;ZLcom/apm/insight/runtime/f;)V

    .line 17
    iget-object p1, p0, Lcom/apm/insight/k/b;->f:Lcom/apm/insight/k/b$b;

    invoke-direct {p0, p1, v0, v1}, Lcom/apm/insight/k/b;->a(Lcom/apm/insight/k/b$b;ZLcom/apm/insight/runtime/f;)V

    .line 18
    iput-object v1, p0, Lcom/apm/insight/k/b;->f:Lcom/apm/insight/k/b$b;

    .line 19
    iget-object p1, p0, Lcom/apm/insight/k/b;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 20
    invoke-direct {p0}, Lcom/apm/insight/k/b;->e()V

    goto :goto_0

    .line 21
    :cond_1
    invoke-direct {p0}, Lcom/apm/insight/k/b;->f()V

    .line 22
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/apm/insight/k/b;->g()V

    .line 23
    invoke-static {}, Lcom/apm/insight/a;->c()V

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 2

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/apm/insight/k/b;->h:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apm/insight/l/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/apm/insight/runtime/m;->a()Lcom/apm/insight/runtime/p;

    move-result-object v0

    iget-object v1, p0, Lcom/apm/insight/k/b;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/p;->a(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/apm/insight/k/b;->h:Z

    return v0
.end method
