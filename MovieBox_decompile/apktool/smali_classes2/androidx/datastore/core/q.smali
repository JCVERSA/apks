.class public abstract Landroidx/datastore/core/q;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/datastore/core/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/core/q$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/datastore/core/q$a;

.field private static final b:Ljava/lang/String;

.field private static final c:J

.field private static final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/datastore/core/q$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/datastore/core/q$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/datastore/core/q;->a:Landroidx/datastore/core/q$a;

    .line 8
    .line 9
    const-string v0, "Resource deadlock would occur"

    .line 10
    .line 11
    sput-object v0, Landroidx/datastore/core/q;->b:Ljava/lang/String;

    .line 12
    .line 13
    const-wide/16 v0, 0xa

    .line 14
    .line 15
    sput-wide v0, Landroidx/datastore/core/q;->c:J

    .line 16
    .line 17
    const-wide/32 v0, 0xea60

    .line 18
    .line 19
    .line 20
    sput-wide v0, Landroidx/datastore/core/q;->d:J

    .line 21
    .line 22
    return-void
.end method

.method public static final synthetic f(Landroidx/datastore/core/q;)Landroidx/datastore/core/u;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method
