.class public final synthetic Lwwg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxwg;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final synthetic b:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/webkit/WebView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwwg;->a:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p2, p0, Lwwg;->b:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lwwg;->a:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v1, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->buddyApkVersion:I

    iget v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Google"

    invoke-static {v1, v0}, Lwuh;->a(Ljava/lang/String;Ljava/lang/String;)Lwuh;

    move-result-object v0

    iget-object p0, p0, Lwwg;->b:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/internal/ads/b6;->b(Lwuh;Landroid/webkit/WebView;Z)Lcom/google/android/gms/internal/ads/b6;

    move-result-object p0

    return-object p0
.end method
