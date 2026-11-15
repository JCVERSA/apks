.class Lhy/g$k;
.super Lhy/g$i;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhy/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation


# static fields
.field private static b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lhy/g$k;->b:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x20e0e5
        0x20e0ec
        0x20e4e9
        0x20e4ec
        0x20e4ee
        0x20e4f0
        0x20e9f0
        0x20ecf2
        0x20ecf9
        0x20ede5
        0x20ede9
        0x20efe5
        0x20efe9
        0x20f8e5
        0x20f8e9
        0x20fae0
        0x20fae5
        0x20fae9
        0xe020e4
        0xe020ec
        0xe020ed
        0xe020fa
        0xe0e420
        0xe0e5e4
        0xe0ec20
        0xe0ee20
        0xe120e4
        0xe120ed
        0xe120fa
        0xe420e4
        0xe420e9
        0xe420ec
        0xe420ed
        0xe420ef
        0xe420f8
        0xe420fa
        0xe4ec20
        0xe5e020
        0xe5e420
        0xe7e020
        0xe9e020
        0xe9e120
        0xe9e420
        0xec20e4
        0xec20ed
        0xec20fa
        0xecf220
        0xecf920
        0xede9e9
        0xede9f0
        0xede9f8
        0xee20e4
        0xee20ed
        0xee20fa
        0xeee120
        0xeee420
        0xf2e420
        0xf920e4
        0xf920ed
        0xf920fa
        0xf9e420
        0xfae020
        0xfae420
        0xfae5e9
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhy/g$i;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "he"

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Lhy/a;)Lhy/b;
    .locals 7

    .line 1
    iget-boolean v0, p1, Lhy/a;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "windows-1255"

    .line 6
    .line 7
    :goto_0
    move-object v5, v0

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const-string v0, "ISO-8859-8"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :goto_1
    sget-object v0, Lhy/g$k;->b:[I

    .line 13
    .line 14
    sget-object v1, Lhy/g$i;->a:[B

    .line 15
    .line 16
    invoke-virtual {p0, p1, v0, v1}, Lhy/g;->d(Lhy/a;[I[B)I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    goto :goto_2

    .line 24
    :cond_1
    new-instance v0, Lhy/b;

    .line 25
    .line 26
    const-string v6, "he"

    .line 27
    .line 28
    move-object v1, v0

    .line 29
    move-object v2, p1

    .line 30
    move-object v3, p0

    .line 31
    invoke-direct/range {v1 .. v6}, Lhy/b;-><init>(Lhy/a;Lhy/h;ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    move-object p1, v0

    .line 35
    :goto_2
    return-object p1
.end method
