.class public final Lorg/libtorrent4j/ErrorCode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isError:Z

.field private message:Ljava/lang/String;

.field private value:I


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/error_code;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/ErrorCode;->assign(Lorg/libtorrent4j/swig/error_code;)V

    return-void
.end method


# virtual methods
.method public assign(Lorg/libtorrent4j/swig/error_code;)V
    .locals 1

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/error_code;->value()I

    move-result v0

    iput v0, p0, Lorg/libtorrent4j/ErrorCode;->value:I

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/error_code;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/libtorrent4j/ErrorCode;->message:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/error_code;->to_bool()Z

    move-result p1

    iput-boolean p1, p0, Lorg/libtorrent4j/ErrorCode;->isError:Z

    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/ErrorCode;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/ErrorCode;->value:I

    return p0
.end method

.method public isError()Z
    .locals 0

    iget-boolean p0, p0, Lorg/libtorrent4j/ErrorCode;->isError:Z

    return p0
.end method
