.class public final Ldig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lizf;

.field public final b:Lu0g;

.field public final c:Lh1g;

.field public final d:Lw1g;

.field public final e:Lr4g;

.field public final f:Lhmh;

.field public final g:Lkmh;

.field public final h:Lwpf;


# direct methods
.method public constructor <init>(Lizf;Lu0g;Lh1g;Lw1g;Lr4g;Lhmh;Lkmh;Lwpf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldig;->a:Lizf;

    iput-object p2, p0, Ldig;->b:Lu0g;

    iput-object p3, p0, Ldig;->c:Lh1g;

    iput-object p4, p0, Ldig;->d:Lw1g;

    iput-object p5, p0, Ldig;->e:Lr4g;

    iput-object p6, p0, Ldig;->f:Lhmh;

    iput-object p7, p0, Ldig;->g:Lkmh;

    iput-object p8, p0, Ldig;->h:Lwpf;

    return-void
.end method


# virtual methods
.method public final a(Lhig;)V
    .locals 7

    iget-object v0, p0, Ldig;->b:Lu0g;

    invoke-static {p1}, Lhig;->b(Lhig;)Luhg;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcig;

    invoke-direct {v6, v0}, Lcig;-><init>(Lu0g;)V

    iget-object v2, p0, Ldig;->a:Lizf;

    iget-object v3, p0, Ldig;->c:Lh1g;

    iget-object v4, p0, Ldig;->d:Lw1g;

    iget-object v5, p0, Ldig;->e:Lr4g;

    invoke-virtual/range {v1 .. v6}, Luhg;->a(Lcom/google/android/gms/ads/internal/client/zza;Lr1f;Lcom/google/android/gms/ads/internal/overlay/zzr;Lz1f;Lcom/google/android/gms/ads/internal/overlay/zzac;)V

    iget-object v0, p0, Ldig;->f:Lhmh;

    iget-object v1, p0, Ldig;->g:Lkmh;

    iget-object p0, p0, Ldig;->h:Lwpf;

    invoke-virtual {p1, v0, v1, p0}, Lhig;->h(Lhmh;Lkmh;Lwpf;)V

    return-void
.end method
