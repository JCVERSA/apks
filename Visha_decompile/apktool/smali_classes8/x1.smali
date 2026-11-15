.class public final Lx1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lx1;->a:I

    iput p2, p0, Lx1;->b:I

    return-void
.end method

.method public static a(II)Lx1;
    .locals 1

    new-instance v0, Lx1;

    invoke-direct {v0, p0, p1}, Lx1;-><init>(II)V

    return-object v0
.end method
