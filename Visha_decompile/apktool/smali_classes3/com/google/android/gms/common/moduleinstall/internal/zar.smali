.class final Lcom/google/android/gms/common/moduleinstall/internal/zar;
.super Lcom/google/android/gms/common/moduleinstall/internal/zaa;
.source "SourceFile"


# instance fields
.field final synthetic zaa:Lzda;


# direct methods
.method public constructor <init>(Lv2e;Lzda;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/common/moduleinstall/internal/zar;->zaa:Lzda;

    invoke-direct {p0}, Lcom/google/android/gms/common/moduleinstall/internal/zaa;-><init>()V

    return-void
.end method


# virtual methods
.method public final zae(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/gms/common/moduleinstall/internal/zar;->zaa:Lzda;

    invoke-static {p1, p2, p0}, Ljea;->d(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lzda;)Z

    return-void
.end method
