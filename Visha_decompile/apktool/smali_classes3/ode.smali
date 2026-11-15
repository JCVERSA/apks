.class public final Lode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method public synthetic constructor <init>(IJLpde;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lode;->a:I

    iput-wide p2, p0, Lode;->b:J

    return-void
.end method

.method public static bridge synthetic a(Lode;)I
    .locals 0

    iget p0, p0, Lode;->a:I

    return p0
.end method

.method public static bridge synthetic b(Lode;)J
    .locals 2

    iget-wide v0, p0, Lode;->b:J

    return-wide v0
.end method
