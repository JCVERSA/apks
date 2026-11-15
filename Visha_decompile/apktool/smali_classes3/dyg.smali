.class public final synthetic Ldyg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lztf;


# instance fields
.field public final synthetic a:Lejf;


# direct methods
.method public synthetic constructor <init>(Lejf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldyg;->a:Lejf;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/internal/client/zzea;
    .locals 0

    iget-object p0, p0, Ldyg;->a:Lejf;

    invoke-interface {p0}, Lejf;->zzq()Lcom/google/android/gms/internal/ads/zzcfn;

    move-result-object p0

    return-object p0
.end method
