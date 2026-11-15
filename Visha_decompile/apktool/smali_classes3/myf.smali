.class public final Lmyf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;

.field public final d:Lqyi;

.field public final e:Lqyi;

.field public final f:Lqyi;

.field public final g:Lqyi;

.field public final h:Lqyi;

.field public final i:Lqyi;

.field public final j:Lqyi;

.field public final k:Lqyi;

.field public final l:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyf;->a:Lqyi;

    iput-object p2, p0, Lmyf;->b:Lqyi;

    iput-object p3, p0, Lmyf;->c:Lqyi;

    iput-object p4, p0, Lmyf;->d:Lqyi;

    iput-object p6, p0, Lmyf;->e:Lqyi;

    iput-object p7, p0, Lmyf;->f:Lqyi;

    iput-object p8, p0, Lmyf;->g:Lqyi;

    iput-object p9, p0, Lmyf;->h:Lqyi;

    iput-object p10, p0, Lmyf;->i:Lqyi;

    iput-object p11, p0, Lmyf;->j:Lqyi;

    iput-object p12, p0, Lmyf;->k:Lqyi;

    iput-object p13, p0, Lmyf;->l:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Llyf;
    .locals 15

    iget-object v0, p0, Lmyf;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Llrh;

    iget-object v0, p0, Lmyf;->b:Lqyi;

    check-cast v0, Lklf;

    invoke-virtual {v0}, Lklf;->a()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v3

    iget-object v0, p0, Lmyf;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Lmyf;->d:Lqyi;

    check-cast v0, Lzqg;

    invoke-virtual {v0}, Lzqg;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lf9h;->b()Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    iget-object v0, p0, Lmyf;->e:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/pm/PackageInfo;

    iget-object v0, p0, Lmyf;->f:Lqyi;

    invoke-static {v0}, Leyi;->a(Lqyi;)Lzxi;

    move-result-object v8

    iget-object v0, p0, Lmyf;->g:Lqyi;

    check-cast v0, Lpkf;

    invoke-virtual {v0}, Lpkf;->a()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v9

    iget-object v0, p0, Lmyf;->h:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    iget-object v0, p0, Lmyf;->i:Lqyi;

    check-cast v0, Lheh;

    invoke-virtual {v0}, Lheh;->a()Lgeh;

    move-result-object v11

    iget-object v0, p0, Lmyf;->j:Lqyi;

    check-cast v0, Lzyf;

    invoke-virtual {v0}, Lzyf;->a()Lenh;

    move-result-object v12

    iget-object v0, p0, Lmyf;->k:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lw5g;

    iget-object p0, p0, Lmyf;->l:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    new-instance p0, Llyf;

    move-object v1, p0

    invoke-direct/range {v1 .. v14}, Llyf;-><init>(Llrh;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Lzxi;Lcom/google/android/gms/ads/internal/util/zzg;Ljava/lang/String;Lgeh;Lenh;Lw5g;I)V

    return-object p0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lmyf;->a()Llyf;

    move-result-object p0

    return-object p0
.end method
