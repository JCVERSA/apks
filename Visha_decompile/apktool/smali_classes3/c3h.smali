.class public final Lc3h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzg;


# instance fields
.field public final synthetic a:Lt9g;


# direct methods
.method public constructor <init>(Ld3h;Lt9g;)V
    .locals 0

    iput-object p2, p0, Lc3h;->a:Lt9g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final zzb()V
    .locals 0

    iget-object p0, p0, Lc3h;->a:Lt9g;

    invoke-virtual {p0}, Lcuf;->a()Lizf;

    move-result-object p0

    invoke-virtual {p0}, Lizf;->onAdClicked()V

    return-void
.end method

.method public final zzc()V
    .locals 1

    iget-object p0, p0, Lc3h;->a:Lt9g;

    invoke-virtual {p0}, Lt9g;->b()Lb0g;

    move-result-object v0

    invoke-virtual {v0}, Lb0g;->zza()V

    invoke-virtual {p0}, Lcuf;->e()Lv8g;

    move-result-object p0

    invoke-virtual {p0}, Lv8g;->zza()V

    return-void
.end method
