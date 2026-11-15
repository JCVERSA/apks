.class public final Lmsg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:Lcom/google/android/gms/internal/ads/zzbuy;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzbuy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmsg;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lmsg;->b:Lcom/google/android/gms/internal/ads/zzbuy;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzbuy;
    .locals 0

    iget-object p0, p0, Lmsg;->b:Lcom/google/android/gms/internal/ads/zzbuy;

    return-object p0
.end method

.method public final b()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lmsg;->a:Ljava/io/InputStream;

    return-object p0
.end method
