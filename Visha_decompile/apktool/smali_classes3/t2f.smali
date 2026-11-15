.class public final Lt2f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    check-cast p1, Lejf;

    :try_start_0
    invoke-interface {p1}, Lejf;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lxzh;->k(Landroid/content/Context;)Lxzh;

    move-result-object p0

    invoke-virtual {p0}, Lxzh;->l()V

    invoke-interface {p1}, Lejf;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lyzh;->j(Landroid/content/Context;)Lyzh;

    move-result-object p0

    invoke-virtual {p0}, Lyzh;->k()V

    invoke-interface {p1}, Lejf;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lzzh;->a(Landroid/content/Context;)Lzzh;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lzzh;->b(Ltzh;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "DefaultGmsgHandlers.ResetPaid"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
