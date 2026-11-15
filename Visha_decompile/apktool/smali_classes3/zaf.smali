.class public final Lzaf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llu8;


# instance fields
.field public final b:Lcom/google/android/gms/common/api/Status;

.field public c:Lcom/google/android/gms/auth/api/proxy/ProxyResponse;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzaf;->c:Lcom/google/android/gms/auth/api/proxy/ProxyResponse;

    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    iput-object p1, p0, Lzaf;->b:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 0

    iget-object p0, p0, Lzaf;->b:Lcom/google/android/gms/common/api/Status;

    return-object p0
.end method
