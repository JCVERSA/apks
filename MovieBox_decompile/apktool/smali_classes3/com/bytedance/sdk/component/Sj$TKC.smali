.class public Lcom/bytedance/sdk/component/Sj$TKC;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TKC"
.end annotation


# instance fields
.field private EjP:Z

.field final synthetic Sj:Lcom/bytedance/sdk/component/Sj;

.field private final TKC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final sP:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/Sj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/Sj$TKC;->Sj:Lcom/bytedance/sdk/component/Sj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/component/Sj$TKC;->sP:Ljava/lang/Object;

    .line 12
    .line 13
    new-instance p1, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/bytedance/sdk/component/Sj$TKC;->TKC:Ljava/util/Map;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/Sj$TKC;->EjP:Z

    .line 22
    .line 23
    return-void
.end method

.method private sP()Lcom/bytedance/sdk/component/Sj$sP;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj$TKC;->Sj:Lcom/bytedance/sdk/component/Sj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/component/Sj;->sP(Lcom/bytedance/sdk/component/Sj;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj$TKC;->Sj:Lcom/bytedance/sdk/component/Sj;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/bytedance/sdk/component/Sj;->TKC(Lcom/bytedance/sdk/component/Sj;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Ljava/util/Properties;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/bytedance/sdk/component/Sj$TKC;->Sj:Lcom/bytedance/sdk/component/Sj;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/bytedance/sdk/component/Sj;->EjP(Lcom/bytedance/sdk/component/Sj;)Ljava/util/Properties;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/bytedance/sdk/component/Sj$TKC;->Sj:Lcom/bytedance/sdk/component/Sj;

    .line 31
    .line 32
    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/Sj;->Sj(Lcom/bytedance/sdk/component/Sj;Ljava/util/Properties;)Ljava/util/Properties;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    goto/16 :goto_6

    .line 38
    .line 39
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj$TKC;->Sj:Lcom/bytedance/sdk/component/Sj;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/bytedance/sdk/component/Sj;->EjP(Lcom/bytedance/sdk/component/Sj;)Ljava/util/Properties;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/bytedance/sdk/component/Sj$TKC;->Sj:Lcom/bytedance/sdk/component/Sj;

    .line 46
    .line 47
    invoke-static {v2}, Lcom/bytedance/sdk/component/Sj;->HiB(Lcom/bytedance/sdk/component/Sj;)I

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/bytedance/sdk/component/Sj$TKC;->sP:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :try_start_1
    iget-boolean v3, p0, Lcom/bytedance/sdk/component/Sj$TKC;->EjP:Z

    .line 54
    .line 55
    const/4 v4, 0x1

    .line 56
    const/4 v5, 0x0

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/util/Properties;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_1

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/Properties;->clear()V

    .line 66
    .line 67
    .line 68
    move v3, v4

    .line 69
    goto :goto_1

    .line 70
    :catchall_1
    move-exception v1

    .line 71
    goto/16 :goto_5

    .line 72
    .line 73
    :cond_1
    move v3, v5

    .line 74
    :goto_1
    iput-boolean v5, p0, Lcom/bytedance/sdk/component/Sj$TKC;->EjP:Z

    .line 75
    .line 76
    move v5, v3

    .line 77
    :cond_2
    iget-object v3, p0, Lcom/bytedance/sdk/component/Sj$TKC;->TKC:Ljava/util/Map;

    .line 78
    .line 79
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-eqz v6, :cond_7

    .line 92
    .line 93
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    check-cast v6, Ljava/util/Map$Entry;

    .line 98
    .line 99
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    check-cast v7, Ljava/lang/String;

    .line 104
    .line 105
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    if-eq v6, p0, :cond_6

    .line 110
    .line 111
    if-nez v6, :cond_4

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    invoke-virtual {v1, v7}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    if-eqz v8, :cond_5

    .line 119
    .line 120
    invoke-virtual {v1, v7}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    if-eqz v8, :cond_5

    .line 125
    .line 126
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    if-nez v8, :cond_3

    .line 135
    .line 136
    :cond_5
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {v1, v7, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_6
    :goto_3
    invoke-virtual {v1, v7}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    if-eqz v6, :cond_3

    .line 149
    .line 150
    invoke-virtual {v1, v7}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    :goto_4
    move v5, v4

    .line 154
    goto :goto_2

    .line 155
    :cond_7
    iget-object v3, p0, Lcom/bytedance/sdk/component/Sj$TKC;->TKC:Ljava/util/Map;

    .line 156
    .line 157
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 158
    .line 159
    .line 160
    if-eqz v5, :cond_8

    .line 161
    .line 162
    iget-object v3, p0, Lcom/bytedance/sdk/component/Sj$TKC;->Sj:Lcom/bytedance/sdk/component/Sj;

    .line 163
    .line 164
    invoke-static {v3}, Lcom/bytedance/sdk/component/Sj;->vS(Lcom/bytedance/sdk/component/Sj;)J

    .line 165
    .line 166
    .line 167
    :cond_8
    iget-object v3, p0, Lcom/bytedance/sdk/component/Sj$TKC;->Sj:Lcom/bytedance/sdk/component/Sj;

    .line 168
    .line 169
    invoke-static {v3}, Lcom/bytedance/sdk/component/Sj;->Jcg(Lcom/bytedance/sdk/component/Sj;)J

    .line 170
    .line 171
    .line 172
    move-result-wide v3

    .line 173
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 174
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    new-instance v0, Lcom/bytedance/sdk/component/Sj$sP;

    .line 176
    .line 177
    const/4 v2, 0x0

    .line 178
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/bytedance/sdk/component/Sj$sP;-><init>(JLjava/util/Properties;Lcom/bytedance/sdk/component/Sj$1;)V

    .line 179
    .line 180
    .line 181
    return-object v0

    .line 182
    :goto_5
    :try_start_3
    monitor-exit v2

    .line 183
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    :goto_6
    monitor-exit v0

    .line 185
    throw v1
.end method


# virtual methods
.method public Sj()Lcom/bytedance/sdk/component/Sj$TKC;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj$TKC;->sP:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 30
    :try_start_0
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/Sj$TKC;->EjP:Z

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v1

    .line 32
    monitor-exit v0

    throw v1
.end method

.method public Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sj$TKC;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj$TKC;->sP:Ljava/lang/Object;

    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj$TKC;->TKC:Ljava/util/Map;

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 28
    monitor-exit v0

    throw p1
.end method

.method public Sj(Ljava/lang/String;F)Lcom/bytedance/sdk/component/Sj$TKC;
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj$TKC;->sP:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj$TKC;->TKC:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v0

    throw p1
.end method

.method public Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/component/Sj$TKC;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj$TKC;->sP:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj$TKC;->TKC:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0

    throw p1
.end method

.method public Sj(Ljava/lang/String;J)Lcom/bytedance/sdk/component/Sj$TKC;
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj$TKC;->sP:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj$TKC;->TKC:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0

    throw p1
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/Sj$TKC;
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj$TKC;->sP:Ljava/lang/Object;

    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj$TKC;->TKC:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v0

    throw p1
.end method

.method public Sj(Ljava/lang/String;Ljava/util/Set;)Lcom/bytedance/sdk/component/Sj$TKC;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/sdk/component/Sj$TKC;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj$TKC;->sP:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj$TKC;->TKC:Ljava/util/Map;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object p2, v2

    :goto_0
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0

    throw p1
.end method

.method public Sj(Ljava/lang/String;Z)Lcom/bytedance/sdk/component/Sj$TKC;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj$TKC;->sP:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj$TKC;->TKC:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v0

    throw p1
.end method

.method public apply()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sj$TKC;->sP()Lcom/bytedance/sdk/component/Sj$sP;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj$TKC;->Sj:Lcom/bytedance/sdk/component/Sj;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/component/Sj;->Sj(Lcom/bytedance/sdk/component/Sj;Lcom/bytedance/sdk/component/Sj$sP;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public synthetic clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sj$TKC;->Sj()Lcom/bytedance/sdk/component/Sj$TKC;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public commit()Z
    .locals 10

    .line 1
    const-string v0, " ms"

    .line 2
    .line 3
    const-string v1, " committed after "

    .line 4
    .line 5
    const-string v2, ":"

    .line 6
    .line 7
    invoke-static {}, Lcom/bytedance/sdk/component/Sj;->TKC()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-wide/16 v3, 0x0

    .line 19
    .line 20
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sj$TKC;->sP()Lcom/bytedance/sdk/component/Sj$sP;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    iget-object v6, p0, Lcom/bytedance/sdk/component/Sj$TKC;->Sj:Lcom/bytedance/sdk/component/Sj;

    .line 25
    .line 26
    const/4 v7, 0x1

    .line 27
    invoke-static {v6, v5, v7}, Lcom/bytedance/sdk/component/Sj;->Sj(Lcom/bytedance/sdk/component/Sj;Lcom/bytedance/sdk/component/Sj$sP;Z)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    iget-object v6, v5, Lcom/bytedance/sdk/component/Sj$sP;->TKC:Ljava/util/concurrent/CountDownLatch;

    .line 31
    .line 32
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/bytedance/sdk/component/Sj;->TKC()Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    new-instance v6, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v7, p0, Lcom/bytedance/sdk/component/Sj$TKC;->Sj:Lcom/bytedance/sdk/component/Sj;

    .line 47
    .line 48
    invoke-static {v7}, Lcom/bytedance/sdk/component/Sj;->Sj(Lcom/bytedance/sdk/component/Sj;)Ljava/io/File;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-wide v7, v5, Lcom/bytedance/sdk/component/Sj$sP;->Sj:J

    .line 63
    .line 64
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 71
    .line 72
    .line 73
    move-result-wide v1

    .line 74
    sub-long/2addr v1, v3

    .line 75
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    :cond_1
    iget-boolean v0, v5, Lcom/bytedance/sdk/component/Sj$sP;->EjP:Z

    .line 82
    .line 83
    return v0

    .line 84
    :catchall_0
    move-exception v6

    .line 85
    invoke-static {}, Lcom/bytedance/sdk/component/Sj;->TKC()Z

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-eqz v7, :cond_2

    .line 90
    .line 91
    new-instance v7, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    iget-object v8, p0, Lcom/bytedance/sdk/component/Sj$TKC;->Sj:Lcom/bytedance/sdk/component/Sj;

    .line 97
    .line 98
    invoke-static {v8}, Lcom/bytedance/sdk/component/Sj;->Sj(Lcom/bytedance/sdk/component/Sj;)Ljava/io/File;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-wide v8, v5, Lcom/bytedance/sdk/component/Sj$sP;->Sj:J

    .line 113
    .line 114
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 121
    .line 122
    .line 123
    move-result-wide v1

    .line 124
    sub-long/2addr v1, v3

    .line 125
    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    :cond_2
    throw v6

    .line 132
    :catch_0
    invoke-static {}, Lcom/bytedance/sdk/component/Sj;->TKC()Z

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-eqz v6, :cond_3

    .line 137
    .line 138
    new-instance v6, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    iget-object v7, p0, Lcom/bytedance/sdk/component/Sj$TKC;->Sj:Lcom/bytedance/sdk/component/Sj;

    .line 144
    .line 145
    invoke-static {v7}, Lcom/bytedance/sdk/component/Sj;->Sj(Lcom/bytedance/sdk/component/Sj;)Ljava/io/File;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget-wide v7, v5, Lcom/bytedance/sdk/component/Sj$sP;->Sj:J

    .line 160
    .line 161
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 168
    .line 169
    .line 170
    move-result-wide v1

    .line 171
    sub-long/2addr v1, v3

    .line 172
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    :cond_3
    const/4 v0, 0x0

    .line 179
    return v0
.end method

.method public synthetic putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/Sj$TKC;->Sj(Ljava/lang/String;Z)Lcom/bytedance/sdk/component/Sj$TKC;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public synthetic putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/Sj$TKC;->Sj(Ljava/lang/String;F)Lcom/bytedance/sdk/component/Sj$TKC;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public synthetic putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/Sj$TKC;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/component/Sj$TKC;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public synthetic putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/Sj$TKC;->Sj(Ljava/lang/String;J)Lcom/bytedance/sdk/component/Sj$TKC;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public synthetic putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/Sj$TKC;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/Sj$TKC;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public synthetic putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/Sj$TKC;->Sj(Ljava/lang/String;Ljava/util/Set;)Lcom/bytedance/sdk/component/Sj$TKC;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public synthetic remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/Sj$TKC;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sj$TKC;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
