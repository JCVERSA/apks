.class public Lwz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwz1$a;
    }
.end annotation


# instance fields
.field public final b:Ley0;

.field public final c:Lcom/google/android/exoplayer2/a0$b;

.field public final d:Lcom/google/android/exoplayer2/a0$d;

.field public final e:Lwz1$a;

.field public final f:Landroid/util/SparseArray;

.field public g:Lom5;

.field public h:Lcom/google/android/exoplayer2/t;

.field public i:Lxn4;

.field public j:Z


# direct methods
.method public constructor <init>(Ley0;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ley0;

    iput-object v0, p0, Lwz1;->b:Ley0;

    new-instance v0, Lom5;

    invoke-static {}, Lblb;->K()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Low1;

    invoke-direct {v2}, Low1;-><init>()V

    invoke-direct {v0, v1, p1, v2}, Lom5;-><init>(Landroid/os/Looper;Ley0;Lom5$b;)V

    iput-object v0, p0, Lwz1;->g:Lom5;

    new-instance p1, Lcom/google/android/exoplayer2/a0$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/a0$b;-><init>()V

    iput-object p1, p0, Lwz1;->c:Lcom/google/android/exoplayer2/a0$b;

    new-instance v0, Lcom/google/android/exoplayer2/a0$d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/a0$d;-><init>()V

    iput-object v0, p0, Lwz1;->d:Lcom/google/android/exoplayer2/a0$d;

    new-instance v0, Lwz1$a;

    invoke-direct {v0, p1}, Lwz1$a;-><init>(Lcom/google/android/exoplayer2/a0$b;)V

    iput-object v0, p0, Lwz1;->e:Lwz1$a;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lwz1;->f:Landroid/util/SparseArray;

    return-void
.end method

.method public static synthetic A(Lnb$a;ILnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->v1(Lnb$a;ILnb;)V

    return-void
.end method

.method public static synthetic A0(Lnb$a;IJJLnb;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lwz1;->V0(Lnb$a;IJJLnb;)V

    return-void
.end method

.method public static synthetic A1(Lnb$a;ILcom/google/android/exoplayer2/t$e;Lcom/google/android/exoplayer2/t$e;Lnb;)V
    .locals 0

    invoke-interface {p4, p0, p1}, Lnb;->l(Lnb$a;I)V

    invoke-interface {p4, p0, p2, p3, p1}, Lnb;->a0(Lnb$a;Lcom/google/android/exoplayer2/t$e;Lcom/google/android/exoplayer2/t$e;I)V

    return-void
.end method

.method public static synthetic B(Lnb;Lzx3;)V
    .locals 0

    invoke-static {p0, p1}, Lwz1;->L0(Lnb;Lzx3;)V

    return-void
.end method

.method public static synthetic B0(Lnb$a;ZLnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->D1(Lnb$a;ZLnb;)V

    return-void
.end method

.method public static synthetic B1(Lnb$a;Ljava/lang/Object;JLnb;)V
    .locals 0

    invoke-interface {p4, p0, p1, p2, p3}, Lnb;->U(Lnb$a;Ljava/lang/Object;J)V

    return-void
.end method

.method public static synthetic C(Lnb$a;Lcom/google/android/exoplayer2/PlaybackException;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->y1(Lnb$a;Lcom/google/android/exoplayer2/PlaybackException;Lnb;)V

    return-void
.end method

.method public static synthetic C0(Lnb$a;Lnb;)V
    .locals 0

    invoke-static {p0, p1}, Lwz1;->f1(Lnb$a;Lnb;)V

    return-void
.end method

.method public static synthetic C1(Lnb$a;Lnb;)V
    .locals 0

    invoke-interface {p1, p0}, Lnb;->v(Lnb$a;)V

    return-void
.end method

.method public static synthetic D(Lnb$a;Lju1;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->L1(Lnb$a;Lju1;Lnb;)V

    return-void
.end method

.method public static synthetic D1(Lnb$a;ZLnb;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lnb;->N(Lnb$a;Z)V

    return-void
.end method

.method public static synthetic E(Lnb$a;Lnb;)V
    .locals 0

    invoke-static {p0, p1}, Lwz1;->Q1(Lnb$a;Lnb;)V

    return-void
.end method

.method public static synthetic E1(Lnb$a;IILnb;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lnb;->e(Lnb$a;II)V

    return-void
.end method

.method public static synthetic F(Lnb$a;Lcom/google/android/exoplayer2/o;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->r1(Lnb$a;Lcom/google/android/exoplayer2/o;Lnb;)V

    return-void
.end method

.method public static synthetic F1(Lnb$a;ILnb;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lnb;->s(Lnb$a;I)V

    return-void
.end method

.method public static synthetic G(Lnb$a;ZILnb;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lwz1;->z1(Lnb$a;ZILnb;)V

    return-void
.end method

.method public static synthetic G1(Lnb$a;Lcom/google/android/exoplayer2/b0;Lnb;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lnb;->j(Lnb$a;Lcom/google/android/exoplayer2/b0;)V

    return-void
.end method

.method public static synthetic H(Lnb$a;ILnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->F1(Lnb$a;ILnb;)V

    return-void
.end method

.method public static synthetic H1(Lnb$a;Ljava/lang/Exception;Lnb;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lnb;->g0(Lnb$a;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic I(Lnb$a;Lju1;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->K1(Lnb$a;Lju1;Lnb;)V

    return-void
.end method

.method public static synthetic I1(Lnb$a;Ljava/lang/String;JJLnb;)V
    .locals 7

    invoke-interface {p6, p0, p1, p2, p3}, Lnb;->Z(Lnb$a;Ljava/lang/String;J)V

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-interface/range {v0 .. v6}, Lnb;->i0(Lnb$a;Ljava/lang/String;JJ)V

    const/4 v3, 0x2

    move-object v1, p6

    move-object v2, p0

    move-object v4, p1

    invoke-interface/range {v1 .. v6}, Lnb;->S(Lnb$a;ILjava/lang/String;J)V

    return-void
.end method

.method public static synthetic J(Lnb$a;Lih6;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->c1(Lnb$a;Lih6;Lnb;)V

    return-void
.end method

.method public static synthetic J1(Lnb$a;Ljava/lang/String;Lnb;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lnb;->j0(Lnb$a;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic K(Lnb$a;Lin5;Lih6;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lwz1;->n1(Lnb$a;Lin5;Lih6;Lnb;)V

    return-void
.end method

.method public static synthetic K1(Lnb$a;Lju1;Lnb;)V
    .locals 1

    invoke-interface {p2, p0, p1}, Lnb;->W(Lnb$a;Lju1;)V

    const/4 v0, 0x2

    invoke-interface {p2, p0, v0, p1}, Lnb;->L(Lnb$a;ILju1;)V

    return-void
.end method

.method public static synthetic L(Lnb$a;IJJLnb;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lwz1;->X0(Lnb$a;IJJLnb;)V

    return-void
.end method

.method public static synthetic L0(Lnb;Lzx3;)V
    .locals 0

    return-void
.end method

.method public static synthetic L1(Lnb$a;Lju1;Lnb;)V
    .locals 1

    invoke-interface {p2, p0, p1}, Lnb;->x(Lnb$a;Lju1;)V

    const/4 v0, 0x2

    invoke-interface {p2, p0, v0, p1}, Lnb;->k(Lnb$a;ILju1;)V

    return-void
.end method

.method public static synthetic M(Lnb$a;Lin5;Lih6;Ljava/io/IOException;ZLnb;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lwz1;->o1(Lnb$a;Lin5;Lih6;Ljava/io/IOException;ZLnb;)V

    return-void
.end method

.method public static synthetic M0(Lnb$a;Lnb;)V
    .locals 0

    invoke-interface {p1, p0}, Lnb;->q(Lnb$a;)V

    return-void
.end method

.method public static synthetic M1(Lnb$a;JILnb;)V
    .locals 0

    invoke-interface {p4, p0, p1, p2, p3}, Lnb;->P(Lnb$a;JI)V

    return-void
.end method

.method public static synthetic N(Lnb$a;Ljava/lang/Exception;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->N0(Lnb$a;Ljava/lang/Exception;Lnb;)V

    return-void
.end method

.method public static synthetic N0(Lnb$a;Ljava/lang/Exception;Lnb;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lnb;->b(Lnb$a;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic N1(Lnb$a;Lcom/google/android/exoplayer2/k;Llu1;Lnb;)V
    .locals 0

    invoke-interface {p3, p0, p1}, Lnb;->r(Lnb$a;Lcom/google/android/exoplayer2/k;)V

    invoke-interface {p3, p0, p1, p2}, Lnb;->B(Lnb$a;Lcom/google/android/exoplayer2/k;Llu1;)V

    const/4 p2, 0x2

    invoke-interface {p3, p0, p2, p1}, Lnb;->C(Lnb$a;ILcom/google/android/exoplayer2/k;)V

    return-void
.end method

.method public static synthetic O(Lnb$a;FLnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->P1(Lnb$a;FLnb;)V

    return-void
.end method

.method public static synthetic O0(Lnb$a;Ljava/lang/String;JJLnb;)V
    .locals 7

    invoke-interface {p6, p0, p1, p2, p3}, Lnb;->w(Lnb$a;Ljava/lang/String;J)V

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-interface/range {v0 .. v6}, Lnb;->f0(Lnb$a;Ljava/lang/String;JJ)V

    const/4 v3, 0x1

    move-object v1, p6

    move-object v2, p0

    move-object v4, p1

    invoke-interface/range {v1 .. v6}, Lnb;->S(Lnb$a;ILjava/lang/String;J)V

    return-void
.end method

.method public static synthetic O1(Lnb$a;Lf7c;Lnb;)V
    .locals 6

    invoke-interface {p2, p0, p1}, Lnb;->g(Lnb$a;Lf7c;)V

    iget v2, p1, Lf7c;->b:I

    iget v3, p1, Lf7c;->c:I

    iget v4, p1, Lf7c;->d:I

    iget v5, p1, Lf7c;->e:F

    move-object v0, p2

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lnb;->R(Lnb$a;IIIF)V

    return-void
.end method

.method public static synthetic P(Lnb$a;Lin5;Lih6;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lwz1;->p1(Lnb$a;Lin5;Lih6;Lnb;)V

    return-void
.end method

.method public static synthetic P0(Lnb$a;Ljava/lang/String;Lnb;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lnb;->c0(Lnb$a;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic P1(Lnb$a;FLnb;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lnb;->m0(Lnb$a;F)V

    return-void
.end method

.method public static synthetic Q(Lnb$a;ILnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->g1(Lnb$a;ILnb;)V

    return-void
.end method

.method public static synthetic Q0(Lnb$a;Lju1;Lnb;)V
    .locals 1

    invoke-interface {p2, p0, p1}, Lnb;->F(Lnb$a;Lju1;)V

    const/4 v0, 0x1

    invoke-interface {p2, p0, v0, p1}, Lnb;->L(Lnb$a;ILju1;)V

    return-void
.end method

.method public static synthetic Q1(Lnb$a;Lnb;)V
    .locals 0

    invoke-interface {p1, p0}, Lnb;->d(Lnb$a;)V

    return-void
.end method

.method public static synthetic R(Lnb$a;Lnb;)V
    .locals 0

    invoke-static {p0, p1}, Lwz1;->i1(Lnb$a;Lnb;)V

    return-void
.end method

.method public static synthetic R0(Lnb$a;Lju1;Lnb;)V
    .locals 1

    invoke-interface {p2, p0, p1}, Lnb;->t(Lnb$a;Lju1;)V

    const/4 v0, 0x1

    invoke-interface {p2, p0, v0, p1}, Lnb;->k(Lnb$a;ILju1;)V

    return-void
.end method

.method public static synthetic S(Lnb$a;Lcom/google/android/exoplayer2/t$b;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->W0(Lnb$a;Lcom/google/android/exoplayer2/t$b;Lnb;)V

    return-void
.end method

.method public static synthetic S0(Lnb$a;Lcom/google/android/exoplayer2/k;Llu1;Lnb;)V
    .locals 0

    invoke-interface {p3, p0, p1}, Lnb;->e0(Lnb$a;Lcom/google/android/exoplayer2/k;)V

    invoke-interface {p3, p0, p1, p2}, Lnb;->T(Lnb$a;Lcom/google/android/exoplayer2/k;Llu1;)V

    const/4 p2, 0x1

    invoke-interface {p3, p0, p2, p1}, Lnb;->C(Lnb$a;ILcom/google/android/exoplayer2/k;)V

    return-void
.end method

.method public static synthetic T(Lnb$a;Lcom/google/android/exoplayer2/h;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->a1(Lnb$a;Lcom/google/android/exoplayer2/h;Lnb;)V

    return-void
.end method

.method public static synthetic T0(Lnb$a;JLnb;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lnb;->Q(Lnb$a;J)V

    return-void
.end method

.method public static synthetic U(Lnb$a;ZLnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->l1(Lnb$a;ZLnb;)V

    return-void
.end method

.method public static synthetic U0(Lnb$a;Ljava/lang/Exception;Lnb;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lnb;->K(Lnb$a;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic V(Lnb$a;JLnb;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lwz1;->T0(Lnb$a;JLnb;)V

    return-void
.end method

.method public static synthetic V0(Lnb$a;IJJLnb;)V
    .locals 7

    move-object v0, p6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lnb;->n0(Lnb$a;IJJ)V

    return-void
.end method

.method public static synthetic W(Lnb$a;Lnb;)V
    .locals 0

    invoke-static {p0, p1}, Lwz1;->C1(Lnb$a;Lnb;)V

    return-void
.end method

.method public static synthetic W0(Lnb$a;Lcom/google/android/exoplayer2/t$b;Lnb;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lnb;->D(Lnb$a;Lcom/google/android/exoplayer2/t$b;)V

    return-void
.end method

.method public static synthetic X(Lnb$a;Lcom/google/android/exoplayer2/n;ILnb;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lwz1;->q1(Lnb$a;Lcom/google/android/exoplayer2/n;ILnb;)V

    return-void
.end method

.method public static synthetic X0(Lnb$a;IJJLnb;)V
    .locals 7

    move-object v0, p6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lnb;->o0(Lnb$a;IJJ)V

    return-void
.end method

.method public static synthetic Y(Lnb$a;IILnb;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lwz1;->E1(Lnb$a;IILnb;)V

    return-void
.end method

.method public static synthetic Y0(Lnb$a;Ljava/util/List;Lnb;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lnb;->M(Lnb$a;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic Z(Lnb$a;ZLnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->k1(Lnb$a;ZLnb;)V

    return-void
.end method

.method public static synthetic Z0(Lnb$a;Lqm1;Lnb;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lnb;->X(Lnb$a;Lqm1;)V

    return-void
.end method

.method public static synthetic a0(Lnb$a;Lf7c;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->O1(Lnb$a;Lf7c;Lnb;)V

    return-void
.end method

.method public static synthetic a1(Lnb$a;Lcom/google/android/exoplayer2/h;Lnb;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lnb;->z(Lnb$a;Lcom/google/android/exoplayer2/h;)V

    return-void
.end method

.method public static synthetic b0(Lnb$a;Lnb;)V
    .locals 0

    invoke-static {p0, p1}, Lwz1;->d1(Lnb$a;Lnb;)V

    return-void
.end method

.method public static synthetic b1(Lnb$a;IZLnb;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lnb;->q0(Lnb$a;IZ)V

    return-void
.end method

.method public static synthetic c0(Lnb$a;Ljava/lang/Object;JLnb;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lwz1;->B1(Lnb$a;Ljava/lang/Object;JLnb;)V

    return-void
.end method

.method public static synthetic c1(Lnb$a;Lih6;Lnb;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lnb;->p0(Lnb$a;Lih6;)V

    return-void
.end method

.method public static synthetic d0(Lnb$a;IJLnb;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lwz1;->j1(Lnb$a;IJLnb;)V

    return-void
.end method

.method public static synthetic d1(Lnb$a;Lnb;)V
    .locals 0

    invoke-interface {p1, p0}, Lnb;->J(Lnb$a;)V

    return-void
.end method

.method public static synthetic e0(Lnb$a;ZILnb;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lwz1;->t1(Lnb$a;ZILnb;)V

    return-void
.end method

.method public static synthetic e1(Lnb$a;Lnb;)V
    .locals 0

    invoke-interface {p1, p0}, Lnb;->n(Lnb$a;)V

    return-void
.end method

.method public static synthetic f0(Lnb$a;IZLnb;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lwz1;->b1(Lnb$a;IZLnb;)V

    return-void
.end method

.method public static synthetic f1(Lnb$a;Lnb;)V
    .locals 0

    invoke-interface {p1, p0}, Lnb;->v0(Lnb$a;)V

    return-void
.end method

.method public static synthetic g0(Lnb$a;Lcom/google/android/exoplayer2/b0;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->G1(Lnb$a;Lcom/google/android/exoplayer2/b0;Lnb;)V

    return-void
.end method

.method public static synthetic g1(Lnb$a;ILnb;)V
    .locals 0

    invoke-interface {p2, p0}, Lnb;->p(Lnb$a;)V

    invoke-interface {p2, p0, p1}, Lnb;->y(Lnb$a;I)V

    return-void
.end method

.method public static synthetic h0(Lnb$a;ILnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->w1(Lnb$a;ILnb;)V

    return-void
.end method

.method public static synthetic h1(Lnb$a;Ljava/lang/Exception;Lnb;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lnb;->u0(Lnb$a;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic i0(Lwz1;Lcom/google/android/exoplayer2/t;Lnb;Lzx3;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lwz1;->R1(Lcom/google/android/exoplayer2/t;Lnb;Lzx3;)V

    return-void
.end method

.method public static synthetic i1(Lnb$a;Lnb;)V
    .locals 0

    invoke-interface {p1, p0}, Lnb;->A(Lnb$a;)V

    return-void
.end method

.method public static synthetic j0(Lnb$a;Lcom/google/android/exoplayer2/metadata/Metadata;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->s1(Lnb$a;Lcom/google/android/exoplayer2/metadata/Metadata;Lnb;)V

    return-void
.end method

.method public static synthetic j1(Lnb$a;IJLnb;)V
    .locals 0

    invoke-interface {p4, p0, p1, p2, p3}, Lnb;->r0(Lnb$a;IJ)V

    return-void
.end method

.method public static synthetic k0(Lnb$a;Ljava/lang/Exception;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->H1(Lnb$a;Ljava/lang/Exception;Lnb;)V

    return-void
.end method

.method public static synthetic k1(Lnb$a;ZLnb;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lnb;->G(Lnb$a;Z)V

    invoke-interface {p2, p0, p1}, Lnb;->s0(Lnb$a;Z)V

    return-void
.end method

.method public static synthetic l0(Lnb$a;Lcom/google/android/exoplayer2/s;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->u1(Lnb$a;Lcom/google/android/exoplayer2/s;Lnb;)V

    return-void
.end method

.method public static synthetic l1(Lnb$a;ZLnb;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lnb;->a(Lnb$a;Z)V

    return-void
.end method

.method public static synthetic m0(Lnb$a;Lju1;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->R0(Lnb$a;Lju1;Lnb;)V

    return-void
.end method

.method public static synthetic m1(Lnb$a;Lin5;Lih6;Lnb;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lnb;->Y(Lnb$a;Lin5;Lih6;)V

    return-void
.end method

.method public static synthetic n0(Lnb$a;Lqm1;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->Z0(Lnb$a;Lqm1;Lnb;)V

    return-void
.end method

.method public static synthetic n1(Lnb$a;Lin5;Lih6;Lnb;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lnb;->l0(Lnb$a;Lin5;Lih6;)V

    return-void
.end method

.method public static synthetic o0(Lnb$a;Lcom/google/android/exoplayer2/k;Llu1;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lwz1;->S0(Lnb$a;Lcom/google/android/exoplayer2/k;Llu1;Lnb;)V

    return-void
.end method

.method public static synthetic o1(Lnb$a;Lin5;Lih6;Ljava/io/IOException;ZLnb;)V
    .locals 6

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lnb;->O(Lnb$a;Lin5;Lih6;Ljava/io/IOException;Z)V

    return-void
.end method

.method public static synthetic p0(Lnb$a;Lcom/google/android/exoplayer2/k;Llu1;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lwz1;->N1(Lnb$a;Lcom/google/android/exoplayer2/k;Llu1;Lnb;)V

    return-void
.end method

.method public static synthetic p1(Lnb$a;Lin5;Lih6;Lnb;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lnb;->c(Lnb$a;Lin5;Lih6;)V

    return-void
.end method

.method public static synthetic q0(Lnb$a;Ljava/lang/Exception;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->h1(Lnb$a;Ljava/lang/Exception;Lnb;)V

    return-void
.end method

.method public static synthetic q1(Lnb$a;Lcom/google/android/exoplayer2/n;ILnb;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lnb;->E(Lnb$a;Lcom/google/android/exoplayer2/n;I)V

    return-void
.end method

.method public static synthetic r0(Lnb$a;Ljava/util/List;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->Y0(Lnb$a;Ljava/util/List;Lnb;)V

    return-void
.end method

.method public static synthetic r1(Lnb$a;Lcom/google/android/exoplayer2/o;Lnb;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lnb;->m(Lnb$a;Lcom/google/android/exoplayer2/o;)V

    return-void
.end method

.method public static synthetic s0(Lwz1;)V
    .locals 0

    invoke-virtual {p0}, Lwz1;->S1()V

    return-void
.end method

.method public static synthetic s1(Lnb$a;Lcom/google/android/exoplayer2/metadata/Metadata;Lnb;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lnb;->k0(Lnb$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public static synthetic t0(Lnb$a;Ljava/lang/String;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->J1(Lnb$a;Ljava/lang/String;Lnb;)V

    return-void
.end method

.method public static synthetic t1(Lnb$a;ZILnb;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lnb;->t0(Lnb$a;ZI)V

    return-void
.end method

.method public static synthetic u0(Lnb$a;ILcom/google/android/exoplayer2/t$e;Lcom/google/android/exoplayer2/t$e;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lwz1;->A1(Lnb$a;ILcom/google/android/exoplayer2/t$e;Lcom/google/android/exoplayer2/t$e;Lnb;)V

    return-void
.end method

.method public static synthetic u1(Lnb$a;Lcom/google/android/exoplayer2/s;Lnb;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lnb;->h0(Lnb$a;Lcom/google/android/exoplayer2/s;)V

    return-void
.end method

.method public static synthetic v(Lnb$a;Ljava/lang/String;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->P0(Lnb$a;Ljava/lang/String;Lnb;)V

    return-void
.end method

.method public static synthetic v0(Lnb$a;Lnb;)V
    .locals 0

    invoke-static {p0, p1}, Lwz1;->e1(Lnb$a;Lnb;)V

    return-void
.end method

.method public static synthetic v1(Lnb$a;ILnb;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lnb;->o(Lnb$a;I)V

    return-void
.end method

.method public static synthetic w(Lnb$a;Lju1;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->Q0(Lnb$a;Lju1;Lnb;)V

    return-void
.end method

.method public static synthetic w0(Lnb$a;Lnb;)V
    .locals 0

    invoke-static {p0, p1}, Lwz1;->M0(Lnb$a;Lnb;)V

    return-void
.end method

.method public static synthetic w1(Lnb$a;ILnb;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lnb;->H(Lnb$a;I)V

    return-void
.end method

.method public static synthetic x(Lnb$a;JILnb;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lwz1;->M1(Lnb$a;JILnb;)V

    return-void
.end method

.method public static synthetic x0(Lnb$a;Ljava/lang/String;JJLnb;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lwz1;->O0(Lnb$a;Ljava/lang/String;JJLnb;)V

    return-void
.end method

.method public static synthetic x1(Lnb$a;Lcom/google/android/exoplayer2/PlaybackException;Lnb;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lnb;->V(Lnb$a;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public static synthetic y(Lnb$a;Ljava/lang/Exception;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->U0(Lnb$a;Ljava/lang/Exception;Lnb;)V

    return-void
.end method

.method public static synthetic y0(Lnb$a;Ljava/lang/String;JJLnb;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lwz1;->I1(Lnb$a;Ljava/lang/String;JJLnb;)V

    return-void
.end method

.method public static synthetic y1(Lnb$a;Lcom/google/android/exoplayer2/PlaybackException;Lnb;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lnb;->h(Lnb$a;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public static synthetic z(Lnb$a;Lin5;Lih6;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lwz1;->m1(Lnb$a;Lin5;Lih6;Lnb;)V

    return-void
.end method

.method public static synthetic z0(Lnb$a;Lcom/google/android/exoplayer2/PlaybackException;Lnb;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lwz1;->x1(Lnb$a;Lcom/google/android/exoplayer2/PlaybackException;Lnb;)V

    return-void
.end method

.method public static synthetic z1(Lnb$a;ZILnb;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lnb;->u(Lnb$a;ZI)V

    return-void
.end method


# virtual methods
.method public final D0()Lnb$a;
    .locals 1

    iget-object v0, p0, Lwz1;->e:Lwz1$a;

    invoke-virtual {v0}, Lwz1$a;->d()Lcom/google/android/exoplayer2/source/i$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lwz1;->F0(Lcom/google/android/exoplayer2/source/i$b;)Lnb$a;

    move-result-object p0

    return-object p0
.end method

.method public final E0(Lcom/google/android/exoplayer2/a0;ILcom/google/android/exoplayer2/source/i$b;)Lnb$a;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p3

    :goto_0
    iget-object v1, v0, Lwz1;->b:Ley0;

    invoke-interface {v1}, Ley0;->elapsedRealtime()J

    move-result-wide v1

    iget-object v6, v0, Lwz1;->h:Lcom/google/android/exoplayer2/t;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/t;->getCurrentTimeline()Lcom/google/android/exoplayer2/a0;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/a0;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v0, Lwz1;->h:Lcom/google/android/exoplayer2/t;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/t;->getCurrentMediaItemIndex()I

    move-result v6

    if-ne v4, v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const-wide/16 v7, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lxk6;->b()Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v6, :cond_2

    iget-object v6, v0, Lwz1;->h:Lcom/google/android/exoplayer2/t;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/t;->getCurrentAdGroupIndex()I

    move-result v6

    iget v9, v5, Lxk6;->b:I

    if-ne v6, v9, :cond_2

    iget-object v6, v0, Lwz1;->h:Lcom/google/android/exoplayer2/t;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/t;->getCurrentAdIndexInAdGroup()I

    move-result v6

    iget v9, v5, Lxk6;->c:I

    if-ne v6, v9, :cond_2

    iget-object v6, v0, Lwz1;->h:Lcom/google/android/exoplayer2/t;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/t;->getCurrentPosition()J

    move-result-wide v7

    :cond_2
    :goto_2
    move-wide v6, v7

    goto :goto_3

    :cond_3
    if-eqz v6, :cond_4

    iget-object v6, v0, Lwz1;->h:Lcom/google/android/exoplayer2/t;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/t;->getContentPosition()J

    move-result-wide v6

    goto :goto_3

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    iget-object v6, v0, Lwz1;->d:Lcom/google/android/exoplayer2/a0$d;

    invoke-virtual {v3, v4, v6}, Lcom/google/android/exoplayer2/a0;->r(ILcom/google/android/exoplayer2/a0$d;)Lcom/google/android/exoplayer2/a0$d;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/a0$d;->e()J

    move-result-wide v7

    goto :goto_2

    :goto_3
    iget-object v8, v0, Lwz1;->e:Lwz1$a;

    invoke-virtual {v8}, Lwz1$a;->d()Lcom/google/android/exoplayer2/source/i$b;

    move-result-object v10

    new-instance v15, Lnb$a;

    iget-object v8, v0, Lwz1;->h:Lcom/google/android/exoplayer2/t;

    invoke-interface {v8}, Lcom/google/android/exoplayer2/t;->getCurrentTimeline()Lcom/google/android/exoplayer2/a0;

    move-result-object v8

    iget-object v9, v0, Lwz1;->h:Lcom/google/android/exoplayer2/t;

    invoke-interface {v9}, Lcom/google/android/exoplayer2/t;->getCurrentMediaItemIndex()I

    move-result v9

    iget-object v11, v0, Lwz1;->h:Lcom/google/android/exoplayer2/t;

    invoke-interface {v11}, Lcom/google/android/exoplayer2/t;->getCurrentPosition()J

    move-result-wide v11

    iget-object v0, v0, Lwz1;->h:Lcom/google/android/exoplayer2/t;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/t;->getTotalBufferedDuration()J

    move-result-wide v13

    move-object v0, v15

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v14}, Lnb$a;-><init>(JLcom/google/android/exoplayer2/a0;ILcom/google/android/exoplayer2/source/i$b;JLcom/google/android/exoplayer2/a0;ILcom/google/android/exoplayer2/source/i$b;JJ)V

    return-object v15
.end method

.method public final F0(Lcom/google/android/exoplayer2/source/i$b;)Lnb$a;
    .locals 3

    iget-object v0, p0, Lwz1;->h:Lcom/google/android/exoplayer2/t;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lwz1;->e:Lwz1$a;

    invoke-virtual {v1, p1}, Lwz1$a;->f(Lcom/google/android/exoplayer2/source/i$b;)Lcom/google/android/exoplayer2/a0;

    move-result-object v1

    :goto_0
    if-eqz p1, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lxk6;->a:Ljava/lang/Object;

    iget-object v2, p0, Lwz1;->c:Lcom/google/android/exoplayer2/a0$b;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/a0;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/a0$b;->d:I

    invoke-virtual {p0, v1, v0, p1}, Lwz1;->E0(Lcom/google/android/exoplayer2/a0;ILcom/google/android/exoplayer2/source/i$b;)Lnb$a;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    iget-object p1, p0, Lwz1;->h:Lcom/google/android/exoplayer2/t;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/t;->getCurrentMediaItemIndex()I

    move-result p1

    iget-object v1, p0, Lwz1;->h:Lcom/google/android/exoplayer2/t;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/t;->getCurrentTimeline()Lcom/google/android/exoplayer2/a0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a0;->t()I

    move-result v2

    if-ge p1, v2, :cond_3

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/google/android/exoplayer2/a0;->b:Lcom/google/android/exoplayer2/a0;

    :goto_2
    invoke-virtual {p0, v1, p1, v0}, Lwz1;->E0(Lcom/google/android/exoplayer2/a0;ILcom/google/android/exoplayer2/source/i$b;)Lnb$a;

    move-result-object p0

    return-object p0
.end method

.method public final G0()Lnb$a;
    .locals 1

    iget-object v0, p0, Lwz1;->e:Lwz1$a;

    invoke-virtual {v0}, Lwz1$a;->e()Lcom/google/android/exoplayer2/source/i$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lwz1;->F0(Lcom/google/android/exoplayer2/source/i$b;)Lnb$a;

    move-result-object p0

    return-object p0
.end method

.method public final H0(ILcom/google/android/exoplayer2/source/i$b;)Lnb$a;
    .locals 1

    iget-object v0, p0, Lwz1;->h:Lcom/google/android/exoplayer2/t;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lwz1;->e:Lwz1$a;

    invoke-virtual {v0, p2}, Lwz1$a;->f(Lcom/google/android/exoplayer2/source/i$b;)Lcom/google/android/exoplayer2/a0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lwz1;->F0(Lcom/google/android/exoplayer2/source/i$b;)Lnb$a;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/a0;->b:Lcom/google/android/exoplayer2/a0;

    invoke-virtual {p0, v0, p1, p2}, Lwz1;->E0(Lcom/google/android/exoplayer2/a0;ILcom/google/android/exoplayer2/source/i$b;)Lnb$a;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    iget-object p2, p0, Lwz1;->h:Lcom/google/android/exoplayer2/t;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/t;->getCurrentTimeline()Lcom/google/android/exoplayer2/a0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/a0;->t()I

    move-result v0

    if-ge p1, v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/google/android/exoplayer2/a0;->b:Lcom/google/android/exoplayer2/a0;

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lwz1;->E0(Lcom/google/android/exoplayer2/a0;ILcom/google/android/exoplayer2/source/i$b;)Lnb$a;

    move-result-object p0

    return-object p0
.end method

.method public final I0()Lnb$a;
    .locals 1

    iget-object v0, p0, Lwz1;->e:Lwz1$a;

    invoke-virtual {v0}, Lwz1$a;->g()Lcom/google/android/exoplayer2/source/i$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lwz1;->F0(Lcom/google/android/exoplayer2/source/i$b;)Lnb$a;

    move-result-object p0

    return-object p0
.end method

.method public final J0()Lnb$a;
    .locals 1

    iget-object v0, p0, Lwz1;->e:Lwz1$a;

    invoke-virtual {v0}, Lwz1$a;->h()Lcom/google/android/exoplayer2/source/i$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lwz1;->F0(Lcom/google/android/exoplayer2/source/i$b;)Lnb$a;

    move-result-object p0

    return-object p0
.end method

.method public final K0(Lcom/google/android/exoplayer2/PlaybackException;)Lnb$a;
    .locals 1

    instance-of v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->mediaPeriodId:Lxk6;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/source/i$b;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/i$b;-><init>(Lxk6;)V

    invoke-virtual {p0, v0}, Lwz1;->F0(Lcom/google/android/exoplayer2/source/i$b;)Lnb$a;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lwz1;->D0()Lnb$a;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic R1(Lcom/google/android/exoplayer2/t;Lnb;Lzx3;)V
    .locals 1

    new-instance v0, Lnb$b;

    iget-object p0, p0, Lwz1;->f:Landroid/util/SparseArray;

    invoke-direct {v0, p3, p0}, Lnb$b;-><init>(Lzx3;Landroid/util/SparseArray;)V

    invoke-interface {p2, p1, v0}, Lnb;->I(Lcom/google/android/exoplayer2/t;Lnb$b;)V

    return-void
.end method

.method public final S1()V
    .locals 3

    invoke-virtual {p0}, Lwz1;->D0()Lnb$a;

    move-result-object v0

    new-instance v1, Lty1;

    invoke-direct {v1, v0}, Lty1;-><init>(Lnb$a;)V

    const/16 v2, 0x404

    invoke-virtual {p0, v0, v2, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    iget-object p0, p0, Lwz1;->g:Lom5;

    invoke-virtual {p0}, Lom5;->j()V

    return-void
.end method

.method public final T1(Lnb$a;ILom5$a;)V
    .locals 1

    iget-object v0, p0, Lwz1;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, p0, Lwz1;->g:Lom5;

    invoke-virtual {p0, p2, p3}, Lom5;->l(ILom5$a;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/k;Llu1;)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->J0()Lnb$a;

    move-result-object v0

    new-instance v1, Luz1;

    invoke-direct {v1, v0, p1, p2}, Luz1;-><init>(Lnb$a;Lcom/google/android/exoplayer2/k;Llu1;)V

    const/16 p1, 0x3f1

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final b(Lju1;)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->J0()Lnb$a;

    move-result-object v0

    new-instance v1, Lhw1;

    invoke-direct {v1, v0, p1}, Lhw1;-><init>(Lnb$a;Lju1;)V

    const/16 p1, 0x3f7

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final c(Lju1;)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->I0()Lnb$a;

    move-result-object v0

    new-instance v1, Lrw1;

    invoke-direct {v1, v0, p1}, Lrw1;-><init>(Lnb$a;Lju1;)V

    const/16 p1, 0x3f5

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final d(Lju1;)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->J0()Lnb$a;

    move-result-object v0

    new-instance v1, Ltx1;

    invoke-direct {v1, v0, p1}, Ltx1;-><init>(Lnb$a;Lju1;)V

    const/16 p1, 0x3ef

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final e(Lju1;)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->I0()Lnb$a;

    move-result-object v0

    new-instance v1, Luv1;

    invoke-direct {v1, v0, p1}, Luv1;-><init>(Lnb$a;Lju1;)V

    const/16 p1, 0x3fc

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final f(Lcom/google/android/exoplayer2/k;Llu1;)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->J0()Lnb$a;

    move-result-object v0

    new-instance v1, Lfw1;

    invoke-direct {v1, v0, p1, p2}, Lfw1;-><init>(Lnb$a;Lcom/google/android/exoplayer2/k;Llu1;)V

    const/16 p1, 0x3f9

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final g(ILcom/google/android/exoplayer2/source/i$b;Lih6;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lwz1;->H0(ILcom/google/android/exoplayer2/source/i$b;)Lnb$a;

    move-result-object p1

    new-instance p2, Lpv1;

    invoke-direct {p2, p1, p3}, Lpv1;-><init>(Lnb$a;Lih6;)V

    const/16 p3, 0x3ec

    invoke-virtual {p0, p1, p3, p2}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public h(Lcom/google/android/exoplayer2/t;Landroid/os/Looper;)V
    .locals 2

    iget-object v0, p0, Lwz1;->h:Lcom/google/android/exoplayer2/t;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lwz1;->e:Lwz1$a;

    invoke-static {v0}, Lwz1$a;->a(Lwz1$a;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lzi;->g(Z)V

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/t;

    iput-object v0, p0, Lwz1;->h:Lcom/google/android/exoplayer2/t;

    iget-object v0, p0, Lwz1;->b:Ley0;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Ley0;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lxn4;

    move-result-object v0

    iput-object v0, p0, Lwz1;->i:Lxn4;

    iget-object v0, p0, Lwz1;->g:Lom5;

    new-instance v1, Llv1;

    invoke-direct {v1, p0, p1}, Llv1;-><init>(Lwz1;Lcom/google/android/exoplayer2/t;)V

    invoke-virtual {v0, p2, v1}, Lom5;->e(Landroid/os/Looper;Lom5$b;)Lom5;

    move-result-object p1

    iput-object p1, p0, Lwz1;->g:Lom5;

    return-void
.end method

.method public final i(ILcom/google/android/exoplayer2/source/i$b;Lin5;Lih6;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lwz1;->H0(ILcom/google/android/exoplayer2/source/i$b;)Lnb$a;

    move-result-object p1

    new-instance p2, Lfv1;

    invoke-direct {p2, p1, p3, p4}, Lfv1;-><init>(Lnb$a;Lin5;Lih6;)V

    const/16 p3, 0x3e9

    invoke-virtual {p0, p1, p3, p2}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final j(ILcom/google/android/exoplayer2/source/i$b;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lwz1;->H0(ILcom/google/android/exoplayer2/source/i$b;)Lnb$a;

    move-result-object p1

    new-instance p2, Lvy1;

    invoke-direct {p2, p1}, Lvy1;-><init>(Lnb$a;)V

    const/16 v0, 0x3ff

    invoke-virtual {p0, p1, v0, p2}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final k(ILcom/google/android/exoplayer2/source/i$b;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lwz1;->H0(ILcom/google/android/exoplayer2/source/i$b;)Lnb$a;

    move-result-object p1

    new-instance p2, Lxx1;

    invoke-direct {p2, p1, p3}, Lxx1;-><init>(Lnb$a;I)V

    const/16 p3, 0x3fe

    invoke-virtual {p0, p1, p3, p2}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final l(ILcom/google/android/exoplayer2/source/i$b;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lwz1;->H0(ILcom/google/android/exoplayer2/source/i$b;)Lnb$a;

    move-result-object p1

    new-instance p2, Lxy1;

    invoke-direct {p2, p1}, Lxy1;-><init>(Lnb$a;)V

    const/16 v0, 0x401

    invoke-virtual {p0, p1, v0, p2}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final m(ILcom/google/android/exoplayer2/source/i$b;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lwz1;->H0(ILcom/google/android/exoplayer2/source/i$b;)Lnb$a;

    move-result-object p1

    new-instance p2, Lly1;

    invoke-direct {p2, p1}, Lly1;-><init>(Lnb$a;)V

    const/16 v0, 0x402

    invoke-virtual {p0, p1, v0, p2}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final notifySeekStarted()V
    .locals 3

    iget-boolean v0, p0, Lwz1;->j:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lwz1;->D0()Lnb$a;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lwz1;->j:Z

    new-instance v1, Ljv1;

    invoke-direct {v1, v0}, Ljv1;-><init>(Lnb$a;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    :cond_0
    return-void
.end method

.method public final o(ILcom/google/android/exoplayer2/source/i$b;Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lwz1;->H0(ILcom/google/android/exoplayer2/source/i$b;)Lnb$a;

    move-result-object p1

    new-instance p2, Lpx1;

    invoke-direct {p2, p1, p3}, Lpx1;-><init>(Lnb$a;Ljava/lang/Exception;)V

    const/16 p3, 0x400

    invoke-virtual {p0, p1, p3, p2}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final onAudioCodecError(Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->J0()Lnb$a;

    move-result-object v0

    new-instance v1, Lsz1;

    invoke-direct {v1, v0, p1}, Lsz1;-><init>(Lnb$a;Ljava/lang/Exception;)V

    const/16 p1, 0x405

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 9

    invoke-virtual {p0}, Lwz1;->J0()Lnb$a;

    move-result-object v7

    new-instance v8, Luu1;

    move-object v0, v8

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Luu1;-><init>(Lnb$a;Ljava/lang/String;JJ)V

    const/16 p1, 0x3f0

    invoke-virtual {p0, v7, p1, v8}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final onAudioDecoderReleased(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->J0()Lnb$a;

    move-result-object v0

    new-instance v1, Ltw1;

    invoke-direct {v1, v0, p1}, Ltw1;-><init>(Lnb$a;Ljava/lang/String;)V

    const/16 p1, 0x3f4

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final onAudioPositionAdvancing(J)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->J0()Lnb$a;

    move-result-object v0

    new-instance v1, Lvw1;

    invoke-direct {v1, v0, p1, p2}, Lvw1;-><init>(Lnb$a;J)V

    const/16 p1, 0x3f2

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final onAudioSinkError(Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->J0()Lnb$a;

    move-result-object v0

    new-instance v1, Lkx1;

    invoke-direct {v1, v0, p1}, Lkx1;-><init>(Lnb$a;Ljava/lang/Exception;)V

    const/16 p1, 0x3f6

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final onAudioUnderrun(IJJ)V
    .locals 9

    invoke-virtual {p0}, Lwz1;->J0()Lnb$a;

    move-result-object v7

    new-instance v8, Lwu1;

    move-object v0, v8

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lwu1;-><init>(Lnb$a;IJJ)V

    const/16 p1, 0x3f3

    invoke-virtual {p0, v7, p1, v8}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public onAvailableCommandsChanged(Lcom/google/android/exoplayer2/t$b;)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->D0()Lnb$a;

    move-result-object v0

    new-instance v1, Ldw1;

    invoke-direct {v1, v0, p1}, Ldw1;-><init>(Lnb$a;Lcom/google/android/exoplayer2/t$b;)V

    const/16 p1, 0xd

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final onBandwidthSample(IJJ)V
    .locals 9

    invoke-virtual {p0}, Lwz1;->G0()Lnb$a;

    move-result-object v7

    new-instance v8, Lzy1;

    move-object v0, v8

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lzy1;-><init>(Lnb$a;IJJ)V

    const/16 p1, 0x3ee

    invoke-virtual {p0, v7, p1, v8}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lwz1;->D0()Lnb$a;

    move-result-object v0

    .line 2
    new-instance v1, Lzw1;

    invoke-direct {v1, v0, p1}, Lzw1;-><init>(Lnb$a;Ljava/util/List;)V

    const/16 p1, 0x1b

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public onCues(Lqm1;)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Lwz1;->D0()Lnb$a;

    move-result-object v0

    .line 4
    new-instance v1, Lbw1;

    invoke-direct {v1, v0, p1}, Lbw1;-><init>(Lnb$a;Lqm1;)V

    const/16 p1, 0x1b

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public onDeviceInfoChanged(Lcom/google/android/exoplayer2/h;)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->D0()Lnb$a;

    move-result-object v0

    new-instance v1, Lby1;

    invoke-direct {v1, v0, p1}, Lby1;-><init>(Lnb$a;Lcom/google/android/exoplayer2/h;)V

    const/16 p1, 0x1d

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public onDeviceVolumeChanged(IZ)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->D0()Lnb$a;

    move-result-object v0

    new-instance v1, Ldy1;

    invoke-direct {v1, v0, p1, p2}, Ldy1;-><init>(Lnb$a;IZ)V

    const/16 p1, 0x1e

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final onDroppedFrames(IJ)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->I0()Lnb$a;

    move-result-object v0

    new-instance v1, Ldx1;

    invoke-direct {v1, v0, p1, p2, p3}, Ldx1;-><init>(Lnb$a;IJ)V

    const/16 p1, 0x3fa

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public onEvents(Lcom/google/android/exoplayer2/t;Lcom/google/android/exoplayer2/t$c;)V
    .locals 0

    return-void
.end method

.method public final onIsLoadingChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->D0()Lnb$a;

    move-result-object v0

    new-instance v1, Lmx1;

    invoke-direct {v1, v0, p1}, Lmx1;-><init>(Lnb$a;Z)V

    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->D0()Lnb$a;

    move-result-object v0

    new-instance v1, Ldz1;

    invoke-direct {v1, v0, p1}, Ldz1;-><init>(Lnb$a;Z)V

    const/4 p1, 0x7

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public final onMediaItemTransition(Lcom/google/android/exoplayer2/n;I)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->D0()Lnb$a;

    move-result-object v0

    new-instance v1, Lzv1;

    invoke-direct {v1, v0, p1, p2}, Lzv1;-><init>(Lnb$a;Lcom/google/android/exoplayer2/n;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public onMediaMetadataChanged(Lcom/google/android/exoplayer2/o;)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->D0()Lnb$a;

    move-result-object v0

    new-instance v1, Lzu1;

    invoke-direct {v1, v0, p1}, Lzu1;-><init>(Lnb$a;Lcom/google/android/exoplayer2/o;)V

    const/16 p1, 0xe

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->D0()Lnb$a;

    move-result-object v0

    new-instance v1, Lgy1;

    invoke-direct {v1, v0, p1}, Lgy1;-><init>(Lnb$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    const/16 p1, 0x1c

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final onPlayWhenReadyChanged(ZI)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->D0()Lnb$a;

    move-result-object v0

    new-instance v1, Lyu1;

    invoke-direct {v1, v0, p1, p2}, Lyu1;-><init>(Lnb$a;ZI)V

    const/4 p1, 0x5

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final onPlaybackParametersChanged(Lcom/google/android/exoplayer2/s;)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->D0()Lnb$a;

    move-result-object v0

    new-instance v1, Ldv1;

    invoke-direct {v1, v0, p1}, Ldv1;-><init>(Lnb$a;Lcom/google/android/exoplayer2/s;)V

    const/16 p1, 0xc

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final onPlaybackStateChanged(I)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->D0()Lnb$a;

    move-result-object v0

    new-instance v1, Ljw1;

    invoke-direct {v1, v0, p1}, Ljw1;-><init>(Lnb$a;I)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final onPlaybackSuppressionReasonChanged(I)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->D0()Lnb$a;

    move-result-object v0

    new-instance v1, Lhx1;

    invoke-direct {v1, v0, p1}, Lhx1;-><init>(Lnb$a;I)V

    const/4 p1, 0x6

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 2

    invoke-virtual {p0, p1}, Lwz1;->K0(Lcom/google/android/exoplayer2/PlaybackException;)Lnb$a;

    move-result-object v0

    new-instance v1, Lxv1;

    invoke-direct {v1, v0, p1}, Lxv1;-><init>(Lnb$a;Lcom/google/android/exoplayer2/PlaybackException;)V

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 2

    invoke-virtual {p0, p1}, Lwz1;->K0(Lcom/google/android/exoplayer2/PlaybackException;)Lnb$a;

    move-result-object v0

    new-instance v1, Lfx1;

    invoke-direct {v1, v0, p1}, Lfx1;-><init>(Lnb$a;Lcom/google/android/exoplayer2/PlaybackException;)V

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final onPlayerStateChanged(ZI)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->D0()Lnb$a;

    move-result-object v0

    new-instance v1, Lhv1;

    invoke-direct {v1, v0, p1, p2}, Lhv1;-><init>(Lnb$a;ZI)V

    const/4 p1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPositionDiscontinuity(Lcom/google/android/exoplayer2/t$e;Lcom/google/android/exoplayer2/t$e;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lwz1;->j:Z

    .line 3
    :cond_0
    iget-object v0, p0, Lwz1;->e:Lwz1$a;

    iget-object v1, p0, Lwz1;->h:Lcom/google/android/exoplayer2/t;

    invoke-static {v1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/t;

    invoke-virtual {v0, v1}, Lwz1$a;->j(Lcom/google/android/exoplayer2/t;)V

    .line 4
    invoke-virtual {p0}, Lwz1;->D0()Lnb$a;

    move-result-object v0

    .line 5
    new-instance v1, Lrx1;

    invoke-direct {v1, v0, p3, p1, p2}, Lrx1;-><init>(Lnb$a;ILcom/google/android/exoplayer2/t$e;Lcom/google/android/exoplayer2/t$e;)V

    const/16 p1, 0xb

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    .line 3
    return-void
.end method

.method public final onRenderedFirstFrame(Ljava/lang/Object;J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lwz1;->J0()Lnb$a;

    move-result-object v0

    .line 2
    new-instance v1, Lpy1;

    invoke-direct {v1, v0, p1, p2, p3}, Lpy1;-><init>(Lnb$a;Ljava/lang/Object;J)V

    const/16 p1, 0x1a

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final onSeekProcessed()V
    .locals 3

    invoke-virtual {p0}, Lwz1;->D0()Lnb$a;

    move-result-object v0

    new-instance v1, Lnv1;

    invoke-direct {v1, v0}, Lnv1;-><init>(Lnb$a;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final onSkipSilenceEnabledChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->J0()Lnb$a;

    move-result-object v0

    new-instance v1, Lry1;

    invoke-direct {v1, v0, p1}, Lry1;-><init>(Lnb$a;Z)V

    const/16 p1, 0x17

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final onSurfaceSizeChanged(II)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->J0()Lnb$a;

    move-result-object v0

    new-instance v1, Lsv1;

    invoke-direct {v1, v0, p1, p2}, Lsv1;-><init>(Lnb$a;II)V

    const/16 p1, 0x18

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final onTimelineChanged(Lcom/google/android/exoplayer2/a0;I)V
    .locals 1

    iget-object p1, p0, Lwz1;->e:Lwz1$a;

    iget-object v0, p0, Lwz1;->h:Lcom/google/android/exoplayer2/t;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/t;

    invoke-virtual {p1, v0}, Lwz1$a;->l(Lcom/google/android/exoplayer2/t;)V

    invoke-virtual {p0}, Lwz1;->D0()Lnb$a;

    move-result-object p1

    new-instance v0, Lvx1;

    invoke-direct {v0, p1, p2}, Lvx1;-><init>(Lnb$a;I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/b0;)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->D0()Lnb$a;

    move-result-object v0

    new-instance v1, Lbx1;

    invoke-direct {v1, v0, p1}, Lbx1;-><init>(Lnb$a;Lcom/google/android/exoplayer2/b0;)V

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final onVideoCodecError(Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->J0()Lnb$a;

    move-result-object v0

    new-instance v1, Lqz1;

    invoke-direct {v1, v0, p1}, Lqz1;-><init>(Lnb$a;Ljava/lang/Exception;)V

    const/16 p1, 0x406

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 9

    invoke-virtual {p0}, Lwz1;->J0()Lnb$a;

    move-result-object v7

    new-instance v8, Llw1;

    move-object v0, v8

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Llw1;-><init>(Lnb$a;Ljava/lang/String;JJ)V

    const/16 p1, 0x3f8

    invoke-virtual {p0, v7, p1, v8}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final onVideoDecoderReleased(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->J0()Lnb$a;

    move-result-object v0

    new-instance v1, Ljy1;

    invoke-direct {v1, v0, p1}, Ljy1;-><init>(Lnb$a;Ljava/lang/String;)V

    const/16 p1, 0x3fb

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final onVideoFrameProcessingOffset(JI)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->I0()Lnb$a;

    move-result-object v0

    new-instance v1, Lnx1;

    invoke-direct {v1, v0, p1, p2, p3}, Lnx1;-><init>(Lnb$a;JI)V

    const/16 p1, 0x3fd

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final onVideoSizeChanged(Lf7c;)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->J0()Lnb$a;

    move-result-object v0

    new-instance v1, Lny1;

    invoke-direct {v1, v0, p1}, Lny1;-><init>(Lnb$a;Lf7c;)V

    const/16 p1, 0x19

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final onVolumeChanged(F)V
    .locals 2

    invoke-virtual {p0}, Lwz1;->J0()Lnb$a;

    move-result-object v0

    new-instance v1, Lzx1;

    invoke-direct {v1, v0, p1}, Lzx1;-><init>(Lnb$a;F)V

    const/16 p1, 0x16

    invoke-virtual {p0, v0, p1, v1}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final p(ILcom/google/android/exoplayer2/source/i$b;Lin5;Lih6;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lwz1;->H0(ILcom/google/android/exoplayer2/source/i$b;)Lnb$a;

    move-result-object p1

    new-instance p2, Liy1;

    invoke-direct {p2, p1, p3, p4}, Liy1;-><init>(Lnb$a;Lin5;Lih6;)V

    const/16 p3, 0x3ea

    invoke-virtual {p0, p1, p3, p2}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final q(Ljava/util/List;Lcom/google/android/exoplayer2/source/i$b;)V
    .locals 1

    iget-object v0, p0, Lwz1;->e:Lwz1$a;

    iget-object p0, p0, Lwz1;->h:Lcom/google/android/exoplayer2/t;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/t;

    invoke-virtual {v0, p1, p2, p0}, Lwz1$a;->k(Ljava/util/List;Lcom/google/android/exoplayer2/source/i$b;Lcom/google/android/exoplayer2/t;)V

    return-void
.end method

.method public r(Lnb;)V
    .locals 0

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lwz1;->g:Lom5;

    invoke-virtual {p0, p1}, Lom5;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lwz1;->i:Lxn4;

    invoke-static {v0}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxn4;

    new-instance v1, Lbv1;

    invoke-direct {v1, p0}, Lbv1;-><init>(Lwz1;)V

    invoke-interface {v0, v1}, Lxn4;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final s(ILcom/google/android/exoplayer2/source/i$b;Lin5;Lih6;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lwz1;->H0(ILcom/google/android/exoplayer2/source/i$b;)Lnb$a;

    move-result-object p1

    new-instance p2, Lqw1;

    invoke-direct {p2, p1, p3, p4}, Lqw1;-><init>(Lnb$a;Lin5;Lih6;)V

    const/16 p3, 0x3e8

    invoke-virtual {p0, p1, p3, p2}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final t(ILcom/google/android/exoplayer2/source/i$b;Lin5;Lih6;Ljava/io/IOException;Z)V
    .locals 6

    invoke-virtual {p0, p1, p2}, Lwz1;->H0(ILcom/google/android/exoplayer2/source/i$b;)Lnb$a;

    move-result-object p1

    new-instance p2, Lvv1;

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lvv1;-><init>(Lnb$a;Lin5;Lih6;Ljava/io/IOException;Z)V

    const/16 p3, 0x3eb

    invoke-virtual {p0, p1, p3, p2}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method

.method public final u(ILcom/google/android/exoplayer2/source/i$b;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lwz1;->H0(ILcom/google/android/exoplayer2/source/i$b;)Lnb$a;

    move-result-object p1

    new-instance p2, Lxw1;

    invoke-direct {p2, p1}, Lxw1;-><init>(Lnb$a;)V

    const/16 v0, 0x403

    invoke-virtual {p0, p1, v0, p2}, Lwz1;->T1(Lnb$a;ILom5$a;)V

    return-void
.end method
