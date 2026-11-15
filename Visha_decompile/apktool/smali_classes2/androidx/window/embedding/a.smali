.class public final synthetic Landroidx/window/embedding/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic b:Lgh8;


# direct methods
.method public synthetic constructor <init>(Lgh8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/a;->b:Lgh8;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/window/embedding/a;->b:Lgh8;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Landroidx/window/embedding/SplitController$splitInfoList$1;->g(Lgh8;Ljava/util/List;)V

    return-void
.end method
