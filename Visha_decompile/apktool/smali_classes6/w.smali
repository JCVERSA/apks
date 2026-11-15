.class public abstract Lw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw$a;
    }
.end annotation


# static fields
.field public static final a:Lw$a;

.field public static b:I

.field public static c:I

.field public static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lw;->a:Lw$a;

    const/4 v0, -0x1

    sput v0, Lw;->b:I

    sput v0, Lw;->c:I

    sput v0, Lw;->d:I

    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    sget v0, Lw;->b:I

    return v0
.end method

.method public static final synthetic b()I
    .locals 1

    sget v0, Lw;->c:I

    return v0
.end method

.method public static final synthetic c()I
    .locals 1

    sget v0, Lw;->d:I

    return v0
.end method

.method public static final synthetic d(I)V
    .locals 0

    sput p0, Lw;->b:I

    return-void
.end method

.method public static final synthetic e(I)V
    .locals 0

    sput p0, Lw;->c:I

    return-void
.end method

.method public static final synthetic f(I)V
    .locals 0

    sput p0, Lw;->d:I

    return-void
.end method

.method public static final g()Z
    .locals 1

    sget-object v0, Lw;->a:Lw$a;

    invoke-virtual {v0}, Lw$a;->a()Z

    move-result v0

    return v0
.end method

.method public static final h()Z
    .locals 1

    sget-object v0, Lw;->a:Lw$a;

    invoke-virtual {v0}, Lw$a;->b()Z

    move-result v0

    return v0
.end method

.method public static final i()Z
    .locals 1

    sget-object v0, Lw;->a:Lw$a;

    invoke-virtual {v0}, Lw$a;->c()Z

    move-result v0

    return v0
.end method

.method public static final j()Z
    .locals 1

    sget-object v0, Lw;->a:Lw$a;

    invoke-virtual {v0}, Lw$a;->d()Z

    move-result v0

    return v0
.end method

.method public static final k()Z
    .locals 1

    sget-object v0, Lw;->a:Lw$a;

    invoke-virtual {v0}, Lw$a;->e()Z

    move-result v0

    return v0
.end method
