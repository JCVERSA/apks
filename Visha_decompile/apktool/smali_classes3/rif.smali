.class public final Lrif;
.super Lugf;
.source "SourceFile"

# interfaces
.implements Lixi;
.implements Ltaj;


# static fields
.field public static final synthetic x:I


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Ldif;

.field public final f:Lrqj;

.field public final g:Lbhf;

.field public final h:Ljava/lang/ref/WeakReference;

.field public final i:Lnoj;

.field public j:Lo3j;

.field public k:Ljava/nio/ByteBuffer;

.field public l:Z

.field public m:Ltgf;

.field public n:I

.field public o:I

.field public p:J

.field public final q:Ljava/lang/String;

.field public final r:I

.field public final s:Ljava/lang/Object;

.field public t:Ljava/lang/Integer;

.field public final u:Ljava/util/ArrayList;

.field public volatile v:Lfif;

.field public final w:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbhf;Lchf;Ljava/lang/Integer;)V
    .locals 3

    invoke-direct {p0}, Lugf;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrif;->s:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lrif;->w:Ljava/util/Set;

    iput-object p1, p0, Lrif;->d:Landroid/content/Context;

    iput-object p2, p0, Lrif;->g:Lbhf;

    iput-object p4, p0, Lrif;->t:Ljava/lang/Integer;

    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lrif;->h:Ljava/lang/ref/WeakReference;

    new-instance p4, Ldif;

    invoke-direct {p4}, Ldif;-><init>()V

    iput-object p4, p0, Lrif;->e:Ldif;

    new-instance v0, Lrqj;

    invoke-direct {v0, p1}, Lrqj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lrif;->f:Lrqj;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->zzc()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimpleExoPlayerAdapter initialize "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lugf;->u()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance v1, Llaj;

    new-instance v2, Lpif;

    invoke-direct {v2, p0}, Lpif;-><init>(Lrif;)V

    invoke-direct {v1, p1, v2}, Llaj;-><init>(Landroid/content/Context;Lpif;)V

    invoke-virtual {v1, v0}, Llaj;->b(Lzqj;)Llaj;

    invoke-virtual {v1, p4}, Llaj;->a(Lt7j;)Llaj;

    invoke-virtual {v1}, Llaj;->c()Lmaj;

    move-result-object p4

    iput-object p4, p0, Lrif;->j:Lo3j;

    invoke-interface {p4, p0}, Lo3j;->g(Ltaj;)V

    const/4 p4, 0x0

    iput p4, p0, Lrif;->n:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrif;->p:J

    iput p4, p0, Lrif;->o:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrif;->u:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lrif;->v:Lfif;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lchf;->zzr()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzftu;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzftu;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzftu;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lrif;->q:Ljava/lang/String;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Lchf;->zzf()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, p4

    :goto_0
    iput v0, p0, Lrif;->r:I

    new-instance v0, Lnoj;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v1

    invoke-interface {p3}, Lchf;->zzm()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object p3

    iget-object p3, p3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-virtual {v1, p1, p3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean p3, p0, Lrif;->l:Z

    if-eqz p3, :cond_3

    iget-object p3, p0, Lrif;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/Buffer;->limit()I

    move-result p3

    if-lez p3, :cond_3

    iget-object p1, p0, Lrif;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    new-array p1, p1, [B

    iget-object p2, p0, Lrif;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p2, Lhif;

    invoke-direct {p2, p1}, Lhif;-><init>([B)V

    goto/16 :goto_6

    :cond_3
    sget-object p3, Lcye;->k2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, p3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_5

    sget-object p3, Lcye;->c2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, p3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    move p4, v1

    goto :goto_3

    :cond_5
    :goto_2
    iget-boolean p3, p2, Lbhf;->i:Z

    if-nez p3, :cond_6

    goto :goto_1

    :cond_6
    :goto_3
    iget-boolean p3, p2, Lbhf;->l:Z

    if-eqz p3, :cond_7

    new-instance p3, Ljif;

    invoke-direct {p3, p0, p1, p4}, Ljif;-><init>(Lrif;Ljava/lang/String;Z)V

    goto :goto_4

    :cond_7
    iget p3, p2, Lbhf;->h:I

    if-lez p3, :cond_8

    new-instance p3, Lkif;

    invoke-direct {p3, p0, p1, p4}, Lkif;-><init>(Lrif;Ljava/lang/String;Z)V

    goto :goto_4

    :cond_8
    new-instance p3, Llif;

    invoke-direct {p3, p0, p1, p4}, Llif;-><init>(Lrif;Ljava/lang/String;Z)V

    :goto_4
    iget-boolean p1, p2, Lbhf;->i:Z

    if-eqz p1, :cond_9

    new-instance p1, Lmif;

    invoke-direct {p1, p0, p3}, Lmif;-><init>(Lrif;Lt8i;)V

    move-object p2, p1

    goto :goto_5

    :cond_9
    move-object p2, p3

    :goto_5
    iget-object p1, p0, Lrif;->k:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    if-lez p1, :cond_a

    iget-object p1, p0, Lrif;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    new-array p1, p1, [B

    iget-object p3, p0, Lrif;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p3, Lnif;

    invoke-direct {p3, p2, p1}, Lnif;-><init>(Lt8i;[B)V

    move-object p2, p3

    :cond_a
    :goto_6
    sget-object p1, Lcye;->m:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p3

    invoke-virtual {p3, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Lqif;

    invoke-direct {p1}, Lqif;-><init>()V

    goto :goto_7

    :cond_b
    new-instance p1, Liif;

    invoke-direct {p1}, Liif;-><init>()V

    :goto_7
    new-instance p3, Lmoj;

    invoke-direct {p3, p1}, Lmoj;-><init>(Lh9e;)V

    invoke-direct {v0, p2, p3}, Lnoj;-><init>(Lt8i;Lmoj;)V

    iput-object v0, p0, Lrif;->i:Lnoj;

    return-void
.end method

.method public static synthetic W(Lrif;Ljava/lang/String;Z)Lv9i;
    .locals 9

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    const/4 p2, 0x0

    move-object v2, p2

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    iget-object p0, p0, Lrif;->g:Lbhf;

    new-instance p2, Lcom/google/android/gms/internal/ads/b4;

    iget v3, p0, Lbhf;->d:I

    iget v4, p0, Lbhf;->e:I

    iget-wide v5, p0, Lbhf;->m:J

    iget-wide v7, p0, Lbhf;->n:J

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/b4;-><init>(Ljava/lang/String;Lixi;IIJJ)V

    return-object p2
.end method

.method public static synthetic X(Lrif;Ljava/lang/String;Z)Lv9i;
    .locals 7

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    const/4 p2, 0x0

    move-object v2, p2

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    iget-object p2, p0, Lrif;->g:Lbhf;

    new-instance v6, Lcif;

    iget v3, p2, Lbhf;->d:I

    iget v4, p2, Lbhf;->e:I

    iget v5, p2, Lbhf;->h:I

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcif;-><init>(Ljava/lang/String;Lixi;III)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lrif;->w:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v6
.end method

.method public static synthetic Y(Lrif;Ljava/lang/String;Z)Lv9i;
    .locals 1

    new-instance v0, Lhii;

    invoke-direct {v0}, Lhii;-><init>()V

    invoke-virtual {v0, p1}, Lhii;->e(Ljava/lang/String;)Lhii;

    const/4 p1, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    invoke-virtual {v0, p2}, Lhii;->d(Lixi;)Lhii;

    iget-object p0, p0, Lrif;->g:Lbhf;

    iget p2, p0, Lbhf;->d:I

    invoke-virtual {v0, p2}, Lhii;->b(I)Lhii;

    iget p0, p0, Lbhf;->e:I

    invoke-virtual {v0, p0}, Lhii;->c(I)Lhii;

    invoke-virtual {v0, p1}, Lhii;->a(Z)Lhii;

    invoke-virtual {v0}, Lhii;->f()Ljni;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Z(Lrif;Lt8i;)Lv9i;
    .locals 8

    new-instance v7, Lfif;

    invoke-interface {p1}, Lt8i;->zza()Lv9i;

    move-result-object v2

    new-instance v6, Loif;

    invoke-direct {v6, p0}, Loif;-><init>(Lrif;)V

    iget-object v3, p0, Lrif;->q:Ljava/lang/String;

    iget v4, p0, Lrif;->r:I

    iget-object v1, p0, Lrif;->d:Landroid/content/Context;

    move-object v0, v7

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lfif;-><init>(Landroid/content/Context;Lv9i;Ljava/lang/String;ILixi;Loif;)V

    return-object v7
.end method

.method public static synthetic b0(Lrif;ZJ)V
    .locals 0

    iget-object p0, p0, Lrif;->m:Ltgf;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Ltgf;->zzi(ZJ)V

    :cond_0
    return-void
.end method

.method public static synthetic c0(Lrif;Landroid/os/Handler;Ll7e;Ldhj;Lppj;Ltlj;)[Lx9j;
    .locals 8

    new-instance p4, Ldjj;

    sget-object p5, Lhlj;->a:Lhlj;

    new-instance v0, Laij;

    iget-object p0, p0, Lrif;->d:Landroid/content/Context;

    invoke-direct {v0, p0}, Laij;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Laij;->c()Lxij;

    move-result-object v7

    new-instance v2, Ljkj;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0, v0}, Ljkj;-><init>(Landroid/content/Context;Lk3i;Lk3i;)V

    const/4 v4, 0x0

    move-object v0, p4

    move-object v1, p0

    move-object v3, p5

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Ldjj;-><init>(Landroid/content/Context;Lpkj;Lhlj;ZLandroid/os/Handler;Ldhj;Lphj;)V

    new-instance p3, Li6e;

    invoke-direct {p3, p0}, Li6e;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p5}, Li6e;->g(Lhlj;)Li6e;

    invoke-virtual {p3, p1}, Li6e;->e(Landroid/os/Handler;)Li6e;

    invoke-virtual {p3, p2}, Li6e;->f(Ll7e;)Li6e;

    invoke-virtual {p3}, Li6e;->h()Lk6e;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [Lx9j;

    const/4 p2, 0x0

    aput-object p4, p1, p2

    const/4 p2, 0x1

    aput-object p0, p1, p2

    return-object p1
.end method


# virtual methods
.method public final A(I)V
    .locals 0

    iget-object p0, p0, Lrif;->e:Ldif;

    invoke-virtual {p0, p1}, Ldif;->k(I)V

    return-void
.end method

.method public final B(I)V
    .locals 0

    iget-object p0, p0, Lrif;->e:Ldif;

    invoke-virtual {p0, p1}, Ldif;->l(I)V

    return-void
.end method

.method public final C(Ltgf;)V
    .locals 0

    iput-object p1, p0, Lrif;->m:Ltgf;

    return-void
.end method

.method public final D(I)V
    .locals 0

    iget-object p0, p0, Lrif;->e:Ldif;

    invoke-virtual {p0, p1}, Ldif;->m(I)V

    return-void
.end method

.method public final E(I)V
    .locals 0

    iget-object p0, p0, Lrif;->e:Ldif;

    invoke-virtual {p0, p1}, Ldif;->n(I)V

    return-void
.end method

.method public final F(Z)V
    .locals 0

    iget-object p0, p0, Lrif;->j:Lo3j;

    invoke-interface {p0, p1}, Ll1f;->f(Z)V

    return-void
.end method

.method public final G(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lrif;->t:Ljava/lang/Integer;

    return-void
.end method

.method public final H(Z)V
    .locals 4

    iget-object v0, p0, Lrif;->j:Lo3j;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lrif;->j:Lo3j;

    invoke-interface {v1}, Lo3j;->zzy()I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lrif;->f:Lrqj;

    invoke-virtual {v1}, Lrqj;->n()Lhqj;

    move-result-object v2

    invoke-virtual {v2}, Lhqj;->c()Lgqj;

    move-result-object v2

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v0, v3}, Lgqj;->D(IZ)Lgqj;

    invoke-virtual {v1, v2}, Lrqj;->r(Lgqj;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final I(I)V
    .locals 1

    iget-object p0, p0, Lrif;->w:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcif;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcif;->p(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final J(Landroid/view/Surface;Z)V
    .locals 0

    iget-object p0, p0, Lrif;->j:Lo3j;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ll1f;->a(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public final K(FZ)V
    .locals 0

    iget-object p0, p0, Lrif;->j:Lo3j;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ll1f;->c(F)V

    :cond_0
    return-void
.end method

.method public final L()V
    .locals 0

    iget-object p0, p0, Lrif;->j:Lo3j;

    invoke-interface {p0}, Ll1f;->zzu()V

    return-void
.end method

.method public final M()Z
    .locals 0

    iget-object p0, p0, Lrif;->j:Lo3j;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final N()I
    .locals 0

    iget p0, p0, Lrif;->o:I

    return p0
.end method

.method public final P()I
    .locals 0

    iget-object p0, p0, Lrif;->j:Lo3j;

    invoke-interface {p0}, Ll1f;->zzg()I

    move-result p0

    return p0
.end method

.method public final R()J
    .locals 2

    iget-object p0, p0, Lrif;->j:Lo3j;

    invoke-interface {p0}, Ll1f;->zzj()J

    move-result-wide v0

    return-wide v0
.end method

.method public final S()J
    .locals 2

    iget p0, p0, Lrif;->n:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public final T()J
    .locals 4

    invoke-virtual {p0}, Lrif;->d0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lrif;->v:Lfif;

    invoke-virtual {v0}, Lfif;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lrif;->n:I

    int-to-long v0, v0

    iget-object p0, p0, Lrif;->v:Lfif;

    invoke-virtual {p0}, Lfif;->n()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final U()J
    .locals 2

    iget-object p0, p0, Lrif;->j:Lo3j;

    invoke-interface {p0}, Ll1f;->zzl()J

    move-result-wide v0

    return-wide v0
.end method

.method public final V()J
    .locals 2

    iget-object p0, p0, Lrif;->j:Lo3j;

    invoke-interface {p0}, Ll1f;->zzm()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lraj;Ljava/lang/Object;J)V
    .locals 0

    iget-object p0, p0, Lrif;->m:Ltgf;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ltgf;->zzv()V

    :cond_0
    return-void
.end method

.method public final a0(Landroid/net/Uri;)Lknj;
    .locals 1

    new-instance v0, Lv8e;

    invoke-direct {v0}, Lv8e;-><init>()V

    invoke-virtual {v0, p1}, Lv8e;->b(Landroid/net/Uri;)Lv8e;

    invoke-virtual {v0}, Lv8e;->c()Lcme;

    move-result-object p1

    iget-object v0, p0, Lrif;->i:Lnoj;

    iget-object p0, p0, Lrif;->g:Lbhf;

    iget p0, p0, Lbhf;->f:I

    invoke-virtual {v0, p0}, Lnoj;->a(I)Lnoj;

    invoke-virtual {v0, p1}, Lnoj;->b(Lcme;)Lpoj;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic b(Lraj;Lv0f;Lv0f;I)V
    .locals 0

    return-void
.end method

.method public final c(Lraj;Lcom/google/android/gms/internal/ads/zzba;)V
    .locals 0

    iget-object p0, p0, Lrif;->m:Ltgf;

    if-eqz p0, :cond_0

    const-string p1, "onPlayerError"

    invoke-interface {p0, p1, p2}, Ltgf;->zzk(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final d(Lraj;Lsmj;Lxmj;Ljava/io/IOException;Z)V
    .locals 0

    iget-object p1, p0, Lrif;->m:Ltgf;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lrif;->g:Lbhf;

    iget-boolean p0, p0, Lbhf;->j:Z

    if-eqz p0, :cond_0

    const-string p0, "onLoadException"

    invoke-interface {p1, p0, p4}, Ltgf;->zzl(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_0
    const-string p0, "onLoadError"

    invoke-interface {p1, p0, p4}, Ltgf;->zzk(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public final d0()Z
    .locals 1

    iget-object v0, p0, Lrif;->v:Lfif;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lrif;->v:Lfif;

    invoke-virtual {p0}, Lfif;->t()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic e(Lraj;Ld1j;)V
    .locals 0

    return-void
.end method

.method public final f(Lv9i;Lcfi;ZI)V
    .locals 0

    iget p1, p0, Lrif;->n:I

    add-int/2addr p1, p4

    iput p1, p0, Lrif;->n:I

    return-void
.end method

.method public final finalize()V
    .locals 1

    invoke-static {}, Lugf;->u()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SimpleExoPlayerAdapter finalize "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final g(Lraj;Lzhf;)V
    .locals 0

    iget-object p0, p0, Lrif;->m:Ltgf;

    if-eqz p0, :cond_0

    iget p1, p2, Lzhf;->a:I

    iget p2, p2, Lzhf;->b:I

    invoke-interface {p0, p1, p2}, Ltgf;->zzD(II)V

    :cond_0
    return-void
.end method

.method public final h(Lraj;IJ)V
    .locals 0

    iget p1, p0, Lrif;->o:I

    add-int/2addr p1, p2

    iput p1, p0, Lrif;->o:I

    return-void
.end method

.method public final synthetic i(Ll1f;Lsaj;)V
    .locals 0

    return-void
.end method

.method public final j(Lv9i;Lcfi;Z)V
    .locals 1

    instance-of p2, p1, Llti;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lrif;->s:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Lrif;->u:Ljava/util/ArrayList;

    check-cast p1, Llti;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    instance-of p2, p1, Lfif;

    if-eqz p2, :cond_1

    check-cast p1, Lfif;

    iput-object p1, p0, Lrif;->v:Lfif;

    iget-object p1, p0, Lrif;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lchf;

    sget-object p2, Lcye;->c2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p3

    invoke-virtual {p3, p2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lrif;->v:Lfif;

    invoke-virtual {p2}, Lfif;->q()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object p3, p0, Lrif;->v:Lfif;

    invoke-virtual {p3}, Lfif;->s()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    const-string v0, "gcacheHit"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lrif;->v:Lfif;

    invoke-virtual {p0}, Lfif;->r()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string p3, "gcacheDownloaded"

    invoke-interface {p2, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lpzh;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzcdp;

    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzcdp;-><init>(Lchf;Ljava/util/Map;)V

    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final k(Lraj;Lerj;Lg1j;)V
    .locals 2

    iget-object p0, p0, Lrif;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lchf;

    sget-object p1, Lcye;->c2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p3

    invoke-virtual {p3, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget p3, p2, Lerj;->x:F

    const-string v0, "frameRate"

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p3, p2, Lerj;->j:I

    const-string v0, "bitRate"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p3, p2, Lerj;->v:I

    iget v0, p2, Lerj;->w:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "x"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "resolution"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p2, Lerj;->n:Ljava/lang/String;

    if-eqz p3, :cond_0

    const-string v0, "videoMime"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p3, p2, Lerj;->o:Ljava/lang/String;

    if-eqz p3, :cond_1

    const-string v0, "videoSampleMime"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p2, p2, Lerj;->k:Ljava/lang/String;

    if-eqz p2, :cond_2

    const-string p3, "videoCodec"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p2, "onMetadataEvent"

    invoke-interface {p0, p2, p1}, Lp5f;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public final synthetic l(Lraj;Lxmj;)V
    .locals 0

    return-void
.end method

.method public final m(Lraj;Lerj;Lg1j;)V
    .locals 1

    iget-object p0, p0, Lrif;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lchf;

    sget-object p1, Lcye;->c2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p3

    invoke-virtual {p3, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object p3, p2, Lerj;->n:Ljava/lang/String;

    if-eqz p3, :cond_0

    const-string v0, "audioMime"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p3, p2, Lerj;->o:Ljava/lang/String;

    if-eqz p3, :cond_1

    const-string v0, "audioSampleMime"

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p2, p2, Lerj;->k:Ljava/lang/String;

    if-eqz p2, :cond_2

    const-string p3, "audioCodec"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p2, "onMetadataEvent"

    invoke-interface {p0, p2, p1}, Lp5f;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public final synthetic n(Lraj;IJJ)V
    .locals 0

    return-void
.end method

.method public final o(Lraj;I)V
    .locals 0

    iget-object p0, p0, Lrif;->m:Ltgf;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Ltgf;->zzm(I)V

    :cond_0
    return-void
.end method

.method public final p(Lv9i;Lcfi;Z)V
    .locals 0

    return-void
.end method

.method public final q(Lv9i;Lcfi;Z)V
    .locals 0

    return-void
.end method

.method public final r()J
    .locals 2

    invoke-virtual {p0}, Lrif;->d0()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lrif;->n:I

    int-to-long v0, p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final s()J
    .locals 10

    invoke-virtual {p0}, Lrif;->d0()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lrif;->s:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lrif;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p0, Lrif;->p:J

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llti;

    invoke-interface {v1}, Llti;->zze()Ljava/util/Map;

    move-result-object v1

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    :try_start_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v8, "content-length"

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v8, v9}, Ld2i;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    add-long/2addr v2, v5

    :try_start_2
    iput-wide v2, p0, Lrif;->p:J

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-wide v0, p0, Lrif;->p:J

    return-wide v0

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_3
    iget-object p0, p0, Lrif;->v:Lfif;

    invoke-virtual {p0}, Lfif;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public final t()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lrif;->t:Ljava/lang/Integer;

    return-object p0
.end method

.method public final w([Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lrif;->x([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public final x([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V
    .locals 1

    iget-object p2, p0, Lrif;->j:Lo3j;

    if-eqz p2, :cond_2

    iput-object p3, p0, Lrif;->k:Ljava/nio/ByteBuffer;

    iput-boolean p4, p0, Lrif;->l:Z

    array-length p2, p1

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-ne p2, p3, :cond_0

    aget-object p1, p1, p4

    invoke-virtual {p0, p1}, Lrif;->a0(Landroid/net/Uri;)Lknj;

    move-result-object p1

    goto :goto_1

    :cond_0
    new-array p2, p2, [Lknj;

    move p3, p4

    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_1

    aget-object v0, p1, p3

    invoke-virtual {p0, v0}, Lrif;->a0(Landroid/net/Uri;)Lknj;

    move-result-object v0

    aput-object v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lynj;

    new-instance p3, Lmmj;

    invoke-direct {p3}, Lmmj;-><init>()V

    invoke-direct {p1, p4, p4, p3, p2}, Lynj;-><init>(ZZLmmj;[Lknj;)V

    :goto_1
    iget-object p2, p0, Lrif;->j:Lo3j;

    invoke-interface {p2, p1}, Lo3j;->e(Lknj;)V

    iget-object p0, p0, Lrif;->j:Lo3j;

    invoke-interface {p0}, Ll1f;->zzq()V

    invoke-static {}, Lugf;->v()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_2
    return-void
.end method

.method public final y()V
    .locals 1

    iget-object v0, p0, Lrif;->j:Lo3j;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lo3j;->d(Ltaj;)V

    iget-object v0, p0, Lrif;->j:Lo3j;

    invoke-interface {v0}, Lo3j;->zzA()V

    const/4 v0, 0x0

    iput-object v0, p0, Lrif;->j:Lo3j;

    invoke-static {}, Lugf;->v()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_0
    return-void
.end method

.method public final z(J)V
    .locals 0

    iget-object p0, p0, Lrif;->j:Lo3j;

    invoke-interface {p0, p1, p2}, Ll1f;->b(J)V

    return-void
.end method
