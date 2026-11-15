.class public abstract Lq/c;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Lq/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lq/c$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lq/c$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lq/c;->a:Lq/b;

    .line 7
    .line 8
    return-void
.end method

.method public static final a(I)Lq/b;
    .locals 1

    .line 1
    new-instance v0, Lq/e;

    .line 2
    .line 3
    int-to-float p0, p0

    .line 4
    invoke-direct {v0, p0}, Lq/e;-><init>(F)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static final b(F)Lq/b;
    .locals 2

    .line 1
    new-instance v0, Lq/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lq/d;-><init>(FLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
