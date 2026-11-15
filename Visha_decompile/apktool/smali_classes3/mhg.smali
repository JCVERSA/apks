.class public final Lmhg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmhg;->a:Lqyi;

    iput-object p2, p0, Lmhg;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmhg;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzcg;

    iget-object p0, p0, Lmhg;->b:Lqyi;

    check-cast p0, Laeg;

    invoke-virtual {p0}, Laeg;->a()Lddg;

    move-result-object p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdlu;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/ads/zzdlu;-><init>(Lzcg;Lddg;)V

    return-object v1
.end method
