.class public final Llxa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llxa$a;
    }
.end annotation


# static fields
.field public static final d:Llxa$a;


# instance fields
.field public final a:I

.field public final b:[B

.field public final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Llxa$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llxa$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Llxa;->d:Llxa$a;

    return-void
.end method

.method public constructor <init>(I[B[B)V
    .locals 1

    const-string v0, "main"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Llxa;->a:I

    iput-object p2, p0, Llxa;->b:[B

    iput-object p3, p0, Llxa;->c:[B

    return-void
.end method

.method public synthetic constructor <init>(I[B[BILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Llxa;-><init>(I[B[B)V

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 0

    iget-object p0, p0, Llxa;->b:[B

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Llxa;->a:I

    return p0
.end method

.method public final c()[B
    .locals 3

    iget-object v0, p0, Llxa;->c:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    iget-object v1, p0, Llxa;->b:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0xc

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Llxa;->b:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Llxa;->b:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v2, p0, Llxa;->a:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object p0, p0, Llxa;->c:[B

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    const-string v0, "buffer.array()"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
