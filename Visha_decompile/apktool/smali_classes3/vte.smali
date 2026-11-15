.class public final synthetic Lvte;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/pm/PackageManager$OnChecksumsReadyListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/n8;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/n8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvte;->a:Lcom/google/android/gms/internal/ads/n8;

    return-void
.end method


# virtual methods
.method public final onChecksumsReady(Ljava/util/List;)V
    .locals 6

    iget-object p0, p0, Lvte;->a:Lcom/google/android/gms/internal/ads/n8;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/n8;->zzc(Ljava/lang/Object;)Z

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lype;->a(Ljava/lang/Object;)Landroid/content/pm/ApkChecksum;

    move-result-object v3

    invoke-static {v3}, Lzpe;->a(Landroid/content/pm/ApkChecksum;)I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    invoke-static {v3}, Laqe;->a(Landroid/content/pm/ApkChecksum;)[B

    move-result-object p1

    invoke-static {p1}, Ljse;->b([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/n8;->zzc(Ljava/lang/Object;)Z

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/n8;->zzc(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/n8;->zzc(Ljava/lang/Object;)Z

    return-void
.end method
