.class public final Lvmf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfkh;


# instance fields
.field public final a:Lzlf;

.field public b:Landroid/content/Context;

.field public c:Ljava/lang/String;

.field public d:Lcom/google/android/gms/ads/internal/client/zzr;


# direct methods
.method public synthetic constructor <init>(Lzlf;Ldnf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvmf;->a:Lzlf;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/ads/internal/client/zzr;)Lfkh;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lvmf;->d:Lcom/google/android/gms/ads/internal/client/zzr;

    return-object p0
.end method

.method public final bridge synthetic b(Landroid/content/Context;)Lfkh;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lvmf;->b:Landroid/content/Context;

    return-object p0
.end method

.method public final bridge synthetic zzb(Ljava/lang/String;)Lfkh;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lvmf;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd()Lkkh;
    .locals 4

    iget-object v0, p0, Lvmf;->b:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lvmf;->c:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lvmf;->d:Lcom/google/android/gms/ads/internal/client/zzr;

    const-class v1, Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-static {v0, v1}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lwmf;

    iget-object v1, p0, Lvmf;->a:Lzlf;

    iget-object v2, p0, Lvmf;->b:Landroid/content/Context;

    iget-object v3, p0, Lvmf;->c:Ljava/lang/String;

    iget-object p0, p0, Lvmf;->d:Lcom/google/android/gms/ads/internal/client/zzr;

    invoke-direct {v0, v1, v2, v3, p0}, Lwmf;-><init>(Lzlf;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzr;)V

    return-object v0
.end method
