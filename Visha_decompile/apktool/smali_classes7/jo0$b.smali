.class public final Ljo0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljo0$b;->c:[B

    iput p2, p0, Ljo0$b;->a:I

    iput p3, p0, Ljo0$b;->b:I

    return-void
.end method

.method public static synthetic a(Ljo0$b;)[B
    .locals 0

    iget-object p0, p0, Ljo0$b;->c:[B

    return-object p0
.end method

.method public static synthetic b(Ljo0$b;)I
    .locals 0

    iget p0, p0, Ljo0$b;->a:I

    return p0
.end method

.method public static synthetic c(Ljo0$b;)I
    .locals 0

    iget p0, p0, Ljo0$b;->b:I

    return p0
.end method
