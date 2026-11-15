.class public final Lgf/u0;
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
    .locals 2

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/HashSet;

    .line 7
    .line 8
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 9
    .line 10
    iget-object v1, v1, Lgf/o0;->j:Ljava/util/Set;

    .line 11
    .line 12
    check-cast v1, Ljava/util/Collection;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    check-cast p1, Ljava/util/Collection;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lgf/d;->a:Lgf/o0;

    .line 29
    .line 30
    invoke-virtual {p1, v0, p0}, Lgf/o0;->y(Ljava/util/Set;Lgf/e;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lgf/d;->finish()V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public request()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 7
    .line 8
    iget-object v1, v1, Lgf/o0;->e:Ljava/util/Set;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    .line 26
    sget-object v3, Lcf/c;->a:Lcf/c;

    .line 27
    .line 28
    iget-object v4, p0, Lgf/d;->a:Lgf/o0;

    .line 29
    .line 30
    invoke-virtual {v4}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v3, v4, v2}, Lcf/c;->f(Landroid/content/Context;Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    iget-object v3, p0, Lgf/d;->a:Lgf/o0;

    .line 41
    .line 42
    iget-object v3, v3, Lgf/o0;->j:Ljava/util/Set;

    .line 43
    .line 44
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0}, Lgf/d;->finish()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 63
    .line 64
    iget-boolean v2, v1, Lgf/o0;->g:Z

    .line 65
    .line 66
    if-eqz v2, :cond_6

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lgf/d;->a:Lgf/o0;

    .line 72
    .line 73
    iget-object v1, v1, Lgf/o0;->q:Ldf/b;

    .line 74
    .line 75
    if-eqz v1, :cond_6

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    const/4 v2, 0x0

    .line 82
    const/4 v3, 0x1

    .line 83
    if-ne v1, v3, :cond_4

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const-string v4, "get(...)"

    .line 90
    .line 91
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    check-cast v1, Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {p0}, Lgf/d;->d()Lcom/tencent/mmkv/MMKV;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v4, v1, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-eqz v4, :cond_3

    .line 105
    .line 106
    iget-object v4, p0, Lgf/d;->a:Lgf/o0;

    .line 107
    .line 108
    invoke-virtual {v4}, Lgf/o0;->m()Landroidx/fragment/app/FragmentActivity;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-static {v4, v1}, Landroidx/core/app/ActivityCompat;->j(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    goto :goto_1

    .line 117
    :cond_3
    invoke-virtual {p0}, Lgf/d;->d()Lcom/tencent/mmkv/MMKV;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v4, v1, v3}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 122
    .line 123
    .line 124
    :cond_4
    move v1, v3

    .line 125
    :goto_1
    iget-object v4, p0, Lgf/d;->a:Lgf/o0;

    .line 126
    .line 127
    iput-boolean v2, v4, Lgf/o0;->g:Z

    .line 128
    .line 129
    iget-object v2, v4, Lgf/o0;->k:Ljava/util/Set;

    .line 130
    .line 131
    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 132
    .line 133
    .line 134
    iget-object v2, p0, Lgf/d;->a:Lgf/o0;

    .line 135
    .line 136
    invoke-virtual {v2, p0}, Lgf/o0;->E(Lgf/e;)V

    .line 137
    .line 138
    .line 139
    iget-object v2, p0, Lgf/d;->a:Lgf/o0;

    .line 140
    .line 141
    iget-object v4, v2, Lgf/o0;->q:Ldf/b;

    .line 142
    .line 143
    if-eqz v4, :cond_5

    .line 144
    .line 145
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lgf/d;->b()Lgf/f;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    xor-int/2addr v1, v3

    .line 153
    invoke-interface {v4, v2, v0, v3, v1}, Ldf/b;->a(Lgf/f;Ljava/util/List;ZZ)V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    const/4 v0, 0x0

    .line 161
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lgf/d;->b()Lgf/f;

    .line 165
    .line 166
    .line 167
    throw v0

    .line 168
    :cond_6
    iget-object v0, p0, Lgf/d;->a:Lgf/o0;

    .line 169
    .line 170
    iget-object v1, v0, Lgf/o0;->e:Ljava/util/Set;

    .line 171
    .line 172
    invoke-virtual {v0, v1, p0}, Lgf/o0;->y(Ljava/util/Set;Lgf/e;)V

    .line 173
    .line 174
    .line 175
    :goto_2
    return-void
.end method
