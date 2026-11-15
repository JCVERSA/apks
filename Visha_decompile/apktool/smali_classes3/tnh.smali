.class public final Ltnh;
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
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltnh;->a:Lqyi;

    iput-object p2, p0, Ltnh;->b:Lqyi;

    iput-object p3, p0, Ltnh;->c:Lqyi;

    iput-object p4, p0, Ltnh;->d:Lqyi;

    iput-object p5, p0, Ltnh;->e:Lqyi;

    iput-object p6, p0, Ltnh;->f:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Ltnh;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lwth;

    iget-object v0, p0, Ltnh;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Loth;

    iget-object v0, p0, Ltnh;->c:Lqyi;

    check-cast v0, Lquf;

    invoke-virtual {v0}, Lquf;->a()Lhmh;

    move-result-object v4

    iget-object v0, p0, Ltnh;->d:Lqyi;

    check-cast v0, Lsuf;

    invoke-virtual {v0}, Lsuf;->a()Lkmh;

    move-result-object v5

    iget-object v0, p0, Ltnh;->e:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lwpf;

    iget-object p0, p0, Ltnh;->f:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/google/android/gms/internal/ads/zzfgn;

    new-instance p0, Lsnh;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lsnh;-><init>(Lwth;Loth;Lhmh;Lkmh;Lwpf;Lcom/google/android/gms/internal/ads/zzfgn;)V

    return-object p0
.end method
