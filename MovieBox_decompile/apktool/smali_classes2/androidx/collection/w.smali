.class public abstract Landroidx/collection/w;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Landroidx/collection/i0;

.field private static final b:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/collection/i0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/collection/i0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/collection/w;->a:Landroidx/collection/i0;

    .line 8
    .line 9
    new-array v0, v1, [J

    .line 10
    .line 11
    sput-object v0, Landroidx/collection/w;->b:[J

    .line 12
    .line 13
    return-void
.end method

.method public static final a()[J
    .locals 1

    .line 1
    sget-object v0, Landroidx/collection/w;->b:[J

    .line 2
    .line 3
    return-object v0
.end method
