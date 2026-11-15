.class final Lcom/google/android/gms/common/api/internal/zaap;
.super Lcom/google/android/gms/common/api/internal/zaav;
.source "SourceFile"


# instance fields
.field final synthetic zaa:Ltzd;

.field private final zac:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ltzd;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zaav;-><init>(Ltzd;Lszd;)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaap;->zac:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final zaa()V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 p0, 0x0

    invoke-static {p0}, Ltzd;->c(Ltzd;)Lb0e;

    throw p0
.end method
