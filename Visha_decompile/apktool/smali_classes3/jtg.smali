.class public final synthetic Ljtg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdyu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 3

    check-cast p1, Ljava/io/InputStream;

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    sget-object v1, Lzef;->a:Lg8i;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfcp;

    invoke-direct {v2, p1, p0}, Lcom/google/android/gms/internal/ads/zzfcp;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method
