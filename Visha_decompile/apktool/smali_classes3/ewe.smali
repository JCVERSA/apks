.class public final Lewe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lewe;

.field public static final f:Ld5e;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:I

.field public final d:[Ld5e;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v8, Lewe;

    const/4 v9, 0x0

    new-array v2, v9, [Ld5e;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lewe;-><init>(Ljava/lang/Object;[Ld5e;JJI)V

    sput-object v8, Lewe;->e:Lewe;

    new-instance v0, Ld5e;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ld5e;-><init>(J)V

    invoke-virtual {v0, v9}, Ld5e;->b(I)Ld5e;

    move-result-object v0

    sput-object v0, Lewe;->f:Ld5e;

    sget v0, Lkfh;->a:I

    const/4 v0, 0x1

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ld5e;JJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lewe;->b:J

    const/4 p1, 0x0

    iput p1, p0, Lewe;->a:I

    iput-object p2, p0, Lewe;->d:[Ld5e;

    iput p1, p0, Lewe;->c:I

    return-void
.end method


# virtual methods
.method public final a(I)Ld5e;
    .locals 0

    if-gez p1, :cond_0

    sget-object p0, Lewe;->f:Ld5e;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lewe;->d:[Ld5e;

    aget-object p0, p0, p1

    :goto_0
    return-object p0
.end method

.method public final b(I)Z
    .locals 0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lewe;->a(I)Ld5e;

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lewe;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lewe;

    iget-object p0, p0, Lewe;->d:[Ld5e;

    iget-object p1, p1, Lewe;->d:[Ld5e;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    long-to-int v0, v0

    iget-object p0, p0, Lewe;->d:[Ld5e;

    mul-int/lit16 v0, v0, 0x3c1

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AdPlaybackState(adsId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adResumePositionUs=0, adGroups=["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "])"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
