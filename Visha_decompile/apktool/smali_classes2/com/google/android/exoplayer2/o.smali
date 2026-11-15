.class public final Lcom/google/android/exoplayer2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/o$b;
    }
.end annotation


# static fields
.field public static final H:Lcom/google/android/exoplayer2/o;

.field public static final I:Lcom/google/android/exoplayer2/e$a;


# instance fields
.field public final A:Ljava/lang/CharSequence;

.field public final B:Ljava/lang/Integer;

.field public final C:Ljava/lang/Integer;

.field public final D:Ljava/lang/CharSequence;

.field public final E:Ljava/lang/CharSequence;

.field public final F:Ljava/lang/CharSequence;

.field public final G:Landroid/os/Bundle;

.field public final b:Ljava/lang/CharSequence;

.field public final c:Ljava/lang/CharSequence;

.field public final d:Ljava/lang/CharSequence;

.field public final e:Ljava/lang/CharSequence;

.field public final f:Ljava/lang/CharSequence;

.field public final g:Ljava/lang/CharSequence;

.field public final h:Ljava/lang/CharSequence;

.field public final i:Lcom/google/android/exoplayer2/v;

.field public final j:Lcom/google/android/exoplayer2/v;

.field public final k:[B

.field public final l:Ljava/lang/Integer;

.field public final m:Landroid/net/Uri;

.field public final n:Ljava/lang/Integer;

.field public final o:Ljava/lang/Integer;

.field public final p:Ljava/lang/Integer;

.field public final q:Ljava/lang/Boolean;

.field public final r:Ljava/lang/Integer;

.field public final s:Ljava/lang/Integer;

.field public final t:Ljava/lang/Integer;

.field public final u:Ljava/lang/Integer;

.field public final v:Ljava/lang/Integer;

.field public final w:Ljava/lang/Integer;

.field public final x:Ljava/lang/Integer;

.field public final y:Ljava/lang/CharSequence;

.field public final z:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/o$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/o$b;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o$b;->F()Lcom/google/android/exoplayer2/o;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/o;->H:Lcom/google/android/exoplayer2/o;

    new-instance v0, Ljh6;

    invoke-direct {v0}, Ljh6;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/o;->I:Lcom/google/android/exoplayer2/e$a;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/o$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->a(Lcom/google/android/exoplayer2/o$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->b:Ljava/lang/CharSequence;

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->l(Lcom/google/android/exoplayer2/o$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->c:Ljava/lang/CharSequence;

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->w(Lcom/google/android/exoplayer2/o$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->d:Ljava/lang/CharSequence;

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->z(Lcom/google/android/exoplayer2/o$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->e:Ljava/lang/CharSequence;

    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->A(Lcom/google/android/exoplayer2/o$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->f:Ljava/lang/CharSequence;

    .line 8
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->B(Lcom/google/android/exoplayer2/o$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->g:Ljava/lang/CharSequence;

    .line 9
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->C(Lcom/google/android/exoplayer2/o$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->h:Ljava/lang/CharSequence;

    .line 10
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->D(Lcom/google/android/exoplayer2/o$b;)Lcom/google/android/exoplayer2/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->i:Lcom/google/android/exoplayer2/v;

    .line 11
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->E(Lcom/google/android/exoplayer2/o$b;)Lcom/google/android/exoplayer2/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->j:Lcom/google/android/exoplayer2/v;

    .line 12
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->b(Lcom/google/android/exoplayer2/o$b;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->k:[B

    .line 13
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->c(Lcom/google/android/exoplayer2/o$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->l:Ljava/lang/Integer;

    .line 14
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->d(Lcom/google/android/exoplayer2/o$b;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->m:Landroid/net/Uri;

    .line 15
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->e(Lcom/google/android/exoplayer2/o$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->n:Ljava/lang/Integer;

    .line 16
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->f(Lcom/google/android/exoplayer2/o$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->o:Ljava/lang/Integer;

    .line 17
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->g(Lcom/google/android/exoplayer2/o$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->p:Ljava/lang/Integer;

    .line 18
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->h(Lcom/google/android/exoplayer2/o$b;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->q:Ljava/lang/Boolean;

    .line 19
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->i(Lcom/google/android/exoplayer2/o$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->r:Ljava/lang/Integer;

    .line 20
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->i(Lcom/google/android/exoplayer2/o$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->s:Ljava/lang/Integer;

    .line 21
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->j(Lcom/google/android/exoplayer2/o$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->t:Ljava/lang/Integer;

    .line 22
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->k(Lcom/google/android/exoplayer2/o$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->u:Ljava/lang/Integer;

    .line 23
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->m(Lcom/google/android/exoplayer2/o$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->v:Ljava/lang/Integer;

    .line 24
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->n(Lcom/google/android/exoplayer2/o$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->w:Ljava/lang/Integer;

    .line 25
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->o(Lcom/google/android/exoplayer2/o$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->x:Ljava/lang/Integer;

    .line 26
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->p(Lcom/google/android/exoplayer2/o$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->y:Ljava/lang/CharSequence;

    .line 27
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->q(Lcom/google/android/exoplayer2/o$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->z:Ljava/lang/CharSequence;

    .line 28
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->r(Lcom/google/android/exoplayer2/o$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->A:Ljava/lang/CharSequence;

    .line 29
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->s(Lcom/google/android/exoplayer2/o$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->B:Ljava/lang/Integer;

    .line 30
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->t(Lcom/google/android/exoplayer2/o$b;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->C:Ljava/lang/Integer;

    .line 31
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->u(Lcom/google/android/exoplayer2/o$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->D:Ljava/lang/CharSequence;

    .line 32
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->v(Lcom/google/android/exoplayer2/o$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->E:Ljava/lang/CharSequence;

    .line 33
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->x(Lcom/google/android/exoplayer2/o$b;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->F:Ljava/lang/CharSequence;

    .line 34
    invoke-static {p1}, Lcom/google/android/exoplayer2/o$b;->y(Lcom/google/android/exoplayer2/o$b;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/o;->G:Landroid/os/Bundle;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/o$b;Lcom/google/android/exoplayer2/o$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/o;-><init>(Lcom/google/android/exoplayer2/o$b;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/o;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/o;->c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/o;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/o;
    .locals 5

    new-instance v0, Lcom/google/android/exoplayer2/o$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/o$b;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o$b;->i0(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/o$b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o$b;->M(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/o$b;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o$b;->L(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/o$b;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o$b;->K(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/o$b;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o$b;->U(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/o$b;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o$b;->h0(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/o$b;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o$b;->S(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/o$b;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x1d

    invoke-static {v3}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/o$b;->N([BLjava/lang/Integer;)Lcom/google/android/exoplayer2/o$b;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o$b;->O(Landroid/net/Uri;)Lcom/google/android/exoplayer2/o$b;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o$b;->n0(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/o$b;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o$b;->Q(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/o$b;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o$b;->R(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/o$b;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-static {v2}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o$b;->X(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/o$b;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-static {v2}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o$b;->P(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/o$b;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v2}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o$b;->g0(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/o$b;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v2}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o$b;->V(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/o$b;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v2, Lcom/google/android/exoplayer2/v;->b:Lcom/google/android/exoplayer2/e$a;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/e$a;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/e;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/v;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o$b;->m0(Lcom/google/android/exoplayer2/v;)Lcom/google/android/exoplayer2/o$b;

    :cond_1
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v2, Lcom/google/android/exoplayer2/v;->b:Lcom/google/android/exoplayer2/e$a;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/e$a;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/e;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/v;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o$b;->Z(Lcom/google/android/exoplayer2/v;)Lcom/google/android/exoplayer2/o$b;

    :cond_2
    const/16 v1, 0xc

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o$b;->l0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/o$b;

    :cond_3
    const/16 v1, 0xd

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o$b;->k0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/o$b;

    :cond_4
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o$b;->W(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/o$b;

    :cond_5
    const/16 v1, 0xf

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o$b;->Y(Ljava/lang/Boolean;)Lcom/google/android/exoplayer2/o$b;

    :cond_6
    const/16 v1, 0x10

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o$b;->c0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/o$b;

    :cond_7
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o$b;->b0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/o$b;

    :cond_8
    const/16 v1, 0x12

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o$b;->a0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/o$b;

    :cond_9
    const/16 v1, 0x13

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o$b;->f0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/o$b;

    :cond_a
    const/16 v1, 0x14

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o$b;->e0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/o$b;

    :cond_b
    const/16 v1, 0x15

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o$b;->d0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/o$b;

    :cond_c
    const/16 v1, 0x19

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o$b;->T(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/o$b;

    :cond_d
    const/16 v1, 0x1a

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/o$b;->j0(Ljava/lang/Integer;)Lcom/google/android/exoplayer2/o$b;

    :cond_e
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o$b;->F()Lcom/google/android/exoplayer2/o;

    move-result-object p0

    return-object p0
.end method

.method private static d(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/o$b;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/o$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/o$b;-><init>(Lcom/google/android/exoplayer2/o;Lcom/google/android/exoplayer2/o$a;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/o;

    if-eq v3, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/o;

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->b:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->c:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->c:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->d:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->d:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->e:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->e:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->f:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->g:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->g:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->h:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->h:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->i:Lcom/google/android/exoplayer2/v;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->i:Lcom/google/android/exoplayer2/v;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->j:Lcom/google/android/exoplayer2/v;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->j:Lcom/google/android/exoplayer2/v;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->k:[B

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->k:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->l:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->l:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->m:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->m:Landroid/net/Uri;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->n:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->n:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->o:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->o:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->p:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->p:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->q:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->q:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->s:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->s:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->t:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->t:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->u:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->u:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->v:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->v:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->w:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->w:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->x:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->x:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->y:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->y:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->z:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->z:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->A:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->A:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->B:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->B:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->C:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->C:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->D:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->D:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->E:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/o;->E:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/o;->F:Ljava/lang/CharSequence;

    iget-object p1, p1, Lcom/google/android/exoplayer2/o;->F:Ljava/lang/CharSequence;

    invoke-static {p0, p1}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 32

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/o;->b:Ljava/lang/CharSequence;

    iget-object v2, v0, Lcom/google/android/exoplayer2/o;->c:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/google/android/exoplayer2/o;->d:Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/google/android/exoplayer2/o;->e:Ljava/lang/CharSequence;

    iget-object v5, v0, Lcom/google/android/exoplayer2/o;->f:Ljava/lang/CharSequence;

    iget-object v6, v0, Lcom/google/android/exoplayer2/o;->g:Ljava/lang/CharSequence;

    iget-object v7, v0, Lcom/google/android/exoplayer2/o;->h:Ljava/lang/CharSequence;

    iget-object v8, v0, Lcom/google/android/exoplayer2/o;->i:Lcom/google/android/exoplayer2/v;

    iget-object v9, v0, Lcom/google/android/exoplayer2/o;->j:Lcom/google/android/exoplayer2/v;

    iget-object v10, v0, Lcom/google/android/exoplayer2/o;->k:[B

    invoke-static {v10}, Ljava/util/Arrays;->hashCode([B)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v0, Lcom/google/android/exoplayer2/o;->l:Ljava/lang/Integer;

    iget-object v12, v0, Lcom/google/android/exoplayer2/o;->m:Landroid/net/Uri;

    iget-object v13, v0, Lcom/google/android/exoplayer2/o;->n:Ljava/lang/Integer;

    iget-object v14, v0, Lcom/google/android/exoplayer2/o;->o:Ljava/lang/Integer;

    iget-object v15, v0, Lcom/google/android/exoplayer2/o;->p:Ljava/lang/Integer;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/o;->q:Ljava/lang/Boolean;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/o;->s:Ljava/lang/Integer;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/o;->t:Ljava/lang/Integer;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/o;->u:Ljava/lang/Integer;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/o;->v:Ljava/lang/Integer;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/o;->w:Ljava/lang/Integer;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/o;->x:Ljava/lang/Integer;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/o;->y:Ljava/lang/CharSequence;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/o;->z:Ljava/lang/CharSequence;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/o;->A:Ljava/lang/CharSequence;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/o;->B:Ljava/lang/Integer;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/o;->C:Ljava/lang/Integer;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/o;->D:Ljava/lang/CharSequence;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/o;->E:Ljava/lang/CharSequence;

    move-object/from16 v29, v1

    iget-object v0, v0, Lcom/google/android/exoplayer2/o;->F:Ljava/lang/CharSequence;

    move-object/from16 v30, v0

    move-object/from16 v1, v31

    filled-new-array/range {v1 .. v30}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkc7;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->k:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 v1, 0xb

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->m:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v1, 0x16

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->y:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v1, 0x17

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->z:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v1, 0x18

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->A:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v1, 0x1b

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->D:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v1, 0x1c

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->E:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->F:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->i:Lcom/google/android/exoplayer2/v;

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->i:Lcom/google/android/exoplayer2/v;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/e;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->j:Lcom/google/android/exoplayer2/v;

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->j:Lcom/google/android/exoplayer2/v;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/e;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->n:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->o:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const/16 v1, 0xd

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->o:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->p:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->p:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->q:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->q:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->s:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->s:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->t:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    const/16 v1, 0x11

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->t:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_7
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->u:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    const/16 v1, 0x12

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->u:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_8
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->v:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    const/16 v1, 0x13

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->v:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_9
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->w:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->w:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_a
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->x:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    const/16 v1, 0x15

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->x:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_b
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->B:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    const/16 v1, 0x19

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->B:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_c
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->C:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    const/16 v1, 0x1a

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->C:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_d
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->l:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    const/16 v1, 0x1d

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->l:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_e
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->G:Landroid/os/Bundle;

    if-eqz v1, :cond_f

    const/16 v1, 0x3e8

    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/exoplayer2/o;->G:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_f
    return-object v0
.end method
