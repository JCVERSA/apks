.class public final Lshg;
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

    iput-object p1, p0, Lshg;->a:Lqyi;

    iput-object p2, p0, Lshg;->b:Lqyi;

    iput-object p3, p0, Lshg;->c:Lqyi;

    iput-object p4, p0, Lshg;->d:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lshg;->a:Lqyi;

    check-cast v0, Lruf;

    invoke-virtual {v0}, Lruf;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lshg;->b:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzcg;

    iget-object v2, p0, Lshg;->c:Lqyi;

    check-cast v2, Laeg;

    invoke-virtual {v2}, Laeg;->a()Lddg;

    move-result-object v2

    iget-object p0, p0, Lshg;->d:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsmg;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdmd;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzdmd;-><init>(Ljava/lang/String;Lzcg;Lddg;Lsmg;)V

    return-object v3
.end method
