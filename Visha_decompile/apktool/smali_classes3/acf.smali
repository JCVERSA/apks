.class public final Lacf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Lybf;


# direct methods
.method public constructor <init>(Lbcf;Lybf;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object p1

    invoke-interface {p1}, Lfy0;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lacf;->a:J

    iput-object p2, p0, Lacf;->b:Lybf;

    return-void
.end method
