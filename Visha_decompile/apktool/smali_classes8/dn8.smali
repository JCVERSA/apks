.class public Ldn8;
.super Lcn8;
.source "SourceFile"


# instance fields
.field public g:Ljava/math/BigInteger;

.field public h:Ljava/math/BigInteger;

.field public i:Ljava/math/BigInteger;

.field public j:Ljava/math/BigInteger;

.field public k:Ljava/math/BigInteger;

.field public l:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 1
    invoke-direct/range {v0 .. v9}, Ldn8;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1, p3, p9}, Lcn8;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Z)V

    iput-object p2, p0, Ldn8;->g:Ljava/math/BigInteger;

    iput-object p4, p0, Ldn8;->h:Ljava/math/BigInteger;

    iput-object p5, p0, Ldn8;->i:Ljava/math/BigInteger;

    iput-object p6, p0, Ldn8;->j:Ljava/math/BigInteger;

    iput-object p7, p0, Ldn8;->k:Ljava/math/BigInteger;

    iput-object p8, p0, Ldn8;->l:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public g()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Ldn8;->j:Ljava/math/BigInteger;

    return-object p0
.end method

.method public h()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Ldn8;->k:Ljava/math/BigInteger;

    return-object p0
.end method

.method public i()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Ldn8;->h:Ljava/math/BigInteger;

    return-object p0
.end method

.method public j()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Ldn8;->g:Ljava/math/BigInteger;

    return-object p0
.end method

.method public k()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Ldn8;->i:Ljava/math/BigInteger;

    return-object p0
.end method

.method public l()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Ldn8;->l:Ljava/math/BigInteger;

    return-object p0
.end method
