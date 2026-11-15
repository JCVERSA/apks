.class final Lcom/mgtv/task/http/retry/RetryConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/task/http/retry/RetryConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mgtv/task/http/retry/RetryConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/mgtv/task/http/retry/RetryConfig;
    .locals 0

    .line 1
    new-instance p0, Lcom/mgtv/task/http/retry/RetryConfig;

    invoke-direct {p0, p1}, Lcom/mgtv/task/http/retry/RetryConfig;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public a(I)[Lcom/mgtv/task/http/retry/RetryConfig;
    .locals 0

    .line 2
    new-array p0, p1, [Lcom/mgtv/task/http/retry/RetryConfig;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mgtv/task/http/retry/RetryConfig$1;->a(Landroid/os/Parcel;)Lcom/mgtv/task/http/retry/RetryConfig;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mgtv/task/http/retry/RetryConfig$1;->a(I)[Lcom/mgtv/task/http/retry/RetryConfig;

    move-result-object p0

    return-object p0
.end method
