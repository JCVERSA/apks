.class Landroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/PrecomputedTextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrecomputedTextFutureTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Landroidx/core/text/PrecomputedTextCompat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroidx/core/text/PrecomputedTextCompat$b;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask$a;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask$a;-><init>(Landroidx/core/text/PrecomputedTextCompat$b;Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
