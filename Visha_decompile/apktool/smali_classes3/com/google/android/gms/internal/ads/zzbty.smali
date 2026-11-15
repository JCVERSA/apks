.class final Lcom/google/android/gms/internal/ads/zzbty;
.super Ljava/lang/Exception;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    const/4 p0, 0x0

    throw p0
.end method

.method public synthetic constructor <init>(Lxaf;)V
    .locals 0

    .line 2
    const-string p1, "Flags were accessed before initialized."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
