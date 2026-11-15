.class public final Lade;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:I


# direct methods
.method public constructor <init>(IZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lade;->a:I

    iput-boolean p2, p0, Lade;->b:Z

    iput p3, p0, Lade;->c:I

    return-void
.end method

.method public static bridge synthetic a(Lade;)I
    .locals 0

    iget p0, p0, Lade;->c:I

    return p0
.end method

.method public static bridge synthetic b(Lade;)I
    .locals 0

    iget p0, p0, Lade;->a:I

    return p0
.end method

.method public static bridge synthetic c(Lade;)Z
    .locals 0

    iget-boolean p0, p0, Lade;->b:Z

    return p0
.end method
