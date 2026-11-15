.class public final Lmig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lizf;

.field public final b:Lu0g;

.field public final c:Lh1g;

.field public final d:Lw1g;

.field public final e:Lr4g;

.field public final f:Lr8g;

.field public final g:Lsmg;

.field public final h:Lwth;

.field public final i:Ldwg;

.field public final j:Lwpf;


# direct methods
.method public constructor <init>(Lizf;Lu0g;Lh1g;Lw1g;Lr4g;Lr8g;Lsmg;Lwth;Ldwg;Lwpf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmig;->a:Lizf;

    iput-object p2, p0, Lmig;->b:Lu0g;

    iput-object p3, p0, Lmig;->c:Lh1g;

    iput-object p4, p0, Lmig;->d:Lw1g;

    iput-object p5, p0, Lmig;->e:Lr4g;

    iput-object p6, p0, Lmig;->f:Lr8g;

    iput-object p7, p0, Lmig;->g:Lsmg;

    iput-object p8, p0, Lmig;->h:Lwth;

    iput-object p9, p0, Lmig;->i:Ldwg;

    iput-object p10, p0, Lmig;->j:Lwpf;

    return-void
.end method


# virtual methods
.method public final a(Lnig;Lejf;)V
    .locals 7

    invoke-static {p1}, Lnig;->a(Lnig;)Lkig;

    move-result-object v0

    iget-object p1, p0, Lmig;->b:Lu0g;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Llig;

    invoke-direct {v5, p1}, Llig;-><init>(Lu0g;)V

    iget-object v1, p0, Lmig;->a:Lizf;

    iget-object v2, p0, Lmig;->c:Lh1g;

    iget-object v3, p0, Lmig;->d:Lw1g;

    iget-object v4, p0, Lmig;->e:Lr4g;

    iget-object v6, p0, Lmig;->f:Lr8g;

    invoke-virtual/range {v0 .. v6}, Lkig;->b(Lcom/google/android/gms/ads/internal/client/zza;Lr1f;Lcom/google/android/gms/ads/internal/overlay/zzr;Lz1f;Lcom/google/android/gms/ads/internal/overlay/zzac;Lt8g;)V

    sget-object p1, Lcye;->ma:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lejf;->zzN()Likf;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Lejf;->zzN()Likf;

    move-result-object p1

    iget-object p2, p0, Lmig;->j:Lwpf;

    iget-object v0, p0, Lmig;->i:Ldwg;

    iget-object v1, p0, Lmig;->h:Lwth;

    invoke-interface {p1, p2, v0, v1}, Likf;->i(Lwpf;Ldwg;Lwth;)V

    iget-object p0, p0, Lmig;->g:Lsmg;

    invoke-interface {p1, p2, v0, p0}, Likf;->f(Lwpf;Ldwg;Lsmg;)V

    :cond_0
    return-void
.end method
