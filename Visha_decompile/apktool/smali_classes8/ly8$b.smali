.class public Lly8$b;
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
    name = "b"
.end annotation


# instance fields
.field public final a:Lsb2;

.field public final b:[B

.field public final c:[B

.field public final d:I


# direct methods
.method public constructor <init>(Lsb2;[B[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lly8$b;->a:Lsb2;

    iput-object p2, p0, Lly8$b;->b:[B

    iput-object p3, p0, Lly8$b;->c:[B

    iput p4, p0, Lly8$b;->d:I

    return-void
.end method


# virtual methods
.method public a(Lab3;)Lky8;
    .locals 7

    new-instance v6, Lho4;

    iget-object v1, p0, Lly8$b;->a:Lsb2;

    iget v2, p0, Lly8$b;->d:I

    iget-object v4, p0, Lly8$b;->c:[B

    iget-object v5, p0, Lly8$b;->b:[B

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lho4;-><init>(Lsb2;ILab3;[B[B)V

    return-object v6
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HASH-DRBG-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lly8$b;->a:Lsb2;

    invoke-static {p0}, Lly8;->a(Lsb2;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
