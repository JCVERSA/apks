.class public final synthetic Lfk3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/core/util/Consumer;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfk3;->b:Landroidx/core/util/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lfk3;->b:Landroidx/core/util/Consumer;

    invoke-static {p0}, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi0;->a(Landroidx/core/util/Consumer;)V

    return-void
.end method
