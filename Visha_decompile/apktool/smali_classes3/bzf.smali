.class public final Lbzf;
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


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzf;->a:Lqyi;

    iput-object p2, p0, Lbzf;->b:Lqyi;

    iput-object p3, p0, Lbzf;->c:Lqyi;

    iput-object p4, p0, Lbzf;->d:Lqyi;

    iput-object p5, p0, Lbzf;->e:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzcuv;
    .locals 7

    iget-object v0, p0, Lbzf;->a:Lqyi;

    check-cast v0, Lquf;

    invoke-virtual {v0}, Lquf;->a()Lhmh;

    move-result-object v2

    iget-object v0, p0, Lbzf;->b:Lqyi;

    check-cast v0, Lruf;

    invoke-virtual {v0}, Lruf;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lbzf;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Loxg;

    iget-object v0, p0, Lbzf;->d:Lqyi;

    check-cast v0, Lsuf;

    invoke-virtual {v0}, Lsuf;->a()Lkmh;

    move-result-object v5

    iget-object p0, p0, Lbzf;->e:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Ljava/lang/String;

    new-instance p0, Lcom/google/android/gms/internal/ads/zzcuv;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcuv;-><init>(Lhmh;Ljava/lang/String;Loxg;Lkmh;Ljava/lang/String;)V

    return-object p0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lbzf;->a()Lcom/google/android/gms/internal/ads/zzcuv;

    move-result-object p0

    return-object p0
.end method
