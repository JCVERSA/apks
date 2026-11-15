.class Lhy/f$d;
.super Lhy/f;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhy/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# static fields
.field static a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x39

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lhy/f$d;->a:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x8140
        0x8141
        0x8142
        0x8145
        0x815b
        0x8169
        0x816a
        0x8175
        0x8176
        0x82a0
        0x82a2
        0x82a4
        0x82a9
        0x82aa
        0x82ab
        0x82ad
        0x82af
        0x82b1
        0x82b3
        0x82b5
        0x82b7
        0x82bd
        0x82be
        0x82c1
        0x82c4
        0x82c5
        0x82c6
        0x82c8
        0x82c9
        0x82cc
        0x82cd
        0x82dc
        0x82e0
        0x82e7
        0x82e8
        0x82e9
        0x82ea
        0x82f0
        0x82f1
        0x8341
        0x8343
        0x834e
        0x834f
        0x8358
        0x835e
        0x8362
        0x8367
        0x8375
        0x8376
        0x8389
        0x838a
        0x838b
        0x838d
        0x8393
        0x8e96
        0x93fa
        0x95aa
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
    const-string v0, "ja"

    .line 2
    .line 3
    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Shift_JIS"

    .line 2
    .line 3
    return-object v0
.end method

.method c(Lhy/a;)Lhy/b;
    .locals 2

    .line 1
    sget-object v0, Lhy/f$d;->a:[I

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
    if-le v1, v2, :cond_5

    .line 17
    .line 18
    const/16 v4, 0xa0

    .line 19
    .line 20
    if-le v1, v4, :cond_1

    .line 21
    .line 22
    const/16 v4, 0xdf

    .line 23
    .line 24
    if-gt v1, v4, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p1, p2}, Lhy/f$e;->a(Lhy/a;)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-gez p2, :cond_2

    .line 32
    .line 33
    return v0

    .line 34
    :cond_2
    shl-int/lit8 v0, v1, 0x8

    .line 35
    .line 36
    or-int/2addr v0, p2

    .line 37
    iput v0, p1, Lhy/f$e;->a:I

    .line 38
    .line 39
    const/16 v0, 0x40

    .line 40
    .line 41
    if-lt p2, v0, :cond_3

    .line 42
    .line 43
    if-le p2, v2, :cond_5

    .line 44
    .line 45
    :cond_3
    const/16 v0, 0x80

    .line 46
    .line 47
    if-lt p2, v0, :cond_4

    .line 48
    .line 49
    const/16 v0, 0xff

    .line 50
    .line 51
    if-le p2, v0, :cond_5

    .line 52
    .line 53
    :cond_4
    iput-boolean v3, p1, Lhy/f$e;->c:Z

    .line 54
    .line 55
    :cond_5
    :goto_0
    return v3
.end method
