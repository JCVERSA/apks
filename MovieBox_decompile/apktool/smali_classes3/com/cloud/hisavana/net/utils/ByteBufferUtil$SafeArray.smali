.class final Lcom/cloud/hisavana/net/utils/ByteBufferUtil$SafeArray;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/net/utils/ByteBufferUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SafeArray"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/net/utils/ByteBufferUtil$SafeArray;->c:[B

    .line 5
    .line 6
    iput p2, p0, Lcom/cloud/hisavana/net/utils/ByteBufferUtil$SafeArray;->a:I

    .line 7
    .line 8
    iput p3, p0, Lcom/cloud/hisavana/net/utils/ByteBufferUtil$SafeArray;->b:I

    .line 9
    .line 10
    return-void
.end method

.method static synthetic a(Lcom/cloud/hisavana/net/utils/ByteBufferUtil$SafeArray;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/net/utils/ByteBufferUtil$SafeArray;->c:[B

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/cloud/hisavana/net/utils/ByteBufferUtil$SafeArray;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/hisavana/net/utils/ByteBufferUtil$SafeArray;->a:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lcom/cloud/hisavana/net/utils/ByteBufferUtil$SafeArray;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/hisavana/net/utils/ByteBufferUtil$SafeArray;->b:I

    .line 2
    .line 3
    return p0
.end method
