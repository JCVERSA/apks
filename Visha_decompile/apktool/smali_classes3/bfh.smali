.class public final Lbfh;
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


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbfh;->a:Lqyi;

    iput-object p2, p0, Lbfh;->b:Lqyi;

    iput-object p4, p0, Lbfh;->c:Lqyi;

    iput-object p5, p0, Lbfh;->d:Lqyi;

    iput-object p6, p0, Lbfh;->e:Lqyi;

    iput-object p7, p0, Lbfh;->f:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lbfh;->a:Lqyi;

    check-cast v0, Lpkf;

    invoke-virtual {v0}, Lpkf;->a()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v2

    iget-object v0, p0, Lbfh;->b:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v4

    iget-object v0, p0, Lbfh;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lbfh;->d:Lqyi;

    check-cast v0, Ljxg;

    invoke-virtual {v0}, Ljxg;->a()Lixg;

    move-result-object v6

    iget-object v0, p0, Lbfh;->e:Lqyi;

    check-cast v0, Lzyf;

    invoke-virtual {v0}, Lzyf;->a()Lenh;

    move-result-object v7

    iget-object p0, p0, Lbfh;->f:Lqyi;

    check-cast p0, Lklf;

    invoke-virtual {p0}, Lklf;->a()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v8

    new-instance p0, Lyeh;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lyeh;-><init>(Lcom/google/android/gms/ads/internal/util/zzg;Landroid/content/Context;Lg8i;Ljava/util/concurrent/ScheduledExecutorService;Lixg;Lenh;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    return-object p0
.end method
