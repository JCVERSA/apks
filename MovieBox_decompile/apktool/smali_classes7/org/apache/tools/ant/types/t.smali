.class public Lorg/apache/tools/ant/types/t;
.super Lorg/apache/tools/ant/types/e;
.source "source.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;
.implements Lorg/apache/tools/ant/types/u;


# static fields
.field protected static final f:I

.field private static final g:I


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/Long;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "Resource"

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lorg/apache/tools/ant/types/t;->h([B)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput v0, Lorg/apache/tools/ant/types/t;->f:I

    .line 12
    .line 13
    const-string v0, "null name"

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lorg/apache/tools/ant/types/t;->h([B)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Lorg/apache/tools/ant/types/t;->g:I

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/tools/ant/types/e;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/tools/ant/types/t;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/apache/tools/ant/types/t;->b:Ljava/lang/Boolean;

    .line 4
    iput-object v0, p0, Lorg/apache/tools/ant/types/t;->c:Ljava/lang/Long;

    .line 5
    iput-object v0, p0, Lorg/apache/tools/ant/types/t;->d:Ljava/lang/Boolean;

    .line 6
    iput-object v0, p0, Lorg/apache/tools/ant/types/t;->e:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 7
    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/types/t;-><init>(Ljava/lang/String;ZJZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZJZ)V
    .locals 8

    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    .line 8
    invoke-direct/range {v0 .. v7}, Lorg/apache/tools/ant/types/t;-><init>(Ljava/lang/String;ZJZJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZJZJ)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lorg/apache/tools/ant/types/e;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lorg/apache/tools/ant/types/t;->b:Ljava/lang/Boolean;

    .line 11
    iput-object v0, p0, Lorg/apache/tools/ant/types/t;->c:Ljava/lang/Long;

    .line 12
    iput-object v0, p0, Lorg/apache/tools/ant/types/t;->d:Ljava/lang/Boolean;

    .line 13
    iput-object v0, p0, Lorg/apache/tools/ant/types/t;->e:Ljava/lang/Long;

    .line 14
    iput-object p1, p0, Lorg/apache/tools/ant/types/t;->a:Ljava/lang/String;

    .line 15
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/t;->o(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/types/t;->m(Z)V

    .line 17
    invoke-virtual {p0, p3, p4}, Lorg/apache/tools/ant/types/t;->n(J)V

    .line 18
    invoke-virtual {p0, p5}, Lorg/apache/tools/ant/types/t;->l(Z)V

    .line 19
    invoke-virtual {p0, p6, p7}, Lorg/apache/tools/ant/types/t;->p(J)V

    return-void
.end method

.method protected static h([B)I
    .locals 1

    .line 1
    new-instance v0, Ljava/math/BigInteger;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/apache/tools/ant/types/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/t;->a()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Lorg/apache/tools/ant/types/e;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object v0

    .line 6
    :catch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 7
    .line 8
    const-string v1, "CloneNotSupportedException for a Resource caught. Derived classes must support cloning."

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Comparable;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    instance-of v0, p1, Lorg/apache/tools/ant/types/t;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/t;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string v0, "Can only be compared with Resources"

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method

.method public e()Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/apache/tools/ant/types/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/t;->e()Ljava/io/InputStream;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/t;->compareTo(Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    :goto_0
    return p1
.end method

.method public g()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/apache/tools/ant/types/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/t;->g()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    return-wide v0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/t;->k()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const-wide/16 v1, 0x0

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-object v0, p0, Lorg/apache/tools/ant/types/t;->c:Ljava/lang/Long;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    cmp-long v0, v3, v1

    .line 36
    .line 37
    if-gez v0, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move-wide v1, v3

    .line 41
    :cond_3
    :goto_0
    return-wide v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/apache/tools/ant/types/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/t;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/t;->a:Ljava/lang/String;

    .line 19
    .line 20
    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/t;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget v1, Lorg/apache/tools/ant/types/t;->f:I

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    sget v0, Lorg/apache/tools/ant/types/t;->g:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :goto_0
    mul-int/2addr v1, v0

    .line 32
    return v1
.end method

.method public i()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/apache/tools/ant/types/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/t;->i()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    return-wide v0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/t;->k()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lorg/apache/tools/ant/types/t;->e:Ljava/lang/Long;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-wide/16 v0, -0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const-wide/16 v0, 0x0

    .line 37
    .line 38
    :goto_0
    return-wide v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/apache/tools/ant/types/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/t;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/types/s;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lorg/apache/tools/ant/types/s;-><init>(Lorg/apache/tools/ant/types/t;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/apache/tools/ant/types/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/t;->j()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/t;->d:Ljava/lang/Boolean;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/apache/tools/ant/types/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/t;->k()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/t;->b:Ljava/lang/Boolean;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 32
    :goto_1
    return v0
.end method

.method public l(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->checkAttributesAllowed()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/t;->d:Ljava/lang/Boolean;

    .line 12
    .line 13
    return-void
.end method

.method public m(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->checkAttributesAllowed()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/types/t;->b:Ljava/lang/Boolean;

    .line 12
    .line 13
    return-void
.end method

.method public n(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->checkAttributesAllowed()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Long;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/tools/ant/types/t;->c:Ljava/lang/Long;

    .line 10
    .line 11
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->checkAttributesAllowed()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/tools/ant/types/t;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public p(J)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->checkAttributesAllowed()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Long;

    .line 5
    .line 6
    const-wide/16 v1, -0x1

    .line 7
    .line 8
    cmp-long v3, p1, v1

    .line 9
    .line 10
    if-lez v3, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-wide p1, v1

    .line 14
    :goto_0
    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lorg/apache/tools/ant/types/t;->e:Ljava/lang/Long;

    .line 18
    .line 19
    return-void
.end method

.method public setRefid(Lorg/apache/tools/ant/types/r;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/types/t;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/tools/ant/types/t;->b:Ljava/lang/Boolean;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/tools/ant/types/t;->c:Ljava/lang/Long;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lorg/apache/tools/ant/types/t;->d:Ljava/lang/Boolean;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lorg/apache/tools/ant/types/t;->e:Ljava/lang/Long;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/e;->setRefid(Lorg/apache/tools/ant/types/r;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    throw p1
.end method

.method public size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/apache/tools/ant/types/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/t;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->getCheckedRef()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/t;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const-string v0, "(anonymous)"

    .line 23
    .line 24
    :cond_1
    return-object v0
.end method
