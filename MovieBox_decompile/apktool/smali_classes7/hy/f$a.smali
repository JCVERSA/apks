.class Lhy/f$a;
.super Lhy/f;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhy/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x60

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lhy/f$a;->a:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0xa140
        0xa141
        0xa142
        0xa143
        0xa147
        0xa149
        0xa175
        0xa176
        0xa440
        0xa446
        0xa447
        0xa448
        0xa451
        0xa454
        0xa457
        0xa464
        0xa46a
        0xa46c
        0xa477
        0xa4a3
        0xa4a4
        0xa4a7
        0xa4c1
        0xa4ce
        0xa4d1
        0xa4df
        0xa4e8
        0xa4fd
        0xa540
        0xa548
        0xa558
        0xa569
        0xa5cd
        0xa5e7
        0xa657
        0xa661
        0xa662
        0xa668
        0xa670
        0xa6a8
        0xa6b3
        0xa6b9
        0xa6d3
        0xa6db
        0xa6e6
        0xa6f2
        0xa740    # 5.9998E-41f
        0xa751
        0xa759
        0xa7da
        0xa8a3
        0xa8a5
        0xa8ad
        0xa8d1
        0xa8d3
        0xa8e4
        0xa8fc
        0xa9c0
        0xa9d2
        0xa9f3
        0xaa6b
        0xaaba
        0xaabe
        0xaacc
        0xaafc
        0xac47
        0xac4f
        0xacb0
        0xacd2
        0xad59
        0xaec9
        0xafe0
        0xb0ea
        0xb16f
        0xb2b3
        0xb2c4
        0xb36f
        0xb44c
        0xb44e
        0xb54c
        0xb5a5
        0xb5bd
        0xb5d0
        0xb5d8
        0xb671
        0xb7ed
        0xb867
        0xb944
        0xbad8
        0xbb44
        0xbba1
        0xbdd1
        0xc2c4
        0xc3b9
        0xc440
        0xc45f
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhy/f;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "zh"

    .line 2
    .line 3
    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Big5"

    .line 2
    .line 3
    return-object v0
.end method

.method c(Lhy/a;)Lhy/b;
    .locals 2

    .line 1
    sget-object v0, Lhy/f$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lhy/f;->d(Lhy/a;[I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v1, Lhy/b;

    .line 12
    .line 13
    invoke-direct {v1, p1, p0, v0}, Lhy/b;-><init>(Lhy/a;Lhy/h;I)V

    .line 14
    .line 15
    .line 16
    move-object p1, v1

    .line 17
    :goto_0
    return-object p1
.end method

.method e(Lhy/f$e;Lhy/a;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lhy/f$e;->c:Z

    .line 3
    .line 4
    invoke-virtual {p1, p2}, Lhy/f$e;->a(Lhy/a;)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    iput v1, p1, Lhy/f$e;->a:I

    .line 9
    .line 10
    if-gez v1, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    const/16 v2, 0x7f

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-le v1, v2, :cond_4

    .line 17
    .line 18
    const/16 v4, 0xff

    .line 19
    .line 20
    if-ne v1, v4, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1, p2}, Lhy/f$e;->a(Lhy/a;)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-gez p2, :cond_2

    .line 28
    .line 29
    return v0

    .line 30
    :cond_2
    iget v0, p1, Lhy/f$e;->a:I

    .line 31
    .line 32
    shl-int/lit8 v0, v0, 0x8

    .line 33
    .line 34
    or-int/2addr v0, p2

    .line 35
    iput v0, p1, Lhy/f$e;->a:I

    .line 36
    .line 37
    const/16 v0, 0x40

    .line 38
    .line 39
    if-lt p2, v0, :cond_3

    .line 40
    .line 41
    if-eq p2, v2, :cond_3

    .line 42
    .line 43
    if-ne p2, v4, :cond_4

    .line 44
    .line 45
    :cond_3
    iput-boolean v3, p1, Lhy/f$e;->c:Z

    .line 46
    .line 47
    :cond_4
    :goto_0
    return v3
.end method
