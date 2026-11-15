.class public final synthetic Landroidx/work/impl/utils/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroidx/work/impl/utils/i;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/utils/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/utils/g;->a:Landroidx/work/impl/utils/i;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/g;->a:Landroidx/work/impl/utils/i;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/impl/utils/i;->b(Landroidx/work/impl/utils/i;)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
