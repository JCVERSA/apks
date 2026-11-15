.class public final Lr2h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;

.field public final d:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr2h;->a:Lqyi;

    iput-object p2, p0, Lr2h;->b:Lqyi;

    iput-object p3, p0, Lr2h;->c:Lqyi;

    iput-object p4, p0, Lr2h;->d:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lr2h;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llrh;

    iget-object v1, p0, Lr2h;->b:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg8i;

    iget-object v2, p0, Lr2h;->c:Lqyi;

    check-cast v2, Lx2h;

    invoke-virtual {v2}, Lx2h;->a()Lcom/google/android/gms/internal/ads/zzbdd;

    move-result-object v2

    iget-object p0, p0, Lr2h;->d:Lqyi;

    check-cast p0, Le3h;

    invoke-virtual {p0}, Le3h;->a()Ld3h;

    move-result-object p0

    new-instance v3, Lq2h;

    invoke-direct {v3, v0, v1, v2, p0}, Lq2h;-><init>(Llrh;Lg8i;Lcom/google/android/gms/internal/ads/zzbdd;Ld3h;)V

    return-object v3
.end method
