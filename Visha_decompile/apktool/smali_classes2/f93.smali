.class public final synthetic Lf93;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/extensions/core/util/function/Predicate;


# instance fields
.field public final synthetic a:Landroidx/window/embedding/ActivityRule;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/embedding/ActivityRule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf93;->a:Landroidx/window/embedding/ActivityRule;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lf93;->a:Landroidx/window/embedding/ActivityRule;

    check-cast p1, Landroid/content/Intent;

    invoke-static {p0, p1}, Landroidx/window/embedding/EmbeddingAdapter;->c(Landroidx/window/embedding/ActivityRule;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
