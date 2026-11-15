.class public final Lrnh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Lsnh;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lsnh;I)V
    .locals 0

    iput p2, p0, Lrnh;->b:I

    iput-object p1, p0, Lrnh;->a:Lsnh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    const-string p0, "BufferingUrlPinger.attributionReportingManager"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lrnh;->a:Lsnh;

    check-cast p1, Ljava/lang/String;

    iget p0, p0, Lrnh;->b:I

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lsnh;->b(Ljava/lang/String;ILa2g;)V

    return-void
.end method
