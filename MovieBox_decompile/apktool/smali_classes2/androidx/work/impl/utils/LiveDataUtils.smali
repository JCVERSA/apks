.class public abstract Landroidx/work/impl/utils/LiveDataUtils;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a(Landroidx/lifecycle/LiveData;Ll/a;Lk4/c;)Landroidx/lifecycle/LiveData;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/lifecycle/z;

    .line 7
    .line 8
    invoke-direct {v1}, Landroidx/lifecycle/z;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Landroidx/work/impl/utils/LiveDataUtils$1;

    .line 12
    .line 13
    invoke-direct {v2, p2, v0, p1, v1}, Landroidx/work/impl/utils/LiveDataUtils$1;-><init>(Lk4/c;Ljava/lang/Object;Ll/a;Landroidx/lifecycle/z;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/z;->r(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/c0;)V

    .line 17
    .line 18
    .line 19
    return-object v1
.end method
