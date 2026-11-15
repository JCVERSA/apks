.class public final Lgf/y0;
.super Lgf/d;
.source "source.java"


# direct methods
.method public constructor <init>(Lgf/o0;)V
    .locals 1

    .line 1
    const-string v0, "permissionBuilder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lgf/d;-><init>(Lgf/o0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lgf/d;->a:Lgf/o0;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lgf/o0;->B(Lgf/e;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public request()V
    .locals 5

    .line 1
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgf/o0;->M()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 10
    .line 11
    invoke-virtual {v0}, Lgf/o0;->p()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x17

    .line 16
    .line 17
    const-string v2, "android.permission.WRITE_SETTINGS"

    .line 18
    .line 19
    if-lt v0, v1, :cond_4

    .line 20
    .line 21
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 22
    .line 23
    invoke-virtual {v0}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Lgf/d;->finish()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 43
    .line 44
    iget-object v0, v0, Lgf/o0;->q:Ldf/b;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Lgf/d;->d()Lcom/tencent/mmkv/MMKV;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/4 v1, 0x1

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 61
    .line 62
    invoke-virtual {v0}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0, v2}, Landroidx/core/app/ActivityCompat;->j(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0}, Lgf/d;->d()Lcom/tencent/mmkv/MMKV;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 76
    .line 77
    .line 78
    move v0, v1

    .line 79
    :goto_0
    iget-object v3, p0, Lgf/d;->a:Lgf/o0;

    .line 80
    .line 81
    invoke-virtual {v3, p0}, Lgf/o0;->E(Lgf/e;)V

    .line 82
    .line 83
    .line 84
    filled-new-array {v2}, [Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    iget-object v3, p0, Lgf/d;->a:Lgf/o0;

    .line 93
    .line 94
    iget-object v4, v3, Lgf/o0;->q:Ldf/b;

    .line 95
    .line 96
    if-eqz v4, :cond_2

    .line 97
    .line 98
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lgf/d;->b()Lgf/f;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    xor-int/2addr v0, v1

    .line 106
    invoke-interface {v4, v3, v2, v1, v0}, Ldf/b;->a(Lgf/f;Ljava/util/List;ZZ)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    const/4 v0, 0x0

    .line 114
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lgf/d;->b()Lgf/f;

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :cond_3
    invoke-virtual {p0}, Lgf/d;->finish()V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_4
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 126
    .line 127
    iget-object v0, v0, Lgf/o0;->j:Ljava/util/Set;

    .line 128
    .line 129
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 133
    .line 134
    iget-object v0, v0, Lgf/o0;->f:Ljava/util/Set;

    .line 135
    .line 136
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lgf/d;->finish()V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_5
    invoke-virtual {p0}, Lgf/d;->finish()V

    .line 144
    .line 145
    .line 146
    :goto_1
    return-void
.end method
