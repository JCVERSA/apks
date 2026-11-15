.class public final Lr8i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr8i;->a:Ljava/io/InputStream;

    return-void
.end method

.method public static b([B)Lr8i;
    .locals 2

    new-instance v0, Lr8i;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lr8i;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/n9;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lr8i;->a:Ljava/io/InputStream;

    invoke-static {}, Lesi;->a()Lesi;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/n9;->g0(Ljava/io/InputStream;Lesi;)Lcom/google/android/gms/internal/ads/n9;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lr8i;->a:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lr8i;->a:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0
.end method
