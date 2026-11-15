.class public final Lkoj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzmj;
.implements Lf9e;
.implements Ltrj;
.implements Lwrj;
.implements Lvoj;


# static fields
.field public static final O:Ljava/util/Map;

.field public static final P:Lerj;


# instance fields
.field public A:Z

.field public B:I

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:I

.field public G:Z

.field public H:J

.field public I:J

.field public J:Z

.field public K:I

.field public L:Z

.field public M:Z

.field public final N:Lnrj;

.field public final b:Landroid/net/Uri;

.field public final c:Lv9i;

.field public final d:Lojj;

.field public final e:Lrnj;

.field public final f:Ljjj;

.field public final g:Lgoj;

.field public final h:J

.field public final i:J

.field public final j:Lcom/google/android/gms/internal/ads/wb;

.field public final k:Lznj;

.field public final l:Loeg;

.field public final m:Ljava/lang/Runnable;

.field public final n:Ljava/lang/Runnable;

.field public final o:Landroid/os/Handler;

.field public p:Lymj;

.field public q:Lsce;

.field public r:[Lxoj;

.field public s:[Lioj;

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Ljoj;

.field public y:Lkae;

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lkoj;->O:Ljava/util/Map;

    new-instance v0, Lgpj;

    invoke-direct {v0}, Lgpj;-><init>()V

    const-string v1, "icy"

    invoke-virtual {v0, v1}, Lgpj;->o(Ljava/lang/String;)Lgpj;

    const-string v1, "application/x-icy"

    invoke-virtual {v0, v1}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    invoke-virtual {v0}, Lgpj;->K()Lerj;

    move-result-object v0

    sput-object v0, Lkoj;->P:Lerj;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lv9i;Lznj;Lojj;Ljjj;Lrrj;Lrnj;Lgoj;Lnrj;Ljava/lang/String;IILerj;JLa6e;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lkoj;->b:Landroid/net/Uri;

    move-object v1, p2

    iput-object v1, v0, Lkoj;->c:Lv9i;

    move-object v1, p4

    iput-object v1, v0, Lkoj;->d:Lojj;

    move-object v1, p5

    iput-object v1, v0, Lkoj;->f:Ljjj;

    move-object v1, p7

    iput-object v1, v0, Lkoj;->e:Lrnj;

    move-object v1, p8

    iput-object v1, v0, Lkoj;->g:Lgoj;

    move-object v1, p9

    iput-object v1, v0, Lkoj;->N:Lnrj;

    move v1, p11

    int-to-long v1, v1

    iput-wide v1, v0, Lkoj;->h:J

    new-instance v1, Lcom/google/android/gms/internal/ads/wb;

    const-string v2, "ProgressiveMediaPeriod"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/wb;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lkoj;->j:Lcom/google/android/gms/internal/ads/wb;

    move-object v1, p3

    iput-object v1, v0, Lkoj;->k:Lznj;

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lkoj;->i:J

    new-instance v1, Loeg;

    sget-object v2, Ltbg;->a:Ltbg;

    invoke-direct {v1, v2}, Loeg;-><init>(Ltbg;)V

    iput-object v1, v0, Lkoj;->l:Loeg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzvv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzvv;-><init>(Lkoj;)V

    iput-object v1, v0, Lkoj;->m:Ljava/lang/Runnable;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzvw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzvw;-><init>(Lkoj;)V

    iput-object v1, v0, Lkoj;->n:Ljava/lang/Runnable;

    const/4 v1, 0x0

    invoke-static {v1}, Lkfh;->T(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, v0, Lkoj;->o:Landroid/os/Handler;

    const/4 v1, 0x0

    new-array v2, v1, [Lioj;

    iput-object v2, v0, Lkoj;->s:[Lioj;

    new-array v1, v1, [Lxoj;

    iput-object v1, v0, Lkoj;->r:[Lxoj;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, v0, Lkoj;->I:J

    const/4 v1, 0x1

    iput v1, v0, Lkoj;->B:I

    return-void
.end method

.method public static bridge synthetic K(Lkoj;)J
    .locals 2

    iget-wide v0, p0, Lkoj;->h:J

    return-wide v0
.end method

.method public static bridge synthetic L(Lkoj;)J
    .locals 2

    iget-wide v0, p0, Lkoj;->z:J

    return-wide v0
.end method

.method public static bridge synthetic M(Lkoj;Z)J
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lkoj;->z(Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic N(Lkoj;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lkoj;->o:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic O()Lerj;
    .locals 1

    sget-object v0, Lkoj;->P:Lerj;

    return-object v0
.end method

.method public static bridge synthetic Q(Lkoj;)Lsce;
    .locals 0

    iget-object p0, p0, Lkoj;->q:Lsce;

    return-object p0
.end method

.method public static bridge synthetic R(Lkoj;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lkoj;->n:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic S()Ljava/util/Map;
    .locals 1

    sget-object v0, Lkoj;->O:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic o(Lkoj;)V
    .locals 1

    iget-boolean v0, p0, Lkoj;->M:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lkoj;->p:Lymj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0}, Lzoj;->h(Lapj;)V

    :cond_0
    return-void
.end method

.method public static synthetic p(Lkoj;)V
    .locals 0

    invoke-virtual {p0}, Lkoj;->C()V

    return-void
.end method

.method public static synthetic q(Lkoj;Lkae;)V
    .locals 7

    iget-object v0, p0, Lkoj;->q:Lsce;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljae;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljae;-><init>(JJ)V

    :goto_0
    iput-object v0, p0, Lkoj;->y:Lkae;

    invoke-interface {p1}, Lkae;->zza()J

    move-result-wide v3

    iput-wide v3, p0, Lkoj;->z:J

    iget-boolean v0, p0, Lkoj;->G:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    invoke-interface {p1}, Lkae;->zza()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-nez v0, :cond_1

    move v3, v4

    :cond_1
    iput-boolean v3, p0, Lkoj;->A:Z

    if-eq v4, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x7

    :goto_1
    iput v4, p0, Lkoj;->B:I

    iget-boolean v0, p0, Lkoj;->u:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkoj;->g:Lgoj;

    iget-wide v1, p0, Lkoj;->z:J

    invoke-interface {v0, v1, v2, p1, v3}, Lgoj;->k(JLkae;Z)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lkoj;->C()V

    return-void
.end method

.method public static synthetic r(Lkoj;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkoj;->G:Z

    return-void
.end method

.method public static bridge synthetic s(Lkoj;Lsce;)V
    .locals 0

    iput-object p1, p0, Lkoj;->q:Lsce;

    return-void
.end method

.method public static bridge synthetic t(Lkoj;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzvu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzvu;-><init>(Lkoj;)V

    iget-object p0, p0, Lkoj;->o:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final A(Lioj;)Lrae;
    .locals 5

    iget-object v0, p0, Lkoj;->r:[Lxoj;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lkoj;->s:[Lioj;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lioj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lkoj;->r:[Lxoj;

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lkoj;->t:Z

    if-eqz v1, :cond_2

    iget p0, p1, Lioj;->a:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Extractor added new track (id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") after finishing tracks."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ProgressiveMediaPeriod"

    invoke-static {p1, p0}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ls8e;

    invoke-direct {p0}, Ls8e;-><init>()V

    return-object p0

    :cond_2
    iget-object v1, p0, Lkoj;->N:Lnrj;

    iget-object v2, p0, Lkoj;->d:Lojj;

    iget-object v3, p0, Lkoj;->f:Ljjj;

    new-instance v4, Lxoj;

    invoke-direct {v4, v1, v2, v3}, Lxoj;-><init>(Lnrj;Lojj;Ljjj;)V

    invoke-virtual {v4, p0}, Lxoj;->J(Lvoj;)V

    iget-object v1, p0, Lkoj;->s:[Lioj;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lioj;

    aput-object p1, v1, v0

    sget p1, Lkfh;->a:I

    iput-object v1, p0, Lkoj;->s:[Lioj;

    iget-object p1, p0, Lkoj;->r:[Lxoj;

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lxoj;

    aput-object v4, p1, v0

    iput-object p1, p0, Lkoj;->r:[Lxoj;

    return-object v4
.end method

.method public final B()V
    .locals 1

    iget-boolean v0, p0, Lkoj;->u:Z

    invoke-static {v0}, Ln7g;->f(Z)V

    iget-object v0, p0, Lkoj;->x:Ljoj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lkoj;->y:Lkae;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final C()V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lkoj;->M:Z

    if-nez v2, :cond_b

    iget-boolean v2, p0, Lkoj;->u:Z

    if-nez v2, :cond_b

    iget-boolean v2, p0, Lkoj;->t:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lkoj;->y:Lkae;

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v2, p0, Lkoj;->r:[Lxoj;

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lxoj;->B()Lerj;

    move-result-object v5

    if-eqz v5, :cond_b

    add-int/2addr v4, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lkoj;->l:Loeg;

    invoke-virtual {v2}, Loeg;->c()Z

    iget-object v2, p0, Lkoj;->r:[Lxoj;

    array-length v2, v2

    new-array v3, v2, [Ln5f;

    new-array v4, v2, [Z

    move v5, v0

    :goto_1
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v5, v2, :cond_9

    iget-object v8, p0, Lkoj;->r:[Lxoj;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Lxoj;->B()Lerj;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v8, Lerj;->o:Ljava/lang/String;

    invoke-static {v9}, Lbue;->h(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v9}, Lbue;->j(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    move v11, v1

    goto :goto_2

    :cond_3
    move v11, v0

    :goto_2
    aput-boolean v11, v4, v5

    iget-boolean v12, p0, Lkoj;->v:Z

    or-int/2addr v11, v12

    iput-boolean v11, p0, Lkoj;->v:Z

    invoke-static {v9}, Lbue;->i(Ljava/lang/String;)Z

    move-result v9

    iget-wide v11, p0, Lkoj;->i:J

    cmp-long v11, v11, v6

    if-eqz v11, :cond_4

    if-ne v2, v1, :cond_4

    if-eqz v9, :cond_4

    move v9, v1

    goto :goto_3

    :cond_4
    move v9, v0

    :goto_3
    iput-boolean v9, p0, Lkoj;->w:Z

    iget-object v9, p0, Lkoj;->q:Lsce;

    if-eqz v9, :cond_8

    if-nez v10, :cond_5

    iget-object v11, p0, Lkoj;->s:[Lioj;

    aget-object v11, v11, v5

    iget-boolean v11, v11, Lioj;->b:Z

    if-eqz v11, :cond_7

    :cond_5
    iget-object v11, v8, Lerj;->l:Lhre;

    if-nez v11, :cond_6

    new-instance v11, Lhre;

    new-array v12, v1, [Liqe;

    aput-object v9, v12, v0

    invoke-direct {v11, v6, v7, v12}, Lhre;-><init>(J[Liqe;)V

    goto :goto_4

    :cond_6
    new-array v6, v1, [Liqe;

    aput-object v9, v6, v0

    invoke-virtual {v11, v6}, Lhre;->c([Liqe;)Lhre;

    move-result-object v11

    :goto_4
    invoke-virtual {v8}, Lerj;->b()Lgpj;

    move-result-object v6

    invoke-virtual {v6, v11}, Lgpj;->w(Lhre;)Lgpj;

    invoke-virtual {v6}, Lgpj;->K()Lerj;

    move-result-object v8

    :cond_7
    if-eqz v10, :cond_8

    iget v6, v8, Lerj;->h:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_8

    iget v6, v8, Lerj;->i:I

    if-ne v6, v7, :cond_8

    iget v6, v9, Lsce;->a:I

    if-eq v6, v7, :cond_8

    invoke-virtual {v8}, Lerj;->b()Lgpj;

    move-result-object v7

    invoke-virtual {v7, v6}, Lgpj;->a(I)Lgpj;

    invoke-virtual {v7}, Lgpj;->K()Lerj;

    move-result-object v8

    :cond_8
    iget-object v6, p0, Lkoj;->d:Lojj;

    invoke-interface {v6, v8}, Lojj;->a(Lerj;)I

    move-result v6

    invoke-virtual {v8, v6}, Lerj;->c(I)Lerj;

    move-result-object v6

    new-instance v7, Ln5f;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v6}, [Lerj;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ln5f;-><init>(Ljava/lang/String;[Lerj;)V

    aput-object v7, v3, v5

    iget-boolean v7, p0, Lkoj;->E:Z

    iget-boolean v6, v6, Lerj;->u:Z

    or-int/2addr v6, v7

    iput-boolean v6, p0, Lkoj;->E:Z

    add-int/2addr v5, v1

    goto/16 :goto_1

    :cond_9
    new-instance v0, Ljoj;

    new-instance v2, Lnpj;

    invoke-direct {v2, v3}, Lnpj;-><init>([Ln5f;)V

    invoke-direct {v0, v2, v4}, Ljoj;-><init>(Lnpj;[Z)V

    iput-object v0, p0, Lkoj;->x:Ljoj;

    iget-boolean v0, p0, Lkoj;->w:Z

    if-eqz v0, :cond_a

    iget-wide v2, p0, Lkoj;->z:J

    cmp-long v0, v2, v6

    if-nez v0, :cond_a

    iget-wide v2, p0, Lkoj;->i:J

    iput-wide v2, p0, Lkoj;->z:J

    new-instance v0, Laoj;

    iget-object v2, p0, Lkoj;->y:Lkae;

    invoke-direct {v0, p0, v2}, Laoj;-><init>(Lkoj;Lkae;)V

    iput-object v0, p0, Lkoj;->y:Lkae;

    :cond_a
    iget-object v0, p0, Lkoj;->g:Lgoj;

    iget-wide v2, p0, Lkoj;->z:J

    iget-object v4, p0, Lkoj;->y:Lkae;

    iget-boolean v5, p0, Lkoj;->A:Z

    invoke-interface {v0, v2, v3, v4, v5}, Lgoj;->k(JLkae;Z)V

    iput-boolean v1, p0, Lkoj;->u:Z

    iget-object v0, p0, Lkoj;->p:Lymj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0}, Lymj;->f(Lzmj;)V

    :cond_b
    :goto_5
    return-void
.end method

.method public final D(I)V
    .locals 13

    invoke-virtual {p0}, Lkoj;->B()V

    iget-object v0, p0, Lkoj;->x:Ljoj;

    iget-object v1, v0, Ljoj;->d:[Z

    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    iget-object v0, v0, Ljoj;->a:Lnpj;

    invoke-virtual {v0, p1}, Lnpj;->b(I)Ln5f;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ln5f;->b(I)Lerj;

    move-result-object v6

    iget-object v0, p0, Lkoj;->e:Lrnj;

    iget-object v2, v6, Lerj;->o:Ljava/lang/String;

    invoke-static {v2}, Lbue;->b(Ljava/lang/String;)I

    move-result v5

    iget-wide v2, p0, Lkoj;->H:J

    new-instance p0, Lxmj;

    invoke-static {v2, v3}, Lkfh;->Q(J)J

    move-result-wide v9

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v12}, Lxmj;-><init>(IILerj;ILjava/lang/Object;JJ)V

    invoke-virtual {v0, p0}, Lrnj;->d(Lxmj;)V

    const/4 p0, 0x1

    aput-boolean p0, v1, p1

    :cond_0
    return-void
.end method

.method public final E(I)V
    .locals 4

    invoke-virtual {p0}, Lkoj;->B()V

    iget-boolean v0, p0, Lkoj;->J:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lkoj;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkoj;->x:Ljoj;

    iget-object v0, v0, Ljoj;->b:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lkoj;->r:[Lxoj;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lxoj;->M(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lkoj;->I:J

    iput-boolean v0, p0, Lkoj;->J:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkoj;->D:Z

    iput-wide v1, p0, Lkoj;->H:J

    iput v0, p0, Lkoj;->K:I

    iget-object p1, p0, Lkoj;->r:[Lxoj;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3, v0}, Lxoj;->H(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lkoj;->p:Lymj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lzoj;->h(Lapj;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final F()V
    .locals 10

    iget-object v2, p0, Lkoj;->b:Landroid/net/Uri;

    iget-object v3, p0, Lkoj;->c:Lv9i;

    new-instance v7, Lboj;

    iget-object v4, p0, Lkoj;->k:Lznj;

    iget-object v6, p0, Lkoj;->l:Loeg;

    move-object v0, v7

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lboj;-><init>(Lkoj;Landroid/net/Uri;Lv9i;Lznj;Lf9e;Loeg;)V

    iget-boolean v0, p0, Lkoj;->u:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lkoj;->G()Z

    move-result v0

    invoke-static {v0}, Ln7g;->f(Z)V

    iget-wide v0, p0, Lkoj;->z:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lkoj;->I:J

    cmp-long v0, v4, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkoj;->L:Z

    iput-wide v2, p0, Lkoj;->I:J

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lkoj;->y:Lkae;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, p0, Lkoj;->I:J

    invoke-interface {v0, v4, v5}, Lkae;->a(J)Lz9e;

    move-result-object v0

    iget-object v0, v0, Lz9e;->a:Llae;

    iget-wide v4, p0, Lkoj;->I:J

    iget-wide v0, v0, Llae;->b:J

    invoke-static {v7, v0, v1, v4, v5}, Lboj;->f(Lboj;JJ)V

    iget-object v0, p0, Lkoj;->r:[Lxoj;

    array-length v1, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    iget-wide v8, p0, Lkoj;->I:J

    invoke-virtual {v5, v8, v9}, Lxoj;->I(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iput-wide v2, p0, Lkoj;->I:J

    :cond_3
    invoke-virtual {p0}, Lkoj;->y()I

    move-result v0

    iput v0, p0, Lkoj;->K:I

    iget-object v0, p0, Lkoj;->j:Lcom/google/android/gms/internal/ads/wb;

    iget v1, p0, Lkoj;->B:I

    invoke-static {v1}, Lrrj;->a(I)I

    move-result v1

    invoke-virtual {v0, v7, p0, v1}, Lcom/google/android/gms/internal/ads/wb;->a(Lvrj;Ltrj;I)J

    return-void
.end method

.method public final G()Z
    .locals 4

    iget-wide v0, p0, Lkoj;->I:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final H()Z
    .locals 1

    iget-boolean v0, p0, Lkoj;->D:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lkoj;->G()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final I(ILp7j;Lxzi;I)I
    .locals 3

    invoke-virtual {p0}, Lkoj;->H()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lkoj;->D(I)V

    iget-object v0, p0, Lkoj;->r:[Lxoj;

    aget-object v0, v0, p1

    iget-boolean v2, p0, Lkoj;->L:Z

    invoke-virtual {v0, p2, p3, p4, v2}, Lxoj;->z(Lp7j;Lxzi;IZ)I

    move-result p2

    if-ne p2, v1, :cond_1

    invoke-virtual {p0, p1}, Lkoj;->E(I)V

    :cond_1
    return p2
.end method

.method public final J(IJ)I
    .locals 3

    invoke-virtual {p0}, Lkoj;->H()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lkoj;->D(I)V

    iget-object v0, p0, Lkoj;->r:[Lxoj;

    aget-object v0, v0, p1

    iget-boolean v2, p0, Lkoj;->L:Z

    invoke-virtual {v0, p2, p3, v2}, Lxoj;->x(JZ)I

    move-result p2

    invoke-virtual {v0, p2}, Lxoj;->K(I)V

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lkoj;->E(I)V

    return v1

    :cond_1
    return p2
.end method

.method public final P()Lrae;
    .locals 3

    new-instance v0, Lioj;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lioj;-><init>(IZ)V

    invoke-virtual {p0, v0}, Lkoj;->A(Lioj;)Lrae;

    move-result-object p0

    return-object p0
.end method

.method public final a(J)V
    .locals 0

    return-void
.end method

.method public final b(Lz7j;)Z
    .locals 1

    iget-boolean p1, p0, Lkoj;->L:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lkoj;->j:Lcom/google/android/gms/internal/ads/wb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wb;->k()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lkoj;->J:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lkoj;->u:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lkoj;->F:I

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lkoj;->l:Loeg;

    invoke-virtual {v0}, Loeg;->e()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wb;->l()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lkoj;->F()V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final c(J)J
    .locals 8

    invoke-virtual {p0}, Lkoj;->B()V

    iget-object v0, p0, Lkoj;->x:Ljoj;

    iget-object v0, v0, Ljoj;->b:[Z

    iget-object v1, p0, Lkoj;->y:Lkae;

    invoke-interface {v1}, Lkae;->zzh()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lkoj;->D:Z

    iget-wide v2, p0, Lkoj;->H:J

    iput-wide p1, p0, Lkoj;->H:J

    invoke-virtual {p0}, Lkoj;->G()Z

    move-result v4

    if-eqz v4, :cond_1

    iput-wide p1, p0, Lkoj;->I:J

    return-wide p1

    :cond_1
    iget v4, p0, Lkoj;->B:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_6

    iget-boolean v4, p0, Lkoj;->L:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lkoj;->j:Lcom/google/android/gms/internal/ads/wb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/wb;->l()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_2
    iget-object v4, p0, Lkoj;->r:[Lxoj;

    array-length v4, v4

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_9

    iget-object v6, p0, Lkoj;->r:[Lxoj;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lxoj;->w()I

    move-result v7

    if-nez v7, :cond_3

    cmp-long v7, v2, p1

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    iget-boolean v7, p0, Lkoj;->w:Z

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lxoj;->v()I

    move-result v7

    invoke-virtual {v6, v7}, Lxoj;->N(I)Z

    move-result v6

    goto :goto_1

    :cond_4
    invoke-virtual {v6, p1, p2, v1}, Lxoj;->h(JZ)Z

    move-result v6

    :goto_1
    if-nez v6, :cond_5

    aget-boolean v6, v0, v5

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lkoj;->v:Z

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    iput-boolean v1, p0, Lkoj;->J:Z

    iput-wide p1, p0, Lkoj;->I:J

    iput-boolean v1, p0, Lkoj;->L:Z

    iput-boolean v1, p0, Lkoj;->E:Z

    iget-object v0, p0, Lkoj;->j:Lcom/google/android/gms/internal/ads/wb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wb;->l()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object p0, p0, Lkoj;->r:[Lxoj;

    array-length v2, p0

    :goto_4
    if-ge v1, v2, :cond_7

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lxoj;->D()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wb;->g()V

    goto :goto_6

    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wb;->h()V

    iget-object p0, p0, Lkoj;->r:[Lxoj;

    array-length v0, p0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_9

    aget-object v3, p0, v2

    invoke-virtual {v3, v1}, Lxoj;->H(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    return-wide p1
.end method

.method public final d(Lymj;J)V
    .locals 0

    iput-object p1, p0, Lkoj;->p:Lymj;

    iget-object p1, p0, Lkoj;->l:Loeg;

    invoke-virtual {p1}, Loeg;->e()Z

    invoke-virtual {p0}, Lkoj;->F()V

    return-void
.end method

.method public final e(JZ)V
    .locals 5

    iget-boolean p3, p0, Lkoj;->w:Z

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lkoj;->B()V

    invoke-virtual {p0}, Lkoj;->G()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lkoj;->x:Ljoj;

    iget-object p3, p3, Ljoj;->c:[Z

    iget-object v0, p0, Lkoj;->r:[Lxoj;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lkoj;->r:[Lxoj;

    aget-object v3, v3, v2

    aget-boolean v4, p3, v2

    invoke-virtual {v3, p1, p2, v1, v4}, Lxoj;->C(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final bridge synthetic f(Lvrj;JJZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lboj;

    invoke-static {v1}, Lboj;->e(Lboj;)Lnwi;

    move-result-object v2

    new-instance v15, Lsmj;

    invoke-static {v1}, Lboj;->b(Lboj;)J

    move-result-wide v4

    invoke-static {v1}, Lboj;->d(Lboj;)Lcfi;

    move-result-object v6

    invoke-virtual {v2}, Lnwi;->l()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2}, Lnwi;->m()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2}, Lnwi;->k()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lsmj;-><init>(JLcfi;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    invoke-static {v1}, Lboj;->b(Lboj;)J

    invoke-static {v1}, Lboj;->c(Lboj;)J

    move-result-wide v1

    iget-wide v3, v0, Lkoj;->z:J

    new-instance v13, Lxmj;

    invoke-static {v1, v2}, Lkfh;->Q(J)J

    move-result-wide v11

    invoke-static {v3, v4}, Lkfh;->Q(J)J

    move-result-wide v1

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v13

    move-object v3, v13

    move-wide v13, v1

    invoke-direct/range {v5 .. v14}, Lxmj;-><init>(IILerj;ILjava/lang/Object;JJ)V

    iget-object v1, v0, Lkoj;->e:Lrnj;

    invoke-virtual {v1, v15, v3}, Lrnj;->e(Lsmj;Lxmj;)V

    if-nez p6, :cond_1

    iget-object v1, v0, Lkoj;->r:[Lxoj;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-virtual {v5, v3}, Lxoj;->H(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lkoj;->F:I

    if-lez v1, :cond_1

    iget-object v1, v0, Lkoj;->p:Lymj;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v0}, Lzoj;->h(Lapj;)V

    :cond_1
    return-void
.end method

.method public final g(JLkaj;)J
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lkoj;->B()V

    iget-object v4, v0, Lkoj;->y:Lkae;

    invoke-interface {v4}, Lkae;->zzh()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-nez v4, :cond_0

    return-wide v5

    :cond_0
    iget-object v0, v0, Lkoj;->y:Lkae;

    invoke-interface {v0, v1, v2}, Lkae;->a(J)Lz9e;

    move-result-object v0

    iget-object v4, v0, Lz9e;->a:Llae;

    iget-object v0, v0, Lz9e;->b:Llae;

    iget-wide v7, v3, Lkaj;->a:J

    cmp-long v9, v7, v5

    if-nez v9, :cond_2

    iget-wide v7, v3, Lkaj;->b:J

    cmp-long v7, v7, v5

    if-nez v7, :cond_1

    goto :goto_3

    :cond_1
    move-wide v7, v5

    :cond_2
    iget-wide v9, v4, Llae;->a:J

    sget v4, Lkfh;->a:I

    sub-long v11, v1, v7

    xor-long/2addr v7, v1

    xor-long v13, v1, v11

    iget-wide v3, v3, Lkaj;->b:J

    add-long v15, v1, v3

    xor-long v17, v1, v15

    xor-long/2addr v3, v15

    and-long/2addr v7, v13

    cmp-long v7, v7, v5

    if-gez v7, :cond_3

    const-wide/high16 v11, -0x8000000000000000L

    :cond_3
    and-long v3, v17, v3

    cmp-long v3, v3, v5

    if-gez v3, :cond_4

    const-wide v15, 0x7fffffffffffffffL

    :cond_4
    cmp-long v3, v11, v9

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gtz v3, :cond_5

    cmp-long v3, v9, v15

    if-gtz v3, :cond_5

    move v3, v4

    goto :goto_0

    :cond_5
    move v3, v5

    :goto_0
    iget-wide v6, v0, Llae;->a:J

    cmp-long v0, v11, v6

    if-gtz v0, :cond_6

    cmp-long v0, v6, v15

    if-gtz v0, :cond_6

    goto :goto_1

    :cond_6
    move v4, v5

    :goto_1
    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    sub-long v3, v9, v1

    sub-long v0, v6, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_7

    goto :goto_2

    :cond_7
    return-wide v6

    :cond_8
    if-eqz v3, :cond_9

    :goto_2
    move-wide v1, v9

    goto :goto_3

    :cond_9
    if-eqz v4, :cond_a

    move-wide v1, v6

    :goto_3
    return-wide v1

    :cond_a
    return-wide v11
.end method

.method public final bridge synthetic h(Lvrj;JJI)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p6

    move-object/from16 v2, p1

    check-cast v2, Lboj;

    invoke-static {v2}, Lboj;->e(Lboj;)Lnwi;

    move-result-object v3

    if-nez v1, :cond_0

    new-instance v3, Lsmj;

    invoke-static {v2}, Lboj;->b(Lboj;)J

    move-result-wide v5

    invoke-static {v2}, Lboj;->d(Lboj;)Lcfi;

    move-result-object v7

    move-object v4, v3

    move-wide/from16 v8, p2

    invoke-direct/range {v4 .. v9}, Lsmj;-><init>(JLcfi;J)V

    goto :goto_0

    :cond_0
    new-instance v4, Lsmj;

    invoke-static {v2}, Lboj;->b(Lboj;)J

    move-result-wide v9

    invoke-static {v2}, Lboj;->d(Lboj;)Lcfi;

    move-result-object v11

    invoke-virtual {v3}, Lnwi;->l()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v3}, Lnwi;->m()Ljava/util/Map;

    move-result-object v13

    invoke-virtual {v3}, Lnwi;->k()J

    move-result-wide v18

    move-object v8, v4

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    invoke-direct/range {v8 .. v19}, Lsmj;-><init>(JLcfi;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v3, v4

    :goto_0
    iget-object v4, v0, Lkoj;->e:Lrnj;

    invoke-static {v2}, Lboj;->c(Lboj;)J

    move-result-wide v5

    iget-wide v7, v0, Lkoj;->z:J

    new-instance v0, Lxmj;

    invoke-static {v5, v6}, Lkfh;->Q(J)J

    move-result-wide v15

    invoke-static {v7, v8}, Lkfh;->Q(J)J

    move-result-wide v17

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v18}, Lxmj;-><init>(IILerj;ILjava/lang/Object;JJ)V

    invoke-virtual {v4, v3, v0, v1}, Lrnj;->h(Lsmj;Lxmj;I)V

    return-void
.end method

.method public final i(Lkae;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzvx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzvx;-><init>(Lkoj;Lkae;)V

    iget-object p0, p0, Lkoj;->o:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final j(II)Lrae;
    .locals 1

    new-instance p2, Lioj;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lioj;-><init>(IZ)V

    invoke-virtual {p0, p2}, Lkoj;->A(Lioj;)Lrae;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic k(Lvrj;JJLjava/io/IOException;I)Lurj;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    const/4 v2, 0x1

    move-object/from16 v3, p1

    check-cast v3, Lboj;

    invoke-static {v3}, Lboj;->e(Lboj;)Lnwi;

    move-result-object v4

    new-instance v15, Lsmj;

    invoke-static {v3}, Lboj;->b(Lboj;)J

    move-result-wide v6

    invoke-static {v3}, Lboj;->d(Lboj;)Lcfi;

    move-result-object v8

    invoke-virtual {v4}, Lnwi;->l()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4}, Lnwi;->m()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v4}, Lnwi;->k()J

    move-result-wide v16

    move-object v5, v15

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    move-object v4, v15

    move-wide/from16 v15, v16

    invoke-direct/range {v5 .. v16}, Lsmj;-><init>(JLcfi;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    invoke-static {v3}, Lboj;->c(Lboj;)J

    sget v5, Lkfh;->a:I

    instance-of v5, v1, Lcom/google/android/gms/internal/ads/zzaz;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v5, :cond_0

    instance-of v5, v1, Ljava/io/FileNotFoundException;

    if-nez v5, :cond_0

    instance-of v5, v1, Lcom/google/android/gms/internal/ads/zzgu;

    if-nez v5, :cond_0

    instance-of v5, v1, Lcom/google/android/gms/internal/ads/zzzq;

    if-nez v5, :cond_0

    move-object v5, v1

    :goto_0
    if-eqz v5, :cond_2

    instance-of v8, v5, Lcom/google/android/gms/internal/ads/zzgf;

    if-eqz v8, :cond_1

    move-object v8, v5

    check-cast v8, Lcom/google/android/gms/internal/ads/zzgf;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzgf;->zza:I

    const/16 v9, 0x7d8

    if-ne v8, v9, :cond_1

    :cond_0
    move-wide v8, v6

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    goto :goto_0

    :cond_2
    add-int/lit8 v5, p7, -0x1

    mul-int/lit16 v5, v5, 0x3e8

    const/16 v8, 0x1388

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-long v8, v5

    :goto_1
    cmp-long v5, v8, v6

    if-nez v5, :cond_3

    sget-object v5, Lcom/google/android/gms/internal/ads/wb;->e:Lurj;

    goto :goto_6

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lkoj;->y()I

    move-result v5

    iget v10, v0, Lkoj;->K:I

    const/4 v11, 0x0

    if-le v5, v10, :cond_4

    move v10, v2

    goto :goto_2

    :cond_4
    move v10, v11

    :goto_2
    iget-boolean v12, v0, Lkoj;->G:Z

    if-nez v12, :cond_8

    iget-object v12, v0, Lkoj;->y:Lkae;

    if-eqz v12, :cond_5

    invoke-interface {v12}, Lkae;->zza()J

    move-result-wide v12

    cmp-long v6, v12, v6

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    iget-boolean v5, v0, Lkoj;->u:Z

    if-eqz v5, :cond_6

    invoke-virtual/range {p0 .. p0}, Lkoj;->H()Z

    move-result v6

    if-nez v6, :cond_6

    iput-boolean v2, v0, Lkoj;->J:Z

    sget-object v5, Lcom/google/android/gms/internal/ads/wb;->d:Lurj;

    goto :goto_6

    :cond_6
    iput-boolean v5, v0, Lkoj;->D:Z

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lkoj;->H:J

    iput v11, v0, Lkoj;->K:I

    iget-object v7, v0, Lkoj;->r:[Lxoj;

    array-length v12, v7

    move v13, v11

    :goto_3
    if-ge v13, v12, :cond_7

    aget-object v14, v7, v13

    invoke-virtual {v14, v11}, Lxoj;->H(Z)V

    add-int/2addr v13, v2

    goto :goto_3

    :cond_7
    invoke-static {v3, v5, v6, v5, v6}, Lboj;->f(Lboj;JJ)V

    goto :goto_5

    :cond_8
    :goto_4
    iput v5, v0, Lkoj;->K:I

    :goto_5
    invoke-static {v10, v8, v9}, Lcom/google/android/gms/internal/ads/wb;->b(ZJ)Lurj;

    move-result-object v5

    :goto_6
    invoke-virtual {v5}, Lurj;->c()Z

    move-result v6

    xor-int/2addr v2, v6

    iget-object v7, v0, Lkoj;->e:Lrnj;

    invoke-static {v3}, Lboj;->c(Lboj;)J

    move-result-wide v8

    iget-wide v10, v0, Lkoj;->z:J

    invoke-static {v8, v9}, Lkfh;->Q(J)J

    move-result-wide v18

    invoke-static {v10, v11}, Lkfh;->Q(J)J

    move-result-wide v20

    new-instance v0, Lxmj;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v13, 0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v21}, Lxmj;-><init>(IILerj;ILjava/lang/Object;JJ)V

    invoke-virtual {v7, v4, v0, v1, v2}, Lrnj;->g(Lsmj;Lxmj;Ljava/io/IOException;Z)V

    if-nez v6, :cond_9

    invoke-static {v3}, Lboj;->b(Lboj;)J

    :cond_9
    return-object v5
.end method

.method public final l(Lerj;)V
    .locals 0

    iget-object p1, p0, Lkoj;->o:Landroid/os/Handler;

    iget-object p0, p0, Lkoj;->m:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final m([Ltqj;[Z[Lyoj;[ZJ)J
    .locals 8

    invoke-virtual {p0}, Lkoj;->B()V

    iget-object v0, p0, Lkoj;->x:Ljoj;

    iget-object v1, v0, Ljoj;->a:Lnpj;

    iget-object v0, v0, Ljoj;->c:[Z

    iget v2, p0, Lkoj;->F:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_2

    aget-object v5, p3, v4

    if-eqz v5, :cond_1

    aget-object v6, p1, v4

    if-eqz v6, :cond_0

    aget-boolean v6, p2, v4

    if-nez v6, :cond_1

    :cond_0
    check-cast v5, Lhoj;

    invoke-static {v5}, Lhoj;->c(Lhoj;)I

    move-result v5

    aget-boolean v6, v0, v5

    invoke-static {v6}, Ln7g;->f(Z)V

    iget v6, p0, Lkoj;->F:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lkoj;->F:I

    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    aput-object v5, p3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lkoj;->C:Z

    const/4 v4, 0x1

    if-eqz p2, :cond_4

    if-nez v2, :cond_3

    :goto_1
    move p2, v4

    goto :goto_2

    :cond_3
    move p2, v3

    goto :goto_2

    :cond_4
    const-wide/16 v5, 0x0

    cmp-long p2, p5, v5

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lkoj;->w:Z

    if-nez p2, :cond_3

    goto :goto_1

    :goto_2
    move v2, v3

    :goto_3
    array-length v5, p1

    if-ge v2, v5, :cond_9

    aget-object v5, p3, v2

    if-nez v5, :cond_8

    aget-object v5, p1, v2

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lxqj;->zzd()I

    move-result v6

    if-ne v6, v4, :cond_5

    move v6, v4

    goto :goto_4

    :cond_5
    move v6, v3

    :goto_4
    invoke-static {v6}, Ln7g;->f(Z)V

    invoke-interface {v5, v3}, Lxqj;->zza(I)I

    move-result v6

    if-nez v6, :cond_6

    move v6, v4

    goto :goto_5

    :cond_6
    move v6, v3

    :goto_5
    invoke-static {v6}, Ln7g;->f(Z)V

    invoke-interface {v5}, Lxqj;->zzg()Ln5f;

    move-result-object v6

    invoke-virtual {v1, v6}, Lnpj;->a(Ln5f;)I

    move-result v6

    aget-boolean v7, v0, v6

    xor-int/2addr v7, v4

    invoke-static {v7}, Ln7g;->f(Z)V

    iget v7, p0, Lkoj;->F:I

    add-int/2addr v7, v4

    iput v7, p0, Lkoj;->F:I

    aput-boolean v4, v0, v6

    iget-boolean v7, p0, Lkoj;->E:Z

    invoke-interface {v5}, Ltqj;->zzf()Lerj;

    move-result-object v5

    iget-boolean v5, v5, Lerj;->u:Z

    or-int/2addr v5, v7

    iput-boolean v5, p0, Lkoj;->E:Z

    new-instance v5, Lhoj;

    invoke-direct {v5, p0, v6}, Lhoj;-><init>(Lkoj;I)V

    aput-object v5, p3, v2

    aput-boolean v4, p4, v2

    if-nez p2, :cond_8

    iget-object p2, p0, Lkoj;->r:[Lxoj;

    aget-object p2, p2, v6

    invoke-virtual {p2}, Lxoj;->w()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p2, p5, p6, v4}, Lxoj;->h(JZ)Z

    move-result p2

    if-nez p2, :cond_7

    move p2, v4

    goto :goto_6

    :cond_7
    move p2, v3

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    iget p1, p0, Lkoj;->F:I

    if-nez p1, :cond_c

    iput-boolean v3, p0, Lkoj;->J:Z

    iput-boolean v3, p0, Lkoj;->D:Z

    iput-boolean v3, p0, Lkoj;->E:Z

    iget-object p1, p0, Lkoj;->j:Lcom/google/android/gms/internal/ads/wb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wb;->l()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lkoj;->r:[Lxoj;

    array-length p3, p2

    :goto_7
    if-ge v3, p3, :cond_a

    aget-object p4, p2, v3

    invoke-virtual {p4}, Lxoj;->D()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/wb;->g()V

    goto :goto_a

    :cond_b
    iput-boolean v3, p0, Lkoj;->L:Z

    iget-object p1, p0, Lkoj;->r:[Lxoj;

    array-length p2, p1

    move p3, v3

    :goto_8
    if-ge p3, p2, :cond_e

    aget-object p4, p1, p3

    invoke-virtual {p4, v3}, Lxoj;->H(Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    invoke-virtual {p0, p5, p6}, Lkoj;->c(J)J

    move-result-wide p5

    :goto_9
    array-length p1, p3

    if-ge v3, p1, :cond_e

    aget-object p1, p3, v3

    if-eqz p1, :cond_d

    aput-boolean v4, p4, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_e
    :goto_a
    iput-boolean v4, p0, Lkoj;->C:Z

    return-wide p5
.end method

.method public final bridge synthetic n(Lvrj;JJ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lboj;

    iget-wide v2, v0, Lkoj;->z:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, v0, Lkoj;->y:Lkae;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v3}, Lkoj;->z(Z)J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    :goto_0
    iput-wide v4, v0, Lkoj;->z:J

    iget-object v2, v0, Lkoj;->g:Lgoj;

    iget-object v6, v0, Lkoj;->y:Lkae;

    iget-boolean v7, v0, Lkoj;->A:Z

    invoke-interface {v2, v4, v5, v6, v7}, Lgoj;->k(JLkae;Z)V

    :cond_1
    invoke-static {v1}, Lboj;->e(Lboj;)Lnwi;

    move-result-object v2

    new-instance v14, Lsmj;

    invoke-static {v1}, Lboj;->b(Lboj;)J

    move-result-wide v5

    invoke-static {v1}, Lboj;->d(Lboj;)Lcfi;

    move-result-object v7

    invoke-virtual {v2}, Lnwi;->l()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2}, Lnwi;->m()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v2}, Lnwi;->k()J

    move-result-wide v15

    move-object v4, v14

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-object v2, v14

    move-wide v14, v15

    invoke-direct/range {v4 .. v15}, Lsmj;-><init>(JLcfi;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    invoke-static {v1}, Lboj;->b(Lboj;)J

    iget-object v4, v0, Lkoj;->e:Lrnj;

    invoke-static {v1}, Lboj;->c(Lboj;)J

    move-result-wide v5

    iget-wide v7, v0, Lkoj;->z:J

    new-instance v1, Lxmj;

    invoke-static {v5, v6}, Lkfh;->Q(J)J

    move-result-wide v15

    invoke-static {v7, v8}, Lkfh;->Q(J)J

    move-result-wide v17

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v18}, Lxmj;-><init>(IILerj;ILjava/lang/Object;JJ)V

    invoke-virtual {v4, v2, v1}, Lrnj;->f(Lsmj;Lxmj;)V

    iput-boolean v3, v0, Lkoj;->L:Z

    iget-object v1, v0, Lkoj;->p:Lymj;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v0}, Lzoj;->h(Lapj;)V

    return-void
.end method

.method public final u()V
    .locals 1

    iget v0, p0, Lkoj;->B:I

    invoke-static {v0}, Lrrj;->a(I)I

    move-result v0

    iget-object p0, p0, Lkoj;->j:Lcom/google/android/gms/internal/ads/wb;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/wb;->i(I)V

    return-void
.end method

.method public final v(I)V
    .locals 1

    iget-object v0, p0, Lkoj;->r:[Lxoj;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lxoj;->E()V

    invoke-virtual {p0}, Lkoj;->u()V

    return-void
.end method

.method public final w()V
    .locals 4

    iget-boolean v0, p0, Lkoj;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkoj;->r:[Lxoj;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lxoj;->F()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkoj;->j:Lcom/google/android/gms/internal/ads/wb;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/wb;->j(Lwrj;)V

    iget-object v0, p0, Lkoj;->o:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lkoj;->p:Lymj;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkoj;->M:Z

    return-void
.end method

.method public final x(I)Z
    .locals 1

    invoke-virtual {p0}, Lkoj;->H()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkoj;->r:[Lxoj;

    aget-object p1, v0, p1

    iget-boolean p0, p0, Lkoj;->L:Z

    invoke-virtual {p1, p0}, Lxoj;->M(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final y()I
    .locals 4

    iget-object p0, p0, Lkoj;->r:[Lxoj;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lxoj;->y()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final z(Z)J
    .locals 5

    const/4 v0, 0x0

    const-wide/high16 v1, -0x8000000000000000L

    :goto_0
    iget-object v3, p0, Lkoj;->r:[Lxoj;

    array-length v4, v3

    if-ge v0, v4, :cond_2

    if-nez p1, :cond_0

    iget-object v4, p0, Lkoj;->x:Ljoj;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Ljoj;->c:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_1

    :cond_0
    aget-object v3, v3, v0

    invoke-virtual {v3}, Lxoj;->A()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method public final zzG()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkoj;->t:Z

    iget-object v0, p0, Lkoj;->o:Landroid/os/Handler;

    iget-object p0, p0, Lkoj;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzM()V
    .locals 4

    iget-object v0, p0, Lkoj;->r:[Lxoj;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lxoj;->G()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkoj;->k:Lznj;

    invoke-interface {p0}, Lznj;->zze()V

    return-void
.end method

.method public final zzb()J
    .locals 11

    invoke-virtual {p0}, Lkoj;->B()V

    iget-boolean v0, p0, Lkoj;->L:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_7

    iget v0, p0, Lkoj;->F:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lkoj;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lkoj;->I:J

    return-wide v0

    :cond_1
    iget-boolean v0, p0, Lkoj;->v:Z

    const/4 v3, 0x0

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkoj;->r:[Lxoj;

    array-length v0, v0

    move v6, v3

    move-wide v7, v4

    :goto_0
    if-ge v6, v0, :cond_4

    iget-object v9, p0, Lkoj;->x:Ljoj;

    iget-object v10, v9, Ljoj;->b:[Z

    aget-boolean v10, v10, v6

    if-eqz v10, :cond_2

    iget-object v9, v9, Ljoj;->c:[Z

    aget-boolean v9, v9, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Lkoj;->r:[Lxoj;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lxoj;->L()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lkoj;->r:[Lxoj;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lxoj;->A()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :cond_4
    cmp-long v0, v7, v4

    if-nez v0, :cond_5

    invoke-virtual {p0, v3}, Lkoj;->z(Z)J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v1

    if-nez v0, :cond_6

    iget-wide v0, p0, Lkoj;->H:J

    return-wide v0

    :cond_6
    return-wide v7

    :cond_7
    :goto_1
    return-wide v1
.end method

.method public final zzc()J
    .locals 2

    invoke-virtual {p0}, Lkoj;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzd()J
    .locals 3

    iget-boolean v0, p0, Lkoj;->E:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lkoj;->E:Z

    :goto_0
    iget-wide v0, p0, Lkoj;->H:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lkoj;->D:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lkoj;->L:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lkoj;->y()I

    move-result v0

    iget v2, p0, Lkoj;->K:I

    if-le v0, v2, :cond_2

    :cond_1
    iput-boolean v1, p0, Lkoj;->D:Z

    goto :goto_0

    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final zzg()Lnpj;
    .locals 0

    invoke-virtual {p0}, Lkoj;->B()V

    iget-object p0, p0, Lkoj;->x:Ljoj;

    iget-object p0, p0, Ljoj;->a:Lnpj;

    return-object p0
.end method

.method public final zzi()V
    .locals 1

    invoke-virtual {p0}, Lkoj;->u()V

    iget-boolean v0, p0, Lkoj;->L:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lkoj;->u:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Loading finished before preparation is complete."

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzp()Z
    .locals 1

    iget-object v0, p0, Lkoj;->j:Lcom/google/android/gms/internal/ads/wb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wb;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkoj;->l:Loeg;

    invoke-virtual {p0}, Loeg;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
