.class public Lly8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ler1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lly8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lkx5;

.field public final b:[B

.field public final c:[B

.field public final d:I


# direct methods
.method public constructor <init>(Lkx5;[B[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lly8$a;->a:Lkx5;

    iput-object p2, p0, Lly8$a;->b:[B

    iput-object p3, p0, Lly8$a;->c:[B

    iput p4, p0, Lly8$a;->d:I

    return-void
.end method


# virtual methods
.method public a(Lab3;)Lky8;
    .locals 7

    new-instance v6, Lfl4;

    iget-object v1, p0, Lly8$a;->a:Lkx5;

    iget v2, p0, Lly8$a;->d:I

    iget-object v4, p0, Lly8$a;->c:[B

    iget-object v5, p0, Lly8$a;->b:[B

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lfl4;-><init>(Lkx5;ILab3;[B[B)V

    return-object v6
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lly8$a;->a:Lkx5;

    instance-of v0, v0, Lel4;

    const-string v1, "HMAC-DRBG-"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lly8$a;->a:Lkx5;

    check-cast p0, Lel4;

    invoke-virtual {p0}, Lel4;->g()Lsb2;

    move-result-object p0

    invoke-static {p0}, Lly8;->a(Lsb2;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lly8$a;->a:Lkx5;

    invoke-interface {p0}, Lkx5;->c()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
