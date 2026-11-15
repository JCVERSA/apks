.class public final Lyee;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:J

.field public final c:I


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyee;->a:I

    iput-wide p2, p0, Lyee;->b:J

    iput p4, p0, Lyee;->c:I

    return-void
.end method

.method public static bridge synthetic a(Lyee;)I
    .locals 0

    iget p0, p0, Lyee;->a:I

    return p0
.end method

.method public static bridge synthetic b(Lyee;)I
    .locals 0

    iget p0, p0, Lyee;->c:I

    return p0
.end method

.method public static bridge synthetic c(Lyee;)J
    .locals 2

    iget-wide v0, p0, Lyee;->b:J

    return-wide v0
.end method
