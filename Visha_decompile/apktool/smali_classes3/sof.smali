.class public final Lsof;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loof;


# instance fields
.field public final a:Lcom/google/android/gms/ads/internal/util/zzg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsof;->a:Lcom/google/android/gms/ads/internal/util/zzg;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 1

    const-string v0, "content_vertical_opted_out"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object p0, p0, Lsof;->a:Lcom/google/android/gms/ads/internal/util/zzg;

    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzv(Z)V

    return-void
.end method
