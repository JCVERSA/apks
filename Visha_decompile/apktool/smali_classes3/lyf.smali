.class public final Llyf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Llrh;

.field public final b:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final c:Landroid/content/pm/ApplicationInfo;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/List;

.field public final f:Landroid/content/pm/PackageInfo;

.field public final g:Lzxi;

.field public final h:Ljava/lang/String;

.field public final i:Lgeh;

.field public final j:Lcom/google/android/gms/ads/internal/util/zzg;

.field public final k:Lenh;

.field public final l:I

.field public final m:Lw5g;


# direct methods
.method public constructor <init>(Llrh;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Lzxi;Lcom/google/android/gms/ads/internal/util/zzg;Ljava/lang/String;Lgeh;Lenh;Lw5g;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llyf;->a:Llrh;

    iput-object p2, p0, Llyf;->b:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Llyf;->c:Landroid/content/pm/ApplicationInfo;

    iput-object p4, p0, Llyf;->d:Ljava/lang/String;

    iput-object p5, p0, Llyf;->e:Ljava/util/List;

    iput-object p6, p0, Llyf;->f:Landroid/content/pm/PackageInfo;

    iput-object p7, p0, Llyf;->g:Lzxi;

    iput-object p9, p0, Llyf;->h:Ljava/lang/String;

    iput-object p10, p0, Llyf;->i:Lgeh;

    iput-object p8, p0, Llyf;->j:Lcom/google/android/gms/ads/internal/util/zzg;

    iput-object p11, p0, Llyf;->k:Lenh;

    iput-object p12, p0, Llyf;->m:Lw5g;

    iput p13, p0, Llyf;->l:I

    return-void
.end method

.method public static synthetic a(Llyf;Lim5;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbuy;
    .locals 19

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkyf;

    new-instance v18, Lcom/google/android/gms/internal/ads/zzbuy;

    iget-object v3, v1, Lkyf;->a:Landroid/os/Bundle;

    iget-object v2, v0, Llyf;->g:Lzxi;

    invoke-interface {v2}, Lzxi;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim5;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    sget-object v2, Lcye;->X6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Llyf;->j:Lcom/google/android/gms/ads/internal/util/zzg;

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/util/zzg;->zzN()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v13, v2

    goto :goto_0

    :cond_0
    move v13, v4

    :goto_0
    iget-object v10, v0, Llyf;->h:Ljava/lang/String;

    iget-object v8, v0, Llyf;->f:Landroid/content/pm/PackageInfo;

    iget-object v7, v0, Llyf;->e:Ljava/util/List;

    iget-object v6, v0, Llyf;->d:Ljava/lang/String;

    iget-object v5, v0, Llyf;->c:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Llyf;->b:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v0, Llyf;->k:Lenh;

    invoke-virtual {v2}, Lenh;->a()Z

    move-result v14

    iget-object v1, v1, Lkyf;->b:Landroid/os/Bundle;

    iget v0, v0, Llyf;->l:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, v18

    move-object/from16 v15, p2

    move-object/from16 v16, v1

    move/from16 v17, v0

    invoke-direct/range {v2 .. v17}, Lcom/google/android/gms/internal/ads/zzbuy;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfdj;Ljava/lang/String;ZZLandroid/os/Bundle;Landroid/os/Bundle;I)V

    return-object v18
.end method


# virtual methods
.method public final b(Landroid/os/Bundle;)Lim5;
    .locals 4

    iget-object v0, p0, Llyf;->m:Lw5g;

    invoke-virtual {v0}, Lw5g;->zza()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzffn;->zza:Lcom/google/android/gms/internal/ads/zzffn;

    new-instance v1, Lkyf;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v1, v2, v3}, Lkyf;-><init>(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget v2, p0, Llyf;->l:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Llyf;->i:Lgeh;

    invoke-virtual {v3, v1, p1, v2}, Lgeh;->a(Ljava/lang/Object;Landroid/os/Bundle;Z)Lim5;

    move-result-object p1

    iget-object p0, p0, Llyf;->a:Llrh;

    invoke-static {p1, v0, p0}, Lxqh;->c(Lim5;Ljava/lang/Object;Lerh;)Lcrh;

    move-result-object p0

    invoke-virtual {p0}, Lcrh;->a()Lrqh;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lim5;
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcye;->q2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Llyf;->k:Lenh;

    iget-object v2, v2, Lenh;->s:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string v2, "ls"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    invoke-virtual {p0, v1}, Llyf;->b(Landroid/os/Bundle;)Lim5;

    move-result-object v2

    iget-object v3, p0, Llyf;->a:Llrh;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzffn;->zzb:Lcom/google/android/gms/internal/ads/zzffn;

    iget-object v5, p0, Llyf;->g:Lzxi;

    invoke-interface {v5}, Lzxi;->zzb()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lim5;

    const/4 v6, 0x2

    new-array v6, v6, [Lim5;

    aput-object v2, v6, v0

    const/4 v0, 0x1

    aput-object v5, v6, v0

    invoke-virtual {v3, v4, v6}, Lerh;->a(Ljava/lang/Object;[Lim5;)Lvqh;

    move-result-object v0

    new-instance v3, Ljyf;

    invoke-direct {v3, p0, v2, v1}, Ljyf;-><init>(Llyf;Lim5;Landroid/os/Bundle;)V

    invoke-virtual {v0, v3}, Lvqh;->a(Ljava/util/concurrent/Callable;)Lcrh;

    move-result-object p0

    invoke-virtual {p0}, Lcrh;->a()Lrqh;

    move-result-object p0

    return-object p0
.end method
