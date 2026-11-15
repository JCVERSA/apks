.class public Lfrc$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfrc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ldrc;

.field public b:J

.field public c:J

.field public d:[B

.field public e:[B

.field public f:[B

.field public g:[B

.field public h:Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

.field public i:[B

.field public j:Ljrc;


# direct methods
.method public constructor <init>(Ldrc;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfrc$b;->b:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lfrc$b;->c:J

    const/4 v0, 0x0

    iput-object v0, p0, Lfrc$b;->d:[B

    iput-object v0, p0, Lfrc$b;->e:[B

    iput-object v0, p0, Lfrc$b;->f:[B

    iput-object v0, p0, Lfrc$b;->g:[B

    iput-object v0, p0, Lfrc$b;->h:Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    iput-object v0, p0, Lfrc$b;->i:[B

    iput-object v0, p0, Lfrc$b;->j:Ljrc;

    iput-object p1, p0, Lfrc$b;->a:Ldrc;

    return-void
.end method

.method public static synthetic a(Lfrc$b;)Ldrc;
    .locals 0

    iget-object p0, p0, Lfrc$b;->a:Ldrc;

    return-object p0
.end method

.method public static synthetic b(Lfrc$b;)[B
    .locals 0

    iget-object p0, p0, Lfrc$b;->i:[B

    return-object p0
.end method

.method public static synthetic c(Lfrc$b;)Ljrc;
    .locals 0

    iget-object p0, p0, Lfrc$b;->j:Ljrc;

    return-object p0
.end method

.method public static synthetic d(Lfrc$b;)J
    .locals 2

    iget-wide v0, p0, Lfrc$b;->b:J

    return-wide v0
.end method

.method public static synthetic e(Lfrc$b;)[B
    .locals 0

    iget-object p0, p0, Lfrc$b;->d:[B

    return-object p0
.end method

.method public static synthetic f(Lfrc$b;)[B
    .locals 0

    iget-object p0, p0, Lfrc$b;->e:[B

    return-object p0
.end method

.method public static synthetic g(Lfrc$b;)[B
    .locals 0

    iget-object p0, p0, Lfrc$b;->f:[B

    return-object p0
.end method

.method public static synthetic h(Lfrc$b;)[B
    .locals 0

    iget-object p0, p0, Lfrc$b;->g:[B

    return-object p0
.end method

.method public static synthetic i(Lfrc$b;)Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;
    .locals 0

    iget-object p0, p0, Lfrc$b;->h:Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    return-object p0
.end method

.method public static synthetic j(Lfrc$b;)J
    .locals 2

    iget-wide v0, p0, Lfrc$b;->c:J

    return-wide v0
.end method


# virtual methods
.method public k()Lfrc;
    .locals 2

    new-instance v0, Lfrc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfrc;-><init>(Lfrc$b;Lfrc$a;)V

    return-object v0
.end method

.method public l(Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;)Lfrc$b;
    .locals 6

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;->getMaxIndex()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    iget-object v1, p0, Lfrc$b;->a:Ldrc;

    invoke-virtual {v1}, Ldrc;->a()I

    move-result v1

    const-wide/16 v2, 0x1

    shl-long v4, v2, v1

    sub-long/2addr v4, v2

    invoke-direct {v0, p1, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;J)V

    iput-object v0, p0, Lfrc$b;->h:Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lfrc$b;->h:Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    :goto_0
    return-object p0
.end method

.method public m(J)Lfrc$b;
    .locals 0

    iput-wide p1, p0, Lfrc$b;->b:J

    return-object p0
.end method

.method public n(J)Lfrc$b;
    .locals 0

    iput-wide p1, p0, Lfrc$b;->c:J

    return-object p0
.end method

.method public o([B)Lfrc$b;
    .locals 0

    invoke-static {p1}, Lnrc;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Lfrc$b;->f:[B

    return-object p0
.end method

.method public p([B)Lfrc$b;
    .locals 0

    invoke-static {p1}, Lnrc;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Lfrc$b;->g:[B

    return-object p0
.end method

.method public q([B)Lfrc$b;
    .locals 0

    invoke-static {p1}, Lnrc;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Lfrc$b;->e:[B

    return-object p0
.end method

.method public r([B)Lfrc$b;
    .locals 0

    invoke-static {p1}, Lnrc;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Lfrc$b;->d:[B

    return-object p0
.end method
