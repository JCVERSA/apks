.class public Lg8/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lg8/c;


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xfa0

    .line 1
    invoke-direct {p0, v0, v1}, Lg8/a;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lg8/a;->a:Z

    .line 4
    iput p2, p0, Lg8/a;->b:I

    return-void
.end method

.method static b(Ljava/lang/String;II)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne p2, v0, :cond_0

    .line 6
    .line 7
    return p2

    .line 8
    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0xa

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    return p2

    .line 17
    :cond_1
    add-int/lit8 v0, p2, -0x1

    .line 18
    .line 19
    :goto_0
    if-ge p1, v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ne v2, v1, :cond_2

    .line 26
    .line 27
    return v0

    .line 28
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    return p2
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/16 v3, 0xa

    .line 13
    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget v2, p0, Lg8/a;->b:I

    .line 20
    .line 21
    add-int/2addr v2, v1

    .line 22
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iget-boolean v4, p0, Lg8/a;->a:Z

    .line 27
    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    invoke-virtual {p3, v3, v1}, Ljava/lang/String;->indexOf(II)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v4, -0x1

    .line 35
    if-eq v3, v4, :cond_2

    .line 36
    .line 37
    move v2, v3

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-static {p3, v1, v2}, Lg8/a;->b(Ljava/lang/String;II)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    :cond_2
    :goto_1
    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p0, p1, p2, v1}, Lg8/a;->c(ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    move v1, v2

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    return-void
.end method

.method c(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    return-void
.end method
