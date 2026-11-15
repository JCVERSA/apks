.class public Lcom/google/android/gms/common/api/internal/StatusCallback;
.super Lcom/google/android/gms/common/api/internal/IStatusCallback$Stub;
.source "SourceFile"


# instance fields
.field private final resultHolder:Loa0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Loa0;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Loa0;)V
    .locals 0
    .param p1    # Loa0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loa0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/IStatusCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/StatusCallback;->resultHolder:Loa0;

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/StatusCallback;->resultHolder:Loa0;

    invoke-interface {p0, p1}, Loa0;->a(Ljava/lang/Object;)V

    return-void
.end method
