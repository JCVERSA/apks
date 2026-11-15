.class public final Llmf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsih;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/ads/internal/client/zzr;

.field public final c:Ljava/lang/String;

.field public final d:Lzlf;

.field public final e:Lqyi;

.field public final f:Lqyi;

.field public final g:Lqyi;

.field public final h:Lqyi;

.field public final i:Lqyi;

.field public final j:Lqyi;


# direct methods
.method public constructor <init>(Lzlf;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzr;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llmf;->d:Lzlf;

    iput-object p2, p0, Llmf;->a:Landroid/content/Context;

    iput-object p4, p0, Llmf;->b:Lcom/google/android/gms/ads/internal/client/zzr;

    iput-object p3, p0, Llmf;->c:Ljava/lang/String;

    invoke-static {p2}, Lgyi;->a(Ljava/lang/Object;)Lfyi;

    move-result-object v1

    iput-object v1, p0, Llmf;->e:Lqyi;

    invoke-static {p4}, Lgyi;->a(Ljava/lang/Object;)Lfyi;

    move-result-object v3

    iput-object v3, p0, Llmf;->f:Lqyi;

    iget-object p2, p1, Lzlf;->N:Lqyi;

    new-instance p3, Ll4h;

    invoke-direct {p3, p2}, Ll4h;-><init>(Lqyi;)V

    invoke-static {p3}, Leyi;->b(Lqyi;)Lqyi;

    move-result-object v5

    iput-object v5, p0, Llmf;->g:Lqyi;

    invoke-static {}, Lq4h;->a()Lq4h;

    move-result-object p2

    invoke-static {p2}, Leyi;->b(Lqyi;)Lqyi;

    move-result-object v6

    iput-object v6, p0, Llmf;->h:Lqyi;

    invoke-static {}, Ll5g;->a()Ll5g;

    move-result-object p2

    invoke-static {p2}, Leyi;->b(Lqyi;)Lqyi;

    move-result-object v8

    iput-object v8, p0, Llmf;->i:Lqyi;

    iget-object v2, p1, Lzlf;->d:Lqyi;

    iget-object v4, p1, Lzlf;->T:Lqyi;

    invoke-static {}, Lgnh;->a()Lgnh;

    move-result-object v7

    new-instance p1, Lqih;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lqih;-><init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V

    invoke-static {p1}, Leyi;->b(Lqyi;)Lqyi;

    move-result-object p1

    iput-object p1, p0, Llmf;->j:Lqyi;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzeix;
    .locals 10

    iget-object v0, p0, Llmf;->j:Lqyi;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzeix;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lpih;

    iget-object v0, p0, Llmf;->g:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lk4h;

    iget-object v0, p0, Llmf;->d:Lzlf;

    invoke-static {v0}, Lzlf;->F(Lzlf;)Lokf;

    move-result-object v1

    invoke-static {v1}, Lklf;->b(Lokf;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v7

    iget-object v0, v0, Lzlf;->N:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lsmg;

    iget-object v2, p0, Llmf;->a:Landroid/content/Context;

    iget-object v3, p0, Llmf;->b:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-object v4, p0, Llmf;->c:Ljava/lang/String;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzeix;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lpih;Lk4h;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lsmg;)V

    return-object v9
.end method
