.class public abstract Landroidx/work/impl/utils/b;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static final a(Lj4/u;)Lj4/u;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "workSpec"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lj4/u;->j:Landroidx/work/b;

    .line 9
    .line 10
    iget-object v2, v0, Lj4/u;->c:Ljava/lang/String;

    .line 11
    .line 12
    const-class v3, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-nez v4, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/work/b;->f()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/work/b;->i()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    :cond_0
    new-instance v1, Landroidx/work/d$a;

    .line 37
    .line 38
    invoke-direct {v1}, Landroidx/work/d$a;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v4, v0, Lj4/u;->e:Landroidx/work/d;

    .line 42
    .line 43
    invoke-virtual {v1, v4}, Landroidx/work/d$a;->c(Landroidx/work/d;)Landroidx/work/d$a;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v4, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    .line 48
    .line 49
    invoke-virtual {v1, v4, v2}, Landroidx/work/d$a;->e(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/d$a;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Landroidx/work/d$a;->a()Landroidx/work/d;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    move-object v5, v1

    .line 58
    const-string v2, "Builder().putAll(workSpe\u2026ame)\n            .build()"

    .line 59
    .line 60
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    move-object v3, v1

    .line 68
    const-string v2, "name"

    .line 69
    .line 70
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const v28, 0xfffeb

    .line 74
    .line 75
    .line 76
    const/16 v29, 0x0

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    const/4 v2, 0x0

    .line 80
    const/4 v4, 0x0

    .line 81
    const/4 v6, 0x0

    .line 82
    const-wide/16 v7, 0x0

    .line 83
    .line 84
    const-wide/16 v9, 0x0

    .line 85
    .line 86
    const-wide/16 v11, 0x0

    .line 87
    .line 88
    const/4 v13, 0x0

    .line 89
    const/4 v14, 0x0

    .line 90
    const/4 v15, 0x0

    .line 91
    const-wide/16 v16, 0x0

    .line 92
    .line 93
    const-wide/16 v18, 0x0

    .line 94
    .line 95
    const-wide/16 v20, 0x0

    .line 96
    .line 97
    const-wide/16 v22, 0x0

    .line 98
    .line 99
    const/16 v24, 0x0

    .line 100
    .line 101
    const/16 v25, 0x0

    .line 102
    .line 103
    const/16 v26, 0x0

    .line 104
    .line 105
    const/16 v27, 0x0

    .line 106
    .line 107
    move-object/from16 v0, p0

    .line 108
    .line 109
    invoke-static/range {v0 .. v29}, Lj4/u;->e(Lj4/u;Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/d;Landroidx/work/d;JJJLandroidx/work/b;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIILjava/lang/Object;)Lj4/u;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    :cond_1
    return-object v0
.end method

.method public static final b(Ljava/util/List;Lj4/u;)Lj4/u;
    .locals 1

    .line 1
    const-string v0, "schedulers"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "workSpec"

    .line 7
    .line 8
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v0, 0x1a

    .line 14
    .line 15
    if-ge p0, v0, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Landroidx/work/impl/utils/b;->a(Lj4/u;)Lj4/u;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :cond_0
    return-object p1
.end method
