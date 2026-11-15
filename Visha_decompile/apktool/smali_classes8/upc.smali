.class public abstract Lupc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lupc$a;
    }
.end annotation


# direct methods
.method public static a([BI[BI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lupc;->b([BI[BI)V

    return-void
.end method

.method public static b([BI[BI)V
    .locals 3

    invoke-static {}, Lvpc;->h()[I

    move-result-object v0

    invoke-static {}, Lvpc;->h()[I

    move-result-object v1

    invoke-static {}, Lupc$a;->a()Lupc$a;

    move-result-object v2

    invoke-static {v2, p0, p1, v0, v1}, La63;->x(Lupc$a;[BI[I[I)V

    invoke-static {v1, v0, v0, v1}, Lvpc;->c([I[I[I[I)V

    invoke-static {v1, v1}, Lvpc;->u([I[I)V

    invoke-static {v0, v1, v0}, Lvpc;->y([I[I[I)V

    invoke-static {v0}, Lvpc;->A([I)V

    invoke-static {v0, p2, p3}, Lvpc;->p([I[BI)V

    return-void
.end method
