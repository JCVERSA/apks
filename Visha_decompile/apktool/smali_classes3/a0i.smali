.class public final synthetic La0i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpe7;


# instance fields
.field public final synthetic a:Lb0i;


# direct methods
.method public synthetic constructor <init>(Lb0i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La0i;->a:Lb0i;

    return-void
.end method


# virtual methods
.method public final onComplete(Lxda;)V
    .locals 1

    iget-object p0, p0, La0i;->a:Lb0i;

    invoke-virtual {p1}, Lxda;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/x7;->cancel(Z)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Lxda;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lxda;->m()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb0i;->zzc(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-virtual {p1}, Lxda;->l()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lb0i;->zzd(Ljava/lang/Throwable;)Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
