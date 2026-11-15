.class public final Lp2h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzg;


# instance fields
.field public final synthetic a:Leff;

.field public final synthetic b:Lvmh;

.field public final synthetic c:Lhmh;

.field public final synthetic d:Lz2h;

.field public final synthetic e:Lq2h;


# direct methods
.method public constructor <init>(Lq2h;Leff;Lvmh;Lhmh;Lz2h;)V
    .locals 0

    iput-object p2, p0, Lp2h;->a:Leff;

    iput-object p3, p0, Lp2h;->b:Lvmh;

    iput-object p4, p0, Lp2h;->c:Lhmh;

    iput-object p5, p0, Lp2h;->d:Lz2h;

    iput-object p1, p0, Lp2h;->e:Lq2h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lp2h;->d:Lz2h;

    iget-object v1, p0, Lp2h;->e:Lq2h;

    invoke-static {v1}, Lq2h;->d(Lq2h;)Ld3h;

    move-result-object v1

    iget-object v2, p0, Lp2h;->b:Lvmh;

    iget-object v3, p0, Lp2h;->c:Lhmh;

    invoke-virtual {v1, v2, v3, p1, v0}, Ld3h;->a(Lvmh;Lhmh;Landroid/view/View;Lz2h;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lp2h;->a:Leff;

    invoke-virtual {p0, p1}, Leff;->c(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzb()V
    .locals 0

    return-void
.end method

.method public final zzc()V
    .locals 0

    return-void
.end method
