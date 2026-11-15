.class public final Lc63;
.super Ldj;
.source "SourceFile"


# instance fields
.field public final c:La63$g;


# direct methods
.method public constructor <init>(La63$g;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ldj;-><init>(Z)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lc63;->c:La63$g;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'publicPoint\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 2
    invoke-static {p1}, Lc63;->d([B)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc63;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Ldj;-><init>(Z)V

    invoke-static {p1, p2}, Lc63;->c([BI)La63$g;

    move-result-object p1

    iput-object p1, p0, Lc63;->c:La63$g;

    return-void
.end method

.method public static c([BI)La63$g;
    .locals 0

    invoke-static {p0, p1}, La63;->y([BI)La63$g;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static d([B)[B
    .locals 2

    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'buf\' must have length 32"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b([BI)V
    .locals 0

    iget-object p0, p0, Lc63;->c:La63$g;

    invoke-static {p0, p1, p2}, La63;->g(La63$g;[BI)V

    return-void
.end method

.method public getEncoded()[B
    .locals 2

    const/16 v0, 0x20

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lc63;->b([BI)V

    return-object v0
.end method
