.class public final Lfri;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Leri;


# direct methods
.method public constructor <init>(Leri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfri;->a:Leri;

    return-void
.end method

.method public static b([BLt9i;)Lfri;
    .locals 0

    new-instance p1, Lfri;

    invoke-static {p0}, Leri;->b([B)Leri;

    move-result-object p0

    invoke-direct {p1, p0}, Lfri;-><init>(Leri;)V

    return-object p1
.end method

.method public static c(I)Lfri;
    .locals 1

    new-instance v0, Lfri;

    invoke-static {p0}, Lxji;->b(I)[B

    move-result-object p0

    invoke-static {p0}, Leri;->b([B)Leri;

    move-result-object p0

    invoke-direct {v0, p0}, Lfri;-><init>(Leri;)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lfri;->a:Leri;

    invoke-virtual {p0}, Leri;->a()I

    move-result p0

    return p0
.end method

.method public final d(Lt9i;)[B
    .locals 0

    iget-object p0, p0, Lfri;->a:Leri;

    invoke-virtual {p0}, Leri;->d()[B

    move-result-object p0

    return-object p0
.end method
