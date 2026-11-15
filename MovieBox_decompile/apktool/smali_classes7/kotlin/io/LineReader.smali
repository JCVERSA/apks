.class public final Lkotlin/io/LineReader;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0019\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0018\u0010\u0018\u001a\u00060\u0014j\u0002`\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlin/io/LineReader;",
        "",
        "<init>",
        "()V",
        "",
        "b",
        "[B",
        "bytes",
        "",
        "c",
        "[C",
        "chars",
        "Ljava/nio/ByteBuffer;",
        "d",
        "Ljava/nio/ByteBuffer;",
        "byteBuf",
        "Ljava/nio/CharBuffer;",
        "e",
        "Ljava/nio/CharBuffer;",
        "charBuf",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "f",
        "Ljava/lang/StringBuilder;",
        "sb",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final a:Lkotlin/io/LineReader;

.field private static final b:[B

.field private static final c:[C

.field private static final d:Ljava/nio/ByteBuffer;

.field private static final e:Ljava/nio/CharBuffer;

.field private static final f:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkotlin/io/LineReader;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/io/LineReader;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlin/io/LineReader;->a:Lkotlin/io/LineReader;

    .line 7
    .line 8
    const/16 v0, 0x20

    .line 9
    .line 10
    new-array v1, v0, [B

    .line 11
    .line 12
    sput-object v1, Lkotlin/io/LineReader;->b:[B

    .line 13
    .line 14
    new-array v0, v0, [C

    .line 15
    .line 16
    sput-object v0, Lkotlin/io/LineReader;->c:[C

    .line 17
    .line 18
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "wrap(...)"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lkotlin/io/LineReader;->d:Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lkotlin/io/LineReader;->e:Ljava/nio/CharBuffer;

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lkotlin/io/LineReader;->f:Ljava/lang/StringBuilder;

    .line 44
    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
