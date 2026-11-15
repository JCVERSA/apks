.class public final Lgmf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lihh;


# instance fields
.field public final a:Lzlf;

.field public final b:Lqyi;

.field public final c:Lqyi;

.field public final d:Lqyi;

.field public final e:Lqyi;

.field public final f:Lqyi;

.field public final g:Lqyi;


# direct methods
.method public constructor <init>(Lzlf;Landroid/content/Context;Ljava/lang/String;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgmf;->a:Lzlf;

    invoke-static {p2}, Lgyi;->a(Ljava/lang/Object;)Lfyi;

    move-result-object p2

    iput-object p2, p0, Lgmf;->b:Lqyi;

    invoke-static {p3}, Lgyi;->a(Ljava/lang/Object;)Lfyi;

    move-result-object p3

    iput-object p3, p0, Lgmf;->c:Lqyi;

    iget-object v0, p1, Lzlf;->i1:Lqyi;

    iget-object v1, p1, Lzlf;->j1:Lqyi;

    new-instance v4, Lyjh;

    invoke-direct {v4, p2, v0, v1}, Lyjh;-><init>(Lqyi;Lqyi;Lqyi;)V

    iput-object v4, p0, Lgmf;->d:Lqyi;

    new-instance v1, Lgih;

    invoke-direct {v1, v0}, Lgih;-><init>(Lqyi;)V

    invoke-static {v1}, Leyi;->b(Lqyi;)Lqyi;

    move-result-object v8

    iput-object v8, p0, Lgmf;->e:Lqyi;

    iget-object v2, p1, Lzlf;->d:Lqyi;

    iget-object v9, p1, Lzlf;->T:Lqyi;

    invoke-static {}, Lgnh;->a()Lgnh;

    move-result-object v6

    iget-object v10, p1, Lzlf;->m:Lqyi;

    new-instance v11, Liih;

    move-object v0, v11

    move-object v1, p2

    move-object v3, v9

    move-object v5, v8

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Liih;-><init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V

    invoke-static {v11}, Leyi;->b(Lqyi;)Lqyi;

    move-result-object v4

    iput-object v4, p0, Lgmf;->f:Lqyi;

    iget-object v7, p1, Lzlf;->N:Lqyi;

    new-instance p1, Lnih;

    move-object v0, p1

    move-object v1, v9

    move-object v2, p2

    move-object v3, p3

    move-object v6, v10

    invoke-direct/range {v0 .. v7}, Lnih;-><init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V

    invoke-static {p1}, Leyi;->b(Lqyi;)Lqyi;

    move-result-object p1

    iput-object p1, p0, Lgmf;->g:Lqyi;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzexa;
    .locals 0

    iget-object p0, p0, Lgmf;->g:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzexa;

    return-object p0
.end method
