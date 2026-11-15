.class public Lorg/bouncycastle/pqc/crypto/rainbow/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcw0;


# static fields
.field public static final k:Lorg/bouncycastle/pqc/crypto/rainbow/b;

.field public static final l:Lorg/bouncycastle/pqc/crypto/rainbow/b;

.field public static final m:Lorg/bouncycastle/pqc/crypto/rainbow/b;

.field public static final n:Lorg/bouncycastle/pqc/crypto/rainbow/b;

.field public static final o:Lorg/bouncycastle/pqc/crypto/rainbow/b;

.field public static final p:Lorg/bouncycastle/pqc/crypto/rainbow/b;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:Lsb2;

.field public final i:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

.field public final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/b;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->CLASSIC:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    const-string v2, "rainbow-III-classic"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/b;-><init>(Ljava/lang/String;ILorg/bouncycastle/pqc/crypto/rainbow/Version;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->k:Lorg/bouncycastle/pqc/crypto/rainbow/b;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/b;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->CIRCUMZENITHAL:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    const-string v4, "rainbow-III-circumzenithal"

    invoke-direct {v0, v4, v3, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/b;-><init>(Ljava/lang/String;ILorg/bouncycastle/pqc/crypto/rainbow/Version;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->l:Lorg/bouncycastle/pqc/crypto/rainbow/b;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/b;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->COMPRESSED:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    const-string v5, "rainbow-III-compressed"

    invoke-direct {v0, v5, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/b;-><init>(Ljava/lang/String;ILorg/bouncycastle/pqc/crypto/rainbow/Version;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->m:Lorg/bouncycastle/pqc/crypto/rainbow/b;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/b;

    const-string v3, "rainbow-V-classic"

    const/4 v5, 0x5

    invoke-direct {v0, v3, v5, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/b;-><init>(Ljava/lang/String;ILorg/bouncycastle/pqc/crypto/rainbow/Version;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->n:Lorg/bouncycastle/pqc/crypto/rainbow/b;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/b;

    const-string v1, "rainbow-V-circumzenithal"

    invoke-direct {v0, v1, v5, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/b;-><init>(Ljava/lang/String;ILorg/bouncycastle/pqc/crypto/rainbow/Version;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->o:Lorg/bouncycastle/pqc/crypto/rainbow/b;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/b;

    const-string v1, "rainbow-V-compressed"

    invoke-direct {v0, v1, v5, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/b;-><init>(Ljava/lang/String;ILorg/bouncycastle/pqc/crypto/rainbow/Version;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->p:Lorg/bouncycastle/pqc/crypto/rainbow/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/bouncycastle/pqc/crypto/rainbow/Version;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->j:Ljava/lang/String;

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    const/16 p1, 0x60

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->b:I

    const/16 p1, 0x24

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->d:I

    const/16 p1, 0x40

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->e:I

    new-instance p1, Lxx8;

    invoke-direct {p1}, Lxx8;-><init>()V

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->h:Lsb2;

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No valid version. Please choose one of the following: 3, 5"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 p1, 0x44

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->b:I

    const/16 p1, 0x20

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->d:I

    const/16 p1, 0x30

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->e:I

    new-instance p1, Lvx8;

    invoke-direct {p1}, Lvx8;-><init>()V

    goto :goto_0

    :goto_1
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->b:I

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->d:I

    add-int v0, p1, p2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->c:I

    add-int/2addr p1, p2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->f:I

    add-int/2addr p2, v0

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->g:I

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->i:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    return-void
.end method


# virtual methods
.method public a()Lsb2;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->h:Lsb2;

    return-object p0
.end method

.method public b()I
    .locals 0

    const/16 p0, 0x20

    return p0
.end method

.method public c()I
    .locals 0

    const/16 p0, 0x20

    return p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->g:I

    return p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->f:I

    return p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->j:Ljava/lang/String;

    return-object p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->d:I

    return p0
.end method

.method public h()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->e:I

    return p0
.end method

.method public i()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->b:I

    return p0
.end method

.method public j()Lorg/bouncycastle/pqc/crypto/rainbow/Version;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/b;->i:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    return-object p0
.end method
