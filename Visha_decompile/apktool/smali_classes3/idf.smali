.class public final Lidf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lfy0;

.field public final b:Lgdf;


# direct methods
.method public constructor <init>(Lfy0;Lgdf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lidf;->a:Lfy0;

    iput-object p2, p0, Lidf;->b:Lgdf;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lidf;
    .locals 0

    invoke-static {p0}, Lsdf;->b(Landroid/content/Context;)Lsdf;

    move-result-object p0

    invoke-virtual {p0}, Lsdf;->a()Lidf;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(IJ)V
    .locals 0

    iget-object p0, p0, Lidf;->b:Lgdf;

    invoke-virtual {p0, p1, p2, p3}, Lgdf;->a(IJ)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/ads/internal/client/zzfr;)V
    .locals 2

    iget-object p1, p0, Lidf;->a:Lfy0;

    invoke-interface {p1}, Lfy0;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lidf;->b:Lgdf;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lgdf;->a(IJ)V

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lidf;->a:Lfy0;

    invoke-interface {v0}, Lfy0;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lidf;->b:Lgdf;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Lgdf;->a(IJ)V

    return-void
.end method
