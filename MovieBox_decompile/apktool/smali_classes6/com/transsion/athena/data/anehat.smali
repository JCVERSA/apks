.class public Lcom/transsion/athena/data/anehat;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/athena/data/anehat$athena;
    }
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/anehat$athena;",
            ">;"
        }
    .end annotation
.end field

.field public d:J

.field public e:J

.field public f:I

.field public g:I

.field public h:Z


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/util/List;JJIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/anehat$athena;",
            ">;JJIIZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/transsion/athena/data/anehat;->a:J

    .line 5
    .line 6
    iput-object p4, p0, Lcom/transsion/athena/data/anehat;->c:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/athena/data/anehat;->b:Ljava/lang/String;

    .line 9
    .line 10
    iput-wide p5, p0, Lcom/transsion/athena/data/anehat;->d:J

    .line 11
    .line 12
    iput-wide p7, p0, Lcom/transsion/athena/data/anehat;->e:J

    .line 13
    .line 14
    iput p9, p0, Lcom/transsion/athena/data/anehat;->f:I

    .line 15
    .line 16
    iput p10, p0, Lcom/transsion/athena/data/anehat;->g:I

    .line 17
    .line 18
    iput-boolean p11, p0, Lcom/transsion/athena/data/anehat;->h:Z

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/transsion/athena/data/anehat;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    iget-wide v3, p0, Lcom/transsion/athena/data/anehat;->a:J

    .line 11
    .line 12
    check-cast p1, Lcom/transsion/athena/data/anehat;

    .line 13
    .line 14
    iget-wide v5, p1, Lcom/transsion/athena/data/anehat;->a:J

    .line 15
    .line 16
    cmp-long p1, v3, v5

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v0, v2

    .line 22
    :goto_0
    return v0

    .line 23
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 9

    .line 1
    iget-wide v0, p0, Lcom/transsion/athena/data/anehat;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/transsion/athena/data/anehat;->c:Ljava/util/List;

    .line 8
    .line 9
    iget-wide v2, p0, Lcom/transsion/athena/data/anehat;->d:J

    .line 10
    .line 11
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-wide v3, p0, Lcom/transsion/athena/data/anehat;->e:J

    .line 16
    .line 17
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget v4, p0, Lcom/transsion/athena/data/anehat;->f:I

    .line 22
    .line 23
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget v5, p0, Lcom/transsion/athena/data/anehat;->g:I

    .line 28
    .line 29
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iget-boolean v6, p0, Lcom/transsion/athena/data/anehat;->h:Z

    .line 34
    .line 35
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    const/4 v7, 0x7

    .line 40
    new-array v7, v7, [Ljava/lang/Object;

    .line 41
    .line 42
    const/4 v8, 0x0

    .line 43
    aput-object v0, v7, v8

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    aput-object v1, v7, v0

    .line 47
    .line 48
    const/4 v0, 0x2

    .line 49
    aput-object v2, v7, v0

    .line 50
    .line 51
    const/4 v0, 0x3

    .line 52
    aput-object v3, v7, v0

    .line 53
    .line 54
    const/4 v0, 0x4

    .line 55
    aput-object v4, v7, v0

    .line 56
    .line 57
    const/4 v0, 0x5

    .line 58
    aput-object v5, v7, v0

    .line 59
    .line 60
    const/4 v0, 0x6

    .line 61
    aput-object v6, v7, v0

    .line 62
    .line 63
    invoke-static {v7}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/athena/data/anehat;->c:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/transsion/athena/data/anehat$athena;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/transsion/athena/data/anehat$athena;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "TidEventSet{tid="

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-wide v2, p0, Lcom/transsion/athena/data/anehat;->a:J

    .line 43
    .line 44
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, ", event=\'"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/transsion/athena/data/anehat;->b:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const/16 v2, 0x27

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v2, ", eventList="

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v0, ", eventCount="

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget v0, p0, Lcom/transsion/athena/data/anehat;->f:I

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const/16 v0, 0x7d

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    return-object v0
.end method
