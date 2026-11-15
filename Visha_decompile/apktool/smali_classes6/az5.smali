.class public abstract Laz5;
.super Lhb0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laz5$a;
    }
.end annotation


# static fields
.field public static final a:Laz5$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Laz5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laz5$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Laz5;->a:Laz5$a;

    return-void
.end method

.method public static final b()V
    .locals 1

    sget-object v0, Laz5;->a:Laz5$a;

    invoke-virtual {v0}, Laz5$a;->b()V

    return-void
.end method

.method public static final c(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Laz5;->a:Laz5$a;

    invoke-virtual {v0, p0}, Laz5$a;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static final d()V
    .locals 1

    sget-object v0, Laz5;->a:Laz5$a;

    invoke-virtual {v0}, Laz5$a;->s()V

    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Laz5;->a:Laz5$a;

    invoke-virtual {v0, p0, p1, p2, p3}, Laz5$a;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    sget-object v0, Laz5;->a:Laz5$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Laz5$a;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Laz5;->a:Laz5$a;

    invoke-virtual {v0, p0, p1, p2, p3}, Laz5$a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final h(I)V
    .locals 1

    sget-object v0, Laz5;->a:Laz5$a;

    invoke-virtual {v0, p0}, Laz5$a;->A(I)V

    return-void
.end method

.method public static final i(I)V
    .locals 1

    sget-object v0, Laz5;->a:Laz5$a;

    invoke-virtual {v0, p0}, Laz5$a;->B(I)V

    return-void
.end method
