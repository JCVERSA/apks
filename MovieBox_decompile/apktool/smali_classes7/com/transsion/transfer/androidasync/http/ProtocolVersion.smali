.class public Lcom/transsion/transfer/androidasync/http/ProtocolVersion;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x7c37246eac22717cL


# instance fields
.field protected final major:I

.field protected final minor:I

.field protected final protocol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    if-ltz p2, :cond_1

    .line 7
    .line 8
    if-ltz p3, :cond_0

    .line 9
    .line 10
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->protocol:Ljava/lang/String;

    .line 11
    .line 12
    iput p2, p0, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->major:I

    .line 13
    .line 14
    iput p3, p0, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->minor:I

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string p2, "Protocol minor version number may not be negative"

    .line 20
    .line 21
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string p2, "Protocol major version number must not be negative."

    .line 28
    .line 29
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string p2, "Protocol name must not be null."

    .line 36
    .line 37
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public compareToVersion(Lcom/transsion/transfer/androidasync/http/ProtocolVersion;)I
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->protocol:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->protocol:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->getMajor()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->getMajor()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    sub-int/2addr v0, v1

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->getMinor()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->getMinor()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    sub-int/2addr v0, p1

    .line 33
    :cond_0
    return v0

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v2, "Versions for different protocols cannot be compared. "

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v2, " "

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    const-string v0, "Protocol version must not be null."

    .line 68
    .line 69
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->protocol:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->protocol:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget v1, p0, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->major:I

    .line 24
    .line 25
    iget v3, p1, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->major:I

    .line 26
    .line 27
    if-ne v1, v3, :cond_2

    .line 28
    .line 29
    iget v1, p0, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->minor:I

    .line 30
    .line 31
    iget p1, p1, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->minor:I

    .line 32
    .line 33
    if-ne v1, p1, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move v0, v2

    .line 37
    :goto_0
    return v0
.end method

.method public forVersion(II)Lcom/transsion/transfer/androidasync/http/ProtocolVersion;
    .locals 2

    .line 1
    iget v0, p0, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->major:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->minor:I

    .line 6
    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->protocol:Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {v0, v1, p1, p2}, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final getMajor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->major:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMinor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->minor:I

    .line 2
    .line 3
    return v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->protocol:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final greaterEquals(Lcom/transsion/transfer/androidasync/http/ProtocolVersion;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->isComparable(Lcom/transsion/transfer/androidasync/http/ProtocolVersion;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->compareToVersion(Lcom/transsion/transfer/androidasync/http/ProtocolVersion;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-ltz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->protocol:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->major:I

    .line 8
    .line 9
    const v2, 0x186a0

    .line 10
    .line 11
    .line 12
    mul-int/2addr v1, v2

    .line 13
    xor-int/2addr v0, v1

    .line 14
    iget v1, p0, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->minor:I

    .line 15
    .line 16
    xor-int/2addr v0, v1

    .line 17
    return v0
.end method

.method public isComparable(Lcom/transsion/transfer/androidasync/http/ProtocolVersion;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->protocol:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->protocol:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public final lessEquals(Lcom/transsion/transfer/androidasync/http/ProtocolVersion;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->isComparable(Lcom/transsion/transfer/androidasync/http/ProtocolVersion;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->compareToVersion(Lcom/transsion/transfer/androidasync/http/ProtocolVersion;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-gtz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->protocol:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x2f

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->major:I

    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x2e

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v1, p0, Lcom/transsion/transfer/androidasync/http/ProtocolVersion;->minor:I

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method
