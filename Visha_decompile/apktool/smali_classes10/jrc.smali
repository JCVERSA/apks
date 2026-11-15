.class public final Ljrc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:Ljava/util/Map;


# instance fields
.field public final a:Lirc;

.field public final b:I

.field public final c:I

.field public final d:Ll1;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:Lhgc;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljrc;

    sget-object v3, Lcx6;->c:Ll1;

    const/16 v4, 0xa

    invoke-direct {v2, v4, v3}, Ljrc;-><init>(ILl1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljrc;

    const/16 v5, 0x10

    invoke-direct {v2, v5, v3}, Ljrc;-><init>(ILl1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljrc;

    const/16 v6, 0x14

    invoke-direct {v2, v6, v3}, Ljrc;-><init>(ILl1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljrc;

    sget-object v3, Lcx6;->e:Ll1;

    invoke-direct {v2, v4, v3}, Ljrc;-><init>(ILl1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljrc;

    invoke-direct {v2, v5, v3}, Ljrc;-><init>(ILl1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljrc;

    invoke-direct {v2, v6, v3}, Ljrc;-><init>(ILl1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljrc;

    sget-object v3, Lcx6;->m:Ll1;

    invoke-direct {v2, v4, v3}, Ljrc;-><init>(ILl1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljrc;

    invoke-direct {v2, v5, v3}, Ljrc;-><init>(ILl1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljrc;

    invoke-direct {v2, v6, v3}, Ljrc;-><init>(ILl1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljrc;

    sget-object v3, Lcx6;->n:Ll1;

    invoke-direct {v2, v4, v3}, Ljrc;-><init>(ILl1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljrc;

    invoke-direct {v2, v5, v3}, Ljrc;-><init>(ILl1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljrc;

    invoke-direct {v2, v6, v3}, Ljrc;-><init>(ILl1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ljrc;->i:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(ILl1;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    if-eqz p2, :cond_0

    iput p1, p0, Ljrc;->b:I

    invoke-virtual {p0}, Ljrc;->a()I

    move-result v0

    iput v0, p0, Ljrc;->c:I

    invoke-static {p2}, Lub2;->b(Ll1;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljrc;->f:Ljava/lang/String;

    iput-object p2, p0, Ljrc;->d:Ll1;

    new-instance v1, Lhgc;

    invoke-direct {v1, p2}, Lhgc;-><init>(Ll1;)V

    iput-object v1, p0, Ljrc;->h:Lhgc;

    invoke-virtual {v1}, Lhgc;->c()I

    move-result p2

    iput p2, p0, Ljrc;->g:I

    invoke-virtual {v1}, Lhgc;->d()I

    move-result v2

    iput v2, p0, Ljrc;->e:I

    invoke-virtual {v1}, Lhgc;->a()I

    move-result v1

    invoke-static {v0, p2, v2, v1, p1}, Lb72;->c(Ljava/lang/String;IIII)Lb72;

    move-result-object p1

    iput-object p1, p0, Ljrc;->a:Lirc;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "digest == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "height must be >= 2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(ILsb2;)V
    .locals 0

    .line 2
    invoke-interface {p2}, Lsb2;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lub2;->c(Ljava/lang/String;)Ll1;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljrc;-><init>(ILl1;)V

    return-void
.end method

.method public static k(I)Ljrc;
    .locals 1

    sget-object v0, Ljrc;->i:Ljava/util/Map;

    invoke-static {p0}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljrc;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 3

    const/4 v0, 0x2

    move v1, v0

    :goto_0
    iget v2, p0, Ljrc;->b:I

    if-gt v1, v2, :cond_1

    sub-int/2addr v2, v1

    rem-int/2addr v2, v0

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "should never happen..."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Ljrc;->b:I

    return p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Ljrc;->c:I

    return p0
.end method

.method public d()I
    .locals 0

    iget-object p0, p0, Ljrc;->h:Lhgc;

    invoke-virtual {p0}, Lhgc;->a()I

    move-result p0

    return p0
.end method

.method public e()Lirc;
    .locals 0

    iget-object p0, p0, Ljrc;->a:Lirc;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljrc;->f:Ljava/lang/String;

    return-object p0
.end method

.method public g()Ll1;
    .locals 0

    iget-object p0, p0, Ljrc;->d:Ll1;

    return-object p0
.end method

.method public h()I
    .locals 0

    iget p0, p0, Ljrc;->g:I

    return p0
.end method

.method public i()Lorg/bouncycastle/pqc/crypto/xmss/d;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/d;

    iget-object p0, p0, Ljrc;->h:Lhgc;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/crypto/xmss/d;-><init>(Lhgc;)V

    return-object v0
.end method

.method public j()I
    .locals 0

    iget p0, p0, Ljrc;->e:I

    return p0
.end method
