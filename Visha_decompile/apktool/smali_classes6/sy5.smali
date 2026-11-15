.class public abstract Lsy5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsy5$a;
    }
.end annotation


# static fields
.field public static final a:Lsy5$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsy5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsy5$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lsy5;->a:Lsy5$a;

    return-void
.end method

.method public static final a()V
    .locals 1

    sget-object v0, Lsy5;->a:Lsy5$a;

    invoke-virtual {v0}, Lsy5$a;->a()V

    return-void
.end method

.method public static final b(Z)V
    .locals 1

    sget-object v0, Lsy5;->a:Lsy5$a;

    invoke-virtual {v0, p0}, Lsy5$a;->e(Z)V

    return-void
.end method

.method public static final c(Z)V
    .locals 1

    sget-object v0, Lsy5;->a:Lsy5$a;

    invoke-virtual {v0, p0}, Lsy5$a;->g(Z)V

    return-void
.end method
