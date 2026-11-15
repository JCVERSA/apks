.class public final Lcom/transsion/push/helper/PushPermanentManager;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/push/helper/PushPermanentManager;

.field private static final b:Lkotlin/Lazy;

.field private static c:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private static d:Lcom/transsion/push/bean/PermanentConfig;

.field private static e:Ljava/lang/String;

.field private static f:Z

.field private static g:Lkotlinx/coroutines/t1;

.field private static h:Ljava/lang/String;

.field private static i:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/push/helper/PushPermanentManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/push/helper/PushPermanentManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/push/helper/PushPermanentManager;->a:Lcom/transsion/push/helper/PushPermanentManager;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/push/helper/f;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/push/helper/f;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/transsion/push/helper/PushPermanentManager;->b:Lkotlin/Lazy;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/transsion/push/helper/PushPermanentManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    sput-boolean v0, Lcom/transsion/push/helper/PushPermanentManager;->f:Z

    .line 28
    .line 29
    const-string v0, ""

    .line 30
    .line 31
    sput-object v0, Lcom/transsion/push/helper/PushPermanentManager;->h:Ljava/lang/String;

    .line 32
    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Lto/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/push/helper/PushPermanentManager;->u()Lto/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic b()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/transsion/push/helper/PushPermanentManager;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic c(Lcom/transsion/push/helper/PushPermanentManager;)Lto/b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/helper/PushPermanentManager;->r()Lto/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/helper/PushPermanentManager;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/helper/PushPermanentManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic f(Lcom/transsion/push/helper/PushPermanentManager;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/helper/PushPermanentManager;->t()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic g(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/transsion/push/helper/PushPermanentManager;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic h(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/transsion/push/helper/PushPermanentManager;->i:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic i(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/transsion/push/helper/PushPermanentManager;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic j(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/transsion/push/helper/PushPermanentManager;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic k(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/transsion/push/helper/PushPermanentManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic l(Lcom/transsion/push/bean/PermanentConfig;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/transsion/push/helper/PushPermanentManager;->d:Lcom/transsion/push/bean/PermanentConfig;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic m(Lcom/transsion/push/helper/PushPermanentManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/helper/PushPermanentManager;->v()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final n(J)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    sget-wide v3, Lcom/transsion/push/helper/PushPermanentManager;->i:J

    .line 8
    .line 9
    sub-long/2addr v1, v3

    .line 10
    sget-object v3, Lcom/transsion/push/bean/PushConfigHelper;->INSTANCE:Lcom/transsion/push/bean/PushConfigHelper;

    .line 11
    .line 12
    invoke-virtual {v3}, Lcom/transsion/push/bean/PushConfigHelper;->getHashTime()F

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v5, "checkRequest time:"

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v5, ", lastTime:"

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", hash:"

    .line 38
    .line 39
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x1

    .line 50
    const-string v3, "PUSH_SHOW"

    .line 51
    .line 52
    invoke-virtual {v0, v3, v1, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    sget-wide v2, Lcom/transsion/push/helper/PushPermanentManager;->i:J

    .line 60
    .line 61
    sub-long/2addr v0, v2

    .line 62
    cmp-long p1, v0, p1

    .line 63
    .line 64
    if-ltz p1, :cond_0

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/transsion/push/helper/PushPermanentManager;->q()V

    .line 67
    .line 68
    .line 69
    :cond_0
    return-void
.end method

.method private final r()Lto/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/helper/PushPermanentManager;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lto/b;

    .line 8
    .line 9
    return-object v0
.end method

.method private final t()Z
    .locals 2

    .line 1
    sget-wide v0, Lcom/transsion/push/helper/PushPermanentManager;->i:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private static final u()Lto/b;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lto/b;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lto/b;

    .line 14
    .line 15
    return-object v0
.end method

.method private final v()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/push/helper/PushPermanentManager;->d:Lcom/transsion/push/bean/PermanentConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/push/bean/PermanentConfig;->getEnable()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-direct {p0, v0}, Lcom/transsion/push/helper/PushPermanentManager;->w(Lcom/transsion/push/bean/PermanentConfig;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/push/bean/PermanentConfig;->getInterval()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-lez v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/transsion/push/bean/PermanentConfig;->getInterval()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    int-to-float v0, v0

    .line 30
    sget-object v1, Lcom/transsion/push/bean/PushConfigHelper;->INSTANCE:Lcom/transsion/push/bean/PushConfigHelper;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/transsion/push/bean/PushConfigHelper;->getHashTime()F

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    add-float/2addr v0, v1

    .line 37
    const/16 v1, 0x3c

    .line 38
    .line 39
    int-to-float v1, v1

    .line 40
    mul-float/2addr v0, v1

    .line 41
    const-wide/16 v1, 0x3e8

    .line 42
    .line 43
    long-to-float v1, v1

    .line 44
    mul-float/2addr v0, v1

    .line 45
    float-to-long v0, v0

    .line 46
    invoke-direct {p0, v0, v1}, Lcom/transsion/push/helper/PushPermanentManager;->n(J)V

    .line 47
    .line 48
    .line 49
    :cond_2
    sget-object v0, Lcom/transsion/push/helper/PushPermanentShowHelper;->a:Lcom/transsion/push/helper/PushPermanentShowHelper;

    .line 50
    .line 51
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "getApp(...)"

    .line 56
    .line 57
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sget-object v2, Lcom/transsion/push/helper/PushPermanentManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 61
    .line 62
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->f0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/transsion/push/helper/PushPermanentShowHelper;->p(Landroid/content/Context;Ljava/util/List;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private final w(Lcom/transsion/push/bean/PermanentConfig;)Z
    .locals 12

    .line 1
    const-string v0, ":"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/push/bean/PermanentConfig;->getStartTime()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    new-instance v2, Lkotlin/text/Regex;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v2, p1, v3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-interface {p1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    check-cast p1, Ljava/lang/Iterable;

    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    add-int/2addr v2, v1

    .line 63
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    goto :goto_3

    .line 70
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :goto_1
    check-cast p1, Ljava/util/Collection;

    .line 75
    .line 76
    new-array v2, v3, [Ljava/lang/String;

    .line 77
    .line 78
    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, [Ljava/lang/String;

    .line 83
    .line 84
    aget-object v2, p1, v3

    .line 85
    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    aget-object p1, p1, v1

    .line 91
    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    const/16 v5, 0xb

    .line 101
    .line 102
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    const/16 v6, 0xc

    .line 107
    .line 108
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 113
    .line 114
    const-string v7, "PUSH_SHOW"

    .line 115
    .line 116
    new-instance v8, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v9, "timeReady, cur:"

    .line 122
    .line 123
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v0, ",time:"

    .line 136
    .line 137
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    const/4 v10, 0x4

    .line 148
    const/4 v11, 0x0

    .line 149
    const/4 v9, 0x0

    .line 150
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .line 152
    .line 153
    if-gt v5, v2, :cond_4

    .line 154
    .line 155
    if-ne v5, v2, :cond_3

    .line 156
    .line 157
    if-lt v4, p1, :cond_3

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_3
    move v1, v3

    .line 161
    :cond_4
    :goto_2
    return v1

    .line 162
    :goto_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 163
    .line 164
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    return v1
.end method


# virtual methods
.method public final o()V
    .locals 7

    .line 1
    sget-object v0, Lcom/transsion/push/bean/PushConfigHelper;->INSTANCE:Lcom/transsion/push/bean/PushConfigHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/push/bean/PushConfigHelper;->isAbType()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v4, Lcom/transsion/push/helper/PushPermanentManager$checkShow$1;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-direct {v4, v0}, Lcom/transsion/push/helper/PushPermanentManager$checkShow$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 22
    .line 23
    .line 24
    const/4 v5, 0x3

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "deepLink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    sget-object v1, Lcom/transsion/push/helper/PushPermanentManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "clickMsg deeplink:"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, ",pushCacheList:"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x1

    .line 40
    const-string v3, "PUSH_SHOW"

    .line 41
    .line 42
    invoke-virtual {v0, v3, v1, v2}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    sget-object v0, Lcom/transsion/push/helper/PushPermanentManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/4 v2, 0x0

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    move-object v3, v1

    .line 63
    check-cast v3, Lcom/transsion/push/bean/PermanentItemBean;

    .line 64
    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/transsion/push/bean/PermanentItemBean;->getDeeplink()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    move-object v3, v2

    .line 73
    :goto_0
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_0

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    move-object v1, v2

    .line 81
    :goto_1
    check-cast v1, Lcom/transsion/push/bean/PermanentItemBean;

    .line 82
    .line 83
    if-nez v1, :cond_3

    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    sget-object p1, Lcom/transsion/push/helper/PushPermanentManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    sget-object p1, Lcom/transsion/push/helper/PushPermanentManager;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    const/16 v0, 0xa

    .line 98
    .line 99
    if-ge p1, v0, :cond_4

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/transsion/push/helper/PushPermanentManager;->q()V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_4
    invoke-direct {p0}, Lcom/transsion/push/helper/PushPermanentManager;->v()V

    .line 106
    .line 107
    .line 108
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    new-instance v6, Lcom/transsion/push/helper/PushPermanentManager$clickMsg$1;

    .line 117
    .line 118
    invoke-direct {v6, v1, v2}, Lcom/transsion/push/helper/PushPermanentManager$clickMsg$1;-><init>(Lcom/transsion/push/bean/PermanentItemBean;Lkotlin/coroutines/Continuation;)V

    .line 119
    .line 120
    .line 121
    const/4 v7, 0x3

    .line 122
    const/4 v8, 0x0

    .line 123
    const/4 v4, 0x0

    .line 124
    const/4 v5, 0x0

    .line 125
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public final q()V
    .locals 8

    .line 1
    sget-object v0, Lcom/transsion/push/helper/PushPermanentManager;->g:Lkotlinx/coroutines/t1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v5, Lcom/transsion/push/helper/PushPermanentManager$fetchPushData$1;

    .line 19
    .line 20
    invoke-direct {v5, v1}, Lcom/transsion/push/helper/PushPermanentManager$fetchPushData$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 21
    .line 22
    .line 23
    const/4 v6, 0x3

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/transsion/push/helper/PushPermanentManager;->g:Lkotlinx/coroutines/t1;

    .line 32
    .line 33
    return-void
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/helper/PushPermanentManager;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
