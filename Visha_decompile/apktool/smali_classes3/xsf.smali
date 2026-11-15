.class public final Lxsf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0g;


# instance fields
.field public final b:Lejf;

.field public final c:Lsmg;

.field public final d:Lhmh;


# direct methods
.method public constructor <init>(Lejf;Lsmg;Lhmh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxsf;->b:Lejf;

    iput-object p2, p0, Lxsf;->c:Lsmg;

    iput-object p3, p0, Lxsf;->d:Lhmh;

    return-void
.end method


# virtual methods
.method public final zzs()V
    .locals 4

    sget-object v0, Lcye;->Vc:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lxsf;->b:Lejf;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lejf;->zzF()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzac;->zza(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    :goto_0
    iget-object v1, p0, Lxsf;->c:Lsmg;

    invoke-virtual {v1}, Lsmg;->a()Lrmg;

    move-result-object v1

    const-string v2, "action"

    const-string v3, "hcp"

    invoke-virtual {v1, v2, v3}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    invoke-virtual {v1, v3, v0}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    iget-object p0, p0, Lxsf;->d:Lhmh;

    invoke-virtual {v1, p0}, Lrmg;->c(Lhmh;)Lrmg;

    invoke-virtual {v1}, Lrmg;->j()V

    :cond_1
    return-void
.end method
