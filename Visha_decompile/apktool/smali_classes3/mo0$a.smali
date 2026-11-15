.class public Lmo0$a;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "ByteStreams.nullOutputStream()"

    return-object p0
.end method

.method public write(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public write([B)V
    .locals 0

    .line 2
    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public write([BII)V
    .locals 0

    .line 3
    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr p3, p2

    .line 4
    array-length p0, p1

    invoke-static {p2, p3, p0}, Lxd8;->t(III)V

    return-void
.end method
