.class final Lcom/google/android/gms/common/moduleinstall/internal/zaab;
.super Lcom/google/android/gms/common/moduleinstall/internal/zag;
.source "SourceFile"


# instance fields
.field private final zaa:Lcom/google/android/gms/common/api/internal/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/moduleinstall/internal/zag;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/moduleinstall/internal/zaab;->zaa:Lcom/google/android/gms/common/api/internal/d;

    return-void
.end method


# virtual methods
.method public final zab(Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/moduleinstall/internal/a;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/moduleinstall/internal/a;-><init>(Lcom/google/android/gms/common/moduleinstall/internal/zaab;Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;)V

    iget-object p0, p0, Lcom/google/android/gms/common/moduleinstall/internal/zaab;->zaa:Lcom/google/android/gms/common/api/internal/d;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/d;->c(Lcom/google/android/gms/common/api/internal/d$b;)V

    return-void
.end method
