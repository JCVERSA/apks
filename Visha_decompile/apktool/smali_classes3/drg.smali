.class public final synthetic Ldrg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzbuy;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbuy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldrg;->a:Lcom/google/android/gms/internal/ads/zzbuy;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 1

    check-cast p1, Ljava/io/InputStream;

    iget-object p0, p0, Ldrg;->a:Lcom/google/android/gms/internal/ads/zzbuy;

    new-instance v0, Lmsg;

    invoke-direct {v0, p1, p0}, Lmsg;-><init>(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzbuy;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method
