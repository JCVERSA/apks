.class public final Lcom/google/android/exoplayer2/p1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/p1$b;
    }
.end annotation


# static fields
.field private static final G:Lcom/google/android/exoplayer2/p1;

.field public static final H:Lcom/google/android/exoplayer2/k$a;


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final D:I

.field public final E:I

.field private F:I

.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Ljava/lang/String;

.field public final j:Lcom/google/android/exoplayer2/metadata/Metadata;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:I

.field public final n:Ljava/util/List;

.field public final o:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field public final p:J

.field public final q:I

.field public final r:I

.field public final s:F

.field public final t:I

.field public final u:F

.field public final v:[B

.field public final w:I

.field public final x:Lcom/google/android/exoplayer2/video/c;

.field public final y:I

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/p1$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/exoplayer2/p1$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p1$b;->E()Lcom/google/android/exoplayer2/p1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/android/exoplayer2/p1;->G:Lcom/google/android/exoplayer2/p1;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/exoplayer2/o1;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/google/android/exoplayer2/o1;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/google/android/exoplayer2/p1;->H:Lcom/google/android/exoplayer2/k$a;

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/p1$b;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->a(Lcom/google/android/exoplayer2/p1$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/p1;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->l(Lcom/google/android/exoplayer2/p1$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/p1;->b:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->w(Lcom/google/android/exoplayer2/p1$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->D0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/p1;->c:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->y(Lcom/google/android/exoplayer2/p1$b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/p1;->d:I

    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->z(Lcom/google/android/exoplayer2/p1$b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/p1;->e:I

    .line 8
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->A(Lcom/google/android/exoplayer2/p1$b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/p1;->f:I

    .line 9
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->B(Lcom/google/android/exoplayer2/p1$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/p1;->g:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    .line 10
    :cond_0
    iput v0, p0, Lcom/google/android/exoplayer2/p1;->h:I

    .line 11
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->C(Lcom/google/android/exoplayer2/p1$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/p1;->i:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->D(Lcom/google/android/exoplayer2/p1$b;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/p1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 13
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->b(Lcom/google/android/exoplayer2/p1$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/p1;->k:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->c(Lcom/google/android/exoplayer2/p1$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/p1;->l:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->d(Lcom/google/android/exoplayer2/p1$b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/p1;->m:I

    .line 16
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->e(Lcom/google/android/exoplayer2/p1$b;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->e(Lcom/google/android/exoplayer2/p1$b;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/p1;->n:Ljava/util/List;

    .line 17
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->f(Lcom/google/android/exoplayer2/p1$b;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/p1;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 18
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->g(Lcom/google/android/exoplayer2/p1$b;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/p1;->p:J

    .line 19
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->h(Lcom/google/android/exoplayer2/p1$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/p1;->q:I

    .line 20
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->i(Lcom/google/android/exoplayer2/p1$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/p1;->r:I

    .line 21
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->j(Lcom/google/android/exoplayer2/p1$b;)F

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/p1;->s:F

    .line 22
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->k(Lcom/google/android/exoplayer2/p1$b;)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->k(Lcom/google/android/exoplayer2/p1$b;)I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/google/android/exoplayer2/p1;->t:I

    .line 23
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->m(Lcom/google/android/exoplayer2/p1$b;)F

    move-result v1

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v1, v1, v4

    if-nez v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->m(Lcom/google/android/exoplayer2/p1$b;)F

    move-result v1

    :goto_2
    iput v1, p0, Lcom/google/android/exoplayer2/p1;->u:F

    .line 24
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->n(Lcom/google/android/exoplayer2/p1$b;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/p1;->v:[B

    .line 25
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->o(Lcom/google/android/exoplayer2/p1$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/p1;->w:I

    .line 26
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->p(Lcom/google/android/exoplayer2/p1$b;)Lcom/google/android/exoplayer2/video/c;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/p1;->x:Lcom/google/android/exoplayer2/video/c;

    .line 27
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->q(Lcom/google/android/exoplayer2/p1$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/p1;->y:I

    .line 28
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->r(Lcom/google/android/exoplayer2/p1$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/p1;->z:I

    .line 29
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->s(Lcom/google/android/exoplayer2/p1$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/p1;->A:I

    .line 30
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->t(Lcom/google/android/exoplayer2/p1$b;)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->t(Lcom/google/android/exoplayer2/p1$b;)I

    move-result v1

    :goto_3
    iput v1, p0, Lcom/google/android/exoplayer2/p1;->B:I

    .line 31
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->u(Lcom/google/android/exoplayer2/p1$b;)I

    move-result v1

    if-ne v1, v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->u(Lcom/google/android/exoplayer2/p1$b;)I

    move-result v3

    :goto_4
    iput v3, p0, Lcom/google/android/exoplayer2/p1;->C:I

    .line 32
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->v(Lcom/google/android/exoplayer2/p1$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/p1;->D:I

    .line 33
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->x(Lcom/google/android/exoplayer2/p1$b;)I

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    const/4 p1, 0x1

    .line 34
    iput p1, p0, Lcom/google/android/exoplayer2/p1;->E:I

    goto :goto_5

    .line 35
    :cond_6
    invoke-static {p1}, Lcom/google/android/exoplayer2/p1$b;->x(Lcom/google/android/exoplayer2/p1$b;)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/p1;->E:I

    :goto_5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/p1$b;Lcom/google/android/exoplayer2/p1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/p1;-><init>(Lcom/google/android/exoplayer2/p1$b;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/p1;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/p1;->e(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/p1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    move-object p0, p1

    .line 5
    :goto_0
    return-object p0
.end method

.method private static e(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/p1;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/p1$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/exoplayer2/p1$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/d;->a(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v1}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    sget-object v3, Lcom/google/android/exoplayer2/p1;->G:Lcom/google/android/exoplayer2/p1;

    .line 19
    .line 20
    iget-object v4, v3, Lcom/google/android/exoplayer2/p1;->a:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/p1;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/p1$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v4, 0x1

    .line 33
    invoke-static {v4}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget-object v5, v3, Lcom/google/android/exoplayer2/p1;->b:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/p1;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/p1$b;->U(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const/4 v4, 0x2

    .line 54
    invoke-static {v4}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    iget-object v5, v3, Lcom/google/android/exoplayer2/p1;->c:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/p1;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/p1$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const/4 v4, 0x3

    .line 75
    invoke-static {v4}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    iget v5, v3, Lcom/google/android/exoplayer2/p1;->d:I

    .line 80
    .line 81
    invoke-virtual {p0, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/p1$b;->g0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const/4 v4, 0x4

    .line 90
    invoke-static {v4}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    iget v5, v3, Lcom/google/android/exoplayer2/p1;->e:I

    .line 95
    .line 96
    invoke-virtual {p0, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/p1$b;->c0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    const/4 v4, 0x5

    .line 105
    invoke-static {v4}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    iget v5, v3, Lcom/google/android/exoplayer2/p1;->f:I

    .line 110
    .line 111
    invoke-virtual {p0, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/p1$b;->G(I)Lcom/google/android/exoplayer2/p1$b;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    const/4 v4, 0x6

    .line 120
    invoke-static {v4}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    iget v5, v3, Lcom/google/android/exoplayer2/p1;->g:I

    .line 125
    .line 126
    invoke-virtual {p0, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/p1$b;->Z(I)Lcom/google/android/exoplayer2/p1$b;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    const/4 v4, 0x7

    .line 135
    invoke-static {v4}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    iget-object v5, v3, Lcom/google/android/exoplayer2/p1;->i:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/p1;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    check-cast v4, Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/p1$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    const/16 v4, 0x8

    .line 156
    .line 157
    invoke-static {v4}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    check-cast v4, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 166
    .line 167
    iget-object v5, v3, Lcom/google/android/exoplayer2/p1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 168
    .line 169
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/p1;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    check-cast v4, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 174
    .line 175
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/p1$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/p1$b;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    const/16 v4, 0x9

    .line 180
    .line 181
    invoke-static {v4}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    iget-object v5, v3, Lcom/google/android/exoplayer2/p1;->k:Ljava/lang/String;

    .line 190
    .line 191
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/p1;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    check-cast v4, Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/p1$b;->K(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    const/16 v4, 0xa

    .line 202
    .line 203
    invoke-static {v4}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    iget-object v5, v3, Lcom/google/android/exoplayer2/p1;->l:Ljava/lang/String;

    .line 212
    .line 213
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/p1;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    check-cast v4, Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/p1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    const/16 v4, 0xb

    .line 224
    .line 225
    invoke-static {v4}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    iget v3, v3, Lcom/google/android/exoplayer2/p1;->m:I

    .line 230
    .line 231
    invoke-virtual {p0, v4, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/p1$b;->W(I)Lcom/google/android/exoplayer2/p1$b;

    .line 236
    .line 237
    .line 238
    new-instance v2, Ljava/util/ArrayList;

    .line 239
    .line 240
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .line 242
    .line 243
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/p1;->i(I)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    if-nez v3, :cond_1

    .line 252
    .line 253
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/p1$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/p1$b;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    const/16 v2, 0xd

    .line 258
    .line 259
    invoke-static {v2}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    check-cast v2, Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 268
    .line 269
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/p1$b;->M(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/p1$b;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    const/16 v2, 0xe

    .line 274
    .line 275
    invoke-static {v2}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    sget-object v3, Lcom/google/android/exoplayer2/p1;->G:Lcom/google/android/exoplayer2/p1;

    .line 280
    .line 281
    iget-wide v4, v3, Lcom/google/android/exoplayer2/p1;->p:J

    .line 282
    .line 283
    invoke-virtual {p0, v2, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 284
    .line 285
    .line 286
    move-result-wide v4

    .line 287
    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/p1$b;->i0(J)Lcom/google/android/exoplayer2/p1$b;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    const/16 v2, 0xf

    .line 292
    .line 293
    invoke-static {v2}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    iget v4, v3, Lcom/google/android/exoplayer2/p1;->q:I

    .line 298
    .line 299
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/p1$b;->j0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    const/16 v2, 0x10

    .line 308
    .line 309
    invoke-static {v2}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    iget v4, v3, Lcom/google/android/exoplayer2/p1;->r:I

    .line 314
    .line 315
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/p1$b;->Q(I)Lcom/google/android/exoplayer2/p1$b;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    const/16 v2, 0x11

    .line 324
    .line 325
    invoke-static {v2}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    iget v4, v3, Lcom/google/android/exoplayer2/p1;->s:F

    .line 330
    .line 331
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/p1$b;->P(F)Lcom/google/android/exoplayer2/p1$b;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    const/16 v2, 0x12

    .line 340
    .line 341
    invoke-static {v2}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    iget v4, v3, Lcom/google/android/exoplayer2/p1;->t:I

    .line 346
    .line 347
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/p1$b;->d0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    const/16 v2, 0x13

    .line 356
    .line 357
    invoke-static {v2}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    iget v4, v3, Lcom/google/android/exoplayer2/p1;->u:F

    .line 362
    .line 363
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/p1$b;->a0(F)Lcom/google/android/exoplayer2/p1$b;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    const/16 v2, 0x14

    .line 372
    .line 373
    invoke-static {v2}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/p1$b;->b0([B)Lcom/google/android/exoplayer2/p1$b;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    const/16 v2, 0x15

    .line 386
    .line 387
    invoke-static {v2}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    iget v4, v3, Lcom/google/android/exoplayer2/p1;->w:I

    .line 392
    .line 393
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/p1$b;->h0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 398
    .line 399
    .line 400
    const/16 v1, 0x16

    .line 401
    .line 402
    invoke-static {v1}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    if-eqz v1, :cond_0

    .line 411
    .line 412
    sget-object v2, Lcom/google/android/exoplayer2/video/c;->f:Lcom/google/android/exoplayer2/k$a;

    .line 413
    .line 414
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/k$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/k;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    check-cast v1, Lcom/google/android/exoplayer2/video/c;

    .line 419
    .line 420
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p1$b;->J(Lcom/google/android/exoplayer2/video/c;)Lcom/google/android/exoplayer2/p1$b;

    .line 421
    .line 422
    .line 423
    :cond_0
    const/16 v1, 0x17

    .line 424
    .line 425
    invoke-static {v1}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    iget v2, v3, Lcom/google/android/exoplayer2/p1;->y:I

    .line 430
    .line 431
    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 432
    .line 433
    .line 434
    move-result v1

    .line 435
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/p1$b;->H(I)Lcom/google/android/exoplayer2/p1$b;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    const/16 v2, 0x18

    .line 440
    .line 441
    invoke-static {v2}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    iget v4, v3, Lcom/google/android/exoplayer2/p1;->z:I

    .line 446
    .line 447
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 448
    .line 449
    .line 450
    move-result v2

    .line 451
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/p1$b;->f0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    const/16 v2, 0x19

    .line 456
    .line 457
    invoke-static {v2}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    iget v4, v3, Lcom/google/android/exoplayer2/p1;->A:I

    .line 462
    .line 463
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 464
    .line 465
    .line 466
    move-result v2

    .line 467
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/p1$b;->Y(I)Lcom/google/android/exoplayer2/p1$b;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    const/16 v2, 0x1a

    .line 472
    .line 473
    invoke-static {v2}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    iget v4, v3, Lcom/google/android/exoplayer2/p1;->B:I

    .line 478
    .line 479
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 480
    .line 481
    .line 482
    move-result v2

    .line 483
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/p1$b;->N(I)Lcom/google/android/exoplayer2/p1$b;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    const/16 v2, 0x1b

    .line 488
    .line 489
    invoke-static {v2}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    iget v4, v3, Lcom/google/android/exoplayer2/p1;->C:I

    .line 494
    .line 495
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 496
    .line 497
    .line 498
    move-result v2

    .line 499
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/p1$b;->O(I)Lcom/google/android/exoplayer2/p1$b;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    const/16 v2, 0x1c

    .line 504
    .line 505
    invoke-static {v2}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    iget v4, v3, Lcom/google/android/exoplayer2/p1;->D:I

    .line 510
    .line 511
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 512
    .line 513
    .line 514
    move-result v2

    .line 515
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/p1$b;->F(I)Lcom/google/android/exoplayer2/p1$b;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    const/16 v2, 0x1d

    .line 520
    .line 521
    invoke-static {v2}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v2

    .line 525
    iget v3, v3, Lcom/google/android/exoplayer2/p1;->E:I

    .line 526
    .line 527
    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 528
    .line 529
    .line 530
    move-result p0

    .line 531
    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/p1$b;->L(I)Lcom/google/android/exoplayer2/p1$b;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/p1$b;->E()Lcom/google/android/exoplayer2/p1;

    .line 535
    .line 536
    .line 537
    move-result-object p0

    .line 538
    return-object p0

    .line 539
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    add-int/lit8 v1, v1, 0x1

    .line 543
    .line 544
    goto/16 :goto_0
.end method

.method private static h(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x24

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static i(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0xc

    .line 7
    .line 8
    invoke-static {v1}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "_"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x24

    .line 21
    .line 22
    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/p1$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/p1$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/p1$b;-><init>(Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/p1$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public c(I)Lcom/google/android/exoplayer2/p1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p1;->b()Lcom/google/android/exoplayer2/p1$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/p1$b;->L(I)Lcom/google/android/exoplayer2/p1$b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/p1$b;->E()Lcom/google/android/exoplayer2/p1;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/google/android/exoplayer2/p1;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/p1;

    .line 19
    .line 20
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->F:I

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    iget v3, p1, Lcom/google/android/exoplayer2/p1;->F:I

    .line 25
    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    if-eq v2, v3, :cond_2

    .line 29
    .line 30
    return v1

    .line 31
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->d:I

    .line 32
    .line 33
    iget v3, p1, Lcom/google/android/exoplayer2/p1;->d:I

    .line 34
    .line 35
    if-ne v2, v3, :cond_3

    .line 36
    .line 37
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->e:I

    .line 38
    .line 39
    iget v3, p1, Lcom/google/android/exoplayer2/p1;->e:I

    .line 40
    .line 41
    if-ne v2, v3, :cond_3

    .line 42
    .line 43
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->f:I

    .line 44
    .line 45
    iget v3, p1, Lcom/google/android/exoplayer2/p1;->f:I

    .line 46
    .line 47
    if-ne v2, v3, :cond_3

    .line 48
    .line 49
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->g:I

    .line 50
    .line 51
    iget v3, p1, Lcom/google/android/exoplayer2/p1;->g:I

    .line 52
    .line 53
    if-ne v2, v3, :cond_3

    .line 54
    .line 55
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->m:I

    .line 56
    .line 57
    iget v3, p1, Lcom/google/android/exoplayer2/p1;->m:I

    .line 58
    .line 59
    if-ne v2, v3, :cond_3

    .line 60
    .line 61
    iget-wide v2, p0, Lcom/google/android/exoplayer2/p1;->p:J

    .line 62
    .line 63
    iget-wide v4, p1, Lcom/google/android/exoplayer2/p1;->p:J

    .line 64
    .line 65
    cmp-long v2, v2, v4

    .line 66
    .line 67
    if-nez v2, :cond_3

    .line 68
    .line 69
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->q:I

    .line 70
    .line 71
    iget v3, p1, Lcom/google/android/exoplayer2/p1;->q:I

    .line 72
    .line 73
    if-ne v2, v3, :cond_3

    .line 74
    .line 75
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->r:I

    .line 76
    .line 77
    iget v3, p1, Lcom/google/android/exoplayer2/p1;->r:I

    .line 78
    .line 79
    if-ne v2, v3, :cond_3

    .line 80
    .line 81
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->t:I

    .line 82
    .line 83
    iget v3, p1, Lcom/google/android/exoplayer2/p1;->t:I

    .line 84
    .line 85
    if-ne v2, v3, :cond_3

    .line 86
    .line 87
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->w:I

    .line 88
    .line 89
    iget v3, p1, Lcom/google/android/exoplayer2/p1;->w:I

    .line 90
    .line 91
    if-ne v2, v3, :cond_3

    .line 92
    .line 93
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->y:I

    .line 94
    .line 95
    iget v3, p1, Lcom/google/android/exoplayer2/p1;->y:I

    .line 96
    .line 97
    if-ne v2, v3, :cond_3

    .line 98
    .line 99
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->z:I

    .line 100
    .line 101
    iget v3, p1, Lcom/google/android/exoplayer2/p1;->z:I

    .line 102
    .line 103
    if-ne v2, v3, :cond_3

    .line 104
    .line 105
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->A:I

    .line 106
    .line 107
    iget v3, p1, Lcom/google/android/exoplayer2/p1;->A:I

    .line 108
    .line 109
    if-ne v2, v3, :cond_3

    .line 110
    .line 111
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->B:I

    .line 112
    .line 113
    iget v3, p1, Lcom/google/android/exoplayer2/p1;->B:I

    .line 114
    .line 115
    if-ne v2, v3, :cond_3

    .line 116
    .line 117
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->C:I

    .line 118
    .line 119
    iget v3, p1, Lcom/google/android/exoplayer2/p1;->C:I

    .line 120
    .line 121
    if-ne v2, v3, :cond_3

    .line 122
    .line 123
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->D:I

    .line 124
    .line 125
    iget v3, p1, Lcom/google/android/exoplayer2/p1;->D:I

    .line 126
    .line 127
    if-ne v2, v3, :cond_3

    .line 128
    .line 129
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->E:I

    .line 130
    .line 131
    iget v3, p1, Lcom/google/android/exoplayer2/p1;->E:I

    .line 132
    .line 133
    if-ne v2, v3, :cond_3

    .line 134
    .line 135
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->s:F

    .line 136
    .line 137
    iget v3, p1, Lcom/google/android/exoplayer2/p1;->s:F

    .line 138
    .line 139
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-nez v2, :cond_3

    .line 144
    .line 145
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->u:F

    .line 146
    .line 147
    iget v3, p1, Lcom/google/android/exoplayer2/p1;->u:F

    .line 148
    .line 149
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-nez v2, :cond_3

    .line 154
    .line 155
    iget-object v2, p0, Lcom/google/android/exoplayer2/p1;->a:Ljava/lang/String;

    .line 156
    .line 157
    iget-object v3, p1, Lcom/google/android/exoplayer2/p1;->a:Ljava/lang/String;

    .line 158
    .line 159
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eqz v2, :cond_3

    .line 164
    .line 165
    iget-object v2, p0, Lcom/google/android/exoplayer2/p1;->b:Ljava/lang/String;

    .line 166
    .line 167
    iget-object v3, p1, Lcom/google/android/exoplayer2/p1;->b:Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-eqz v2, :cond_3

    .line 174
    .line 175
    iget-object v2, p0, Lcom/google/android/exoplayer2/p1;->i:Ljava/lang/String;

    .line 176
    .line 177
    iget-object v3, p1, Lcom/google/android/exoplayer2/p1;->i:Ljava/lang/String;

    .line 178
    .line 179
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-eqz v2, :cond_3

    .line 184
    .line 185
    iget-object v2, p0, Lcom/google/android/exoplayer2/p1;->k:Ljava/lang/String;

    .line 186
    .line 187
    iget-object v3, p1, Lcom/google/android/exoplayer2/p1;->k:Ljava/lang/String;

    .line 188
    .line 189
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_3

    .line 194
    .line 195
    iget-object v2, p0, Lcom/google/android/exoplayer2/p1;->l:Ljava/lang/String;

    .line 196
    .line 197
    iget-object v3, p1, Lcom/google/android/exoplayer2/p1;->l:Ljava/lang/String;

    .line 198
    .line 199
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-eqz v2, :cond_3

    .line 204
    .line 205
    iget-object v2, p0, Lcom/google/android/exoplayer2/p1;->c:Ljava/lang/String;

    .line 206
    .line 207
    iget-object v3, p1, Lcom/google/android/exoplayer2/p1;->c:Ljava/lang/String;

    .line 208
    .line 209
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    if-eqz v2, :cond_3

    .line 214
    .line 215
    iget-object v2, p0, Lcom/google/android/exoplayer2/p1;->v:[B

    .line 216
    .line 217
    iget-object v3, p1, Lcom/google/android/exoplayer2/p1;->v:[B

    .line 218
    .line 219
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    if-eqz v2, :cond_3

    .line 224
    .line 225
    iget-object v2, p0, Lcom/google/android/exoplayer2/p1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 226
    .line 227
    iget-object v3, p1, Lcom/google/android/exoplayer2/p1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 228
    .line 229
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-eqz v2, :cond_3

    .line 234
    .line 235
    iget-object v2, p0, Lcom/google/android/exoplayer2/p1;->x:Lcom/google/android/exoplayer2/video/c;

    .line 236
    .line 237
    iget-object v3, p1, Lcom/google/android/exoplayer2/p1;->x:Lcom/google/android/exoplayer2/video/c;

    .line 238
    .line 239
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_3

    .line 244
    .line 245
    iget-object v2, p0, Lcom/google/android/exoplayer2/p1;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 246
    .line 247
    iget-object v3, p1, Lcom/google/android/exoplayer2/p1;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 248
    .line 249
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    if-eqz v2, :cond_3

    .line 254
    .line 255
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/p1;->g(Lcom/google/android/exoplayer2/p1;)Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    if-eqz p1, :cond_3

    .line 260
    .line 261
    goto :goto_0

    .line 262
    :cond_3
    move v0, v1

    .line 263
    :goto_0
    return v0

    .line 264
    :cond_4
    :goto_1
    return v1
.end method

.method public f()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/p1;->q:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->r:I

    .line 7
    .line 8
    if-ne v2, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    mul-int v1, v0, v2

    .line 12
    .line 13
    :cond_1
    :goto_0
    return v1
.end method

.method public g(Lcom/google/android/exoplayer2/p1;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/p1;->n:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p1, Lcom/google/android/exoplayer2/p1;->n:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    return v2

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/p1;->n:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-ge v0, v1, :cond_2

    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/exoplayer2/p1;->n:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, [B

    .line 33
    .line 34
    iget-object v3, p1, Lcom/google/android/exoplayer2/p1;->n:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, [B

    .line 41
    .line 42
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    return v2

    .line 49
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 p1, 0x1

    .line 53
    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/p1;->F:I

    .line 2
    .line 3
    if-nez v0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/p1;->a:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    :goto_0
    const/16 v2, 0x20f

    .line 17
    .line 18
    add-int/2addr v2, v0

    .line 19
    mul-int/lit8 v2, v2, 0x1f

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/exoplayer2/p1;->b:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v1

    .line 31
    :goto_1
    add-int/2addr v2, v0

    .line 32
    mul-int/lit8 v2, v2, 0x1f

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/exoplayer2/p1;->c:Ljava/lang/String;

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    move v0, v1

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    :goto_2
    add-int/2addr v2, v0

    .line 45
    mul-int/lit8 v2, v2, 0x1f

    .line 46
    .line 47
    iget v0, p0, Lcom/google/android/exoplayer2/p1;->d:I

    .line 48
    .line 49
    add-int/2addr v2, v0

    .line 50
    mul-int/lit8 v2, v2, 0x1f

    .line 51
    .line 52
    iget v0, p0, Lcom/google/android/exoplayer2/p1;->e:I

    .line 53
    .line 54
    add-int/2addr v2, v0

    .line 55
    mul-int/lit8 v2, v2, 0x1f

    .line 56
    .line 57
    iget v0, p0, Lcom/google/android/exoplayer2/p1;->f:I

    .line 58
    .line 59
    add-int/2addr v2, v0

    .line 60
    mul-int/lit8 v2, v2, 0x1f

    .line 61
    .line 62
    iget v0, p0, Lcom/google/android/exoplayer2/p1;->g:I

    .line 63
    .line 64
    add-int/2addr v2, v0

    .line 65
    mul-int/lit8 v2, v2, 0x1f

    .line 66
    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/p1;->i:Ljava/lang/String;

    .line 68
    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    move v0, v1

    .line 72
    goto :goto_3

    .line 73
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    :goto_3
    add-int/2addr v2, v0

    .line 78
    mul-int/lit8 v2, v2, 0x1f

    .line 79
    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/p1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 81
    .line 82
    if-nez v0, :cond_4

    .line 83
    .line 84
    move v0, v1

    .line 85
    goto :goto_4

    .line 86
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->hashCode()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    :goto_4
    add-int/2addr v2, v0

    .line 91
    mul-int/lit8 v2, v2, 0x1f

    .line 92
    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/p1;->k:Ljava/lang/String;

    .line 94
    .line 95
    if-nez v0, :cond_5

    .line 96
    .line 97
    move v0, v1

    .line 98
    goto :goto_5

    .line 99
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    :goto_5
    add-int/2addr v2, v0

    .line 104
    mul-int/lit8 v2, v2, 0x1f

    .line 105
    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/p1;->l:Ljava/lang/String;

    .line 107
    .line 108
    if-nez v0, :cond_6

    .line 109
    .line 110
    goto :goto_6

    .line 111
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    :goto_6
    add-int/2addr v2, v1

    .line 116
    mul-int/lit8 v2, v2, 0x1f

    .line 117
    .line 118
    iget v0, p0, Lcom/google/android/exoplayer2/p1;->m:I

    .line 119
    .line 120
    add-int/2addr v2, v0

    .line 121
    mul-int/lit8 v2, v2, 0x1f

    .line 122
    .line 123
    iget-wide v0, p0, Lcom/google/android/exoplayer2/p1;->p:J

    .line 124
    .line 125
    long-to-int v0, v0

    .line 126
    add-int/2addr v2, v0

    .line 127
    mul-int/lit8 v2, v2, 0x1f

    .line 128
    .line 129
    iget v0, p0, Lcom/google/android/exoplayer2/p1;->q:I

    .line 130
    .line 131
    add-int/2addr v2, v0

    .line 132
    mul-int/lit8 v2, v2, 0x1f

    .line 133
    .line 134
    iget v0, p0, Lcom/google/android/exoplayer2/p1;->r:I

    .line 135
    .line 136
    add-int/2addr v2, v0

    .line 137
    mul-int/lit8 v2, v2, 0x1f

    .line 138
    .line 139
    iget v0, p0, Lcom/google/android/exoplayer2/p1;->s:F

    .line 140
    .line 141
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    add-int/2addr v2, v0

    .line 146
    mul-int/lit8 v2, v2, 0x1f

    .line 147
    .line 148
    iget v0, p0, Lcom/google/android/exoplayer2/p1;->t:I

    .line 149
    .line 150
    add-int/2addr v2, v0

    .line 151
    mul-int/lit8 v2, v2, 0x1f

    .line 152
    .line 153
    iget v0, p0, Lcom/google/android/exoplayer2/p1;->u:F

    .line 154
    .line 155
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    add-int/2addr v2, v0

    .line 160
    mul-int/lit8 v2, v2, 0x1f

    .line 161
    .line 162
    iget v0, p0, Lcom/google/android/exoplayer2/p1;->w:I

    .line 163
    .line 164
    add-int/2addr v2, v0

    .line 165
    mul-int/lit8 v2, v2, 0x1f

    .line 166
    .line 167
    iget v0, p0, Lcom/google/android/exoplayer2/p1;->y:I

    .line 168
    .line 169
    add-int/2addr v2, v0

    .line 170
    mul-int/lit8 v2, v2, 0x1f

    .line 171
    .line 172
    iget v0, p0, Lcom/google/android/exoplayer2/p1;->z:I

    .line 173
    .line 174
    add-int/2addr v2, v0

    .line 175
    mul-int/lit8 v2, v2, 0x1f

    .line 176
    .line 177
    iget v0, p0, Lcom/google/android/exoplayer2/p1;->A:I

    .line 178
    .line 179
    add-int/2addr v2, v0

    .line 180
    mul-int/lit8 v2, v2, 0x1f

    .line 181
    .line 182
    iget v0, p0, Lcom/google/android/exoplayer2/p1;->B:I

    .line 183
    .line 184
    add-int/2addr v2, v0

    .line 185
    mul-int/lit8 v2, v2, 0x1f

    .line 186
    .line 187
    iget v0, p0, Lcom/google/android/exoplayer2/p1;->C:I

    .line 188
    .line 189
    add-int/2addr v2, v0

    .line 190
    mul-int/lit8 v2, v2, 0x1f

    .line 191
    .line 192
    iget v0, p0, Lcom/google/android/exoplayer2/p1;->D:I

    .line 193
    .line 194
    add-int/2addr v2, v0

    .line 195
    mul-int/lit8 v2, v2, 0x1f

    .line 196
    .line 197
    iget v0, p0, Lcom/google/android/exoplayer2/p1;->E:I

    .line 198
    .line 199
    add-int/2addr v2, v0

    .line 200
    iput v2, p0, Lcom/google/android/exoplayer2/p1;->F:I

    .line 201
    .line 202
    :cond_7
    iget v0, p0, Lcom/google/android/exoplayer2/p1;->F:I

    .line 203
    .line 204
    return v0
.end method

.method public j(Lcom/google/android/exoplayer2/p1;)Lcom/google/android/exoplayer2/p1;
    .locals 11

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/p1;->l:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/w;->k(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p1, Lcom/google/android/exoplayer2/p1;->a:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, p1, Lcom/google/android/exoplayer2/p1;->b:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/p1;->b:Ljava/lang/String;

    .line 18
    .line 19
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/p1;->c:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v4, 0x3

    .line 22
    const/4 v5, 0x1

    .line 23
    if-eq v0, v4, :cond_2

    .line 24
    .line 25
    if-ne v0, v5, :cond_3

    .line 26
    .line 27
    :cond_2
    iget-object v4, p1, Lcom/google/android/exoplayer2/p1;->c:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v4, :cond_3

    .line 30
    .line 31
    move-object v3, v4

    .line 32
    :cond_3
    iget v4, p0, Lcom/google/android/exoplayer2/p1;->f:I

    .line 33
    .line 34
    const/4 v6, -0x1

    .line 35
    if-ne v4, v6, :cond_4

    .line 36
    .line 37
    iget v4, p1, Lcom/google/android/exoplayer2/p1;->f:I

    .line 38
    .line 39
    :cond_4
    iget v7, p0, Lcom/google/android/exoplayer2/p1;->g:I

    .line 40
    .line 41
    if-ne v7, v6, :cond_5

    .line 42
    .line 43
    iget v7, p1, Lcom/google/android/exoplayer2/p1;->g:I

    .line 44
    .line 45
    :cond_5
    iget-object v6, p0, Lcom/google/android/exoplayer2/p1;->i:Ljava/lang/String;

    .line 46
    .line 47
    if-nez v6, :cond_6

    .line 48
    .line 49
    iget-object v8, p1, Lcom/google/android/exoplayer2/p1;->i:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v8, v0}, Lcom/google/android/exoplayer2/util/p0;->L(Ljava/lang/String;I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/p0;->U0(Ljava/lang/String;)[Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    array-length v9, v9

    .line 60
    if-ne v9, v5, :cond_6

    .line 61
    .line 62
    move-object v6, v8

    .line 63
    :cond_6
    iget-object v5, p0, Lcom/google/android/exoplayer2/p1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 64
    .line 65
    if-nez v5, :cond_7

    .line 66
    .line 67
    iget-object v5, p1, Lcom/google/android/exoplayer2/p1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_7
    iget-object v8, p1, Lcom/google/android/exoplayer2/p1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 71
    .line 72
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    :goto_1
    iget v8, p0, Lcom/google/android/exoplayer2/p1;->s:F

    .line 77
    .line 78
    const/high16 v9, -0x40800000    # -1.0f

    .line 79
    .line 80
    cmpl-float v9, v8, v9

    .line 81
    .line 82
    if-nez v9, :cond_8

    .line 83
    .line 84
    const/4 v9, 0x2

    .line 85
    if-ne v0, v9, :cond_8

    .line 86
    .line 87
    iget v8, p1, Lcom/google/android/exoplayer2/p1;->s:F

    .line 88
    .line 89
    :cond_8
    iget v0, p0, Lcom/google/android/exoplayer2/p1;->d:I

    .line 90
    .line 91
    iget v9, p1, Lcom/google/android/exoplayer2/p1;->d:I

    .line 92
    .line 93
    or-int/2addr v0, v9

    .line 94
    iget v9, p0, Lcom/google/android/exoplayer2/p1;->e:I

    .line 95
    .line 96
    iget v10, p1, Lcom/google/android/exoplayer2/p1;->e:I

    .line 97
    .line 98
    or-int/2addr v9, v10

    .line 99
    iget-object p1, p1, Lcom/google/android/exoplayer2/p1;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 100
    .line 101
    iget-object v10, p0, Lcom/google/android/exoplayer2/p1;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 102
    .line 103
    invoke-static {p1, v10}, Lcom/google/android/exoplayer2/drm/DrmInitData;->createSessionCreationData(Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/p1;->b()Lcom/google/android/exoplayer2/p1$b;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    invoke-virtual {v10, v1}, Lcom/google/android/exoplayer2/p1$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/p1$b;->U(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/p1$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/p1$b;->g0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/p1$b;->c0(I)Lcom/google/android/exoplayer2/p1$b;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/p1$b;->G(I)Lcom/google/android/exoplayer2/p1$b;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/p1$b;->Z(I)Lcom/google/android/exoplayer2/p1$b;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/p1$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/p1$b;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/p1$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/p1$b;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/p1$b;->M(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/p1$b;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1, v8}, Lcom/google/android/exoplayer2/p1$b;->P(F)Lcom/google/android/exoplayer2/p1$b;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/p1$b;->E()Lcom/google/android/exoplayer2/p1;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    return-object p1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/google/android/exoplayer2/p1;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-static {v2}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p0, Lcom/google/android/exoplayer2/p1;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-static {v2}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, p0, Lcom/google/android/exoplayer2/p1;->c:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    invoke-static {v2}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget v3, p0, Lcom/google/android/exoplayer2/p1;->d:I

    .line 42
    .line 43
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x4

    .line 47
    invoke-static {v2}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget v3, p0, Lcom/google/android/exoplayer2/p1;->e:I

    .line 52
    .line 53
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    const/4 v2, 0x5

    .line 57
    invoke-static {v2}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iget v3, p0, Lcom/google/android/exoplayer2/p1;->f:I

    .line 62
    .line 63
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    const/4 v2, 0x6

    .line 67
    invoke-static {v2}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget v3, p0, Lcom/google/android/exoplayer2/p1;->g:I

    .line 72
    .line 73
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    const/4 v2, 0x7

    .line 77
    invoke-static {v2}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    iget-object v3, p0, Lcom/google/android/exoplayer2/p1;->i:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const/16 v2, 0x8

    .line 87
    .line 88
    invoke-static {v2}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    iget-object v3, p0, Lcom/google/android/exoplayer2/p1;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 93
    .line 94
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 95
    .line 96
    .line 97
    const/16 v2, 0x9

    .line 98
    .line 99
    invoke-static {v2}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    iget-object v3, p0, Lcom/google/android/exoplayer2/p1;->k:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const/16 v2, 0xa

    .line 109
    .line 110
    invoke-static {v2}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    iget-object v3, p0, Lcom/google/android/exoplayer2/p1;->l:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const/16 v2, 0xb

    .line 120
    .line 121
    invoke-static {v2}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    iget v3, p0, Lcom/google/android/exoplayer2/p1;->m:I

    .line 126
    .line 127
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/p1;->n:Ljava/util/List;

    .line 131
    .line 132
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-ge v1, v2, :cond_0

    .line 137
    .line 138
    invoke-static {v1}, Lcom/google/android/exoplayer2/p1;->i(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    iget-object v3, p0, Lcom/google/android/exoplayer2/p1;->n:Ljava/util/List;

    .line 143
    .line 144
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    check-cast v3, [B

    .line 149
    .line 150
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 151
    .line 152
    .line 153
    add-int/lit8 v1, v1, 0x1

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_0
    const/16 v1, 0xd

    .line 157
    .line 158
    invoke-static {v1}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    iget-object v2, p0, Lcom/google/android/exoplayer2/p1;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 163
    .line 164
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 165
    .line 166
    .line 167
    const/16 v1, 0xe

    .line 168
    .line 169
    invoke-static {v1}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    iget-wide v2, p0, Lcom/google/android/exoplayer2/p1;->p:J

    .line 174
    .line 175
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 176
    .line 177
    .line 178
    const/16 v1, 0xf

    .line 179
    .line 180
    invoke-static {v1}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->q:I

    .line 185
    .line 186
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 187
    .line 188
    .line 189
    const/16 v1, 0x10

    .line 190
    .line 191
    invoke-static {v1}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->r:I

    .line 196
    .line 197
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 198
    .line 199
    .line 200
    const/16 v1, 0x11

    .line 201
    .line 202
    invoke-static {v1}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->s:F

    .line 207
    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 209
    .line 210
    .line 211
    const/16 v1, 0x12

    .line 212
    .line 213
    invoke-static {v1}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->t:I

    .line 218
    .line 219
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 220
    .line 221
    .line 222
    const/16 v1, 0x13

    .line 223
    .line 224
    invoke-static {v1}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->u:F

    .line 229
    .line 230
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 231
    .line 232
    .line 233
    const/16 v1, 0x14

    .line 234
    .line 235
    invoke-static {v1}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    iget-object v2, p0, Lcom/google/android/exoplayer2/p1;->v:[B

    .line 240
    .line 241
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 242
    .line 243
    .line 244
    const/16 v1, 0x15

    .line 245
    .line 246
    invoke-static {v1}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->w:I

    .line 251
    .line 252
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 253
    .line 254
    .line 255
    iget-object v1, p0, Lcom/google/android/exoplayer2/p1;->x:Lcom/google/android/exoplayer2/video/c;

    .line 256
    .line 257
    if-eqz v1, :cond_1

    .line 258
    .line 259
    const/16 v1, 0x16

    .line 260
    .line 261
    invoke-static {v1}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    iget-object v2, p0, Lcom/google/android/exoplayer2/p1;->x:Lcom/google/android/exoplayer2/video/c;

    .line 266
    .line 267
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/video/c;->toBundle()Landroid/os/Bundle;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 272
    .line 273
    .line 274
    :cond_1
    const/16 v1, 0x17

    .line 275
    .line 276
    invoke-static {v1}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->y:I

    .line 281
    .line 282
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 283
    .line 284
    .line 285
    const/16 v1, 0x18

    .line 286
    .line 287
    invoke-static {v1}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->z:I

    .line 292
    .line 293
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 294
    .line 295
    .line 296
    const/16 v1, 0x19

    .line 297
    .line 298
    invoke-static {v1}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->A:I

    .line 303
    .line 304
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 305
    .line 306
    .line 307
    const/16 v1, 0x1a

    .line 308
    .line 309
    invoke-static {v1}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->B:I

    .line 314
    .line 315
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 316
    .line 317
    .line 318
    const/16 v1, 0x1b

    .line 319
    .line 320
    invoke-static {v1}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->C:I

    .line 325
    .line 326
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 327
    .line 328
    .line 329
    const/16 v1, 0x1c

    .line 330
    .line 331
    invoke-static {v1}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->D:I

    .line 336
    .line 337
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 338
    .line 339
    .line 340
    const/16 v1, 0x1d

    .line 341
    .line 342
    invoke-static {v1}, Lcom/google/android/exoplayer2/p1;->h(I)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->E:I

    .line 347
    .line 348
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 349
    .line 350
    .line 351
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Format("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/exoplayer2/p1;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/android/exoplayer2/p1;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/google/android/exoplayer2/p1;->k:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/google/android/exoplayer2/p1;->l:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/google/android/exoplayer2/p1;->i:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->h:I

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/google/android/exoplayer2/p1;->c:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, ", ["

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->q:I

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->r:I

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->s:F

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v2, "], ["

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget v2, p0, Lcom/google/android/exoplayer2/p1;->y:I

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget v1, p0, Lcom/google/android/exoplayer2/p1;->z:I

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, "])"

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    return-object v0
.end method
