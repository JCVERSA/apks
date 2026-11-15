.class public final Lcom/avery/subtitle/DefaultSubtitleEngine;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/avery/subtitle/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avery/subtitle/DefaultSubtitleEngine$a;
    }
.end annotation


# static fields
.field public static final o:Lcom/avery/subtitle/DefaultSubtitleEngine$a;

.field private static final p:Ljava/lang/String;

.field private static final q:J


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Handler;

.field private c:Z

.field private final d:Ljava/util/Map;

.field private e:Lk5/a;

.field private f:Lcom/avery/subtitle/b$b;

.field private g:Lcom/avery/subtitle/b$a;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Z

.field private k:Lkotlinx/coroutines/n0;

.field private l:Lkotlinx/coroutines/n0;

.field private final m:Lkotlin/Lazy;

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/avery/subtitle/DefaultSubtitleEngine$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/avery/subtitle/DefaultSubtitleEngine$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/avery/subtitle/DefaultSubtitleEngine;->o:Lcom/avery/subtitle/DefaultSubtitleEngine$a;

    .line 8
    .line 9
    const-class v0, Lcom/avery/subtitle/DefaultSubtitleEngine;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/avery/subtitle/DefaultSubtitleEngine;->p:Ljava/lang/String;

    .line 16
    .line 17
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 18
    .line 19
    const-wide/16 v1, 0x2

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    sput-wide v0, Lcom/avery/subtitle/DefaultSubtitleEngine;->q:J

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->d:Ljava/util/Map;

    .line 10
    .line 11
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->k:Lkotlinx/coroutines/n0;

    .line 20
    .line 21
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->l:Lkotlinx/coroutines/n0;

    .line 30
    .line 31
    sget-object v0, Lcom/avery/subtitle/DefaultSubtitleEngine$subtitleCacheManager$2;->INSTANCE:Lcom/avery/subtitle/DefaultSubtitleEngine$subtitleCacheManager$2;

    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->m:Lkotlin/Lazy;

    .line 38
    .line 39
    return-void
.end method

.method public static synthetic a(Lcom/avery/subtitle/DefaultSubtitleEngine;Landroid/os/Message;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/avery/subtitle/DefaultSubtitleEngine;->g(Lcom/avery/subtitle/DefaultSubtitleEngine;Landroid/os/Message;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic b(Lcom/avery/subtitle/DefaultSubtitleEngine;)Ln5/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/avery/subtitle/DefaultSubtitleEngine;->i()Ln5/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/avery/subtitle/DefaultSubtitleEngine;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d(Lcom/avery/subtitle/DefaultSubtitleEngine;Ljava/lang/String;Ljava/lang/String;ZLk5/b;Lm5/d;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/avery/subtitle/DefaultSubtitleEngine;->j(Ljava/lang/String;Ljava/lang/String;ZLk5/b;Lm5/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final e()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->d:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-wide v2, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->n:J

    .line 15
    .line 16
    sub-long v2, v0, v2

    .line 17
    .line 18
    const-wide/16 v4, 0x7d0

    .line 19
    .line 20
    cmp-long v2, v2, v4

    .line 21
    .line 22
    if-gez v2, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iput-wide v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->n:J

    .line 26
    .line 27
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->d:Ljava/util/Map;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->h:Ljava/lang/String;

    .line 34
    .line 35
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->d:Ljava/util/Map;

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_4

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Ljava/util/Map$Entry;

    .line 59
    .line 60
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Ljava/lang/String;

    .line 65
    .line 66
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Ljava/lang/Number;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 73
    .line 74
    .line 75
    move-result-wide v5

    .line 76
    iget-object v3, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->h:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_3

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    sub-long v7, v0, v5

    .line 86
    .line 87
    sget-wide v9, Lcom/avery/subtitle/DefaultSubtitleEngine;->q:J

    .line 88
    .line 89
    cmp-long v3, v7, v9

    .line 90
    .line 91
    if-lez v3, :cond_2

    .line 92
    .line 93
    sget-object v3, Lcom/avery/subtitle/DefaultSubtitleEngine;->p:Ljava/lang/String;

    .line 94
    .line 95
    new-instance v7, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v8, "-----------------------timeout remove~ md5 = "

    .line 101
    .line 102
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v8, ", setTime = "

    .line 109
    .line 110
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v5, ", cur = "

    .line 117
    .line 118
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 132
    .line 133
    .line 134
    invoke-direct {p0}, Lcom/avery/subtitle/DefaultSubtitleEngine;->i()Ln5/a;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v4}, Ln5/a;->j(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_4
    return-void
.end method

.method private final f()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    .line 3
    const-string v1, "SubtitleFindThread"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->a:Landroid/os/HandlerThread;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/os/Handler;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->a:Landroid/os/HandlerThread;

    .line 19
    .line 20
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Lcom/avery/subtitle/a;

    .line 28
    .line 29
    invoke-direct {v2, p0}, Lcom/avery/subtitle/a;-><init>(Lcom/avery/subtitle/DefaultSubtitleEngine;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->b:Landroid/os/Handler;

    .line 36
    .line 37
    return-void
.end method

.method private static final g(Lcom/avery/subtitle/DefaultSubtitleEngine;Landroid/os/Message;)Z
    .locals 6

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "msg"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->j:Z

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->e:Lk5/a;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Lk5/a;->getSpeed()Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_5

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-nez v0, :cond_2

    .line 30
    .line 31
    const/high16 v0, 0x3f800000    # 1.0f

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    :goto_1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 39
    .line 40
    const/16 v2, 0x889

    .line 41
    .line 42
    if-ne p1, v2, :cond_3

    .line 43
    .line 44
    move p1, v1

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    const/4 p1, 0x0

    .line 47
    :goto_2
    iget-object v2, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->e:Lk5/a;

    .line 48
    .line 49
    if-eqz v2, :cond_4

    .line 50
    .line 51
    invoke-interface {v2}, Lk5/a;->getCurrentPosition()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    goto :goto_3

    .line 56
    :cond_4
    const-wide/16 v2, 0x0

    .line 57
    .line 58
    :goto_3
    iget-wide v4, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->i:J

    .line 59
    .line 60
    add-long/2addr v2, v4

    .line 61
    if-nez p1, :cond_5

    .line 62
    .line 63
    iget-object p1, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->e:Lk5/a;

    .line 64
    .line 65
    if-eqz p1, :cond_6

    .line 66
    .line 67
    invoke-interface {p1}, Lk5/a;->isPlaying()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-ne p1, v1, :cond_6

    .line 72
    .line 73
    :cond_5
    invoke-direct {p0}, Lcom/avery/subtitle/DefaultSubtitleEngine;->i()Ln5/a;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object v4, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->h:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v4}, Ln5/a;->d(Ljava/lang/String;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {v2, v3, p1}, Lcom/avery/subtitle/c;->a(JLjava/util/List;)Lm5/b;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {p0, p1}, Lcom/avery/subtitle/DefaultSubtitleEngine;->m(Lm5/b;)V

    .line 91
    .line 92
    .line 93
    if-eqz p1, :cond_6

    .line 94
    .line 95
    iget-object p1, p1, Lm5/b;->c:Lm5/c;

    .line 96
    .line 97
    iget p1, p1, Lm5/c;->a:I

    .line 98
    .line 99
    int-to-long v4, p1

    .line 100
    sub-long/2addr v4, v2

    .line 101
    goto :goto_4

    .line 102
    :cond_6
    const-wide/16 v4, 0x3e8

    .line 103
    .line 104
    :goto_4
    invoke-direct {p0}, Lcom/avery/subtitle/DefaultSubtitleEngine;->e()V

    .line 105
    .line 106
    .line 107
    long-to-float p1, v4

    .line 108
    div-float/2addr p1, v0

    .line 109
    float-to-long v2, p1

    .line 110
    iget-object p1, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->b:Landroid/os/Handler;

    .line 111
    .line 112
    if-eqz p1, :cond_7

    .line 113
    .line 114
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    const/16 v0, 0x888

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 120
    .line 121
    .line 122
    iget-object p0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->b:Landroid/os/Handler;

    .line 123
    .line 124
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .line 129
    .line 130
    goto :goto_6

    .line 131
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    .line 133
    .line 134
    :cond_7
    :goto_6
    return v1
.end method

.method private final h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->a:Landroid/os/HandlerThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/avery/subtitle/DefaultSubtitleEngine;->f()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final i()Ln5/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->m:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ln5/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final j(Ljava/lang/String;Ljava/lang/String;ZLk5/b;Lm5/d;)V
    .locals 3

    .line 1
    const/4 p2, 0x0

    .line 2
    if-nez p5, :cond_1

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    invoke-interface {p4, p2}, Lk5/b;->a(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    sget-object p1, Lcom/avery/subtitle/DefaultSubtitleEngine;->p:Ljava/lang/String;

    .line 10
    .line 11
    const-string p2, "onSuccess: timedTextObject is null."

    .line 12
    .line 13
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v0, p5, Lm5/d;->i:Ljava/util/TreeMap;

    .line 18
    .line 19
    if-nez v0, :cond_3

    .line 20
    .line 21
    if-eqz p4, :cond_2

    .line 22
    .line 23
    invoke-interface {p4, p2}, Lk5/b;->a(Z)V

    .line 24
    .line 25
    .line 26
    :cond_2
    sget-object p1, Lcom/avery/subtitle/DefaultSubtitleEngine;->p:Ljava/lang/String;

    .line 27
    .line 28
    const-string p2, "onSuccess: captions is null."

    .line 29
    .line 30
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    invoke-static {p1}, Ln5/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    iget-object p5, p5, Lm5/d;->j:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "onSuccess: md5 = "

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, ".,path = "

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v2, " warnings = "

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    new-instance p5, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0}, Lcom/avery/subtitle/DefaultSubtitleEngine;->i()Ln5/a;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v1, "md5"

    .line 83
    .line 84
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p2, p5}, Ln5/a;->f(Ljava/lang/String;Ljava/util/List;)V

    .line 88
    .line 89
    .line 90
    iget-boolean p5, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->c:Z

    .line 91
    .line 92
    if-nez p5, :cond_4

    .line 93
    .line 94
    new-instance p5, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v0, "add timeout map : md5 = "

    .line 100
    .line 101
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v0, "\uff0c path = "

    .line 108
    .line 109
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->d:Ljava/util/Map;

    .line 116
    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 118
    .line 119
    .line 120
    move-result-wide v0

    .line 121
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 122
    .line 123
    .line 124
    move-result-object p5

    .line 125
    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    :cond_4
    iget-boolean p1, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->c:Z

    .line 129
    .line 130
    if-eqz p1, :cond_5

    .line 131
    .line 132
    iget-object p1, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->h:Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_6

    .line 139
    .line 140
    :cond_5
    invoke-direct {p0, p3}, Lcom/avery/subtitle/DefaultSubtitleEngine;->l(Z)V

    .line 141
    .line 142
    .line 143
    :cond_6
    if-eqz p4, :cond_7

    .line 144
    .line 145
    const/4 p1, 0x1

    .line 146
    invoke-interface {p4, p1}, Lk5/b;->a(Z)V

    .line 147
    .line 148
    .line 149
    :cond_7
    return-void
.end method

.method private final k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLk5/b;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "loadSubtitle: path = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/avery/subtitle/DefaultSubtitleEngine;->i()Ln5/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Ln5/a;->h(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v0, "loadSubtitle, \u5f53\u524d\u6709\u52a0\u8f7d\uff0c\u65e0\u9700\u5904\u7406: path = "

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/avery/subtitle/DefaultSubtitleEngine;->i()Ln5/a;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v6, Lcom/avery/subtitle/DefaultSubtitleEngine$loadSubtitle$1;

    .line 42
    .line 43
    move-object v0, v6

    .line 44
    move-object v1, p2

    .line 45
    move-object v2, p0

    .line 46
    move-object v3, p3

    .line 47
    move v4, p4

    .line 48
    move-object v5, p5

    .line 49
    invoke-direct/range {v0 .. v5}, Lcom/avery/subtitle/DefaultSubtitleEngine$loadSubtitle$1;-><init>(Ljava/lang/String;Lcom/avery/subtitle/DefaultSubtitleEngine;Ljava/lang/String;ZLk5/b;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v6}, Ln5/a;->b(Lkotlin/jvm/functions/Function2;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/avery/subtitle/DefaultSubtitleEngine;->i()Ln5/a;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0, p1}, Ln5/a;->a(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object v0, Lcom/avery/subtitle/SubtitleLoader;->a:Lcom/avery/subtitle/SubtitleLoader;

    .line 64
    .line 65
    new-instance v8, Lcom/avery/subtitle/DefaultSubtitleEngine$b;

    .line 66
    .line 67
    move-object v1, v8

    .line 68
    move-object v2, p0

    .line 69
    move-object v3, p1

    .line 70
    move-object v4, p2

    .line 71
    move-object v5, p3

    .line 72
    move v6, p4

    .line 73
    move-object v7, p5

    .line 74
    invoke-direct/range {v1 .. v7}, Lcom/avery/subtitle/DefaultSubtitleEngine$b;-><init>(Lcom/avery/subtitle/DefaultSubtitleEngine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLk5/b;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p2, p3, v8}, Lcom/avery/subtitle/SubtitleLoader;->h(Ljava/lang/String;Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method private final l(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/avery/subtitle/DefaultSubtitleEngine;->i()Ln5/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ln5/a;->g()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->j:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->f:Lcom/avery/subtitle/b$b;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Lcom/avery/subtitle/b$b;->onRefreshSubtitle()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Lcom/avery/subtitle/b$b;->onSubtitlePrepared()V

    .line 34
    .line 35
    .line 36
    :cond_3
    :goto_0
    return-void
.end method

.method private final m(Lm5/b;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->g:Lcom/avery/subtitle/b$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->k:Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    new-instance v4, Lcom/avery/subtitle/DefaultSubtitleEngine$notifyRefreshUI$1$1;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v4, v0, p1, v2}, Lcom/avery/subtitle/DefaultSubtitleEngine$notifyRefreshUI$1$1;-><init>(Lcom/avery/subtitle/b$a;Lm5/b;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    const/4 v5, 0x3

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->a:Landroid/os/HandlerThread;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->a:Landroid/os/HandlerThread;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->b:Landroid/os/Handler;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->b:Landroid/os/Handler;

    .line 25
    .line 26
    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/avery/subtitle/DefaultSubtitleEngine;->reset()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/avery/subtitle/DefaultSubtitleEngine;->n()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->j:Z

    .line 9
    .line 10
    return-void
.end method

.method public initSubtitle(Lk5/a;Z)V
    .locals 1

    .line 1
    const-string v0, "playerControl"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->e:Lk5/a;

    .line 7
    .line 8
    iput-boolean p2, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->c:Z

    .line 9
    .line 10
    return-void
.end method

.method public pause()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->j:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->b:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x888

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public refreshImmediately()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/avery/subtitle/DefaultSubtitleEngine;->i()Ln5/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ln5/a;->g()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->j:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->b:Landroid/os/Handler;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/16 v1, 0x888

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->b:Landroid/os/Handler;

    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const/16 v1, 0x889

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->j:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/avery/subtitle/DefaultSubtitleEngine;->n()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/avery/subtitle/DefaultSubtitleEngine;->i()Ln5/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ln5/a;->c()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public resume()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/avery/subtitle/DefaultSubtitleEngine;->start()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public selectSubtitle(Ljava/lang/String;Ljava/lang/String;Lk5/b;)V
    .locals 6

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "unicode"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-interface {p3, p1}, Lk5/b;->a(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void

    .line 24
    :cond_1
    invoke-static {p1}, Ln5/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->h:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v2, 0x1

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    if-eqz p3, :cond_2

    .line 38
    .line 39
    invoke-interface {p3, v2}, Lk5/b;->a(Z)V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void

    .line 43
    :cond_3
    iput-object v1, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->h:Ljava/lang/String;

    .line 44
    .line 45
    invoke-direct {p0}, Lcom/avery/subtitle/DefaultSubtitleEngine;->i()Ln5/a;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v3, "md5"

    .line 50
    .line 51
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ln5/a;->e(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const-string v3, ", path = "

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    iget-object p2, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->d:Ljava/util/Map;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->h:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide v4

    .line 70
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-interface {p2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v0, "selectSubtitle: immediately, md5 = "

    .line 83
    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, v2}, Lcom/avery/subtitle/DefaultSubtitleEngine;->l(Z)V

    .line 97
    .line 98
    .line 99
    if-eqz p3, :cond_5

    .line 100
    .line 101
    invoke-interface {p3, v2}, Lk5/b;->a(Z)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v2, "selectSubtitle: load md5 = "

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const/4 v4, 0x1

    .line 125
    move-object v0, p0

    .line 126
    move-object v2, p1

    .line 127
    move-object v3, p2

    .line 128
    move-object v5, p3

    .line 129
    invoke-direct/range {v0 .. v5}, Lcom/avery/subtitle/DefaultSubtitleEngine;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLk5/b;)V

    .line 130
    .line 131
    .line 132
    :cond_5
    :goto_0
    return-void
.end method

.method public setDefaultSubtitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ln5/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->h:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->h:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public setOnSubtitleChangeListener(Lcom/avery/subtitle/b$a;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->g:Lcom/avery/subtitle/b$a;

    .line 7
    .line 8
    return-void
.end method

.method public setOnSubtitlePreparedListener(Lcom/avery/subtitle/b$b;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->f:Lcom/avery/subtitle/b$b;

    .line 7
    .line 8
    return-void
.end method

.method public setSubtitlePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "unicode"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/avery/subtitle/DefaultSubtitleEngine;->h()V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    sget-object p1, Lcom/avery/subtitle/DefaultSubtitleEngine;->p:Ljava/lang/String;

    .line 21
    .line 22
    const-string p2, "loadSubtitleFromRemote: path is null."

    .line 23
    .line 24
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-static {p1}, Ln5/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const-string v2, "md5"

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/avery/subtitle/DefaultSubtitleEngine;->i()Ln5/a;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ln5/a;->e(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    iget-boolean v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->c:Z

    .line 55
    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->h:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->h:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v0, "setSubtitlePath: skip~ md5 = "

    .line 80
    .line 81
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v0, ", path = "

    .line 88
    .line 89
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_2
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const/4 v4, 0x0

    .line 100
    const/4 v5, 0x0

    .line 101
    move-object v0, p0

    .line 102
    move-object v2, p1

    .line 103
    move-object v3, p2

    .line 104
    invoke-direct/range {v0 .. v5}, Lcom/avery/subtitle/DefaultSubtitleEngine;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLk5/b;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/avery/subtitle/DefaultSubtitleEngine;->i()Ln5/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ln5/a;->g()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->e:Lk5/a;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lcom/avery/subtitle/DefaultSubtitleEngine;->p:Ljava/lang/String;

    .line 17
    .line 18
    const-class v1, Lcom/avery/subtitle/b;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "PlayerControl is not bind, You must bind PlayerControl to "

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, " before start() method be called, you can do this by call bindPlayerControl(PlayerControl playerControl) method."

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->j:Z

    .line 52
    .line 53
    iget-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->b:Landroid/os/Handler;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    const/16 v1, 0x888

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->b:Landroid/os/Handler;

    .line 66
    .line 67
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    const-wide/16 v2, 0x3e8

    .line 71
    .line 72
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 73
    .line 74
    .line 75
    :cond_2
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->j:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->b:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x888

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public subtitleDelay(J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "subtitleDelay = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iput-wide p1, p0, Lcom/avery/subtitle/DefaultSubtitleEngine;->i:J

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-direct {p0, p1}, Lcom/avery/subtitle/DefaultSubtitleEngine;->l(Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
