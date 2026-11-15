.class public final Lio/appmetrica/analytics/impl/Il;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/ne;

.field public final b:Lio/appmetrica/analytics/impl/ma;

.field public final c:Lio/appmetrica/analytics/impl/km;

.field public final d:Lio/appmetrica/analytics/impl/s2;

.field public final e:Lio/appmetrica/analytics/impl/z3;

.field public final f:Lio/appmetrica/analytics/impl/q2;

.field public final g:Lio/appmetrica/analytics/impl/D6;

.field public final h:Lio/appmetrica/analytics/impl/gm;

.field public final i:Lio/appmetrica/analytics/impl/pd;

.field public final j:Lio/appmetrica/analytics/impl/J9;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/ne;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/ne;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/ne;

    new-instance v0, Lio/appmetrica/analytics/impl/ma;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/ma;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Il;->b:Lio/appmetrica/analytics/impl/ma;

    new-instance v0, Lio/appmetrica/analytics/impl/km;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/km;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Il;->c:Lio/appmetrica/analytics/impl/km;

    new-instance v0, Lio/appmetrica/analytics/impl/s2;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/s2;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Il;->d:Lio/appmetrica/analytics/impl/s2;

    new-instance v0, Lio/appmetrica/analytics/impl/z3;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/z3;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Il;->e:Lio/appmetrica/analytics/impl/z3;

    new-instance v0, Lio/appmetrica/analytics/impl/q2;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/q2;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Il;->f:Lio/appmetrica/analytics/impl/q2;

    new-instance v0, Lio/appmetrica/analytics/impl/D6;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/D6;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Il;->g:Lio/appmetrica/analytics/impl/D6;

    new-instance v0, Lio/appmetrica/analytics/impl/gm;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/gm;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Il;->h:Lio/appmetrica/analytics/impl/gm;

    new-instance v0, Lio/appmetrica/analytics/impl/pd;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/pd;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Il;->i:Lio/appmetrica/analytics/impl/pd;

    new-instance v0, Lio/appmetrica/analytics/impl/J9;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/J9;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Il;->j:Lio/appmetrica/analytics/impl/J9;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Zl;)Lio/appmetrica/analytics/impl/Ll;
    .locals 7
    .param p1    # Lio/appmetrica/analytics/impl/Zl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 50
    new-instance v0, Lio/appmetrica/analytics/impl/Kl;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Il;->b:Lio/appmetrica/analytics/impl/ma;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Zl;->i:Lio/appmetrica/analytics/impl/Ul;

    .line 51
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/ma;->a(Lio/appmetrica/analytics/impl/Ul;)Lio/appmetrica/analytics/impl/C4;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Kl;-><init>(Lio/appmetrica/analytics/impl/C4;)V

    iget-object v1, p1, Lio/appmetrica/analytics/impl/Zl;->a:Ljava/lang/String;

    .line 52
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Kl;->a:Ljava/lang/String;

    .line 53
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Zl;->j:Ljava/lang/String;

    .line 54
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Kl;->j:Ljava/lang/String;

    .line 55
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Zl;->d:Ljava/lang/String;

    .line 56
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Kl;->c:Ljava/lang/String;

    .line 57
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Zl;->c:[Ljava/lang/String;

    .line 58
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 59
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Kl;->b:Ljava/util/List;

    .line 60
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Zl;->g:[Ljava/lang/String;

    .line 61
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 62
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Kl;->g:Ljava/util/List;

    .line 63
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Zl;->f:[Ljava/lang/String;

    .line 64
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 65
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Kl;->f:Ljava/util/List;

    .line 66
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Zl;->e:Ljava/lang/String;

    .line 67
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Kl;->d:Ljava/lang/String;

    .line 68
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Zl;->r:Ljava/lang/String;

    .line 69
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Kl;->e:Ljava/lang/String;

    .line 70
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Zl;->o:[Ljava/lang/String;

    .line 71
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 72
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Kl;->h:Ljava/util/List;

    .line 73
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Zl;->k:Ljava/lang/String;

    .line 74
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Kl;->k:Ljava/lang/String;

    .line 75
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Zl;->l:Ljava/lang/String;

    .line 76
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Kl;->l:Ljava/lang/String;

    .line 77
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/Zl;->m:Z

    .line 78
    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/Kl;->q:Z

    .line 79
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/Zl;->b:J

    .line 80
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/Kl;->o:J

    .line 81
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/Zl;->q:Z

    .line 82
    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/Kl;->p:Z

    .line 83
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/Zl;->s:J

    .line 84
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/Kl;->t:J

    .line 85
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/Zl;->t:J

    .line 86
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/Kl;->u:J

    .line 87
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Zl;->n:Ljava/lang/String;

    .line 88
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Kl;->r:Ljava/lang/String;

    .line 89
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/Zl;->u:Z

    .line 90
    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/Kl;->v:Z

    .line 91
    new-instance v1, Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    iget v2, p1, Lio/appmetrica/analytics/impl/Zl;->w:I

    iget v3, p1, Lio/appmetrica/analytics/impl/Zl;->x:I

    invoke-direct {v1, v2, v3}, Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;-><init>(II)V

    .line 92
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Kl;->w:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    .line 93
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Il;->g:Lio/appmetrica/analytics/impl/D6;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Zl;->h:[Lio/appmetrica/analytics/impl/Sl;

    .line 94
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/D6;->a([Lio/appmetrica/analytics/impl/Sl;)Ljava/util/Map;

    move-result-object v1

    .line 95
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Kl;->i:Ljava/util/Map;

    .line 96
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Zl;->v:Lio/appmetrica/analytics/impl/Wl;

    if-eqz v1, :cond_0

    .line 97
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/ne;

    .line 98
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    new-instance v2, Lio/appmetrica/analytics/impl/me;

    iget-wide v3, v1, Lio/appmetrica/analytics/impl/Wl;->a:J

    iget-wide v5, v1, Lio/appmetrica/analytics/impl/Wl;->b:J

    invoke-direct {v2, v3, v4, v5, v6}, Lio/appmetrica/analytics/impl/me;-><init>(JJ)V

    .line 100
    iput-object v2, v0, Lio/appmetrica/analytics/impl/Kl;->n:Lio/appmetrica/analytics/impl/me;

    .line 101
    :cond_0
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Zl;->p:Lio/appmetrica/analytics/impl/Yl;

    if-eqz v1, :cond_1

    .line 102
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Il;->c:Lio/appmetrica/analytics/impl/km;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    new-instance v2, Lio/appmetrica/analytics/impl/jm;

    iget-wide v3, v1, Lio/appmetrica/analytics/impl/Yl;->a:J

    invoke-direct {v2, v3, v4}, Lio/appmetrica/analytics/impl/jm;-><init>(J)V

    .line 104
    iput-object v2, v0, Lio/appmetrica/analytics/impl/Kl;->s:Lio/appmetrica/analytics/impl/jm;

    .line 105
    :cond_1
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Zl;->z:Lio/appmetrica/analytics/impl/Ql;

    if-eqz v1, :cond_2

    .line 106
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Il;->d:Lio/appmetrica/analytics/impl/s2;

    .line 107
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    new-instance v2, Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    iget v3, v1, Lio/appmetrica/analytics/impl/Ql;->a:I

    iget v1, v1, Lio/appmetrica/analytics/impl/Ql;->b:I

    invoke-direct {v2, v3, v1}, Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;-><init>(II)V

    .line 109
    iput-object v2, v0, Lio/appmetrica/analytics/impl/Kl;->x:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    .line 110
    :cond_2
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Zl;->y:Lio/appmetrica/analytics/impl/Rl;

    if-eqz v1, :cond_3

    .line 111
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Il;->e:Lio/appmetrica/analytics/impl/z3;

    .line 112
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    new-instance v2, Lio/appmetrica/analytics/impl/x3;

    iget-wide v3, v1, Lio/appmetrica/analytics/impl/Rl;->a:J

    invoke-direct {v2, v3, v4}, Lio/appmetrica/analytics/impl/x3;-><init>(J)V

    .line 114
    iput-object v2, v0, Lio/appmetrica/analytics/impl/Kl;->y:Lio/appmetrica/analytics/impl/x3;

    .line 115
    :cond_3
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Zl;->A:Lio/appmetrica/analytics/impl/Pl;

    if-eqz v1, :cond_4

    .line 116
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Il;->f:Lio/appmetrica/analytics/impl/q2;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/q2;->a(Lio/appmetrica/analytics/impl/Pl;)Lio/appmetrica/analytics/impl/p2;

    move-result-object v1

    .line 117
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Kl;->z:Lio/appmetrica/analytics/impl/p2;

    .line 118
    :cond_4
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Zl;->B:Lio/appmetrica/analytics/impl/Xl;

    if-eqz v1, :cond_5

    .line 119
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Il;->h:Lio/appmetrica/analytics/impl/gm;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    new-instance v2, Lio/appmetrica/analytics/impl/fm;

    iget v1, v1, Lio/appmetrica/analytics/impl/Xl;->a:I

    invoke-direct {v2, v1}, Lio/appmetrica/analytics/impl/fm;-><init>(I)V

    .line 121
    iput-object v2, v0, Lio/appmetrica/analytics/impl/Kl;->A:Lio/appmetrica/analytics/impl/fm;

    .line 122
    :cond_5
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Il;->i:Lio/appmetrica/analytics/impl/pd;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Zl;->C:[Lio/appmetrica/analytics/impl/Vl;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/pd;->a([Lio/appmetrica/analytics/impl/Vl;)Ljava/util/Map;

    move-result-object v1

    .line 123
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Kl;->B:Ljava/util/Map;

    .line 124
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Zl;->D:Lio/appmetrica/analytics/impl/Tl;

    if-eqz p1, :cond_6

    .line 125
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Il;->j:Lio/appmetrica/analytics/impl/J9;

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    new-instance p0, Lio/appmetrica/analytics/impl/I9;

    .line 128
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/Tl;->a:J

    .line 129
    invoke-direct {p0, v1, v2}, Lio/appmetrica/analytics/impl/I9;-><init>(J)V

    .line 130
    iput-object p0, v0, Lio/appmetrica/analytics/impl/Kl;->C:Lio/appmetrica/analytics/impl/I9;

    .line 131
    :cond_6
    new-instance p0, Lio/appmetrica/analytics/impl/Ll;

    .line 132
    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/Ll;-><init>(Lio/appmetrica/analytics/impl/Kl;)V

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Ll;)Lio/appmetrica/analytics/impl/Zl;
    .locals 5
    .param p1    # Lio/appmetrica/analytics/impl/Ll;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Zl;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Zl;-><init>()V

    .line 2
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/Ll;->u:J

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/Zl;->s:J

    .line 3
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/Ll;->v:J

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/Zl;->t:J

    .line 4
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ll;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Zl;->a:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ll;->f:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Zl;->f:[Ljava/lang/String;

    .line 7
    :cond_1
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ll;->g:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Zl;->g:[Ljava/lang/String;

    .line 9
    :cond_2
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ll;->b:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Zl;->c:[Ljava/lang/String;

    .line 11
    :cond_3
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ll;->h:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Zl;->o:[Ljava/lang/String;

    .line 13
    :cond_4
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ll;->i:Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 14
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Il;->g:Lio/appmetrica/analytics/impl/D6;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/D6;->a(Ljava/util/Map;)[Lio/appmetrica/analytics/impl/Sl;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Zl;->h:[Lio/appmetrica/analytics/impl/Sl;

    .line 15
    :cond_5
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ll;->s:Lio/appmetrica/analytics/impl/me;

    if-eqz v1, :cond_6

    .line 16
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/ne;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/ne;->a(Lio/appmetrica/analytics/impl/me;)Lio/appmetrica/analytics/impl/Wl;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Zl;->v:Lio/appmetrica/analytics/impl/Wl;

    .line 17
    :cond_6
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ll;->j:Ljava/lang/String;

    if-eqz v1, :cond_7

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Zl;->j:Ljava/lang/String;

    .line 18
    :cond_7
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ll;->c:Ljava/lang/String;

    if-eqz v1, :cond_8

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Zl;->d:Ljava/lang/String;

    .line 19
    :cond_8
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ll;->d:Ljava/lang/String;

    if-eqz v1, :cond_9

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Zl;->e:Ljava/lang/String;

    .line 20
    :cond_9
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ll;->e:Ljava/lang/String;

    if-eqz v1, :cond_a

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Zl;->r:Ljava/lang/String;

    .line 21
    :cond_a
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Il;->b:Lio/appmetrica/analytics/impl/ma;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Ll;->m:Lio/appmetrica/analytics/impl/C4;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/ma;->a(Lio/appmetrica/analytics/impl/C4;)Lio/appmetrica/analytics/impl/Ul;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Zl;->i:Lio/appmetrica/analytics/impl/Ul;

    .line 22
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ll;->k:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 23
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Zl;->k:Ljava/lang/String;

    .line 24
    :cond_b
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ll;->l:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 25
    iput-object v1, v0, Lio/appmetrica/analytics/impl/Zl;->l:Ljava/lang/String;

    .line 26
    :cond_c
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/Ll;->p:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/Zl;->m:Z

    .line 27
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/Ll;->n:J

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/Zl;->b:J

    .line 28
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/Ll;->o:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/Zl;->q:Z

    .line 29
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ll;->t:Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    iget v2, v1, Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;->maxIntervalSeconds:I

    iput v2, v0, Lio/appmetrica/analytics/impl/Zl;->w:I

    .line 30
    iget v1, v1, Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;->exponentialMultiplier:I

    iput v1, v0, Lio/appmetrica/analytics/impl/Zl;->x:I

    .line 31
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ll;->q:Ljava/lang/String;

    if-eqz v1, :cond_d

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Zl;->n:Ljava/lang/String;

    .line 32
    :cond_d
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ll;->r:Lio/appmetrica/analytics/impl/jm;

    if-eqz v1, :cond_e

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Il;->c:Lio/appmetrica/analytics/impl/km;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    new-instance v2, Lio/appmetrica/analytics/impl/Yl;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Yl;-><init>()V

    .line 34
    iget-wide v3, v1, Lio/appmetrica/analytics/impl/jm;->a:J

    iput-wide v3, v2, Lio/appmetrica/analytics/impl/Yl;->a:J

    .line 35
    iput-object v2, v0, Lio/appmetrica/analytics/impl/Zl;->p:Lio/appmetrica/analytics/impl/Yl;

    .line 36
    :cond_e
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/Ll;->w:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/Zl;->u:Z

    .line 37
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ll;->x:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    if-eqz v1, :cond_f

    .line 38
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Il;->d:Lio/appmetrica/analytics/impl/s2;

    .line 39
    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/s2;->a(Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;)Lio/appmetrica/analytics/impl/Ql;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Zl;->z:Lio/appmetrica/analytics/impl/Ql;

    .line 40
    :cond_f
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ll;->y:Lio/appmetrica/analytics/impl/x3;

    if-eqz v1, :cond_10

    .line 41
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Il;->e:Lio/appmetrica/analytics/impl/z3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    new-instance v2, Lio/appmetrica/analytics/impl/Rl;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Rl;-><init>()V

    .line 43
    iget-wide v3, v1, Lio/appmetrica/analytics/impl/x3;->a:J

    iput-wide v3, v2, Lio/appmetrica/analytics/impl/Rl;->a:J

    .line 44
    iput-object v2, v0, Lio/appmetrica/analytics/impl/Zl;->y:Lio/appmetrica/analytics/impl/Rl;

    .line 45
    :cond_10
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ll;->z:Lio/appmetrica/analytics/impl/p2;

    if-eqz v1, :cond_11

    .line 46
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Il;->f:Lio/appmetrica/analytics/impl/q2;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/q2;->a(Lio/appmetrica/analytics/impl/p2;)Lio/appmetrica/analytics/impl/Pl;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Zl;->A:Lio/appmetrica/analytics/impl/Pl;

    .line 47
    :cond_11
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Il;->h:Lio/appmetrica/analytics/impl/gm;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Ll;->A:Lio/appmetrica/analytics/impl/fm;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/gm;->a(Lio/appmetrica/analytics/impl/fm;)Lio/appmetrica/analytics/impl/Xl;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Zl;->B:Lio/appmetrica/analytics/impl/Xl;

    .line 48
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Il;->i:Lio/appmetrica/analytics/impl/pd;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Ll;->B:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/pd;->a(Ljava/util/Map;)[Lio/appmetrica/analytics/impl/Vl;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/Zl;->C:[Lio/appmetrica/analytics/impl/Vl;

    .line 49
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Il;->j:Lio/appmetrica/analytics/impl/J9;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Ll;->C:Lio/appmetrica/analytics/impl/I9;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/J9;->a(Lio/appmetrica/analytics/impl/I9;)Lio/appmetrica/analytics/impl/Tl;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/impl/Zl;->D:Lio/appmetrica/analytics/impl/Tl;

    return-object v0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lio/appmetrica/analytics/impl/Ll;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Il;->a(Lio/appmetrica/analytics/impl/Ll;)Lio/appmetrica/analytics/impl/Zl;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lio/appmetrica/analytics/impl/Zl;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Il;->a(Lio/appmetrica/analytics/impl/Zl;)Lio/appmetrica/analytics/impl/Ll;

    move-result-object p0

    return-object p0
.end method
