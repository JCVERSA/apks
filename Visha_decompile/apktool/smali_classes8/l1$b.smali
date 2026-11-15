.class public Ll1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lci;->v([B)I

    move-result v0

    iput v0, p0, Ll1$b;->a:I

    iput-object p1, p0, Ll1$b;->b:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ll1$b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Ll1$b;->b:[B

    check-cast p1, Ll1$b;

    iget-object p1, p1, Ll1$b;->b:[B

    invoke-static {p0, p1}, Lci;->b([B[B)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Ll1$b;->a:I

    return p0
.end method
