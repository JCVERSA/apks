.class public final Ltrg;
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


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltrg;->a:Lqyi;

    iput-object p2, p0, Ltrg;->b:Lqyi;

    iput-object p3, p0, Ltrg;->c:Lqyi;

    iput-object p4, p0, Ltrg;->d:Lqyi;

    iput-object p6, p0, Ltrg;->e:Lqyi;

    iput-object p7, p0, Ltrg;->f:Lqyi;

    iput-object p8, p0, Ltrg;->g:Lqyi;

    iput-object p11, p0, Ltrg;->h:Lqyi;

    iput-object p12, p0, Ltrg;->i:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lsrg;
    .locals 14

    iget-object v0, p0, Ltrg;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Llkf;

    iget-object v0, p0, Ltrg;->b:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Ltrg;->c:Lqyi;

    check-cast v0, Lklf;

    invoke-virtual {v0}, Lklf;->a()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v4

    iget-object v0, p0, Ltrg;->d:Lqyi;

    check-cast v0, Lzyf;

    invoke-virtual {v0}, Lzyf;->a()Lenh;

    move-result-object v5

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v6

    iget-object v0, p0, Ltrg;->e:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    iget-object v0, p0, Ltrg;->f:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v0, p0, Ltrg;->g:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Llmg;

    invoke-static {}, Lulf;->a()Lccf;

    move-result-object v10

    invoke-static {}, Lrlf;->a()Lvtg;

    move-result-object v11

    iget-object v0, p0, Ltrg;->h:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object p0, p0, Ltrg;->i:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v13, p0

    check-cast v13, Lwth;

    new-instance p0, Lsrg;

    move-object v1, p0

    invoke-direct/range {v1 .. v13}, Lsrg;-><init>(Llkf;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lenh;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfgn;Llmg;Lccf;Lvtg;Ljava/util/concurrent/ScheduledExecutorService;Lwth;)V

    return-object p0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ltrg;->a()Lsrg;

    move-result-object p0

    return-object p0
.end method
