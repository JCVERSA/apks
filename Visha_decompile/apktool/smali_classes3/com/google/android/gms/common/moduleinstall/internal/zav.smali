.class final Lcom/google/android/gms/common/moduleinstall/internal/zav;
.super Lcom/google/android/gms/common/api/internal/IStatusCallback$Stub;
.source "SourceFile"


# instance fields
.field final synthetic zaa:Lzda;


# direct methods
.method public constructor <init>(Lv2e;Lzda;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/common/moduleinstall/internal/zav;->zaa:Lzda;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/IStatusCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/google/android/gms/common/moduleinstall/internal/zav;->zaa:Lzda;

    invoke-static {p1, v0, p0}, Ljea;->d(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lzda;)Z

    return-void
.end method
