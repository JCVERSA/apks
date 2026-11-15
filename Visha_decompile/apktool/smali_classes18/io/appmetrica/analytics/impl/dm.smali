.class public final Lio/appmetrica/analytics/impl/dm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/em;

.field public volatile b:Lio/appmetrica/analytics/networktasks/internal/NetworkTask;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/em;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/dm;->a:Lio/appmetrica/analytics/impl/em;

    return-void
.end method

.method public static final synthetic a(Lio/appmetrica/analytics/impl/dm;)Lio/appmetrica/analytics/impl/em;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/dm;->a:Lio/appmetrica/analytics/impl/em;

    return-object p0
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Fl;Lio/appmetrica/analytics/impl/Dl;J)Lio/appmetrica/analytics/impl/Hl;
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 6
    iget-object v0, p2, Lio/appmetrica/analytics/impl/Dl;->h:Ljava/util/Map;

    .line 7
    invoke-static {v0}, Lio/appmetrica/analytics/impl/im;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p2, Lio/appmetrica/analytics/impl/Dl;->i:Lio/appmetrica/analytics/impl/L3;

    .line 9
    iget-object v1, v1, Lio/appmetrica/analytics/impl/L3;->a:Ljava/util/Map;

    .line 10
    iget-object v2, p1, Lio/appmetrica/analytics/impl/Fl;->j:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/dm;->e()Lio/appmetrica/analytics/impl/Hl;

    move-result-object v3

    .line 12
    iget-object v3, v3, Lio/appmetrica/analytics/impl/Hl;->k:Ljava/lang/String;

    .line 13
    invoke-static {v2}, Lio/appmetrica/analytics/impl/im;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 14
    invoke-static {v4}, Lio/appmetrica/analytics/impl/im;->a(Ljava/util/HashMap;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v3}, Lio/appmetrica/analytics/impl/im;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 16
    invoke-static {v2}, Lio/appmetrica/analytics/impl/im;->a(Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    move-object v2, v5

    .line 17
    :goto_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/dm;->e()Lio/appmetrica/analytics/impl/Hl;

    move-result-object v3

    .line 18
    iget-object v3, v3, Lio/appmetrica/analytics/impl/Hl;->a:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 19
    invoke-static {v3}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v5, v3

    :cond_2
    if-nez v5, :cond_4

    .line 20
    :cond_3
    iget-object v5, p1, Lio/appmetrica/analytics/impl/Fl;->h:Ljava/lang/String;

    .line 21
    :cond_4
    new-instance v3, Lio/appmetrica/analytics/impl/Kl;

    .line 22
    iget-object v4, p1, Lio/appmetrica/analytics/impl/Fl;->b:Lio/appmetrica/analytics/impl/C4;

    .line 23
    invoke-direct {v3, v4}, Lio/appmetrica/analytics/impl/Kl;-><init>(Lio/appmetrica/analytics/impl/C4;)V

    .line 24
    iget-object v4, p1, Lio/appmetrica/analytics/impl/Fl;->i:Ljava/lang/String;

    .line 25
    iget-object v6, p0, Lio/appmetrica/analytics/impl/dm;->a:Lio/appmetrica/analytics/impl/em;

    .line 26
    iget-object v6, v6, Lio/appmetrica/analytics/impl/em;->i:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    .line 27
    invoke-virtual {v6}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->currentTimeSeconds()J

    move-result-wide v6

    .line 28
    iput-wide v6, v3, Lio/appmetrica/analytics/impl/Kl;->o:J

    .line 29
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/dm;->e()Lio/appmetrica/analytics/impl/Hl;

    move-result-object v6

    .line 30
    iget-object v6, v6, Lio/appmetrica/analytics/impl/Hl;->d:Ljava/lang/String;

    .line 31
    iput-object v6, v3, Lio/appmetrica/analytics/impl/Kl;->a:Ljava/lang/String;

    .line 32
    iget-object v6, p1, Lio/appmetrica/analytics/impl/Fl;->d:Ljava/lang/String;

    .line 33
    iput-object v6, v3, Lio/appmetrica/analytics/impl/Kl;->c:Ljava/lang/String;

    .line 34
    iget-object v6, p1, Lio/appmetrica/analytics/impl/Fl;->c:Ljava/util/List;

    .line 35
    iput-object v6, v3, Lio/appmetrica/analytics/impl/Kl;->f:Ljava/util/List;

    .line 36
    iget-object p2, p2, Lio/appmetrica/analytics/impl/Dl;->e:Ljava/util/List;

    .line 37
    iput-object p2, v3, Lio/appmetrica/analytics/impl/Kl;->g:Ljava/util/List;

    .line 38
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Fl;->e:Ljava/util/List;

    .line 39
    iput-object p2, v3, Lio/appmetrica/analytics/impl/Kl;->b:Ljava/util/List;

    .line 40
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Fl;->f:Ljava/lang/String;

    .line 41
    iput-object p2, v3, Lio/appmetrica/analytics/impl/Kl;->d:Ljava/lang/String;

    .line 42
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Fl;->g:Ljava/lang/String;

    .line 43
    iput-object p2, v3, Lio/appmetrica/analytics/impl/Kl;->e:Ljava/lang/String;

    .line 44
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Fl;->n:Ljava/util/List;

    .line 45
    iput-object p2, v3, Lio/appmetrica/analytics/impl/Kl;->h:Ljava/util/List;

    .line 46
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Fl;->o:Ljava/util/Map;

    .line 47
    iput-object p2, v3, Lio/appmetrica/analytics/impl/Kl;->i:Ljava/util/Map;

    .line 48
    iput-object v2, v3, Lio/appmetrica/analytics/impl/Kl;->j:Ljava/lang/String;

    .line 49
    iput-object v0, v3, Lio/appmetrica/analytics/impl/Kl;->k:Ljava/lang/String;

    .line 50
    iget-object p2, p0, Lio/appmetrica/analytics/impl/dm;->a:Lio/appmetrica/analytics/impl/em;

    .line 51
    iget-object p2, p2, Lio/appmetrica/analytics/impl/em;->k:Lio/appmetrica/analytics/impl/W3;

    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-static {v2}, Lio/appmetrica/analytics/impl/im;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    .line 54
    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 55
    invoke-static {p2}, Lio/appmetrica/analytics/impl/In;->a(Ljava/util/Map;)Z

    move-result p2

    goto :goto_1

    .line 56
    :cond_5
    invoke-interface {p2, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 57
    :goto_1
    iput-boolean p2, v3, Lio/appmetrica/analytics/impl/Kl;->q:Z

    .line 58
    invoke-static {v1}, Lio/appmetrica/analytics/impl/im;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 59
    iput-object p2, v3, Lio/appmetrica/analytics/impl/Kl;->l:Ljava/lang/String;

    .line 60
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Fl;->m:Ljava/lang/String;

    .line 61
    iput-object p2, v3, Lio/appmetrica/analytics/impl/Kl;->r:Ljava/lang/String;

    .line 62
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Fl;->k:Lio/appmetrica/analytics/impl/me;

    .line 63
    iput-object p2, v3, Lio/appmetrica/analytics/impl/Kl;->n:Lio/appmetrica/analytics/impl/me;

    .line 64
    iget-object p2, p1, Lio/appmetrica/analytics/impl/Fl;->p:Lio/appmetrica/analytics/impl/jm;

    .line 65
    iput-object p2, v3, Lio/appmetrica/analytics/impl/Kl;->s:Lio/appmetrica/analytics/impl/jm;

    const/4 p2, 0x1

    .line 66
    iput-boolean p2, v3, Lio/appmetrica/analytics/impl/Kl;->p:Z

    .line 67
    iput-wide p3, v3, Lio/appmetrica/analytics/impl/Kl;->t:J

    .line 68
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/dm;->d()Lio/appmetrica/analytics/impl/Dl;

    move-result-object p0

    .line 69
    iget-wide v0, p0, Lio/appmetrica/analytics/impl/Dl;->n:J

    const-wide/16 v6, 0x0

    cmp-long p2, v0, v6

    if-nez p2, :cond_6

    .line 70
    iput-wide p3, p0, Lio/appmetrica/analytics/impl/Dl;->n:J

    .line 71
    :cond_6
    iget-wide p2, p0, Lio/appmetrica/analytics/impl/Dl;->n:J

    .line 72
    iput-wide p2, v3, Lio/appmetrica/analytics/impl/Kl;->u:J

    const/4 p0, 0x0

    .line 73
    iput-boolean p0, v3, Lio/appmetrica/analytics/impl/Kl;->v:Z

    .line 74
    iget-object p0, p1, Lio/appmetrica/analytics/impl/Fl;->q:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    .line 75
    iput-object p0, v3, Lio/appmetrica/analytics/impl/Kl;->w:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    .line 76
    iget-object p0, p1, Lio/appmetrica/analytics/impl/Fl;->s:Lio/appmetrica/analytics/impl/x3;

    .line 77
    iput-object p0, v3, Lio/appmetrica/analytics/impl/Kl;->y:Lio/appmetrica/analytics/impl/x3;

    .line 78
    iget-object p0, p1, Lio/appmetrica/analytics/impl/Fl;->r:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    .line 79
    iput-object p0, v3, Lio/appmetrica/analytics/impl/Kl;->x:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    .line 80
    iget-object p0, p1, Lio/appmetrica/analytics/impl/Fl;->t:Lio/appmetrica/analytics/impl/p2;

    .line 81
    iput-object p0, v3, Lio/appmetrica/analytics/impl/Kl;->z:Lio/appmetrica/analytics/impl/p2;

    .line 82
    iget-object p0, p1, Lio/appmetrica/analytics/impl/Fl;->u:Lio/appmetrica/analytics/impl/fm;

    .line 83
    iput-object p0, v3, Lio/appmetrica/analytics/impl/Kl;->A:Lio/appmetrica/analytics/impl/fm;

    .line 84
    iget-object p0, p1, Lio/appmetrica/analytics/impl/Fl;->v:Ljava/util/Map;

    .line 85
    iput-object p0, v3, Lio/appmetrica/analytics/impl/Kl;->B:Ljava/util/Map;

    .line 86
    iget-object p0, p1, Lio/appmetrica/analytics/impl/Fl;->w:Lio/appmetrica/analytics/impl/I9;

    .line 87
    iput-object p0, v3, Lio/appmetrica/analytics/impl/Kl;->C:Lio/appmetrica/analytics/impl/I9;

    .line 88
    new-instance p0, Lio/appmetrica/analytics/impl/Hl;

    .line 89
    new-instance p1, Lio/appmetrica/analytics/impl/Ll;

    .line 90
    invoke-direct {p1, v3}, Lio/appmetrica/analytics/impl/Ll;-><init>(Lio/appmetrica/analytics/impl/Kl;)V

    .line 91
    invoke-direct {p0, v5, v4, p1}, Lio/appmetrica/analytics/impl/Hl;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/Ll;)V

    return-object p0
.end method

.method public final a()Lio/appmetrica/analytics/impl/f5;
    .locals 0

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/dm;->a:Lio/appmetrica/analytics/impl/em;

    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/em;->f:Lio/appmetrica/analytics/impl/M4;

    return-object p0
.end method

.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/Bl;)V
    .locals 4

    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dm;->a:Lio/appmetrica/analytics/impl/em;

    .line 136
    iget-object v0, v0, Lio/appmetrica/analytics/impl/em;->l:Lio/appmetrica/analytics/impl/kl;

    .line 137
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/kl;->a(Lio/appmetrica/analytics/impl/Bl;)V

    .line 138
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/dm;->d()Lio/appmetrica/analytics/impl/Dl;

    move-result-object p1

    .line 139
    iget-boolean v0, p1, Lio/appmetrica/analytics/impl/Dl;->k:Z

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p1, Lio/appmetrica/analytics/impl/Dl;->j:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 141
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Dl;->e:Ljava/util/List;

    .line 143
    invoke-static {v0, p1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 144
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/dm;->e()Lio/appmetrica/analytics/impl/Hl;

    move-result-object p1

    .line 145
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Hl;->c:Lio/appmetrica/analytics/impl/Ll;

    .line 146
    iget-object v2, v1, Lio/appmetrica/analytics/impl/Ll;->m:Lio/appmetrica/analytics/impl/C4;

    .line 147
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Ll;->a(Lio/appmetrica/analytics/impl/C4;)Lio/appmetrica/analytics/impl/Kl;

    move-result-object v1

    .line 148
    iget-object v2, p1, Lio/appmetrica/analytics/impl/Hl;->a:Ljava/lang/String;

    .line 149
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/lang/String;

    .line 150
    iput-object v0, v1, Lio/appmetrica/analytics/impl/Kl;->g:Ljava/util/List;

    .line 151
    new-instance v0, Lio/appmetrica/analytics/impl/Hl;

    .line 152
    new-instance v3, Lio/appmetrica/analytics/impl/Ll;

    .line 153
    invoke-direct {v3, v1}, Lio/appmetrica/analytics/impl/Ll;-><init>(Lio/appmetrica/analytics/impl/Kl;)V

    .line 154
    invoke-direct {v0, v2, p1, v3}, Lio/appmetrica/analytics/impl/Hl;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/Ll;)V

    .line 155
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/dm;->b(Lio/appmetrica/analytics/impl/Hl;)V

    .line 156
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/dm;->a(Lio/appmetrica/analytics/impl/Hl;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 157
    :cond_1
    :goto_0
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Dl;->e:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 158
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-ne p1, v0, :cond_2

    .line 159
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/dm;->e()Lio/appmetrica/analytics/impl/Hl;

    move-result-object p1

    .line 160
    iget-object v0, p1, Lio/appmetrica/analytics/impl/Hl;->c:Lio/appmetrica/analytics/impl/Ll;

    .line 161
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Ll;->m:Lio/appmetrica/analytics/impl/C4;

    .line 162
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Ll;->a(Lio/appmetrica/analytics/impl/C4;)Lio/appmetrica/analytics/impl/Kl;

    move-result-object v0

    .line 163
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Hl;->a:Ljava/lang/String;

    .line 164
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/lang/String;

    const/4 v2, 0x0

    .line 165
    iput-object v2, v0, Lio/appmetrica/analytics/impl/Kl;->g:Ljava/util/List;

    .line 166
    new-instance v2, Lio/appmetrica/analytics/impl/Hl;

    .line 167
    new-instance v3, Lio/appmetrica/analytics/impl/Ll;

    .line 168
    invoke-direct {v3, v0}, Lio/appmetrica/analytics/impl/Ll;-><init>(Lio/appmetrica/analytics/impl/Kl;)V

    .line 169
    invoke-direct {v2, v1, p1, v3}, Lio/appmetrica/analytics/impl/Hl;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/Ll;)V

    .line 170
    invoke-virtual {p0, v2}, Lio/appmetrica/analytics/impl/dm;->b(Lio/appmetrica/analytics/impl/Hl;)V

    .line 171
    invoke-virtual {p0, v2}, Lio/appmetrica/analytics/impl/dm;->a(Lio/appmetrica/analytics/impl/Hl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/Fl;Lio/appmetrica/analytics/impl/Dl;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Fl;",
            "Lio/appmetrica/analytics/impl/Dl;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    invoke-static {p3}, Lio/appmetrica/analytics/impl/In;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const-string v0, "Date"

    invoke-static {p3, v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getFromMapIgnoreCase(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    .line 95
    invoke-static {p3}, Lio/appmetrica/analytics/impl/In;->a(Ljava/util/Collection;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 96
    :try_start_1
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "E, d MMM yyyy HH:mm:ss z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 98
    invoke-virtual {v0, p3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 99
    :try_start_2
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    .line 100
    :goto_1
    iget-object p3, p1, Lio/appmetrica/analytics/impl/Fl;->l:Ljava/lang/Long;

    .line 101
    sget-object v2, Lio/appmetrica/analytics/impl/Jj;->a:Lio/appmetrica/analytics/impl/Kj;

    .line 102
    invoke-virtual {v2, v0, v1, p3}, Lio/appmetrica/analytics/impl/Kj;->a(JLjava/lang/Long;)V

    .line 103
    invoke-virtual {p0, p1, p2, v0, v1}, Lio/appmetrica/analytics/impl/dm;->a(Lio/appmetrica/analytics/impl/Fl;Lio/appmetrica/analytics/impl/Dl;J)Lio/appmetrica/analytics/impl/Hl;

    move-result-object p1

    .line 104
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/dm;->h()V

    .line 105
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/dm;->b(Lio/appmetrica/analytics/impl/Hl;)V

    .line 106
    sget-object p2, Lzfb;->a:Lzfb;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    monitor-exit p0

    .line 108
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/dm;->a(Lio/appmetrica/analytics/impl/Hl;)V

    return-void

    .line 109
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/Hl;)V
    .locals 2

    .line 110
    iget-object p0, p0, Lio/appmetrica/analytics/impl/dm;->a:Lio/appmetrica/analytics/impl/em;

    .line 111
    iget-object v0, p0, Lio/appmetrica/analytics/impl/em;->d:Lio/appmetrica/analytics/impl/hl;

    .line 112
    iget-object p0, p0, Lio/appmetrica/analytics/impl/em;->b:Ljava/lang/String;

    .line 113
    iget-object v1, v0, Lio/appmetrica/analytics/impl/hl;->a:Lio/appmetrica/analytics/impl/jl;

    .line 114
    iget-object v1, v1, Lio/appmetrica/analytics/impl/jl;->b:Ljava/util/HashMap;

    .line 115
    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v0, v0, Lio/appmetrica/analytics/impl/hl;->a:Lio/appmetrica/analytics/impl/jl;

    .line 117
    iput-object p1, v0, Lio/appmetrica/analytics/impl/jl;->c:Lio/appmetrica/analytics/impl/Hl;

    .line 118
    iget-object v0, v0, Lio/appmetrica/analytics/impl/jl;->a:Lio/appmetrica/analytics/impl/wa;

    .line 119
    iget-object v0, v0, Lio/appmetrica/analytics/impl/wa;->a:Ljava/util/HashMap;

    .line 120
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-nez p0, :cond_0

    .line 121
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 122
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    .line 123
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/sl;

    .line 125
    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/sl;->a(Lio/appmetrica/analytics/impl/Hl;)V

    goto :goto_1

    :cond_1
    return-void

    .line 126
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/ll;)V
    .locals 2

    .line 127
    monitor-enter p0

    const/4 v0, 0x0

    .line 128
    :try_start_0
    iput-object v0, p0, Lio/appmetrica/analytics/impl/dm;->b:Lio/appmetrica/analytics/networktasks/internal/NetworkTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 129
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dm;->a:Lio/appmetrica/analytics/impl/em;

    .line 130
    iget-object v1, v0, Lio/appmetrica/analytics/impl/em;->d:Lio/appmetrica/analytics/impl/hl;

    .line 131
    iget-object v0, v0, Lio/appmetrica/analytics/impl/em;->f:Lio/appmetrica/analytics/impl/M4;

    .line 132
    iget-object v0, v0, Lio/appmetrica/analytics/impl/f5;->a:Ljava/lang/String;

    .line 133
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/dm;->e()Lio/appmetrica/analytics/impl/Hl;

    move-result-object p0

    invoke-virtual {v1, v0, p1, p0}, Lio/appmetrica/analytics/impl/hl;->a(Ljava/lang/String;Lio/appmetrica/analytics/impl/ll;Lio/appmetrica/analytics/impl/Hl;)V

    return-void

    :catchall_0
    move-exception p1

    .line 134
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/util/List;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/dm;->e()Lio/appmetrica/analytics/impl/Hl;

    move-result-object v0

    .line 5
    new-instance v1, Lio/appmetrica/analytics/impl/cm;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/cm;-><init>(Lio/appmetrica/analytics/impl/dm;)V

    invoke-static {v0, p1, p2, v1}, Lio/appmetrica/analytics/impl/El;->a(Lio/appmetrica/analytics/impl/Hl;Ljava/util/Collection;Ljava/util/Map;Lc74;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 p1, p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/dm;->a:Lio/appmetrica/analytics/impl/em;

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/em;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final declared-synchronized b(Lio/appmetrica/analytics/impl/Hl;)V
    .locals 3

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dm;->a:Lio/appmetrica/analytics/impl/em;

    .line 4
    iget-object v0, v0, Lio/appmetrica/analytics/impl/em;->l:Lio/appmetrica/analytics/impl/kl;

    .line 5
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/B5;->a(Lio/appmetrica/analytics/impl/Hl;)V

    .line 6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dm;->a:Lio/appmetrica/analytics/impl/em;

    .line 7
    iget-object v0, v0, Lio/appmetrica/analytics/impl/em;->g:Lio/appmetrica/analytics/impl/Gl;

    .line 8
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Gl;->b:Lio/appmetrica/analytics/impl/Tn;

    .line 9
    iget-object v2, p1, Lio/appmetrica/analytics/impl/Hl;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Tn;->a(Ljava/lang/String;)V

    .line 11
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Gl;->b:Lio/appmetrica/analytics/impl/Tn;

    .line 12
    iget-object v2, p1, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Tn;->b(Ljava/lang/String;)V

    .line 14
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Gl;->a:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    .line 15
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Hl;->c:Lio/appmetrica/analytics/impl/Ll;

    .line 16
    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dm;->a:Lio/appmetrica/analytics/impl/em;

    .line 18
    iget-object v0, v0, Lio/appmetrica/analytics/impl/em;->e:Lio/appmetrica/analytics/impl/Jl;

    .line 19
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Jl;->a(Lio/appmetrica/analytics/impl/Hl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized c()Lio/appmetrica/analytics/networktasks/internal/NetworkTask;
    .locals 14

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/dm;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/dm;->b:Lio/appmetrica/analytics/networktasks/internal/NetworkTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/dm;->d()Lio/appmetrica/analytics/impl/Dl;

    move-result-object v0

    sget-object v1, Lio/appmetrica/analytics/impl/Nd;->a:Lio/appmetrica/analytics/impl/Nd;

    new-instance v1, Lio/appmetrica/analytics/impl/zl;

    new-instance v2, Lio/appmetrica/analytics/impl/Yd;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Yd;-><init>()V

    sget-object v3, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/ua;->o()Lio/appmetrica/analytics/impl/bk;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/appmetrica/analytics/impl/zl;-><init>(Lio/appmetrica/analytics/impl/Yd;Lio/appmetrica/analytics/impl/od;)V

    new-instance v10, Lio/appmetrica/analytics/networktasks/internal/FinalConfigProvider;

    invoke-direct {v10, v0}, Lio/appmetrica/analytics/networktasks/internal/FinalConfigProvider;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;

    new-instance v3, Lio/appmetrica/analytics/coreutils/internal/executors/SynchronizedBlockingExecutor;

    invoke-direct {v3}, Lio/appmetrica/analytics/coreutils/internal/executors/SynchronizedBlockingExecutor;-><init>()V

    new-instance v11, Lio/appmetrica/analytics/impl/E9;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/dm;->a:Lio/appmetrica/analytics/impl/em;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/em;->a:Landroid/content/Context;

    invoke-direct {v11, v2}, Lio/appmetrica/analytics/impl/E9;-><init>(Landroid/content/Context;)V

    new-instance v12, Lio/appmetrica/analytics/networktasks/internal/AllHostsExponentialBackoffPolicy;

    sget-object v2, Lio/appmetrica/analytics/impl/Nd;->a:Lio/appmetrica/analytics/impl/Nd;

    sget-object v4, Lio/appmetrica/analytics/impl/Ld;->b:Lio/appmetrica/analytics/impl/Ld;

    invoke-virtual {v2, v4}, Lio/appmetrica/analytics/impl/Nd;->a(Lio/appmetrica/analytics/impl/Ld;)Lio/appmetrica/analytics/networktasks/internal/ExponentialBackoffDataHolder;

    move-result-object v2

    invoke-direct {v12, v2}, Lio/appmetrica/analytics/networktasks/internal/AllHostsExponentialBackoffPolicy;-><init>(Lio/appmetrica/analytics/networktasks/internal/ExponentialBackoffDataHolder;)V

    new-instance v13, Lio/appmetrica/analytics/impl/bm;

    new-instance v7, Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;

    invoke-direct {v7, v1, v10}, Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;-><init>(Lio/appmetrica/analytics/networktasks/internal/IParamsAppender;Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;)V

    new-instance v8, Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;

    invoke-direct {v8}, Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;-><init>()V

    new-instance v9, Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

    new-instance v1, Lio/appmetrica/analytics/networktasks/internal/DefaultResponseValidityChecker;

    invoke-direct {v1}, Lio/appmetrica/analytics/networktasks/internal/DefaultResponseValidityChecker;-><init>()V

    invoke-direct {v9, v1}, Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;-><init>(Lio/appmetrica/analytics/networktasks/internal/ResponseValidityChecker;)V

    new-instance v6, Lio/appmetrica/analytics/impl/tl;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/tl;-><init>()V

    move-object v4, v13

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lio/appmetrica/analytics/impl/bm;-><init>(Lio/appmetrica/analytics/impl/dm;Lio/appmetrica/analytics/impl/tl;Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;)V

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v7

    sget-object v8, Lio/appmetrica/analytics/impl/Nd;->c:Ljava/lang/String;

    move-object v2, v0

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v2 .. v8}, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;-><init>(Ljava/util/concurrent/Executor;Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;Lio/appmetrica/analytics/networktasks/internal/ExponentialBackoffPolicy;Lio/appmetrica/analytics/networktasks/internal/UnderlyingNetworkTask;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/dm;->b:Lio/appmetrica/analytics/networktasks/internal/NetworkTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final d()Lio/appmetrica/analytics/impl/Dl;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/dm;->a:Lio/appmetrica/analytics/impl/em;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/em;->l:Lio/appmetrica/analytics/impl/kl;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/B5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Dl;

    return-object p0
.end method

.method public final e()Lio/appmetrica/analytics/impl/Hl;
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/dm;->a:Lio/appmetrica/analytics/impl/em;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/em;->l:Lio/appmetrica/analytics/impl/kl;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/B5;->c:Lio/appmetrica/analytics/impl/W5;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/W5;->a:Lio/appmetrica/analytics/impl/Hl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()V
    .locals 6

    iget-object v0, p0, Lio/appmetrica/analytics/impl/dm;->a:Lio/appmetrica/analytics/impl/em;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/em;->l:Lio/appmetrica/analytics/impl/kl;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/B5;->c:Lio/appmetrica/analytics/impl/W5;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/W5;->a:Lio/appmetrica/analytics/impl/Hl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, v1, Lio/appmetrica/analytics/impl/Hl;->c:Lio/appmetrica/analytics/impl/Ll;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/Ll;->m:Lio/appmetrica/analytics/impl/C4;

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/Ll;->a(Lio/appmetrica/analytics/impl/C4;)Lio/appmetrica/analytics/impl/Kl;

    move-result-object v0

    iget-object v2, v1, Lio/appmetrica/analytics/impl/Hl;->a:Ljava/lang/String;

    iget-object v3, v1, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/lang/String;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/dm;->a:Lio/appmetrica/analytics/impl/em;

    iget-object v4, v4, Lio/appmetrica/analytics/impl/em;->n:Lio/appmetrica/analytics/impl/Mn;

    iget-object v5, v1, Lio/appmetrica/analytics/impl/Hl;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lio/appmetrica/analytics/impl/Mn;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lio/appmetrica/analytics/impl/dm;->a:Lio/appmetrica/analytics/impl/em;

    iget-object v4, v4, Lio/appmetrica/analytics/impl/em;->m:Lio/appmetrica/analytics/impl/ud;

    invoke-virtual {v4}, Lio/appmetrica/analytics/impl/ud;->a()Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v4

    iget-object v4, v4, Lio/appmetrica/analytics/internal/IdentifiersResult;->id:Ljava/lang/String;

    iput-object v4, v0, Lio/appmetrica/analytics/impl/Kl;->a:Ljava/lang/String;

    :cond_0
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Hl;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lio/appmetrica/analytics/impl/dm;->a:Lio/appmetrica/analytics/impl/em;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/em;->h:Lio/appmetrica/analytics/impl/S7;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/S7;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    :cond_2
    iget-object v1, p0, Lio/appmetrica/analytics/impl/dm;->a:Lio/appmetrica/analytics/impl/em;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/em;->c:Lio/appmetrica/analytics/impl/Bl;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Bl;->e:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Kl;->g:Ljava/util/List;

    new-instance v1, Lio/appmetrica/analytics/impl/Hl;

    new-instance v4, Lio/appmetrica/analytics/impl/Ll;

    invoke-direct {v4, v0}, Lio/appmetrica/analytics/impl/Ll;-><init>(Lio/appmetrica/analytics/impl/Kl;)V

    invoke-direct {v1, v2, v3, v4}, Lio/appmetrica/analytics/impl/Hl;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/Ll;)V

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/dm;->b(Lio/appmetrica/analytics/impl/Hl;)V

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/dm;->a(Lio/appmetrica/analytics/impl/Hl;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final declared-synchronized g()Z
    .locals 8

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/dm;->e()Lio/appmetrica/analytics/impl/Hl;

    move-result-object v1

    sget-object v2, Lio/appmetrica/analytics/impl/El;->a:Ljava/util/Set;

    iget-boolean v2, v1, Lio/appmetrica/analytics/impl/Hl;->w:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-wide v4, v1, Lio/appmetrica/analytics/impl/Hl;->o:J

    iget-object v2, v1, Lio/appmetrica/analytics/impl/Hl;->A:Lio/appmetrica/analytics/impl/fm;

    iget v2, v2, Lio/appmetrica/analytics/impl/fm;->a:I

    int-to-long v6, v2

    add-long/2addr v4, v6

    sget-object v2, Lio/appmetrica/analytics/impl/El;->b:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-virtual {v2}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->currentTimeSeconds()J

    move-result-wide v6

    cmp-long v2, v6, v4

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    if-nez v2, :cond_3

    iget-object v2, v1, Lio/appmetrica/analytics/impl/Hl;->d:Ljava/lang/String;

    invoke-static {v2}, Lio/appmetrica/analytics/impl/El;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lio/appmetrica/analytics/impl/Hl;->a:Ljava/lang/String;

    invoke-static {v2}, Lio/appmetrica/analytics/impl/El;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/lang/String;

    invoke-static {v2}, Lio/appmetrica/analytics/impl/El;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v0

    :cond_2
    xor-int/lit8 v2, v3, 0x1

    iget-object v4, p0, Lio/appmetrica/analytics/impl/dm;->a:Lio/appmetrica/analytics/impl/em;

    iget-object v4, v4, Lio/appmetrica/analytics/impl/em;->k:Lio/appmetrica/analytics/impl/W3;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/dm;->d()Lio/appmetrica/analytics/impl/Dl;

    move-result-object v5

    iget-object v5, v5, Lio/appmetrica/analytics/impl/Dl;->h:Ljava/util/Map;

    iget-object v6, p0, Lio/appmetrica/analytics/impl/dm;->a:Lio/appmetrica/analytics/impl/em;

    iget-object v6, v6, Lio/appmetrica/analytics/impl/em;->j:Lio/appmetrica/analytics/impl/T3;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v1, v6}, Lio/appmetrica/analytics/impl/W3;->a(Ljava/util/Map;Lio/appmetrica/analytics/impl/Hl;Lio/appmetrica/analytics/impl/T3;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    monitor-exit p0

    return v0

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized h()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lio/appmetrica/analytics/impl/dm;->b:Lio/appmetrica/analytics/networktasks/internal/NetworkTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
