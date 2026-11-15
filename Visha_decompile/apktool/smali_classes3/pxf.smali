.class public final Lpxf;
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


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpxf;->a:Lqyi;

    iput-object p2, p0, Lpxf;->b:Lqyi;

    iput-object p3, p0, Lpxf;->c:Lqyi;

    iput-object p4, p0, Lpxf;->d:Lqyi;

    iput-object p5, p0, Lpxf;->e:Lqyi;

    iput-object p6, p0, Lpxf;->f:Lqyi;

    iput-object p7, p0, Lpxf;->g:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lpxf;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lpxf;->b:Lqyi;

    check-cast v0, Lzyf;

    invoke-virtual {v0}, Lzyf;->a()Lenh;

    move-result-object v3

    iget-object v0, p0, Lpxf;->c:Lqyi;

    check-cast v0, Lklf;

    invoke-virtual {v0}, Lklf;->a()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v4

    iget-object v0, p0, Lpxf;->d:Lqyi;

    check-cast v0, Lpkf;

    invoke-virtual {v0}, Lpkf;->a()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v5

    iget-object v0, p0, Lpxf;->e:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/ads/t4;

    iget-object v0, p0, Lpxf;->f:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/internal/ads/zzfgq;

    iget-object p0, p0, Lpxf;->g:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lzog;

    new-instance p0, Loxf;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Loxf;-><init>(Landroid/content/Context;Lenh;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/util/zzg;Lcom/google/android/gms/internal/ads/t4;Lcom/google/android/gms/internal/ads/zzfgq;Lzog;)V

    return-object p0
.end method
