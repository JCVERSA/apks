.class public final Lzcg;
.super Lbuf;
.source "SourceFile"


# static fields
.field public static final synthetic G:I


# instance fields
.field public final A:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final B:Landroid/content/Context;

.field public final C:Lbdg;

.field public final D:Ln4h;

.field public final E:Ljava/util/Map;

.field public final F:Ljava/util/List;

.field public final j:Ljava/util/concurrent/Executor;

.field public final k:Lddg;

.field public final l:Lldg;

.field public final m:Lceg;

.field public final n:Lidg;

.field public final o:Lsdg;

.field public final p:Lzxi;

.field public final q:Lzxi;

.field public final r:Lzxi;

.field public final s:Lzxi;

.field public final t:Lzxi;

.field public u:Ldfg;

.field public v:Z

.field public w:Z

.field public x:Z

.field public final y:Lndf;

.field public final z:Lfre;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v4, "2011"

    const-string v5, "2007"

    const-string v0, "3010"

    const-string v1, "3008"

    const-string v2, "1005"

    const-string v3, "1009"

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfww;->zzs(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    return-void
.end method

.method public constructor <init>(Lauf;Ljava/util/concurrent/Executor;Lddg;Lldg;Lceg;Lidg;Lsdg;Lzxi;Lzxi;Lzxi;Lzxi;Lzxi;Lndf;Lfre;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/content/Context;Lbdg;Ln4h;Lkue;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0, p1}, Lbuf;-><init>(Lauf;)V

    move-object v1, p2

    iput-object v1, v0, Lzcg;->j:Ljava/util/concurrent/Executor;

    move-object v1, p3

    iput-object v1, v0, Lzcg;->k:Lddg;

    move-object v1, p4

    iput-object v1, v0, Lzcg;->l:Lldg;

    move-object v1, p5

    iput-object v1, v0, Lzcg;->m:Lceg;

    move-object v1, p6

    iput-object v1, v0, Lzcg;->n:Lidg;

    move-object v1, p7

    iput-object v1, v0, Lzcg;->o:Lsdg;

    move-object v1, p8

    iput-object v1, v0, Lzcg;->p:Lzxi;

    move-object v1, p9

    iput-object v1, v0, Lzcg;->q:Lzxi;

    move-object v1, p10

    iput-object v1, v0, Lzcg;->r:Lzxi;

    move-object v1, p11

    iput-object v1, v0, Lzcg;->s:Lzxi;

    move-object v1, p12

    iput-object v1, v0, Lzcg;->t:Lzxi;

    move-object v1, p13

    iput-object v1, v0, Lzcg;->y:Lndf;

    move-object/from16 v1, p14

    iput-object v1, v0, Lzcg;->z:Lfre;

    move-object/from16 v1, p15

    iput-object v1, v0, Lzcg;->A:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object/from16 v1, p16

    iput-object v1, v0, Lzcg;->B:Landroid/content/Context;

    move-object/from16 v1, p17

    iput-object v1, v0, Lzcg;->C:Lbdg;

    move-object/from16 v1, p18

    iput-object v1, v0, Lzcg;->D:Ln4h;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lzcg;->E:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lzcg;->F:Ljava/util/List;

    return-void
.end method

.method public static G(Landroid/view/View;)Z
    .locals 7

    sget-object v0, Lcye;->Ja:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzx(Landroid/view/View;)J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcye;->Ka:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v5, p0

    cmp-long p0, v3, v5

    if-ltz p0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public static bridge synthetic Q(Lzcg;)Lddg;
    .locals 0

    iget-object p0, p0, Lzcg;->k:Lddg;

    return-object p0
.end method

.method public static bridge synthetic R(Lzcg;)Ldfg;
    .locals 0

    iget-object p0, p0, Lzcg;->u:Ldfg;

    return-object p0
.end method

.method public static bridge synthetic U(Lzcg;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lzcg;->E:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic X(Lzcg;Z)V
    .locals 8

    iget-object v0, p0, Lzcg;->u:Ldfg;

    if-nez v0, :cond_0

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Ad should be associated with an ad view before calling recordCustomClickGesture()"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lzcg;->l:Lldg;

    invoke-interface {v0}, Ldfg;->zzf()Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lzcg;->u:Ldfg;

    invoke-interface {v0}, Ldfg;->zzl()Ljava/util/Map;

    move-result-object v3

    iget-object v0, p0, Lzcg;->u:Ldfg;

    invoke-interface {v0}, Ldfg;->zzm()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0}, Lzcg;->J()Landroid/widget/ImageView$ScaleType;

    move-result-object v6

    const/4 v7, 0x0

    const/4 p0, 0x0

    move-object v0, v1

    move-object v1, p0

    move v5, p1

    invoke-interface/range {v0 .. v7}, Lldg;->c(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;ZLandroid/widget/ImageView$ScaleType;I)V

    return-void
.end method

.method public static synthetic Y(Lzcg;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lzcg;->k:Lddg;

    invoke-virtual {v0}, Lddg;->P()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Google"

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    const/4 v0, 0x6

    if-eq v1, v0, :cond_1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    :try_start_1
    const-string p0, "Wrong native template id!"

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lzcg;->o:Lsdg;

    invoke-virtual {v0}, Lsdg;->g()Lcom/google/android/gms/internal/ads/zzbmc;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lzcg;->s:Lzxi;

    invoke-interface {p0}, Lzxi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzblw;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzbmc;->zzg(Lcom/google/android/gms/internal/ads/zzblw;)V

    return-void

    :cond_1
    iget-object v0, p0, Lzcg;->o:Lsdg;

    invoke-virtual {v0}, Lsdg;->f()Lcom/google/android/gms/internal/ads/zzbhh;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v2, v3}, Lzcg;->K(Ljava/lang/String;Z)V

    iget-object p0, p0, Lzcg;->r:Lzxi;

    invoke-interface {p0}, Lzxi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzbhh;->zze(Lcom/google/android/gms/internal/ads/zzbhn;)V

    return-void

    :cond_2
    iget-object v1, p0, Lzcg;->o:Lsdg;

    invoke-virtual {v0}, Lddg;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lsdg;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbha;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lddg;->f0()Lejf;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2, v3}, Lzcg;->S(Ljava/lang/String;Z)Lfxg;

    :cond_3
    iget-object p0, p0, Lzcg;->t:Lzxi;

    invoke-interface {p0}, Lzxi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgn;

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/ads/zzbha;->zze(Lcom/google/android/gms/internal/ads/zzbgn;)V

    return-void

    :cond_4
    iget-object v0, p0, Lzcg;->o:Lsdg;

    invoke-virtual {v0}, Lsdg;->a()Lcom/google/android/gms/internal/ads/zzbgr;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v2, v3}, Lzcg;->K(Ljava/lang/String;Z)V

    iget-object p0, p0, Lzcg;->q:Lzxi;

    invoke-interface {p0}, Lzxi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgi;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzbgr;->zze(Lcom/google/android/gms/internal/ads/zzbgi;)V

    return-void

    :cond_5
    iget-object v0, p0, Lzcg;->o:Lsdg;

    invoke-virtual {v0}, Lsdg;->b()Lcom/google/android/gms/internal/ads/zzbgu;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v2, v3}, Lzcg;->K(Ljava/lang/String;Z)V

    iget-object p0, p0, Lzcg;->p:Lzxi;

    invoke-interface {p0}, Lzxi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgk;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzbgu;->zze(Lcom/google/android/gms/internal/ads/zzbgk;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    return-void

    :goto_0
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "RemoteException when notifyAdLoad is called"

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic Z(Lzcg;Landroid/view/View;ZI)V
    .locals 8

    iget-object v0, p0, Lzcg;->u:Ldfg;

    if-nez v0, :cond_0

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Ad should be associated with an ad view before calling performClickForCustomGesture()"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lzcg;->l:Lldg;

    invoke-interface {v0}, Ldfg;->zzf()Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lzcg;->u:Ldfg;

    invoke-interface {v0}, Ldfg;->zzl()Ljava/util/Map;

    move-result-object v3

    iget-object v0, p0, Lzcg;->u:Ldfg;

    invoke-interface {v0}, Ldfg;->zzm()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0}, Lzcg;->J()Landroid/widget/ImageView$ScaleType;

    move-result-object v6

    move-object v0, v1

    move-object v1, p1

    move v5, p2

    move v7, p3

    invoke-interface/range {v0 .. v7}, Lldg;->c(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;ZLandroid/widget/ImageView$ScaleType;I)V

    return-void
.end method

.method public static synthetic a0(Lzcg;)V
    .locals 1

    iget-object v0, p0, Lzcg;->l:Lldg;

    invoke-interface {v0}, Lldg;->zzk()V

    iget-object p0, p0, Lzcg;->k:Lddg;

    invoke-virtual {p0}, Lddg;->i()V

    return-void
.end method

.method public static synthetic b0(Lzcg;Ldfg;)V
    .locals 0

    invoke-virtual {p0, p1}, Lzcg;->O(Ldfg;)V

    return-void
.end method

.method public static synthetic c0(Lzcg;Ldfg;)V
    .locals 0

    invoke-virtual {p0, p1}, Lzcg;->N(Ldfg;)V

    return-void
.end method

.method public static bridge synthetic d0(Lzcg;Landroid/view/View;Lfxg;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lzcg;->M(Landroid/view/View;Lfxg;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized A(Ldfg;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcye;->U1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lpzh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdha;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdha;-><init>(Lzcg;Ldfg;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lzcg;->N(Ldfg;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized B(Ldfg;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcye;->U1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lpzh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdhb;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdhb;-><init>(Lzcg;Ldfg;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lzcg;->O(Ldfg;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final C()Z
    .locals 0

    iget-object p0, p0, Lzcg;->n:Lidg;

    invoke-virtual {p0}, Lidg;->e()Z

    move-result p0

    return p0
.end method

.method public final declared-synchronized D()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzcg;->l:Lldg;

    invoke-interface {v0}, Lldg;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized E()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzcg;->l:Lldg;

    invoke-interface {v0}, Lldg;->zzD()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final F()Z
    .locals 0

    iget-object p0, p0, Lzcg;->n:Lidg;

    invoke-virtual {p0}, Lidg;->d()Z

    move-result p0

    return p0
.end method

.method public final declared-synchronized H(Landroid/os/Bundle;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lzcg;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lzcg;->l:Lldg;

    invoke-interface {v0, p1}, Lldg;->f(Landroid/os/Bundle;)Z

    move-result p1

    iput-boolean p1, p0, Lzcg;->w:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized I()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzcg;->l:Lldg;

    invoke-interface {v0}, Lldg;->zza()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized J()Landroid/widget/ImageView$ScaleType;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzcg;->u:Ldfg;

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Ad should be associated with an ad view before calling getMediaviewScaleType()"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-interface {v0}, Ldfg;->zzj()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView$ScaleType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    sget-object v0, Lceg;->k:Landroid/widget/ImageView$ScaleType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final K(Ljava/lang/String;Z)V
    .locals 2

    sget-object p1, Lcye;->t5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    const-string v0, "Google"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lzcg;->k:Lddg;

    invoke-virtual {p1}, Lddg;->j0()Lim5;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lxcg;

    invoke-direct {v1, p0, v0, p2}, Lxcg;-><init>(Lzcg;Ljava/lang/String;Z)V

    iget-object p0, p0, Lzcg;->j:Ljava/util/concurrent/Executor;

    invoke-static {p1, v1, p0}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_1
    invoke-virtual {p0, v0, p2}, Lzcg;->S(Ljava/lang/String;Z)Lfxg;

    return-void
.end method

.method public final declared-synchronized L(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzcg;->m:Lceg;

    iget-object v1, p0, Lzcg;->u:Ldfg;

    invoke-virtual {v0, v1}, Lceg;->d(Ldfg;)V

    invoke-virtual {p0}, Lzcg;->J()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iget-object v1, p0, Lzcg;->l:Lldg;

    invoke-interface {v1, p1, p2, p3, v0}, Lldg;->l(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lzcg;->w:Z
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

.method public final M(Landroid/view/View;Lfxg;)V
    .locals 1

    iget-object v0, p0, Lzcg;->k:Lddg;

    invoke-virtual {v0}, Lddg;->e0()Lejf;

    move-result-object v0

    iget-object p0, p0, Lzcg;->n:Lidg;

    invoke-virtual {p0}, Lidg;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lzwg;

    move-result-object p0

    invoke-virtual {p2}, Lfxg;->a()Lpuh;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Lzwg;->c(Lpuh;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized N(Ldfg;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lzcg;->v:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iput-object p1, p0, Lzcg;->u:Ldfg;

    iget-object v0, p0, Lzcg;->m:Lceg;

    invoke-virtual {v0, p1}, Lceg;->e(Ldfg;)V

    iget-object v1, p0, Lzcg;->l:Lldg;

    invoke-interface {p1}, Ldfg;->zzf()Landroid/view/View;

    move-result-object v2

    invoke-interface {p1}, Ldfg;->zzm()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1}, Ldfg;->zzn()Ljava/util/Map;

    move-result-object v4

    move-object v5, p1

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lldg;->e(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcye;->Q2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzcg;->z:Lfre;

    invoke-virtual {v0}, Lfre;->c()Lare;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ldfg;->zzf()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lare;->zzo(Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    :goto_0
    sget-object v0, Lcye;->W1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbuf;->b:Lhmh;

    iget-boolean v1, v0, Lhmh;->k0:Z

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    iget-object v0, v0, Lhmh;->j0:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lzcg;->u:Ldfg;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    invoke-interface {v2}, Ldfg;->zzl()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    :goto_2
    iget-object v3, p0, Lzcg;->E:Ljava/util/Map;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lzcg;->B:Landroid/content/Context;

    new-instance v4, Ljue;

    invoke-direct {v4, v3, v2}, Ljue;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v2, p0, Lzcg;->F:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lwcg;

    invoke-direct {v2, p0, v1}, Lwcg;-><init>(Lzcg;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljue;->d(Liue;)V

    goto :goto_1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ldfg;->zzi()Ljue;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ldfg;->zzi()Ljue;

    move-result-object p1

    iget-object v0, p0, Lzcg;->y:Lndf;

    invoke-virtual {p1, v0}, Ljue;->d(Liue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final O(Ldfg;)V
    .locals 3

    iget-object v0, p0, Lzcg;->l:Lldg;

    invoke-interface {p1}, Ldfg;->zzf()Landroid/view/View;

    move-result-object v1

    invoke-interface {p1}, Ldfg;->zzl()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lldg;->j(Landroid/view/View;Ljava/util/Map;)V

    invoke-interface {p1}, Ldfg;->zzh()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ldfg;->zzh()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-interface {p1}, Ldfg;->zzh()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-interface {p1}, Ldfg;->zzi()Ljue;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ldfg;->zzi()Ljue;

    move-result-object p1

    iget-object v0, p0, Lzcg;->y:Lndf;

    invoke-virtual {p1, v0}, Ljue;->e(Liue;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lzcg;->u:Ldfg;

    return-void
.end method

.method public final P()Lbdg;
    .locals 0

    iget-object p0, p0, Lzcg;->C:Lbdg;

    return-object p0
.end method

.method public final S(Ljava/lang/String;Z)Lfxg;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lzcg;->n:Lidg;

    invoke-virtual {v1}, Lidg;->d()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v2, v0, Lzcg;->k:Lddg;

    invoke-virtual {v2}, Lddg;->e0()Lejf;

    move-result-object v4

    invoke-virtual {v2}, Lddg;->f0()Lejf;

    move-result-object v5

    if-nez v4, :cond_2

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Omid display and video webview are null. Skipping initialization."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-object v3

    :cond_2
    :goto_0
    invoke-virtual {v1}, Lidg;->a()Lhnh;

    invoke-virtual {v1}, Lidg;->a()Lhnh;

    move-result-object v1

    invoke-virtual {v1}, Lhnh;->c()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_7

    if-eq v6, v8, :cond_5

    if-eq v1, v8, :cond_4

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    const-string v0, "UNKNOWN"

    goto :goto_1

    :cond_3
    const-string v0, "DISPLAY"

    goto :goto_1

    :cond_4
    const-string v0, "VIDEO"

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown omid media type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Not initializing Omid."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-object v3

    :cond_5
    if-eqz v4, :cond_6

    move v1, v7

    move v7, v8

    goto :goto_2

    :cond_6
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Omid media type was display but there was no display webview."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-object v3

    :cond_7
    if-eqz v5, :cond_11

    move v1, v8

    :goto_2
    if-eqz v7, :cond_8

    move-object v14, v3

    goto :goto_3

    :cond_8
    const-string v4, "javascript"

    move-object v14, v4

    move-object v4, v5

    :goto_3
    if-eqz v4, :cond_10

    iget-object v6, v0, Lzcg;->B:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lzwg;

    move-result-object v7

    invoke-interface {v7, v6}, Lzwg;->a(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_9

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Failed to initialize omid in InternalNativeAd"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-object v3

    :cond_9
    iget-object v6, v0, Lzcg;->A:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v7, v6, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->buddyApkVersion:I

    iget v6, v6, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz v1, :cond_a

    sget-object v6, Lcom/google/android/gms/internal/ads/zzebw;->zzc:Lcom/google/android/gms/internal/ads/zzebw;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzebx;->zzb:Lcom/google/android/gms/internal/ads/zzebx;

    :goto_4
    move-object/from16 v17, v6

    move-object/from16 v16, v7

    goto :goto_5

    :cond_a
    sget-object v6, Lcom/google/android/gms/internal/ads/zzebw;->zzb:Lcom/google/android/gms/internal/ads/zzebw;

    invoke-virtual {v2}, Lddg;->P()I

    move-result v7

    const/4 v9, 0x3

    if-ne v7, v9, :cond_b

    sget-object v7, Lcom/google/android/gms/internal/ads/zzebx;->zzd:Lcom/google/android/gms/internal/ads/zzebx;

    goto :goto_4

    :cond_b
    sget-object v7, Lcom/google/android/gms/internal/ads/zzebx;->zzc:Lcom/google/android/gms/internal/ads/zzebx;

    goto :goto_4

    :goto_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lzwg;

    move-result-object v9

    invoke-interface {v4}, Lejf;->zzG()Landroid/webkit/WebView;

    move-result-object v11

    iget-object v6, v0, Lbuf;->b:Lhmh;

    iget-object v6, v6, Lhmh;->l0:Ljava/lang/String;

    const-string v12, ""

    const-string v13, "javascript"

    move-object/from16 v15, p1

    move-object/from16 v18, v6

    invoke-interface/range {v9 .. v18}, Lzwg;->f(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzebx;Lcom/google/android/gms/internal/ads/zzebw;Ljava/lang/String;)Lfxg;

    move-result-object v6

    if-nez v6, :cond_c

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Failed to create omid session in InternalNativeAd"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-object v3

    :cond_c
    invoke-virtual {v2, v6}, Lddg;->w(Lfxg;)V

    invoke-interface {v4, v6}, Lejf;->zzat(Lfxg;)V

    if-eqz v1, :cond_e

    invoke-virtual {v6}, Lfxg;->a()Lpuh;

    move-result-object v1

    if-eqz v5, :cond_d

    invoke-interface {v5}, Lejf;->zzF()Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lzwg;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lzwg;->c(Lpuh;Landroid/view/View;)V

    :cond_d
    iput-boolean v8, v0, Lzcg;->x:Z

    :cond_e
    if-eqz p2, :cond_f

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lzwg;

    move-result-object v0

    invoke-virtual {v6}, Lfxg;->a()Lpuh;

    move-result-object v1

    invoke-interface {v0, v1}, Lzwg;->h(Lpuh;)V

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v1, "onSdkLoaded"

    invoke-interface {v4, v1, v0}, Lp5f;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    :cond_f
    return-object v6

    :cond_10
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Webview is null in InternalNativeAd"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-object v3

    :cond_11
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Omid media type was video but there was no video webview."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    :cond_12
    :goto_6
    return-object v3
.end method

.method public final T()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lzcg;->n:Lidg;

    invoke-virtual {p0}, Lidg;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized V(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lzcg;->J()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iget-object v1, p0, Lzcg;->l:Lldg;

    invoke-interface {v1, p1, p2, p3, v0}, Lldg;->i(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized W(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lzcg;->J()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iget-object v1, p0, Lzcg;->l:Lldg;

    invoke-interface {v1, p1, p2, p3, v0}, Lldg;->h(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lzcg;->v:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdhg;-><init>(Lzcg;)V

    iget-object v1, p0, Lzcg;->j:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lbuf;->a()V
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

.method public final b()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdhc;-><init>(Lzcg;)V

    iget-object v1, p0, Lzcg;->j:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lzcg;->k:Lddg;

    invoke-virtual {v0}, Lddg;->P()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lzcg;->l:Lldg;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdhd;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdhd;-><init>(Lldg;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    invoke-super {p0}, Lbuf;->b()V

    return-void
.end method

.method public final e0(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lzcg;->k:Lddg;

    invoke-virtual {v0}, Lddg;->h0()Lfxg;

    move-result-object v0

    iget-object p0, p0, Lzcg;->n:Lidg;

    invoke-virtual {p0}, Lidg;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lzwg;

    move-result-object p0

    invoke-virtual {v0}, Lfxg;->a()Lpuh;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lzwg;->e(Lpuh;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized i()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzcg;->l:Lldg;

    invoke-interface {v0}, Lldg;->zzj()V
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

.method public final declared-synchronized j(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lzcg;->w:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcye;->W1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbuf;->b:Lhmh;

    iget-boolean v0, v0, Lhmh;->k0:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzcg;->E:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    if-nez p4, :cond_5

    sget-object p4, Lcye;->e4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p4}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_4

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lzcg;->G(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lzcg;->L(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :cond_5
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lzcg;->L(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized k(Lcom/google/android/gms/ads/internal/client/zzdg;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzcg;->l:Lldg;

    invoke-interface {v0, p1}, Lldg;->o(Lcom/google/android/gms/ads/internal/client/zzdg;)V
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

.method public final declared-synchronized l(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzcg;->m:Lceg;

    iget-object v1, p0, Lzcg;->u:Ldfg;

    invoke-virtual {v0, v1}, Lceg;->c(Ldfg;)V

    invoke-virtual {p0}, Lzcg;->J()Landroid/widget/ImageView$ScaleType;

    move-result-object v8

    iget-object v2, p0, Lzcg;->l:Lldg;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v8}, Lldg;->g(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;ZLandroid/widget/ImageView$ScaleType;)V

    iget-boolean p1, p0, Lzcg;->x:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lzcg;->k:Lddg;

    invoke-virtual {p1}, Lddg;->f0()Lejf;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lddg;->f0()Lejf;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Landroidx/collection/ArrayMap;

    invoke-direct {p2}, Landroidx/collection/ArrayMap;-><init>()V

    const-string p3, "onSdkAdUserInteractionClick"

    invoke-interface {p1, p3, p2}, Lp5f;->zzd(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized m(Landroid/view/View;I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcye;->Fb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lzcg;->u:Ldfg;

    if-nez v0, :cond_1

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Ad should be associated with an ad view before calling performClickForCustomGesture()"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lzcg;->j:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzdik;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdhf;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzdhf;-><init>(Lzcg;Landroid/view/View;ZI)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized n(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzcg;->l:Lldg;

    invoke-interface {v0, p1}, Lldg;->zzn(Ljava/lang/String;)V
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

.method public final declared-synchronized o(Landroid/os/Bundle;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzcg;->l:Lldg;

    invoke-interface {v0, p1}, Lldg;->zzo(Landroid/os/Bundle;)V
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

.method public final declared-synchronized p()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzcg;->u:Ldfg;

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Ad should be associated with an ad view before calling recordCustomClickGesture()"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lzcg;->j:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzdik;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdhh;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzdhh;-><init>(Lzcg;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final q(Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lzcg;->k:Lddg;

    invoke-virtual {v0}, Lddg;->f0()Lejf;

    move-result-object v0

    if-nez v0, :cond_0

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Video webview is null"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lzcg;->j:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdhe;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdhe;-><init>(Lejf;Lorg/json/JSONObject;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Error reading event signals"

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final declared-synchronized r()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lzcg;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lzcg;->l:Lldg;

    invoke-interface {v0}, Lldg;->zzt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final s(Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcye;->t5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzcg;->k:Lddg;

    invoke-virtual {v0}, Lddg;->P()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lddg;->c0()Leff;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lycg;

    invoke-direct {v1, p0, p1}, Lycg;-><init>(Lzcg;Landroid/view/View;)V

    iget-object p0, p0, Lzcg;->j:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_1
    iget-object v0, p0, Lzcg;->k:Lddg;

    invoke-virtual {v0}, Lddg;->h0()Lfxg;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lzcg;->M(Landroid/view/View;Lfxg;)V

    return-void
.end method

.method public final declared-synchronized t(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzcg;->l:Lldg;

    invoke-interface {v0, p1, p2, p3}, Lldg;->k(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
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

.method public final declared-synchronized u(Landroid/os/Bundle;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzcg;->l:Lldg;

    invoke-interface {v0, p1}, Lldg;->a(Landroid/os/Bundle;)V
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

.method public final declared-synchronized v(Landroid/view/View;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzcg;->l:Lldg;

    invoke-interface {v0, p1}, Lldg;->m(Landroid/view/View;)V
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

.method public final declared-synchronized w()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzcg;->l:Lldg;

    invoke-interface {v0}, Lldg;->zzx()V
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

.method public final declared-synchronized x(Lcom/google/android/gms/ads/internal/client/zzdc;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzcg;->l:Lldg;

    invoke-interface {v0, p1}, Lldg;->d(Lcom/google/android/gms/ads/internal/client/zzdc;)V
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

.method public final declared-synchronized y(Lcom/google/android/gms/ads/internal/client/zzdq;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzcg;->D:Ln4h;

    invoke-virtual {v0, p1}, Ln4h;->a(Lcom/google/android/gms/ads/internal/client/zzdq;)V
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

.method public final declared-synchronized z(Lcom/google/android/gms/internal/ads/zzbhk;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lzcg;->l:Lldg;

    invoke-interface {v0, p1}, Lldg;->n(Lcom/google/android/gms/internal/ads/zzbhk;)V
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
