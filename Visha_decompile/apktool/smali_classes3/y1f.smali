.class public final Ly1f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3f;


# instance fields
.field public final a:Lz1f;


# direct methods
.method public constructor <init>(Lz1f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1f;->a:Lz1f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    const-string p1, "name"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "App event with no name parameter."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Ly1f;->a:Lz1f;

    const-string v0, "info"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Lz1f;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
