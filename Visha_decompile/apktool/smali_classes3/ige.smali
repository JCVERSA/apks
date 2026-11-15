.class public final Lige;
.super Lmge;
.source "SourceFile"


# static fields
.field public static final o:[B

.field public static final p:[B


# instance fields
.field public n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lige;->o:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lige;->p:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data

    :array_1
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmge;-><init>()V

    return-void
.end method

.method public static j(Lu4h;)Z
    .locals 1

    sget-object v0, Lige;->o:[B

    invoke-static {p0, v0}, Lige;->k(Lu4h;[B)Z

    move-result p0

    return p0
.end method

.method public static k(Lu4h;[B)Z
    .locals 4

    invoke-virtual {p0}, Lu4h;->u()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lu4h;->w()I

    move-result v0

    new-array v3, v2, [B

    invoke-virtual {p0, v3, v1, v2}, Lu4h;->h([BII)V

    invoke-virtual {p0, v0}, Lu4h;->l(I)V

    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lu4h;)J
    .locals 2

    invoke-virtual {p1}, Lu4h;->n()[B

    move-result-object p1

    invoke-static {p1}, Lx9e;->d([B)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmge;->f(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final b(Z)V
    .locals 0

    invoke-super {p0, p1}, Lmge;->b(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lige;->n:Z

    :cond_0
    return-void
.end method

.method public final c(Lu4h;JLjge;)Z
    .locals 1

    sget-object p2, Lige;->o:[B

    invoke-static {p1, p2}, Lige;->k(Lu4h;[B)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lu4h;->n()[B

    move-result-object p0

    invoke-virtual {p1}, Lu4h;->x()I

    move-result p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const/16 p1, 0x9

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    invoke-static {p0}, Lx9e;->e([B)Ljava/util/List;

    move-result-object p0

    iget-object p2, p4, Ljge;->a:Lerj;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lgpj;

    invoke-direct {p2}, Lgpj;-><init>()V

    const-string v0, "audio/ogg"

    invoke-virtual {p2, v0}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    const-string v0, "audio/opus"

    invoke-virtual {p2, v0}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    invoke-virtual {p2, p1}, Lgpj;->b(I)Lgpj;

    const p1, 0xbb80

    invoke-virtual {p2, p1}, Lgpj;->F(I)Lgpj;

    invoke-virtual {p2, p0}, Lgpj;->p(Ljava/util/List;)Lgpj;

    invoke-virtual {p2}, Lgpj;->K()Lerj;

    move-result-object p0

    iput-object p0, p4, Ljge;->a:Lerj;

    return p3

    :cond_1
    sget-object p2, Lige;->p:[B

    invoke-static {p1, p2}, Lige;->k(Lu4h;[B)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    iget-object p2, p4, Ljge;->a:Lerj;

    invoke-static {p2}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p2, p0, Lige;->n:Z

    if-nez p2, :cond_2

    iput-boolean p3, p0, Lige;->n:Z

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Lu4h;->m(I)V

    invoke-static {p1, v0, v0}, Lxae;->c(Lu4h;ZZ)Luae;

    move-result-object p0

    iget-object p0, p0, Luae;->a:[Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfww;->zzm([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    invoke-static {p0}, Lxae;->b(Ljava/util/List;)Lhre;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p1, p4, Ljge;->a:Lerj;

    invoke-virtual {p1}, Lerj;->b()Lgpj;

    move-result-object p1

    iget-object p2, p4, Ljge;->a:Lerj;

    iget-object p2, p2, Lerj;->l:Lhre;

    invoke-virtual {p0, p2}, Lhre;->d(Lhre;)Lhre;

    move-result-object p0

    invoke-virtual {p1, p0}, Lgpj;->w(Lhre;)Lgpj;

    invoke-virtual {p1}, Lgpj;->K()Lerj;

    move-result-object p0

    iput-object p0, p4, Ljge;->a:Lerj;

    :cond_2
    :goto_0
    return p3

    :cond_3
    iget-object p0, p4, Ljge;->a:Lerj;

    invoke-static {p0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method
