.class public final Lv30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls30;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lv30;->a:I

    iput p2, p0, Lv30;->b:I

    iput p3, p0, Lv30;->c:I

    iput p4, p0, Lv30;->d:I

    iput p5, p0, Lv30;->e:I

    iput p6, p0, Lv30;->f:I

    return-void
.end method

.method public static c(Lqw7;)Lv30;
    .locals 7

    invoke-virtual {p0}, Lqw7;->p()I

    move-result v1

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lqw7;->P(I)V

    invoke-virtual {p0}, Lqw7;->p()I

    move-result v2

    invoke-virtual {p0}, Lqw7;->p()I

    move-result v3

    invoke-virtual {p0}, Lqw7;->p()I

    move-result v4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lqw7;->P(I)V

    invoke-virtual {p0}, Lqw7;->p()I

    move-result v5

    invoke-virtual {p0}, Lqw7;->p()I

    move-result v6

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lqw7;->P(I)V

    new-instance p0, Lv30;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lv30;-><init>(IIIIII)V

    return-object p0
.end method


# virtual methods
.method public a()J
    .locals 7

    iget v0, p0, Lv30;->e:I

    int-to-long v1, v0

    iget v0, p0, Lv30;->c:I

    int-to-long v3, v0

    const-wide/32 v5, 0xf4240

    mul-long/2addr v3, v5

    iget p0, p0, Lv30;->d:I

    int-to-long v5, p0

    invoke-static/range {v1 .. v6}, Lblb;->B0(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()I
    .locals 2

    iget v0, p0, Lv30;->a:I

    const v1, 0x73646976

    if-eq v0, v1, :cond_2

    const v1, 0x73647561

    if-eq v0, v1, :cond_1

    const v1, 0x73747874

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found unsupported streamType fourCC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lv30;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AviStreamHeaderChunk"

    invoke-static {v0, p0}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0
.end method

.method public getType()I
    .locals 0

    const p0, 0x68727473

    return p0
.end method
