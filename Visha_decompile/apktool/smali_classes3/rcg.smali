.class public final Lrcg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrcg;->a:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzdgy;
    .locals 1

    iget-object p0, p0, Lrcg;->a:Lqyi;

    check-cast p0, Laeg;

    invoke-virtual {p0}, Laeg;->a()Lddg;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdgy;-><init>(Lddg;)V

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lrcg;->a()Lcom/google/android/gms/internal/ads/zzdgy;

    move-result-object p0

    return-object p0
.end method
