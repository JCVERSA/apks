.class public Lsf5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcw0;


# instance fields
.field public b:[B


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lsf5;->b:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lsf5;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 3
    invoke-direct {p0, p3}, Lsf5;-><init>(I)V

    iget-object p0, p0, Lsf5;->b:[B

    const/4 v0, 0x0

    invoke-static {p1, p2, p0, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 0

    iget-object p0, p0, Lsf5;->b:[B

    return-object p0
.end method
