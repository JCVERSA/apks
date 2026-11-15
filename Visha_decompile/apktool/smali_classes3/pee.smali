.class public final Lpee;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lpee;->a:Z

    iput-boolean p2, p0, Lpee;->b:Z

    iput-boolean p3, p0, Lpee;->c:Z

    return-void
.end method

.method public static bridge synthetic a(Lpee;)Z
    .locals 0

    iget-boolean p0, p0, Lpee;->c:Z

    return p0
.end method

.method public static bridge synthetic b(Lpee;)Z
    .locals 0

    iget-boolean p0, p0, Lpee;->a:Z

    return p0
.end method

.method public static bridge synthetic c(Lpee;)Z
    .locals 0

    iget-boolean p0, p0, Lpee;->b:Z

    return p0
.end method
