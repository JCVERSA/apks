.class public final Lgjf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/net/Uri;

.field public final synthetic d:Lijf;


# direct methods
.method public constructor <init>(Lijf;Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    iput-object p2, p0, Lgjf;->a:Ljava/util/List;

    iput-object p3, p0, Lgjf;->b:Ljava/lang/String;

    iput-object p4, p0, Lgjf;->c:Landroid/net/Uri;

    iput-object p1, p0, Lgjf;->d:Lijf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lgjf;->c:Landroid/net/Uri;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Failed to parse gmsg params for: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lgjf;->a:Ljava/util/List;

    iget-object v1, p0, Lgjf;->b:Ljava/lang/String;

    iget-object p0, p0, Lgjf;->d:Lijf;

    invoke-static {p0, p1, v0, v1}, Lijf;->H(Lijf;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
