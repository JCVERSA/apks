.class public abstract Ldr9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldr9$a;
    }
.end annotation


# static fields
.field public static final a:Ldr9$a;

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldr9$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldr9$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldr9;->a:Ldr9$a;

    const/4 v0, 0x1

    sput v0, Ldr9;->c:I

    const/4 v0, 0x2

    sput v0, Ldr9;->d:I

    const/4 v0, 0x3

    sput v0, Ldr9;->e:I

    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    sget v0, Ldr9;->d:I

    return v0
.end method

.method public static final synthetic b()I
    .locals 1

    sget v0, Ldr9;->b:I

    return v0
.end method

.method public static final synthetic c()I
    .locals 1

    sget v0, Ldr9;->e:I

    return v0
.end method

.method public static final synthetic d()I
    .locals 1

    sget v0, Ldr9;->c:I

    return v0
.end method

.method public static final e()I
    .locals 1

    sget-object v0, Ldr9;->a:Ldr9$a;

    invoke-virtual {v0}, Ldr9$a;->a()I

    move-result v0

    return v0
.end method

.method public static final f()I
    .locals 1

    sget-object v0, Ldr9;->a:Ldr9$a;

    invoke-virtual {v0}, Ldr9$a;->c()I

    move-result v0

    return v0
.end method

.method public static final g()I
    .locals 1

    sget-object v0, Ldr9;->a:Ldr9$a;

    invoke-virtual {v0}, Ldr9$a;->d()I

    move-result v0

    return v0
.end method
