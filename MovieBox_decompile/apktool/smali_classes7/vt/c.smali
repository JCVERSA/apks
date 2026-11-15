.class public Lvt/c;
.super Lvt/d;
.source "source.java"


# instance fields
.field i:Z

.field protected j:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/zip/Inflater;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lvt/d;-><init>(Ljava/util/zip/Inflater;)V

    .line 8
    .line 9
    .line 10
    iput-boolean v1, p0, Lvt/c;->i:Z

    .line 11
    .line 12
    new-instance v0, Ljava/util/zip/CRC32;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lvt/c;->j:Ljava/util/zip/CRC32;

    .line 18
    .line 19
    return-void
.end method

.method static O([BILjava/nio/ByteOrder;)S
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    aget-byte p2, p0, p1

    .line 6
    .line 7
    shl-int/lit8 p2, p2, 0x8

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    aget-byte p0, p0, p1

    .line 12
    .line 13
    :goto_0
    and-int/lit16 p0, p0, 0xff

    .line 14
    .line 15
    or-int/2addr p0, p2

    .line 16
    int-to-short p0, p0

    .line 17
    return p0

    .line 18
    :cond_0
    add-int/lit8 p2, p1, 0x1

    .line 19
    .line 20
    aget-byte p2, p0, p2

    .line 21
    .line 22
    shl-int/lit8 p2, p2, 0x8

    .line 23
    .line 24
    aget-byte p0, p0, p1

    .line 25
    .line 26
    goto :goto_0
.end method


# virtual methods
.method public C(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lvt/c;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance p2, Lcom/transsion/transfer/androidasync/w;

    .line 6
    .line 7
    invoke-direct {p2, p1}, Lcom/transsion/transfer/androidasync/w;-><init>(Lcom/transsion/transfer/androidasync/p;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lvt/c$a;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1, p2}, Lvt/c$a;-><init>(Lvt/c;Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/w;)V

    .line 13
    .line 14
    .line 15
    const/16 p1, 0xa

    .line 16
    .line 17
    invoke-virtual {p2, p1, v0}, Lcom/transsion/transfer/androidasync/w;->b(ILcom/transsion/transfer/androidasync/w$j;)Lcom/transsion/transfer/androidasync/w;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-super {p0, p1, p2}, Lvt/d;->C(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method
