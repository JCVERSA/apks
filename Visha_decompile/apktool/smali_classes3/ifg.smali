.class public final Lifg;
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


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lifg;->a:Lqyi;

    iput-object p2, p0, Lifg;->b:Lqyi;

    iput-object p3, p0, Lifg;->c:Lqyi;

    iput-object p4, p0, Lifg;->d:Lqyi;

    iput-object p5, p0, Lifg;->e:Lqyi;

    iput-object p6, p0, Lifg;->f:Lqyi;

    iput-object p7, p0, Lifg;->g:Lqyi;

    iput-object p8, p0, Lifg;->h:Lqyi;

    iput-object p9, p0, Lifg;->i:Lqyi;

    iput-object p10, p0, Lifg;->j:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lifg;->a:Lqyi;

    check-cast v0, Llfg;

    invoke-virtual {v0}, Llfg;->a()Lcom/google/android/gms/internal/ads/zzbpj;

    move-result-object v2

    iget-object v0, p0, Lifg;->b:Lqyi;

    check-cast v0, Lmfg;

    invoke-virtual {v0}, Lmfg;->a()Lcom/google/android/gms/internal/ads/zzbpk;

    move-result-object v3

    iget-object v0, p0, Lifg;->c:Lqyi;

    check-cast v0, Lsfg;

    invoke-virtual {v0}, Lsfg;->a()Lcom/google/android/gms/internal/ads/zzbpn;

    move-result-object v4

    iget-object v0, p0, Lifg;->d:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lb0g;

    iget-object v0, p0, Lifg;->e:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lizf;

    iget-object v0, p0, Lifg;->f:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lr8g;

    iget-object v0, p0, Lifg;->g:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/Context;

    iget-object v0, p0, Lifg;->h:Lqyi;

    check-cast v0, Lquf;

    invoke-virtual {v0}, Lquf;->a()Lhmh;

    move-result-object v9

    iget-object v0, p0, Lifg;->i:Lqyi;

    check-cast v0, Lklf;

    invoke-virtual {v0}, Lklf;->a()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v10

    iget-object p0, p0, Lifg;->j:Lqyi;

    check-cast p0, Lzyf;

    invoke-virtual {p0}, Lzyf;->a()Lenh;

    move-result-object v11

    new-instance p0, Lhfg;

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lhfg;-><init>(Lcom/google/android/gms/internal/ads/zzbpj;Lcom/google/android/gms/internal/ads/zzbpk;Lcom/google/android/gms/internal/ads/zzbpn;Lb0g;Lizf;Lr8g;Landroid/content/Context;Lhmh;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lenh;)V

    return-object p0
.end method
