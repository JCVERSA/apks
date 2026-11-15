.class public final synthetic Landroidx/core/view/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/core/util/j;


# instance fields
.field public final synthetic a:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/view/b;->a:Ljava/util/function/Predicate;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/b;->a:Ljava/util/function/Predicate;

    .line 2
    .line 3
    check-cast p1, Landroid/content/ClipData$Item;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
