.class public final Lzqe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leyh;


# instance fields
.field public final synthetic a:Lowh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/c0;Lowh;)V
    .locals 0

    iput-object p2, p0, Lzqe;->a:Lowh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lzqe;->a:Lowh;

    invoke-virtual {p0, p1}, Lowh;->a(Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
