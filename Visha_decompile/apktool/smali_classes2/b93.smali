.class public final synthetic Lb93;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/extensions/core/util/function/Predicate;


# instance fields
.field public final synthetic a:Landroidx/window/embedding/SplitPairRule;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/embedding/SplitPairRule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb93;->a:Landroidx/window/embedding/SplitPairRule;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lb93;->a:Landroidx/window/embedding/SplitPairRule;

    check-cast p1, Landroid/util/Pair;

    invoke-static {p0, p1}, Landroidx/window/embedding/EmbeddingAdapter;->a(Landroidx/window/embedding/SplitPairRule;Landroid/util/Pair;)Z

    move-result p0

    return p0
.end method
