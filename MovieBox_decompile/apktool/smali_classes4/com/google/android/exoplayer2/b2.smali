.class public final Lcom/google/android/exoplayer2/b2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/b2$b;
    }
.end annotation


# static fields
.field public static final G:Lcom/google/android/exoplayer2/b2;

.field public static final H:Lcom/google/android/exoplayer2/k$a;


# instance fields
.field public final A:Ljava/lang/Integer;

.field public final B:Ljava/lang/Integer;

.field public final C:Ljava/lang/CharSequence;

.field public final D:Ljava/lang/CharSequence;

.field public final E:Ljava/lang/CharSequence;

.field public final F:Landroid/os/Bundle;

.field public final a:Ljava/lang/CharSequence;

.field public final b:Ljava/lang/CharSequence;

.field public final c:Ljava/lang/CharSequence;

.field public final d:Ljava/lang/CharSequence;

.field public final e:Ljava/lang/CharSequence;

.field public final f:Ljava/lang/CharSequence;

.field public final g:Ljava/lang/CharSequence;

.field public final h:Lcom/google/android/exoplayer2/w2;

.field public final i:Lcom/google/android/exoplayer2/w2;

.field public final j:[B

.field public final k:Ljava/lang/Integer;

.field public final l:Landroid/net/Uri;

.field public final m:Ljava/lang/Integer;

.field public final n:Ljava/lang/Integer;

.field public final o:Ljava/lang/Integer;

.field public final p:Ljava/lang/Boolean;

.field public final q:Ljava/lang/Integer;

.field public final r:Ljava/lang/Integer;

.field public final s:Ljava/lang/Integer;

.field public final t:Ljava/lang/Integer;

.field public final u:Ljava/lang/Integer;

.field public final v:Ljava/lang/Integer;

.field public final w:Ljava/lang/Integer;

.field public final x:Ljava/lang/CharSequence;

.field public final y:Ljava/lang/CharSequence;

.field public final z:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/b2$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/exoplayer2/b2$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2$b;->F()Lcom/google/android/exoplayer2/b2;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/android/exoplayer2/b2;->G:Lcom/google/android/exoplayer2/b2;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/exoplayer2/a2;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/google/android/exoplayer2/a2;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/google/android/exoplayer2/b2;->H:Lcom/google/android/exoplayer2/k$a;

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/b2$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->a(Lcom/google/android/exoplayer2/b2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->a:Ljava/lang/CharSequence;

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->l(Lcom/google/android/exoplayer2/b2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->b:Ljava/lang/CharSequence;

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->w(Lcom/google/android/exoplayer2/b2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->c:Ljava/lang/CharSequence;

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->z(Lcom/google/android/exoplayer2/b2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->d:Ljava/lang/CharSequence;

    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->A(Lcom/google/android/exoplayer2/b2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->e:Ljava/lang/CharSequence;

    .line 8
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->B(Lcom/google/android/exoplayer2/b2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->f:Ljava/lang/CharSequence;

    .line 9
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->C(Lcom/google/android/exoplayer2/b2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->g:Ljava/lang/CharSequence;

    .line 10
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->D(Lcom/google/android/exoplayer2/b2$b;)Lcom/google/android/exoplayer2/w2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->h:Lcom/google/android/exoplayer2/w2;

    .line 11
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->E(Lcom/google/android/exoplayer2/b2$b;)Lcom/google/android/exoplayer2/w2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->i:Lcom/google/android/exoplayer2/w2;

    .line 12
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->b(Lcom/google/android/exoplayer2/b2$b;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->j:[B

    .line 13
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->c(Lcom/google/android/exoplayer2/b2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->k:Ljava/lang/Integer;

    .line 14
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->d(Lcom/google/android/exoplayer2/b2$b;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->l:Landroid/net/Uri;

    .line 15
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->e(Lcom/google/android/exoplayer2/b2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->m:Ljava/lang/Integer;

    .line 16
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->f(Lcom/google/android/exoplayer2/b2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->n:Ljava/lang/Integer;

    .line 17
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->g(Lcom/google/android/exoplayer2/b2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->o:Ljava/lang/Integer;

    .line 18
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->h(Lcom/google/android/exoplayer2/b2$b;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->p:Ljava/lang/Boolean;

    .line 19
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->i(Lcom/google/android/exoplayer2/b2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->q:Ljava/lang/Integer;

    .line 20
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->i(Lcom/google/android/exoplayer2/b2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->r:Ljava/lang/Integer;

    .line 21
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->j(Lcom/google/android/exoplayer2/b2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->s:Ljava/lang/Integer;

    .line 22
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->k(Lcom/google/android/exoplayer2/b2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->t:Ljava/lang/Integer;

    .line 23
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->m(Lcom/google/android/exoplayer2/b2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->u:Ljava/lang/Integer;

    .line 24
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->n(Lcom/google/android/exoplayer2/b2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->v:Ljava/lang/Integer;

    .line 25
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->o(Lcom/google/android/exoplayer2/b2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->w:Ljava/lang/Integer;

    .line 26
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->p(Lcom/google/android/exoplayer2/b2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->x:Ljava/lang/CharSequence;

    .line 27
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->q(Lcom/google/android/exoplayer2/b2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->y:Ljava/lang/CharSequence;

    .line 28
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->r(Lcom/google/android/exoplayer2/b2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->z:Ljava/lang/CharSequence;

    .line 29
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->s(Lcom/google/android/exoplayer2/b2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->A:Ljava/lang/Integer;

    .line 30
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->t(Lcom/google/android/exoplayer2/b2$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->B:Ljava/lang/Integer;

    .line 31
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->u(Lcom/google/android/exoplayer2/b2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->C:Ljava/lang/CharSequence;

    .line 32
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->v(Lcom/google/android/exoplayer2/b2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->D:Ljava/lang/CharSequence;

    .line 33
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->x(Lcom/google/android/exoplayer2/b2$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/b2;->E:Ljava/lang/CharSequence;

    .line 34
    invoke-static {p1}, Lcom/google/android/exoplayer2/b2$b;->y(Lcom/google/android/exoplayer2/b2$b;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/b2;->F:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/b2$b;Lcom/google/android/exoplayer2/b2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/b2;-><init>(Lcom/google/android/exoplayer2/b2$b;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/b2;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/b2;->c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/b2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/b2;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/b2$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/exoplayer2/b2$b;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/b2$b;->i0(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/b2$b;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-static {v2}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/b2$b;->M(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/b2$b;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x2

    .line 33
    invoke-static {v2}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/b2$b;->L(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/b2$b;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x3

    .line 46
    invoke-static {v2}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/b2$b;->K(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/b2$b;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const/4 v2, 0x4

    .line 59
    invoke-static {v2}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/b2$b;->U(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/b2$b;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const/4 v2, 0x5

    .line 72
    invoke-static {v2}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/b2$b;->h0(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/b2$b;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const/4 v2, 0x6

    .line 85
    invoke-static {v2}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/b2$b;->S(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/b2$b;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const/16 v2, 0xa

    .line 98
    .line 99
    invoke-static {v2}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    const/16 v3, 0x1d

    .line 108
    .line 109
    invoke-static {v3}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_0

    .line 118
    .line 119
    invoke-static {v3}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    goto :goto_0

    .line 132
    :cond_0
    const/4 v3, 0x0

    .line 133
    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/b2$b;->N([BLjava/lang/Integer;)Lcom/google/android/exoplayer2/b2$b;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    const/16 v2, 0xb

    .line 138
    .line 139
    invoke-static {v2}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v2, Landroid/net/Uri;

    .line 148
    .line 149
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/b2$b;->O(Landroid/net/Uri;)Lcom/google/android/exoplayer2/b2$b;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    const/16 v2, 0x16

    .line 154
    .line 155
    invoke-static {v2}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/b2$b;->n0(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/b2$b;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    const/16 v2, 0x17

    .line 168
    .line 169
    invoke-static {v2}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/b2$b;->Q(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/b2$b;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    const/16 v2, 0x18

    .line 182
    .line 183
    invoke-static {v2}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/b2$b;->R(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/b2$b;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    const/16 v2, 0x1b

    .line 196
    .line 197
    invoke-static {v2}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/b2$b;->X(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/b2$b;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    const/16 v2, 0x1c

    .line 210
    .line 211
    invoke-static {v2}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/b2$b;->P(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/b2$b;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    const/16 v2, 0x1e

    .line 224
    .line 225
    invoke-static {v2}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/b2$b;->g0(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/b2$b;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    const/16 v2, 0x3e8

    .line 238
    .line 239
    invoke-static {v2}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/b2$b;->V(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/b2$b;

    .line 248
    .line 249
    .line 250
    const/16 v1, 0x8

    .line 251
    .line 252
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    if-eqz v2, :cond_1

    .line 261
    .line 262
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    if-eqz v1, :cond_1

    .line 271
    .line 272
    sget-object v2, Lcom/google/android/exoplayer2/w2;->a:Lcom/google/android/exoplayer2/k$a;

    .line 273
    .line 274
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/k$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/k;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    check-cast v1, Lcom/google/android/exoplayer2/w2;

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/b2$b;->m0(Lcom/google/android/exoplayer2/w2;)Lcom/google/android/exoplayer2/b2$b;

    .line 281
    .line 282
    .line 283
    :cond_1
    const/16 v1, 0x9

    .line 284
    .line 285
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    if-eqz v2, :cond_2

    .line 294
    .line 295
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    if-eqz v1, :cond_2

    .line 304
    .line 305
    sget-object v2, Lcom/google/android/exoplayer2/w2;->a:Lcom/google/android/exoplayer2/k$a;

    .line 306
    .line 307
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/k$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/k;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    check-cast v1, Lcom/google/android/exoplayer2/w2;

    .line 312
    .line 313
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/b2$b;->Z(Lcom/google/android/exoplayer2/w2;)Lcom/google/android/exoplayer2/b2$b;

    .line 314
    .line 315
    .line 316
    :cond_2
    const/16 v1, 0xc

    .line 317
    .line 318
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    if-eqz v2, :cond_3

    .line 327
    .line 328
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/b2$b;->l0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/b2$b;

    .line 341
    .line 342
    .line 343
    :cond_3
    const/16 v1, 0xd

    .line 344
    .line 345
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    if-eqz v2, :cond_4

    .line 354
    .line 355
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/b2$b;->k0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/b2$b;

    .line 368
    .line 369
    .line 370
    :cond_4
    const/16 v1, 0xe

    .line 371
    .line 372
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 377
    .line 378
    .line 379
    move-result v2

    .line 380
    if-eqz v2, :cond_5

    .line 381
    .line 382
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/b2$b;->W(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/b2$b;

    .line 395
    .line 396
    .line 397
    :cond_5
    const/16 v1, 0xf

    .line 398
    .line 399
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    if-eqz v2, :cond_6

    .line 408
    .line 409
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/b2$b;->Y(Ljava/lang/Boolean;)Lcom/google/android/exoplayer2/b2$b;

    .line 422
    .line 423
    .line 424
    :cond_6
    const/16 v1, 0x10

    .line 425
    .line 426
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 431
    .line 432
    .line 433
    move-result v2

    .line 434
    if-eqz v2, :cond_7

    .line 435
    .line 436
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/b2$b;->c0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/b2$b;

    .line 449
    .line 450
    .line 451
    :cond_7
    const/16 v1, 0x11

    .line 452
    .line 453
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 458
    .line 459
    .line 460
    move-result v2

    .line 461
    if-eqz v2, :cond_8

    .line 462
    .line 463
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/b2$b;->b0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/b2$b;

    .line 476
    .line 477
    .line 478
    :cond_8
    const/16 v1, 0x12

    .line 479
    .line 480
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    if-eqz v2, :cond_9

    .line 489
    .line 490
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 495
    .line 496
    .line 497
    move-result v1

    .line 498
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/b2$b;->a0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/b2$b;

    .line 503
    .line 504
    .line 505
    :cond_9
    const/16 v1, 0x13

    .line 506
    .line 507
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 512
    .line 513
    .line 514
    move-result v2

    .line 515
    if-eqz v2, :cond_a

    .line 516
    .line 517
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 522
    .line 523
    .line 524
    move-result v1

    .line 525
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/b2$b;->f0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/b2$b;

    .line 530
    .line 531
    .line 532
    :cond_a
    const/16 v1, 0x14

    .line 533
    .line 534
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 539
    .line 540
    .line 541
    move-result v2

    .line 542
    if-eqz v2, :cond_b

    .line 543
    .line 544
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 549
    .line 550
    .line 551
    move-result v1

    .line 552
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 553
    .line 554
    .line 555
    move-result-object v1

    .line 556
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/b2$b;->e0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/b2$b;

    .line 557
    .line 558
    .line 559
    :cond_b
    const/16 v1, 0x15

    .line 560
    .line 561
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 566
    .line 567
    .line 568
    move-result v2

    .line 569
    if-eqz v2, :cond_c

    .line 570
    .line 571
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 576
    .line 577
    .line 578
    move-result v1

    .line 579
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 580
    .line 581
    .line 582
    move-result-object v1

    .line 583
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/b2$b;->d0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/b2$b;

    .line 584
    .line 585
    .line 586
    :cond_c
    const/16 v1, 0x19

    .line 587
    .line 588
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 593
    .line 594
    .line 595
    move-result v2

    .line 596
    if-eqz v2, :cond_d

    .line 597
    .line 598
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 603
    .line 604
    .line 605
    move-result v1

    .line 606
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/b2$b;->T(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/b2$b;

    .line 611
    .line 612
    .line 613
    :cond_d
    const/16 v1, 0x1a

    .line 614
    .line 615
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v2

    .line 619
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 620
    .line 621
    .line 622
    move-result v2

    .line 623
    if-eqz v2, :cond_e

    .line 624
    .line 625
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v1

    .line 629
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 630
    .line 631
    .line 632
    move-result p0

    .line 633
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 634
    .line 635
    .line 636
    move-result-object p0

    .line 637
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/b2$b;->j0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/b2$b;

    .line 638
    .line 639
    .line 640
    :cond_e
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b2$b;->F()Lcom/google/android/exoplayer2/b2;

    .line 641
    .line 642
    .line 643
    move-result-object p0

    .line 644
    return-object p0
.end method

.method private static d(I)Ljava/lang/String;
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


# virtual methods
.method public b()Lcom/google/android/exoplayer2/b2$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/b2$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/b2$b;-><init>(Lcom/google/android/exoplayer2/b2;Lcom/google/android/exoplayer2/b2$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

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
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/google/android/exoplayer2/b2;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/b2;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->a:Ljava/lang/CharSequence;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->a:Ljava/lang/CharSequence;

    .line 23
    .line 24
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->b:Ljava/lang/CharSequence;

    .line 31
    .line 32
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->b:Ljava/lang/CharSequence;

    .line 33
    .line 34
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->c:Ljava/lang/CharSequence;

    .line 41
    .line 42
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->c:Ljava/lang/CharSequence;

    .line 43
    .line 44
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->d:Ljava/lang/CharSequence;

    .line 51
    .line 52
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->d:Ljava/lang/CharSequence;

    .line 53
    .line 54
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->e:Ljava/lang/CharSequence;

    .line 61
    .line 62
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->e:Ljava/lang/CharSequence;

    .line 63
    .line 64
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->f:Ljava/lang/CharSequence;

    .line 71
    .line 72
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->f:Ljava/lang/CharSequence;

    .line 73
    .line 74
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->g:Ljava/lang/CharSequence;

    .line 81
    .line 82
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->g:Ljava/lang/CharSequence;

    .line 83
    .line 84
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_2

    .line 89
    .line 90
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->h:Lcom/google/android/exoplayer2/w2;

    .line 91
    .line 92
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->h:Lcom/google/android/exoplayer2/w2;

    .line 93
    .line 94
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_2

    .line 99
    .line 100
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->i:Lcom/google/android/exoplayer2/w2;

    .line 101
    .line 102
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->i:Lcom/google/android/exoplayer2/w2;

    .line 103
    .line 104
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_2

    .line 109
    .line 110
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->j:[B

    .line 111
    .line 112
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->j:[B

    .line 113
    .line 114
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_2

    .line 119
    .line 120
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->k:Ljava/lang/Integer;

    .line 121
    .line 122
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->k:Ljava/lang/Integer;

    .line 123
    .line 124
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_2

    .line 129
    .line 130
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->l:Landroid/net/Uri;

    .line 131
    .line 132
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->l:Landroid/net/Uri;

    .line 133
    .line 134
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_2

    .line 139
    .line 140
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->m:Ljava/lang/Integer;

    .line 141
    .line 142
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->m:Ljava/lang/Integer;

    .line 143
    .line 144
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_2

    .line 149
    .line 150
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->n:Ljava/lang/Integer;

    .line 151
    .line 152
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->n:Ljava/lang/Integer;

    .line 153
    .line 154
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_2

    .line 159
    .line 160
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->o:Ljava/lang/Integer;

    .line 161
    .line 162
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->o:Ljava/lang/Integer;

    .line 163
    .line 164
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_2

    .line 169
    .line 170
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->p:Ljava/lang/Boolean;

    .line 171
    .line 172
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->p:Ljava/lang/Boolean;

    .line 173
    .line 174
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-eqz v2, :cond_2

    .line 179
    .line 180
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->r:Ljava/lang/Integer;

    .line 181
    .line 182
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->r:Ljava/lang/Integer;

    .line 183
    .line 184
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_2

    .line 189
    .line 190
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->s:Ljava/lang/Integer;

    .line 191
    .line 192
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->s:Ljava/lang/Integer;

    .line 193
    .line 194
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_2

    .line 199
    .line 200
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->t:Ljava/lang/Integer;

    .line 201
    .line 202
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->t:Ljava/lang/Integer;

    .line 203
    .line 204
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_2

    .line 209
    .line 210
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->u:Ljava/lang/Integer;

    .line 211
    .line 212
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->u:Ljava/lang/Integer;

    .line 213
    .line 214
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-eqz v2, :cond_2

    .line 219
    .line 220
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->v:Ljava/lang/Integer;

    .line 221
    .line 222
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->v:Ljava/lang/Integer;

    .line 223
    .line 224
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-eqz v2, :cond_2

    .line 229
    .line 230
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->w:Ljava/lang/Integer;

    .line 231
    .line 232
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->w:Ljava/lang/Integer;

    .line 233
    .line 234
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-eqz v2, :cond_2

    .line 239
    .line 240
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->x:Ljava/lang/CharSequence;

    .line 241
    .line 242
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->x:Ljava/lang/CharSequence;

    .line 243
    .line 244
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eqz v2, :cond_2

    .line 249
    .line 250
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->y:Ljava/lang/CharSequence;

    .line 251
    .line 252
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->y:Ljava/lang/CharSequence;

    .line 253
    .line 254
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-eqz v2, :cond_2

    .line 259
    .line 260
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->z:Ljava/lang/CharSequence;

    .line 261
    .line 262
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->z:Ljava/lang/CharSequence;

    .line 263
    .line 264
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-eqz v2, :cond_2

    .line 269
    .line 270
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->A:Ljava/lang/Integer;

    .line 271
    .line 272
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->A:Ljava/lang/Integer;

    .line 273
    .line 274
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-eqz v2, :cond_2

    .line 279
    .line 280
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->B:Ljava/lang/Integer;

    .line 281
    .line 282
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->B:Ljava/lang/Integer;

    .line 283
    .line 284
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-eqz v2, :cond_2

    .line 289
    .line 290
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->C:Ljava/lang/CharSequence;

    .line 291
    .line 292
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->C:Ljava/lang/CharSequence;

    .line 293
    .line 294
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-eqz v2, :cond_2

    .line 299
    .line 300
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->D:Ljava/lang/CharSequence;

    .line 301
    .line 302
    iget-object v3, p1, Lcom/google/android/exoplayer2/b2;->D:Ljava/lang/CharSequence;

    .line 303
    .line 304
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    if-eqz v2, :cond_2

    .line 309
    .line 310
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->E:Ljava/lang/CharSequence;

    .line 311
    .line 312
    iget-object p1, p1, Lcom/google/android/exoplayer2/b2;->E:Ljava/lang/CharSequence;

    .line 313
    .line 314
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    if-eqz p1, :cond_2

    .line 319
    .line 320
    goto :goto_0

    .line 321
    :cond_2
    move v0, v1

    .line 322
    :goto_0
    return v0

    .line 323
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/exoplayer2/b2;->a:Ljava/lang/CharSequence;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/exoplayer2/b2;->b:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/google/android/exoplayer2/b2;->c:Ljava/lang/CharSequence;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/google/android/exoplayer2/b2;->d:Ljava/lang/CharSequence;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/google/android/exoplayer2/b2;->e:Ljava/lang/CharSequence;

    .line 12
    .line 13
    iget-object v6, v0, Lcom/google/android/exoplayer2/b2;->f:Ljava/lang/CharSequence;

    .line 14
    .line 15
    iget-object v7, v0, Lcom/google/android/exoplayer2/b2;->g:Ljava/lang/CharSequence;

    .line 16
    .line 17
    iget-object v8, v0, Lcom/google/android/exoplayer2/b2;->h:Lcom/google/android/exoplayer2/w2;

    .line 18
    .line 19
    iget-object v9, v0, Lcom/google/android/exoplayer2/b2;->i:Lcom/google/android/exoplayer2/w2;

    .line 20
    .line 21
    iget-object v10, v0, Lcom/google/android/exoplayer2/b2;->j:[B

    .line 22
    .line 23
    invoke-static {v10}, Ljava/util/Arrays;->hashCode([B)I

    .line 24
    .line 25
    .line 26
    move-result v10

    .line 27
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v10

    .line 31
    iget-object v11, v0, Lcom/google/android/exoplayer2/b2;->k:Ljava/lang/Integer;

    .line 32
    .line 33
    iget-object v12, v0, Lcom/google/android/exoplayer2/b2;->l:Landroid/net/Uri;

    .line 34
    .line 35
    iget-object v13, v0, Lcom/google/android/exoplayer2/b2;->m:Ljava/lang/Integer;

    .line 36
    .line 37
    iget-object v14, v0, Lcom/google/android/exoplayer2/b2;->n:Ljava/lang/Integer;

    .line 38
    .line 39
    iget-object v15, v0, Lcom/google/android/exoplayer2/b2;->o:Ljava/lang/Integer;

    .line 40
    .line 41
    move-object/from16 v16, v15

    .line 42
    .line 43
    iget-object v15, v0, Lcom/google/android/exoplayer2/b2;->p:Ljava/lang/Boolean;

    .line 44
    .line 45
    move-object/from16 v17, v15

    .line 46
    .line 47
    iget-object v15, v0, Lcom/google/android/exoplayer2/b2;->r:Ljava/lang/Integer;

    .line 48
    .line 49
    move-object/from16 v18, v15

    .line 50
    .line 51
    iget-object v15, v0, Lcom/google/android/exoplayer2/b2;->s:Ljava/lang/Integer;

    .line 52
    .line 53
    move-object/from16 v19, v15

    .line 54
    .line 55
    iget-object v15, v0, Lcom/google/android/exoplayer2/b2;->t:Ljava/lang/Integer;

    .line 56
    .line 57
    move-object/from16 v20, v15

    .line 58
    .line 59
    iget-object v15, v0, Lcom/google/android/exoplayer2/b2;->u:Ljava/lang/Integer;

    .line 60
    .line 61
    move-object/from16 v21, v15

    .line 62
    .line 63
    iget-object v15, v0, Lcom/google/android/exoplayer2/b2;->v:Ljava/lang/Integer;

    .line 64
    .line 65
    move-object/from16 v22, v15

    .line 66
    .line 67
    iget-object v15, v0, Lcom/google/android/exoplayer2/b2;->w:Ljava/lang/Integer;

    .line 68
    .line 69
    move-object/from16 v23, v15

    .line 70
    .line 71
    iget-object v15, v0, Lcom/google/android/exoplayer2/b2;->x:Ljava/lang/CharSequence;

    .line 72
    .line 73
    move-object/from16 v24, v15

    .line 74
    .line 75
    iget-object v15, v0, Lcom/google/android/exoplayer2/b2;->y:Ljava/lang/CharSequence;

    .line 76
    .line 77
    move-object/from16 v25, v15

    .line 78
    .line 79
    iget-object v15, v0, Lcom/google/android/exoplayer2/b2;->z:Ljava/lang/CharSequence;

    .line 80
    .line 81
    move-object/from16 v26, v15

    .line 82
    .line 83
    iget-object v15, v0, Lcom/google/android/exoplayer2/b2;->A:Ljava/lang/Integer;

    .line 84
    .line 85
    move-object/from16 v27, v15

    .line 86
    .line 87
    iget-object v15, v0, Lcom/google/android/exoplayer2/b2;->B:Ljava/lang/Integer;

    .line 88
    .line 89
    move-object/from16 v28, v15

    .line 90
    .line 91
    iget-object v15, v0, Lcom/google/android/exoplayer2/b2;->C:Ljava/lang/CharSequence;

    .line 92
    .line 93
    move-object/from16 v29, v15

    .line 94
    .line 95
    iget-object v15, v0, Lcom/google/android/exoplayer2/b2;->D:Ljava/lang/CharSequence;

    .line 96
    .line 97
    move-object/from16 v30, v15

    .line 98
    .line 99
    iget-object v15, v0, Lcom/google/android/exoplayer2/b2;->E:Ljava/lang/CharSequence;

    .line 100
    .line 101
    const/16 v0, 0x1e

    .line 102
    .line 103
    new-array v0, v0, [Ljava/lang/Object;

    .line 104
    .line 105
    const/16 v31, 0x0

    .line 106
    .line 107
    aput-object v1, v0, v31

    .line 108
    .line 109
    const/4 v1, 0x1

    .line 110
    aput-object v2, v0, v1

    .line 111
    .line 112
    const/4 v1, 0x2

    .line 113
    aput-object v3, v0, v1

    .line 114
    .line 115
    const/4 v1, 0x3

    .line 116
    aput-object v4, v0, v1

    .line 117
    .line 118
    const/4 v1, 0x4

    .line 119
    aput-object v5, v0, v1

    .line 120
    .line 121
    const/4 v1, 0x5

    .line 122
    aput-object v6, v0, v1

    .line 123
    .line 124
    const/4 v1, 0x6

    .line 125
    aput-object v7, v0, v1

    .line 126
    .line 127
    const/4 v1, 0x7

    .line 128
    aput-object v8, v0, v1

    .line 129
    .line 130
    const/16 v1, 0x8

    .line 131
    .line 132
    aput-object v9, v0, v1

    .line 133
    .line 134
    const/16 v1, 0x9

    .line 135
    .line 136
    aput-object v10, v0, v1

    .line 137
    .line 138
    const/16 v1, 0xa

    .line 139
    .line 140
    aput-object v11, v0, v1

    .line 141
    .line 142
    const/16 v1, 0xb

    .line 143
    .line 144
    aput-object v12, v0, v1

    .line 145
    .line 146
    const/16 v1, 0xc

    .line 147
    .line 148
    aput-object v13, v0, v1

    .line 149
    .line 150
    const/16 v1, 0xd

    .line 151
    .line 152
    aput-object v14, v0, v1

    .line 153
    .line 154
    const/16 v1, 0xe

    .line 155
    .line 156
    aput-object v16, v0, v1

    .line 157
    .line 158
    const/16 v1, 0xf

    .line 159
    .line 160
    aput-object v17, v0, v1

    .line 161
    .line 162
    const/16 v1, 0x10

    .line 163
    .line 164
    aput-object v18, v0, v1

    .line 165
    .line 166
    const/16 v1, 0x11

    .line 167
    .line 168
    aput-object v19, v0, v1

    .line 169
    .line 170
    const/16 v1, 0x12

    .line 171
    .line 172
    aput-object v20, v0, v1

    .line 173
    .line 174
    const/16 v1, 0x13

    .line 175
    .line 176
    aput-object v21, v0, v1

    .line 177
    .line 178
    const/16 v1, 0x14

    .line 179
    .line 180
    aput-object v22, v0, v1

    .line 181
    .line 182
    const/16 v1, 0x15

    .line 183
    .line 184
    aput-object v23, v0, v1

    .line 185
    .line 186
    const/16 v1, 0x16

    .line 187
    .line 188
    aput-object v24, v0, v1

    .line 189
    .line 190
    const/16 v1, 0x17

    .line 191
    .line 192
    aput-object v25, v0, v1

    .line 193
    .line 194
    const/16 v1, 0x18

    .line 195
    .line 196
    aput-object v26, v0, v1

    .line 197
    .line 198
    const/16 v1, 0x19

    .line 199
    .line 200
    aput-object v27, v0, v1

    .line 201
    .line 202
    const/16 v1, 0x1a

    .line 203
    .line 204
    aput-object v28, v0, v1

    .line 205
    .line 206
    const/16 v1, 0x1b

    .line 207
    .line 208
    aput-object v29, v0, v1

    .line 209
    .line 210
    const/16 v1, 0x1c

    .line 211
    .line 212
    aput-object v30, v0, v1

    .line 213
    .line 214
    const/16 v1, 0x1d

    .line 215
    .line 216
    aput-object v15, v0, v1

    .line 217
    .line 218
    invoke-static {v0}, Lcom/google/common/base/j;->b([Ljava/lang/Object;)I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

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
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->a:Ljava/lang/CharSequence;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->b:Ljava/lang/CharSequence;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->c:Ljava/lang/CharSequence;

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->d:Ljava/lang/CharSequence;

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->e:Ljava/lang/CharSequence;

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x5

    .line 57
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->f:Ljava/lang/CharSequence;

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    const/4 v1, 0x6

    .line 67
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->g:Ljava/lang/CharSequence;

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    const/16 v1, 0xa

    .line 77
    .line 78
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->j:[B

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 85
    .line 86
    .line 87
    const/16 v1, 0xb

    .line 88
    .line 89
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->l:Landroid/net/Uri;

    .line 94
    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 96
    .line 97
    .line 98
    const/16 v1, 0x16

    .line 99
    .line 100
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->x:Ljava/lang/CharSequence;

    .line 105
    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    const/16 v1, 0x17

    .line 110
    .line 111
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->y:Ljava/lang/CharSequence;

    .line 116
    .line 117
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    const/16 v1, 0x18

    .line 121
    .line 122
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->z:Ljava/lang/CharSequence;

    .line 127
    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    const/16 v1, 0x1b

    .line 132
    .line 133
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->C:Ljava/lang/CharSequence;

    .line 138
    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    const/16 v1, 0x1c

    .line 143
    .line 144
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->D:Ljava/lang/CharSequence;

    .line 149
    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    const/16 v1, 0x1e

    .line 154
    .line 155
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->E:Ljava/lang/CharSequence;

    .line 160
    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 162
    .line 163
    .line 164
    iget-object v1, p0, Lcom/google/android/exoplayer2/b2;->h:Lcom/google/android/exoplayer2/w2;

    .line 165
    .line 166
    if-eqz v1, :cond_0

    .line 167
    .line 168
    const/16 v1, 0x8

    .line 169
    .line 170
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->h:Lcom/google/android/exoplayer2/w2;

    .line 175
    .line 176
    invoke-interface {v2}, Lcom/google/android/exoplayer2/k;->toBundle()Landroid/os/Bundle;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 181
    .line 182
    .line 183
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/b2;->i:Lcom/google/android/exoplayer2/w2;

    .line 184
    .line 185
    if-eqz v1, :cond_1

    .line 186
    .line 187
    const/16 v1, 0x9

    .line 188
    .line 189
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->i:Lcom/google/android/exoplayer2/w2;

    .line 194
    .line 195
    invoke-interface {v2}, Lcom/google/android/exoplayer2/k;->toBundle()Landroid/os/Bundle;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 200
    .line 201
    .line 202
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/b2;->m:Ljava/lang/Integer;

    .line 203
    .line 204
    if-eqz v1, :cond_2

    .line 205
    .line 206
    const/16 v1, 0xc

    .line 207
    .line 208
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->m:Ljava/lang/Integer;

    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 219
    .line 220
    .line 221
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/b2;->n:Ljava/lang/Integer;

    .line 222
    .line 223
    if-eqz v1, :cond_3

    .line 224
    .line 225
    const/16 v1, 0xd

    .line 226
    .line 227
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->n:Ljava/lang/Integer;

    .line 232
    .line 233
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 238
    .line 239
    .line 240
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/b2;->o:Ljava/lang/Integer;

    .line 241
    .line 242
    if-eqz v1, :cond_4

    .line 243
    .line 244
    const/16 v1, 0xe

    .line 245
    .line 246
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->o:Ljava/lang/Integer;

    .line 251
    .line 252
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 257
    .line 258
    .line 259
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/b2;->p:Ljava/lang/Boolean;

    .line 260
    .line 261
    if-eqz v1, :cond_5

    .line 262
    .line 263
    const/16 v1, 0xf

    .line 264
    .line 265
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->p:Ljava/lang/Boolean;

    .line 270
    .line 271
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 276
    .line 277
    .line 278
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/b2;->r:Ljava/lang/Integer;

    .line 279
    .line 280
    if-eqz v1, :cond_6

    .line 281
    .line 282
    const/16 v1, 0x10

    .line 283
    .line 284
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->r:Ljava/lang/Integer;

    .line 289
    .line 290
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 295
    .line 296
    .line 297
    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/b2;->s:Ljava/lang/Integer;

    .line 298
    .line 299
    if-eqz v1, :cond_7

    .line 300
    .line 301
    const/16 v1, 0x11

    .line 302
    .line 303
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->s:Ljava/lang/Integer;

    .line 308
    .line 309
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 314
    .line 315
    .line 316
    :cond_7
    iget-object v1, p0, Lcom/google/android/exoplayer2/b2;->t:Ljava/lang/Integer;

    .line 317
    .line 318
    if-eqz v1, :cond_8

    .line 319
    .line 320
    const/16 v1, 0x12

    .line 321
    .line 322
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->t:Ljava/lang/Integer;

    .line 327
    .line 328
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 333
    .line 334
    .line 335
    :cond_8
    iget-object v1, p0, Lcom/google/android/exoplayer2/b2;->u:Ljava/lang/Integer;

    .line 336
    .line 337
    if-eqz v1, :cond_9

    .line 338
    .line 339
    const/16 v1, 0x13

    .line 340
    .line 341
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->u:Ljava/lang/Integer;

    .line 346
    .line 347
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 352
    .line 353
    .line 354
    :cond_9
    iget-object v1, p0, Lcom/google/android/exoplayer2/b2;->v:Ljava/lang/Integer;

    .line 355
    .line 356
    if-eqz v1, :cond_a

    .line 357
    .line 358
    const/16 v1, 0x14

    .line 359
    .line 360
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->v:Ljava/lang/Integer;

    .line 365
    .line 366
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 371
    .line 372
    .line 373
    :cond_a
    iget-object v1, p0, Lcom/google/android/exoplayer2/b2;->w:Ljava/lang/Integer;

    .line 374
    .line 375
    if-eqz v1, :cond_b

    .line 376
    .line 377
    const/16 v1, 0x15

    .line 378
    .line 379
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->w:Ljava/lang/Integer;

    .line 384
    .line 385
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 390
    .line 391
    .line 392
    :cond_b
    iget-object v1, p0, Lcom/google/android/exoplayer2/b2;->A:Ljava/lang/Integer;

    .line 393
    .line 394
    if-eqz v1, :cond_c

    .line 395
    .line 396
    const/16 v1, 0x19

    .line 397
    .line 398
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->A:Ljava/lang/Integer;

    .line 403
    .line 404
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 409
    .line 410
    .line 411
    :cond_c
    iget-object v1, p0, Lcom/google/android/exoplayer2/b2;->B:Ljava/lang/Integer;

    .line 412
    .line 413
    if-eqz v1, :cond_d

    .line 414
    .line 415
    const/16 v1, 0x1a

    .line 416
    .line 417
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->B:Ljava/lang/Integer;

    .line 422
    .line 423
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 428
    .line 429
    .line 430
    :cond_d
    iget-object v1, p0, Lcom/google/android/exoplayer2/b2;->k:Ljava/lang/Integer;

    .line 431
    .line 432
    if-eqz v1, :cond_e

    .line 433
    .line 434
    const/16 v1, 0x1d

    .line 435
    .line 436
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->k:Ljava/lang/Integer;

    .line 441
    .line 442
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 443
    .line 444
    .line 445
    move-result v2

    .line 446
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 447
    .line 448
    .line 449
    :cond_e
    iget-object v1, p0, Lcom/google/android/exoplayer2/b2;->F:Landroid/os/Bundle;

    .line 450
    .line 451
    if-eqz v1, :cond_f

    .line 452
    .line 453
    const/16 v1, 0x3e8

    .line 454
    .line 455
    invoke-static {v1}, Lcom/google/android/exoplayer2/b2;->d(I)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    iget-object v2, p0, Lcom/google/android/exoplayer2/b2;->F:Landroid/os/Bundle;

    .line 460
    .line 461
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 462
    .line 463
    .line 464
    :cond_f
    return-object v0
.end method
