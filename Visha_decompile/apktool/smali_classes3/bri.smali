.class public final Lbri;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo9i;


# static fields
.field public static final e:[B


# instance fields
.field public final a:Lqmi;

.field public final b:I

.field public final c:[B

.field public final d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    sput-object v0, Lbri;->e:[B

    return-void
.end method

.method public constructor <init>(Lkki;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyqi;

    invoke-virtual {p1}, Lkki;->e()Lfri;

    move-result-object v1

    invoke-static {}, La9i;->a()Lt9i;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfri;->d(Lt9i;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lyqi;-><init>([B)V

    iput-object v0, p0, Lbri;->a:Lqmi;

    invoke-virtual {p1}, Lkki;->d()Lski;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lski;->b()I

    move-result v0

    iput v0, p0, Lbri;->b:I

    invoke-virtual {p1}, Lkki;->b()Leri;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Leri;->d()[B

    move-result-object v0

    iput-object v0, p0, Lbri;->c:[B

    invoke-virtual {p1}, Lkki;->d()Lski;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lski;->f()Lqki;

    move-result-object p1

    sget-object v0, Lqki;->d:Lqki;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lbri;->e:[B

    const/4 v0, 0x1

    .line 5
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lbri;->d:[B

    return-void

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lbri;->d:[B

    return-void
.end method

.method public constructor <init>(Lqmi;I)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbri;->a:Lqmi;

    iput p2, p0, Lbri;->b:I

    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lbri;->c:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lbri;->d:[B

    new-array p0, v0, [B

    invoke-interface {p1, p0, p2}, Lqmi;->a([BI)[B

    return-void
.end method

.method public constructor <init>(Lzki;)V
    .locals 5

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lari;

    invoke-virtual {p1}, Lzki;->d()Ljli;

    move-result-object v1

    invoke-virtual {v1}, Ljli;->f()Lgli;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Lzki;->e()Lfri;

    move-result-object v3

    invoke-static {}, La9i;->a()Lt9i;

    move-result-object v4

    .line 7
    invoke-virtual {v3, v4}, Lfri;->d(Lt9i;)[B

    move-result-object v3

    const-string v4, "HMAC"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lari;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    iput-object v0, p0, Lbri;->a:Lqmi;

    invoke-virtual {p1}, Lzki;->d()Ljli;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljli;->b()I

    move-result v0

    iput v0, p0, Lbri;->b:I

    invoke-virtual {p1}, Lzki;->b()Leri;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Leri;->d()[B

    move-result-object v0

    iput-object v0, p0, Lbri;->c:[B

    invoke-virtual {p1}, Lzki;->d()Ljli;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljli;->g()Lhli;

    move-result-object p1

    sget-object v0, Lhli;->d:Lhli;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lbri;->e:[B

    const/4 v0, 0x1

    .line 11
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lbri;->d:[B

    return-void

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lbri;->d:[B

    return-void
.end method

.method public static a(Lkki;)Lo9i;
    .locals 1

    new-instance v0, Lbri;

    invoke-direct {v0, p0}, Lbri;-><init>(Lkki;)V

    return-object v0
.end method

.method public static b(Lzki;)Lo9i;
    .locals 1

    new-instance v0, Lbri;

    invoke-direct {v0, p0}, Lbri;-><init>(Lzki;)V

    return-object v0
.end method


# virtual methods
.method public final c([B)[B
    .locals 3

    iget-object v0, p0, Lbri;->d:[B

    array-length v1, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lbri;->c:[B

    iget-object v2, p0, Lbri;->a:Lqmi;

    filled-new-array {p1, v0}, [[B

    move-result-object p1

    invoke-static {p1}, Lcqi;->b([[B)[B

    move-result-object p1

    iget p0, p0, Lbri;->b:I

    invoke-interface {v2, p1, p0}, Lqmi;->a([BI)[B

    move-result-object p0

    filled-new-array {v1, p0}, [[B

    move-result-object p0

    invoke-static {p0}, Lcqi;->b([[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lbri;->c:[B

    iget-object v1, p0, Lbri;->a:Lqmi;

    iget p0, p0, Lbri;->b:I

    invoke-interface {v1, p1, p0}, Lqmi;->a([BI)[B

    move-result-object p0

    filled-new-array {v0, p0}, [[B

    move-result-object p0

    invoke-static {p0}, Lcqi;->b([[B)[B

    move-result-object p0

    return-object p0
.end method
