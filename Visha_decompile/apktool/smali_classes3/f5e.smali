.class public final Lf5e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(ZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lf5e;->a:Z

    return-void
.end method

.method public static a(ZZZZZZ)Lf5e;
    .locals 7

    new-instance p1, Lf5e;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p1

    move v1, p0

    invoke-direct/range {v0 .. v6}, Lf5e;-><init>(ZZZZZZ)V

    return-object p1
.end method

.method public static bridge synthetic b(Lf5e;)Z
    .locals 0

    iget-boolean p0, p0, Lf5e;->a:Z

    return p0
.end method
