.class Lhy/f$b$a;
.super Lhy/f$b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhy/f$b;
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
    const/16 v0, 0x64

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lhy/f$b$a;->a:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0xa1a1
        0xa1a2
        0xa1a3
        0xa1a6
        0xa1bc
        0xa1ca
        0xa1cb
        0xa1d6
        0xa1d7
        0xa4a2
        0xa4a4
        0xa4a6
        0xa4a8
        0xa4aa
        0xa4ab
        0xa4ac
        0xa4ad
        0xa4af
        0xa4b1
        0xa4b3
        0xa4b5
        0xa4b7
        0xa4b9
        0xa4bb
        0xa4bd
        0xa4bf
        0xa4c0
        0xa4c1
        0xa4c3
        0xa4c4
        0xa4c6
        0xa4c7
        0xa4c8
        0xa4c9
        0xa4ca
        0xa4cb
        0xa4ce
        0xa4cf
        0xa4d0
        0xa4de
        0xa4df
        0xa4e1
        0xa4e2
        0xa4e4
        0xa4e8
        0xa4e9
        0xa4ea
        0xa4eb
        0xa4ec
        0xa4ef
        0xa4f2
        0xa4f3
        0xa5a2
        0xa5a3
        0xa5a4
        0xa5a6
        0xa5a7
        0xa5aa
        0xa5ad
        0xa5af
        0xa5b0
        0xa5b3
        0xa5b5
        0xa5b7
        0xa5b8
        0xa5b9
        0xa5bf
        0xa5c3
        0xa5c6
        0xa5c7
        0xa5c8
        0xa5c9
        0xa5cb
        0xa5d0
        0xa5d5
        0xa5d6
        0xa5d7
        0xa5de
        0xa5e0
        0xa5e1
        0xa5e5
        0xa5e9
        0xa5ea
        0xa5eb
        0xa5ec
        0xa5ed
        0xa5f3
        0xb8a9
        0xb9d4
        0xbaee
        0xbbc8
        0xbef0
        0xbfb7
        0xc4ea
        0xc6fc
        0xc7bd
        0xcab8
        0xcaf3
        0xcbdc
        0xcdd1
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhy/f$b;-><init>()V

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
    const-string v0, "EUC-JP"

    .line 2
    .line 3
    return-object v0
.end method

.method c(Lhy/a;)Lhy/b;
    .locals 2

    .line 1
    sget-object v0, Lhy/f$b$a;->a:[I

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
