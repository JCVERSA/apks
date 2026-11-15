.class public final synthetic Lv9g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk4g;


# instance fields
.field public final synthetic b:Lejf;


# direct methods
.method public synthetic constructor <init>(Lejf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv9g;->b:Lejf;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 0

    iget-object p0, p0, Lv9g;->b:Lejf;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lejf;->zzL()Lcom/google/android/gms/ads/internal/overlay/zzm;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzb()V

    :cond_0
    return-void
.end method
