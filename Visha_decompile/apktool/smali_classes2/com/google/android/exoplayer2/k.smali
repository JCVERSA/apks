.class public final Lcom/google/android/exoplayer2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/k$b;
    }
.end annotation


# static fields
.field public static final H:Lcom/google/android/exoplayer2/k;

.field public static final I:Lcom/google/android/exoplayer2/e$a;


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final D:I

.field public final E:I

.field public final F:I

.field public G:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:Ljava/lang/String;

.field public final k:Lcom/google/android/exoplayer2/metadata/Metadata;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:I

.field public final o:Ljava/util/List;

.field public final p:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field public final q:J

.field public final r:I

.field public final s:I

.field public final t:F

.field public final u:I

.field public final v:F

.field public final w:[B

.field public final x:I

.field public final y:Lv81;

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/k$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/k$b;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/k;->H:Lcom/google/android/exoplayer2/k;

    new-instance v0, La44;

    invoke-direct {v0}, La44;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/k;->I:Lcom/google/android/exoplayer2/e$a;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/k$b;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->a(Lcom/google/android/exoplayer2/k$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/k;->b:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->l(Lcom/google/android/exoplayer2/k$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/k;->c:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->w(Lcom/google/android/exoplayer2/k$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lblb;->v0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/k;->d:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->y(Lcom/google/android/exoplayer2/k$b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/k;->e:I

    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->z(Lcom/google/android/exoplayer2/k$b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/k;->f:I

    .line 8
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->A(Lcom/google/android/exoplayer2/k$b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/k;->g:I

    .line 9
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->B(Lcom/google/android/exoplayer2/k$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/k;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    .line 10
    :cond_0
    iput v0, p0, Lcom/google/android/exoplayer2/k;->i:I

    .line 11
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->C(Lcom/google/android/exoplayer2/k$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/k;->j:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->D(Lcom/google/android/exoplayer2/k$b;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/k;->k:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 13
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->b(Lcom/google/android/exoplayer2/k$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/k;->l:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->c(Lcom/google/android/exoplayer2/k$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->d(Lcom/google/android/exoplayer2/k$b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/k;->n:I

    .line 16
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->e(Lcom/google/android/exoplayer2/k$b;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->e(Lcom/google/android/exoplayer2/k$b;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/k;->o:Ljava/util/List;

    .line 17
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->f(Lcom/google/android/exoplayer2/k$b;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/k;->p:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 18
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->g(Lcom/google/android/exoplayer2/k$b;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/k;->q:J

    .line 19
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->h(Lcom/google/android/exoplayer2/k$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/k;->r:I

    .line 20
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->i(Lcom/google/android/exoplayer2/k$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/k;->s:I

    .line 21
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->j(Lcom/google/android/exoplayer2/k$b;)F

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/k;->t:F

    .line 22
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->k(Lcom/google/android/exoplayer2/k$b;)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->k(Lcom/google/android/exoplayer2/k$b;)I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/google/android/exoplayer2/k;->u:I

    .line 23
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->m(Lcom/google/android/exoplayer2/k$b;)F

    move-result v1

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v1, v1, v4

    if-nez v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->m(Lcom/google/android/exoplayer2/k$b;)F

    move-result v1

    :goto_2
    iput v1, p0, Lcom/google/android/exoplayer2/k;->v:F

    .line 24
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->n(Lcom/google/android/exoplayer2/k$b;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/k;->w:[B

    .line 25
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->o(Lcom/google/android/exoplayer2/k$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/k;->x:I

    .line 26
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->p(Lcom/google/android/exoplayer2/k$b;)Lv81;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/k;->y:Lv81;

    .line 27
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->q(Lcom/google/android/exoplayer2/k$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/k;->z:I

    .line 28
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->r(Lcom/google/android/exoplayer2/k$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/k;->A:I

    .line 29
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->s(Lcom/google/android/exoplayer2/k$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/k;->B:I

    .line 30
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->t(Lcom/google/android/exoplayer2/k$b;)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->t(Lcom/google/android/exoplayer2/k$b;)I

    move-result v1

    :goto_3
    iput v1, p0, Lcom/google/android/exoplayer2/k;->C:I

    .line 31
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->u(Lcom/google/android/exoplayer2/k$b;)I

    move-result v1

    if-ne v1, v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->u(Lcom/google/android/exoplayer2/k$b;)I

    move-result v3

    :goto_4
    iput v3, p0, Lcom/google/android/exoplayer2/k;->D:I

    .line 32
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->v(Lcom/google/android/exoplayer2/k$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/k;->E:I

    .line 33
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->x(Lcom/google/android/exoplayer2/k$b;)I

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    const/4 p1, 0x1

    .line 34
    iput p1, p0, Lcom/google/android/exoplayer2/k;->F:I

    goto :goto_5

    .line 35
    :cond_6
    invoke-static {p1}, Lcom/google/android/exoplayer2/k$b;->x(Lcom/google/android/exoplayer2/k$b;)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/k;->F:I

    :goto_5
    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/k$b;Lcom/google/android/exoplayer2/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/k;-><init>(Lcom/google/android/exoplayer2/k$b;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/k;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/k;->e(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/k;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static e(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/k;
    .locals 6

    new-instance v0, Lcom/google/android/exoplayer2/k$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/k$b;-><init>()V

    invoke-static {p0}, Lxn0;->a(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/k;->H:Lcom/google/android/exoplayer2/k;

    iget-object v4, v3, Lcom/google/android/exoplayer2/k;->b:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/k;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/k$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/exoplayer2/k;->c:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/k;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/k$b;->U(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/exoplayer2/k;->d:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/k;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/k$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v2

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v4

    iget v5, v3, Lcom/google/android/exoplayer2/k;->e:I

    invoke-virtual {p0, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/k$b;->g0(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v4}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v4

    iget v5, v3, Lcom/google/android/exoplayer2/k;->f:I

    invoke-virtual {p0, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/k$b;->c0(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v2

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v4

    iget v5, v3, Lcom/google/android/exoplayer2/k;->g:I

    invoke-virtual {p0, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/k$b;->G(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v2

    const/4 v4, 0x6

    invoke-static {v4}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v4

    iget v5, v3, Lcom/google/android/exoplayer2/k;->h:I

    invoke-virtual {p0, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/k$b;->Z(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v2

    const/4 v4, 0x7

    invoke-static {v4}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/exoplayer2/k;->j:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/k;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/k$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v2

    const/16 v4, 0x8

    invoke-static {v4}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v5, v3, Lcom/google/android/exoplayer2/k;->k:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/k;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/k$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v2

    const/16 v4, 0x9

    invoke-static {v4}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/exoplayer2/k;->l:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/k;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/k$b;->K(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v2

    const/16 v4, 0xa

    invoke-static {v4}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/k;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/k$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v2

    const/16 v4, 0xb

    invoke-static {v4}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v4

    iget v3, v3, Lcom/google/android/exoplayer2/k;->n:I

    invoke-virtual {p0, v4, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/k$b;->W(I)Lcom/google/android/exoplayer2/k$b;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/k;->i(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/k$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->M(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/k;->H:Lcom/google/android/exoplayer2/k;

    iget-wide v4, v3, Lcom/google/android/exoplayer2/k;->q:J

    invoke-virtual {p0, v2, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/k$b;->i0(J)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/k;->r:I

    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->j0(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/k;->s:I

    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->Q(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/k;->t:F

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->P(F)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/k;->u:I

    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->d0(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/k;->v:F

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->a0(F)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->b0([B)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/k;->x:I

    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->h0(I)Lcom/google/android/exoplayer2/k$b;

    const/16 v1, 0x16

    invoke-static {v1}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lv81;->g:Lcom/google/android/exoplayer2/e$a;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/e$a;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/e;

    move-result-object v1

    check-cast v1, Lv81;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k$b;->J(Lv81;)Lcom/google/android/exoplayer2/k$b;

    :cond_0
    const/16 v1, 0x17

    invoke-static {v1}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, v3, Lcom/google/android/exoplayer2/k;->z:I

    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k$b;->H(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/k;->A:I

    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->f0(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/k;->B:I

    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->Y(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/k;->C:I

    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->N(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-static {v2}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/k;->D:I

    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->O(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-static {v2}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Lcom/google/android/exoplayer2/k;->E:I

    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/k$b;->F(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-static {v2}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v3, v3, Lcom/google/android/exoplayer2/k;->F:I

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/k$b;->L(I)Lcom/google/android/exoplayer2/k$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private static h(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x24

    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/k$b;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/k$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/k$b;-><init>(Lcom/google/android/exoplayer2/k;Lcom/google/android/exoplayer2/k$a;)V

    return-object v0
.end method

.method public c(I)Lcom/google/android/exoplayer2/k;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k;->b()Lcom/google/android/exoplayer2/k$b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/k$b;->L(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/k;

    if-eq v3, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/k;

    iget v2, p0, Lcom/google/android/exoplayer2/k;->G:I

    if-eqz v2, :cond_2

    iget v3, p1, Lcom/google/android/exoplayer2/k;->G:I

    if-eqz v3, :cond_2

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer2/k;->e:I

    iget v3, p1, Lcom/google/android/exoplayer2/k;->e:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k;->f:I

    iget v3, p1, Lcom/google/android/exoplayer2/k;->f:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k;->g:I

    iget v3, p1, Lcom/google/android/exoplayer2/k;->g:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k;->h:I

    iget v3, p1, Lcom/google/android/exoplayer2/k;->h:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k;->n:I

    iget v3, p1, Lcom/google/android/exoplayer2/k;->n:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/android/exoplayer2/k;->q:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/k;->q:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k;->r:I

    iget v3, p1, Lcom/google/android/exoplayer2/k;->r:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k;->s:I

    iget v3, p1, Lcom/google/android/exoplayer2/k;->s:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k;->u:I

    iget v3, p1, Lcom/google/android/exoplayer2/k;->u:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k;->x:I

    iget v3, p1, Lcom/google/android/exoplayer2/k;->x:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k;->z:I

    iget v3, p1, Lcom/google/android/exoplayer2/k;->z:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k;->A:I

    iget v3, p1, Lcom/google/android/exoplayer2/k;->A:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k;->B:I

    iget v3, p1, Lcom/google/android/exoplayer2/k;->B:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k;->C:I

    iget v3, p1, Lcom/google/android/exoplayer2/k;->C:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k;->D:I

    iget v3, p1, Lcom/google/android/exoplayer2/k;->D:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k;->E:I

    iget v3, p1, Lcom/google/android/exoplayer2/k;->E:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k;->F:I

    iget v3, p1, Lcom/google/android/exoplayer2/k;->F:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k;->t:F

    iget v3, p1, Lcom/google/android/exoplayer2/k;->t:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/k;->v:F

    iget v3, p1, Lcom/google/android/exoplayer2/k;->v:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/k;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/k;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/k;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/k;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/k;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/k;->j:Ljava/lang/String;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/k;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/k;->l:Ljava/lang/String;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/k;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/k;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/k;->w:[B

    iget-object v3, p1, Lcom/google/android/exoplayer2/k;->w:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/k;->k:Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v3, p1, Lcom/google/android/exoplayer2/k;->k:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/k;->y:Lv81;

    iget-object v3, p1, Lcom/google/android/exoplayer2/k;->y:Lv81;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/k;->p:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v3, p1, Lcom/google/android/exoplayer2/k;->p:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-static {v2, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/k;->g(Lcom/google/android/exoplayer2/k;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public f()I
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/k;->r:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget p0, p0, Lcom/google/android/exoplayer2/k;->s:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int v1, v0, p0

    :cond_1
    :goto_0
    return v1
.end method

.method public g(Lcom/google/android/exoplayer2/k;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/k;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/k;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/k;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Lcom/google/android/exoplayer2/k;->o:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/k;->G:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x20f

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/k;->e:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/k;->f:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/k;->g:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/k;->h:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->j:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->k:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->l:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/k;->n:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-wide v0, p0, Lcom/google/android/exoplayer2/k;->q:J

    long-to-int v0, v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/k;->r:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/k;->s:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/k;->t:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/k;->u:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/k;->v:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/k;->x:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/k;->z:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/k;->A:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/k;->B:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/k;->C:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/k;->D:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/k;->E:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/k;->F:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/k;->G:I

    :cond_7
    iget p0, p0, Lcom/google/android/exoplayer2/k;->G:I

    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/k;->e:I

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/k;->f:I

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/k;->g:I

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/k;->h:I

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/k;->j:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/k;->k:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/k;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/k;->n:I

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/k;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Lcom/google/android/exoplayer2/k;->i(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/k;->o:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0xd

    invoke-static {v1}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/k;->p:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/k;->q:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/k;->r:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/k;->s:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x11

    invoke-static {v1}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/k;->t:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/16 v1, 0x12

    invoke-static {v1}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/k;->u:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x13

    invoke-static {v1}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/k;->v:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/k;->w:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 v1, 0x15

    invoke-static {v1}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/k;->x:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/k;->y:Lv81;

    if-eqz v1, :cond_1

    const/16 v1, 0x16

    invoke-static {v1}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/k;->y:Lv81;

    invoke-virtual {v2}, Lv81;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    const/16 v1, 0x17

    invoke-static {v1}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/k;->z:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x18

    invoke-static {v1}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/k;->A:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x19

    invoke-static {v1}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/k;->B:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1a

    invoke-static {v1}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/k;->C:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1b

    invoke-static {v1}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/k;->D:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1c

    invoke-static {v1}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/k;->E:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1d

    invoke-static {v1}, Lcom/google/android/exoplayer2/k;->h(I)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/google/android/exoplayer2/k;->F:I

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Format("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/k;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/k;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/k;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/k;->r:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/k;->s:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/k;->t:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/k;->z:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/exoplayer2/k;->A:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "])"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
