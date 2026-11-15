.class public final Lx1f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lime;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lk4f;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzbo;Ljava/lang/String;Lk4f;)V
    .locals 0

    iput-object p2, p0, Lx1f;->a:Ljava/lang/String;

    iput-object p3, p0, Lx1f;->b:Lk4f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzaps;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx1f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    iget-object p0, p0, Lx1f;->b:Lk4f;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lk4f;->zza(Ljava/lang/Object;)V

    return-void
.end method
