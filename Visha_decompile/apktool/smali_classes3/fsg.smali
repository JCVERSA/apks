.class public final Lfsg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp2g;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lrdf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lrdf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfsg;->b:Landroid/content/Context;

    iput-object p2, p0, Lfsg;->c:Lrdf;

    return-void
.end method


# virtual methods
.method public final g(Lcom/google/android/gms/internal/ads/zzbuy;)V
    .locals 0

    return-void
.end method

.method public final w(Lvmh;)V
    .locals 2

    iget-object v0, p1, Lvmh;->b:Lumh;

    iget-object v0, v0, Lumh;->b:Lkmh;

    iget-object v0, v0, Lkmh;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lfsg;->c:Lrdf;

    iget-object p0, p0, Lfsg;->b:Landroid/content/Context;

    iget-object p1, p1, Lvmh;->a:Lsmh;

    iget-object p1, p1, Lsmh;->a:Lenh;

    iget-object p1, p1, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-virtual {v1, p0, p1}, Lrdf;->m(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzm;)V

    invoke-virtual {v1, p0, v0}, Lrdf;->i(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
