.class public final Ln5h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Lfy0;

.field public final b:Lenh;


# direct methods
.method public constructor <init>(Lfy0;Lenh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln5h;->a:Lfy0;

    iput-object p2, p0, Ln5h;->b:Lenh;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final zzb()Lim5;
    .locals 3

    new-instance v0, Lo5h;

    iget-object v1, p0, Ln5h;->a:Lfy0;

    iget-object p0, p0, Ln5h;->b:Lenh;

    invoke-interface {v1}, Lfy0;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lo5h;-><init>(Lenh;J)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method
