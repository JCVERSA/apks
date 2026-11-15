.class public final Lxcg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lzcg;


# direct methods
.method public constructor <init>(Lzcg;Ljava/lang/String;Z)V
    .locals 0

    const-string p2, "Google"

    iput-object p2, p0, Lxcg;->a:Ljava/lang/String;

    iput-object p1, p0, Lxcg;->b:Lzcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    sget-object p0, Lcye;->u5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "omid native display exp"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lqef;->w(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lxcg;->b:Lzcg;

    check-cast p1, Lejf;

    invoke-static {v0}, Lzcg;->Q(Lzcg;)Lddg;

    move-result-object v1

    invoke-virtual {v1, p1}, Lddg;->t(Lejf;)V

    invoke-static {v0}, Lzcg;->Q(Lzcg;)Lddg;

    move-result-object p1

    invoke-virtual {p1}, Lddg;->c0()Leff;

    move-result-object p1

    iget-object p0, p0, Lxcg;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lzcg;->S(Ljava/lang/String;Z)Lfxg;

    move-result-object p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Leff;->c(Ljava/lang/Object;)Z

    return-void

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Leff;->cancel(Z)Z

    :cond_2
    return-void
.end method
