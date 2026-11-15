.class public final Llx4$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llx4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:I


# direct methods
.method public constructor <init>(IZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Llx4$b;->a:I

    iput-boolean p2, p0, Llx4$b;->b:Z

    iput p3, p0, Llx4$b;->c:I

    return-void
.end method

.method public static synthetic a(Llx4$b;)I
    .locals 0

    iget p0, p0, Llx4$b;->a:I

    return p0
.end method

.method public static synthetic b(Llx4$b;)I
    .locals 0

    iget p0, p0, Llx4$b;->c:I

    return p0
.end method

.method public static synthetic c(Llx4$b;)Z
    .locals 0

    iget-boolean p0, p0, Llx4$b;->b:Z

    return p0
.end method
