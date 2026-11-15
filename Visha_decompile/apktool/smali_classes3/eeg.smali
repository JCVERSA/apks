.class public final Leeg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lsmg;


# direct methods
.method public constructor <init>(Lsmg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leeg;->a:Lsmg;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lhmh;)V
    .locals 2

    sget-object v0, Lcye;->Vc:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzac;->zza(Landroid/view/View;)Z

    move-result p1

    if-eq v0, p1, :cond_1

    const-string p1, "0"

    goto :goto_0

    :cond_1
    const-string p1, "1"

    :goto_0
    iget-object p0, p0, Leeg;->a:Lsmg;

    invoke-virtual {p0}, Lsmg;->a()Lrmg;

    move-result-object p0

    const-string v0, "action"

    const-string v1, "hcp"

    invoke-virtual {p0, v0, v1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    invoke-virtual {p0, v1, p1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    invoke-virtual {p0, p2}, Lrmg;->c(Lhmh;)Lrmg;

    invoke-virtual {p0}, Lrmg;->j()V

    :cond_2
    :goto_1
    return-void
.end method
