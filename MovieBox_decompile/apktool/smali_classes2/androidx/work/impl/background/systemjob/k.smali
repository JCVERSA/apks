.class public Landroidx/work/impl/background/systemjob/k;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/work/impl/s;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/app/job/JobScheduler;

.field private final c:Landroidx/work/impl/d0;

.field private final d:Landroidx/work/impl/background/systemjob/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "SystemJobScheduler"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/j;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/background/systemjob/k;->e:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/d0;)V
    .locals 2

    .line 1
    const-string v0, "jobscheduler"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    new-instance v1, Landroidx/work/impl/background/systemjob/j;

    invoke-direct {v1, p1}, Landroidx/work/impl/background/systemjob/j;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/work/impl/background/systemjob/k;-><init>(Landroid/content/Context;Landroidx/work/impl/d0;Landroid/app/job/JobScheduler;Landroidx/work/impl/background/systemjob/j;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/d0;Landroid/app/job/JobScheduler;Landroidx/work/impl/background/systemjob/j;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Landroidx/work/impl/background/systemjob/k;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Landroidx/work/impl/background/systemjob/k;->c:Landroidx/work/impl/d0;

    .line 7
    iput-object p3, p0, Landroidx/work/impl/background/systemjob/k;->b:Landroid/app/job/JobScheduler;

    .line 8
    iput-object p4, p0, Landroidx/work/impl/background/systemjob/k;->d:Landroidx/work/impl/background/systemjob/j;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "jobscheduler"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroidx/work/impl/background/systemjob/k;->g(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroid/app/job/JobInfo;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {v0, v1}, Landroidx/work/impl/background/systemjob/k;->d(Landroid/app/job/JobScheduler;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method private static d(Landroid/app/job/JobScheduler;I)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    move-exception p0

    .line 6
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Landroidx/work/impl/background/systemjob/k;->e:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v3, 0x1

    .line 21
    new-array v3, v3, [Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    aput-object p1, v3, v4

    .line 25
    .line 26
    const-string p1, "Exception while trying to cancel job (%d)"

    .line 27
    .line 28
    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, v1, p1, p0}, Landroidx/work/j;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method private static f(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Landroidx/work/impl/background/systemjob/k;->g(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/app/job/JobInfo;

    .line 30
    .line 31
    invoke-static {v0}, Landroidx/work/impl/background/systemjob/k;->h(Landroid/app/job/JobInfo;)Lj4/m;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1}, Lj4/m;->b()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    return-object p1
.end method

.method private static g(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Landroidx/work/impl/background/systemjob/k;->e:Ljava/lang/String;

    .line 13
    .line 14
    const-string v3, "getAllPendingJobs() is not reliable on this device."

    .line 15
    .line 16
    invoke-virtual {v1, v2, v3, p1}, Landroidx/work/j;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    move-object p1, v0

    .line 20
    :goto_0
    if-nez p1, :cond_0

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Landroid/content/ComponentName;

    .line 33
    .line 34
    const-class v2, Landroidx/work/impl/background/systemjob/SystemJobService;

    .line 35
    .line 36
    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/app/job/JobInfo;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    return-object v0
.end method

.method private static h(Landroid/app/job/JobInfo;)Lj4/m;
    .locals 3

    .line 1
    const-string v0, "EXTRA_WORK_SPEC_ID"

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string v1, "EXTRA_WORK_SPEC_GENERATION"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    new-instance v2, Lj4/m;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v2, p0, v1}, Lj4/m;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-object v2

    .line 32
    :catch_0
    :cond_0
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public static i(Landroid/content/Context;Landroidx/work/impl/d0;)Z
    .locals 6

    .line 1
    const-string v0, "jobscheduler"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/work/impl/background/systemjob/k;->g(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p1}, Landroidx/work/impl/d0;->t()Landroidx/work/impl/WorkDatabase;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->k0()Lj4/j;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Lj4/j;->e()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v3, v2

    .line 34
    :goto_0
    new-instance v4, Ljava/util/HashSet;

    .line 35
    .line 36
    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 37
    .line 38
    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_2

    .line 46
    .line 47
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Landroid/app/job/JobInfo;

    .line 62
    .line 63
    invoke-static {v3}, Landroidx/work/impl/background/systemjob/k;->h(Landroid/app/job/JobInfo;)Lj4/m;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    if-eqz v5, :cond_1

    .line 68
    .line 69
    invoke-virtual {v5}, Lj4/m;->b()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-static {v0, v3}, Landroidx/work/impl/background/systemjob/k;->d(Landroid/app/job/JobScheduler;I)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Ljava/lang/String;

    .line 100
    .line 101
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_3

    .line 106
    .line 107
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    sget-object v0, Landroidx/work/impl/background/systemjob/k;->e:Ljava/lang/String;

    .line 112
    .line 113
    const-string v2, "Reconciling jobs"

    .line 114
    .line 115
    invoke-virtual {p0, v0, v2}, Landroidx/work/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const/4 v2, 0x1

    .line 119
    :cond_4
    if-eqz v2, :cond_6

    .line 120
    .line 121
    invoke-virtual {p1}, Landroidx/work/impl/d0;->t()Landroidx/work/impl/WorkDatabase;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->k()V

    .line 126
    .line 127
    .line 128
    :try_start_0
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->n0()Lj4/v;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Ljava/lang/String;

    .line 147
    .line 148
    const-wide/16 v3, -0x1

    .line 149
    .line 150
    invoke-interface {p1, v1, v3, v4}, Lj4/v;->r(Ljava/lang/String;J)I

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :catchall_0
    move-exception p1

    .line 155
    goto :goto_3

    .line 156
    :cond_5
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->t()V

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :goto_3
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->t()V

    .line 164
    .line 165
    .line 166
    throw p1

    .line 167
    :cond_6
    :goto_4
    return v2
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/k;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/background/systemjob/k;->b:Landroid/app/job/JobScheduler;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Landroidx/work/impl/background/systemjob/k;->f(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iget-object v2, p0, Landroidx/work/impl/background/systemjob/k;->b:Landroid/app/job/JobScheduler;

    .line 38
    .line 39
    invoke-static {v2, v1}, Landroidx/work/impl/background/systemjob/k;->d(Landroid/app/job/JobScheduler;I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/k;->c:Landroidx/work/impl/d0;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/work/impl/d0;->t()Landroidx/work/impl/WorkDatabase;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k0()Lj4/j;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0, p1}, Lj4/j;->g(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public varargs c([Lj4/u;)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemjob/k;->c:Landroidx/work/impl/d0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/d0;->t()Landroidx/work/impl/WorkDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroidx/work/impl/utils/i;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Landroidx/work/impl/utils/i;-><init>(Landroidx/work/impl/WorkDatabase;)V

    .line 10
    .line 11
    .line 12
    array-length v2, p1

    .line 13
    const/4 v3, 0x0

    .line 14
    move v4, v3

    .line 15
    :goto_0
    if-ge v4, v2, :cond_7

    .line 16
    .line 17
    aget-object v5, p1, v4

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->k()V

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->n0()Lj4/v;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    iget-object v7, v5, Lj4/u;->a:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {v6, v7}, Lj4/v;->j(Ljava/lang/String;)Lj4/u;

    .line 29
    .line 30
    .line 31
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    const-string v7, "Skipping scheduling "

    .line 33
    .line 34
    if-nez v6, :cond_0

    .line 35
    .line 36
    :try_start_1
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    sget-object v8, Landroidx/work/impl/background/systemjob/k;->e:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v9, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v5, v5, Lj4/u;->a:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v5, " because it\'s no longer in the DB"

    .line 56
    .line 57
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v6, v8, v5}, Landroidx/work/j;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    .line 70
    :goto_1
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_4

    .line 74
    .line 75
    :catchall_0
    move-exception p1

    .line 76
    goto/16 :goto_5

    .line 77
    .line 78
    :cond_0
    :try_start_2
    iget-object v6, v6, Lj4/u;->b:Landroidx/work/WorkInfo$State;

    .line 79
    .line 80
    sget-object v8, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 81
    .line 82
    if-eq v6, v8, :cond_1

    .line 83
    .line 84
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    sget-object v8, Landroidx/work/impl/background/systemjob/k;->e:Ljava/lang/String;

    .line 89
    .line 90
    new-instance v9, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v5, v5, Lj4/u;->a:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v5, " because it is no longer enqueued"

    .line 104
    .line 105
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v6, v8, v5}, Landroidx/work/j;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e0()V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_1
    invoke-static {v5}, Lj4/x;->a(Lj4/u;)Lj4/m;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k0()Lj4/j;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-interface {v7, v6}, Lj4/j;->a(Lj4/m;)Lj4/i;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    if-eqz v7, :cond_2

    .line 132
    .line 133
    iget v8, v7, Lj4/i;->c:I

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_2
    iget-object v8, p0, Landroidx/work/impl/background/systemjob/k;->c:Landroidx/work/impl/d0;

    .line 137
    .line 138
    invoke-virtual {v8}, Landroidx/work/impl/d0;->m()Landroidx/work/a;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    invoke-virtual {v8}, Landroidx/work/a;->i()I

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    iget-object v9, p0, Landroidx/work/impl/background/systemjob/k;->c:Landroidx/work/impl/d0;

    .line 147
    .line 148
    invoke-virtual {v9}, Landroidx/work/impl/d0;->m()Landroidx/work/a;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    invoke-virtual {v9}, Landroidx/work/a;->g()I

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    invoke-virtual {v1, v8, v9}, Landroidx/work/impl/utils/i;->e(II)I

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    :goto_2
    if-nez v7, :cond_3

    .line 161
    .line 162
    invoke-static {v6, v8}, Lj4/l;->a(Lj4/m;I)Lj4/i;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    iget-object v7, p0, Landroidx/work/impl/background/systemjob/k;->c:Landroidx/work/impl/d0;

    .line 167
    .line 168
    invoke-virtual {v7}, Landroidx/work/impl/d0;->t()Landroidx/work/impl/WorkDatabase;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->k0()Lj4/j;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    invoke-interface {v7, v6}, Lj4/j;->b(Lj4/i;)V

    .line 177
    .line 178
    .line 179
    :cond_3
    invoke-virtual {p0, v5, v8}, Landroidx/work/impl/background/systemjob/k;->j(Lj4/u;I)V

    .line 180
    .line 181
    .line 182
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 183
    .line 184
    const/16 v7, 0x17

    .line 185
    .line 186
    if-ne v6, v7, :cond_6

    .line 187
    .line 188
    iget-object v6, p0, Landroidx/work/impl/background/systemjob/k;->a:Landroid/content/Context;

    .line 189
    .line 190
    iget-object v7, p0, Landroidx/work/impl/background/systemjob/k;->b:Landroid/app/job/JobScheduler;

    .line 191
    .line 192
    iget-object v9, v5, Lj4/u;->a:Ljava/lang/String;

    .line 193
    .line 194
    invoke-static {v6, v7, v9}, Landroidx/work/impl/background/systemjob/k;->f(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    if-eqz v6, :cond_6

    .line 199
    .line 200
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 205
    .line 206
    .line 207
    move-result v7

    .line 208
    if-ltz v7, :cond_4

    .line 209
    .line 210
    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    if-nez v7, :cond_5

    .line 218
    .line 219
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    check-cast v6, Ljava/lang/Integer;

    .line 224
    .line 225
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    goto :goto_3

    .line 230
    :cond_5
    iget-object v6, p0, Landroidx/work/impl/background/systemjob/k;->c:Landroidx/work/impl/d0;

    .line 231
    .line 232
    invoke-virtual {v6}, Landroidx/work/impl/d0;->m()Landroidx/work/a;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    invoke-virtual {v6}, Landroidx/work/a;->i()I

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    iget-object v7, p0, Landroidx/work/impl/background/systemjob/k;->c:Landroidx/work/impl/d0;

    .line 241
    .line 242
    invoke-virtual {v7}, Landroidx/work/impl/d0;->m()Landroidx/work/a;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    invoke-virtual {v7}, Landroidx/work/a;->g()I

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    invoke-virtual {v1, v6, v7}, Landroidx/work/impl/utils/i;->e(II)I

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    :goto_3
    invoke-virtual {p0, v5, v6}, Landroidx/work/impl/background/systemjob/k;->j(Lj4/u;I)V

    .line 255
    .line 256
    .line 257
    :cond_6
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    .line 259
    .line 260
    goto/16 :goto_1

    .line 261
    .line 262
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 263
    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :goto_5
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    .line 267
    .line 268
    .line 269
    throw p1

    .line 270
    :cond_7
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public j(Lj4/u;I)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Landroidx/work/impl/background/systemjob/k;->d:Landroidx/work/impl/background/systemjob/j;

    .line 4
    .line 5
    invoke-virtual {v2, p1, p2}, Landroidx/work/impl/background/systemjob/j;->a(Lj4/u;I)Landroid/app/job/JobInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    sget-object v4, Landroidx/work/impl/background/systemjob/k;->e:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v6, "Scheduling work ID "

    .line 21
    .line 22
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v6, p1, Lj4/u;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v6, "Job ID "

    .line 31
    .line 32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v3, v4, v5}, Landroidx/work/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :try_start_0
    iget-object v3, p0, Landroidx/work/impl/background/systemjob/k;->b:Landroid/app/job/JobScheduler;

    .line 46
    .line 47
    invoke-virtual {v3, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_1

    .line 52
    .line 53
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v5, "Unable to schedule work ID "

    .line 63
    .line 64
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v5, p1, Lj4/u;->a:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v2, v4, v3}, Landroidx/work/j;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-boolean v2, p1, Lj4/u;->q:Z

    .line 80
    .line 81
    if-eqz v2, :cond_1

    .line 82
    .line 83
    iget-object v2, p1, Lj4/u;->r:Landroidx/work/OutOfQuotaPolicy;

    .line 84
    .line 85
    sget-object v3, Landroidx/work/OutOfQuotaPolicy;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    .line 86
    .line 87
    if-ne v2, v3, :cond_1

    .line 88
    .line 89
    iput-boolean v1, p1, Lj4/u;->q:Z

    .line 90
    .line 91
    const-string v2, "Scheduling a non-expedited job (work ID %s)"

    .line 92
    .line 93
    iget-object v3, p1, Lj4/u;->a:Ljava/lang/String;

    .line 94
    .line 95
    new-array v5, v0, [Ljava/lang/Object;

    .line 96
    .line 97
    aput-object v3, v5, v1

    .line 98
    .line 99
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v3, v4, v2}, Landroidx/work/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/background/systemjob/k;->j(Lj4/u;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .line 112
    .line 113
    goto/16 :goto_3

    .line 114
    .line 115
    :catchall_0
    move-exception p2

    .line 116
    goto :goto_0

    .line 117
    :catch_0
    move-exception p1

    .line 118
    goto :goto_1

    .line 119
    :goto_0
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    sget-object v1, Landroidx/work/impl/background/systemjob/k;->e:Ljava/lang/String;

    .line 124
    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v3, "Unable to schedule "

    .line 131
    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {v0, v1, p1, p2}, Landroidx/work/j;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :goto_1
    iget-object p2, p0, Landroidx/work/impl/background/systemjob/k;->a:Landroid/content/Context;

    .line 147
    .line 148
    iget-object v2, p0, Landroidx/work/impl/background/systemjob/k;->b:Landroid/app/job/JobScheduler;

    .line 149
    .line 150
    invoke-static {p2, v2}, Landroidx/work/impl/background/systemjob/k;->g(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    if-eqz p2, :cond_0

    .line 155
    .line 156
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    goto :goto_2

    .line 161
    :cond_0
    move p2, v1

    .line 162
    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    iget-object v3, p0, Landroidx/work/impl/background/systemjob/k;->c:Landroidx/work/impl/d0;

    .line 171
    .line 172
    invoke-virtual {v3}, Landroidx/work/impl/d0;->t()Landroidx/work/impl/WorkDatabase;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->n0()Lj4/v;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-interface {v3}, Lj4/v;->e()Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    iget-object v4, p0, Landroidx/work/impl/background/systemjob/k;->c:Landroidx/work/impl/d0;

    .line 193
    .line 194
    invoke-virtual {v4}, Landroidx/work/impl/d0;->m()Landroidx/work/a;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-virtual {v4}, Landroidx/work/a;->h()I

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    const/4 v5, 0x3

    .line 207
    new-array v5, v5, [Ljava/lang/Object;

    .line 208
    .line 209
    aput-object p2, v5, v1

    .line 210
    .line 211
    aput-object v3, v5, v0

    .line 212
    .line 213
    const/4 p2, 0x2

    .line 214
    aput-object v4, v5, p2

    .line 215
    .line 216
    const-string p2, "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d."

    .line 217
    .line 218
    invoke-static {v2, p2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    invoke-static {}, Landroidx/work/j;->e()Landroidx/work/j;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    sget-object v1, Landroidx/work/impl/background/systemjob/k;->e:Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {v0, v1, p2}, Landroidx/work/j;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 232
    .line 233
    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    .line 235
    .line 236
    iget-object p1, p0, Landroidx/work/impl/background/systemjob/k;->c:Landroidx/work/impl/d0;

    .line 237
    .line 238
    invoke-virtual {p1}, Landroidx/work/impl/d0;->m()Landroidx/work/a;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-virtual {p1}, Landroidx/work/a;->l()Landroidx/core/util/a;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    if-eqz p1, :cond_2

    .line 247
    .line 248
    invoke-interface {p1, v0}, Landroidx/core/util/a;->accept(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    :cond_1
    :goto_3
    return-void

    .line 252
    :cond_2
    throw v0
.end method
