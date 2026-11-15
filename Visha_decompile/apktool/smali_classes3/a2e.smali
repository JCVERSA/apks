.class public final synthetic La2e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Las8;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/internal/TelemetryData;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/internal/TelemetryData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2e;->a:Lcom/google/android/gms/common/internal/TelemetryData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Li2e;

    check-cast p2, Lzda;

    sget-object v0, Lf2e;->k:Lcom/google/android/gms/common/api/a$g;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/service/zai;

    iget-object p0, p0, La2e;->a:Lcom/google/android/gms/common/internal/TelemetryData;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/internal/service/zai;->zae(Lcom/google/android/gms/common/internal/TelemetryData;)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lzda;->c(Ljava/lang/Object;)V

    return-void
.end method
