.class public final synthetic Landroidx/core/os/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lgh8;


# direct methods
.method public synthetic constructor <init>(Lgh8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/os/a;->b:Lgh8;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/os/a;->b:Lgh8;

    check-cast p1, Landroid/os/ProfilingResult;

    invoke-static {p0, p1}, Landroidx/core/os/Profiling$registerForAllProfilingResults$1;->h(Lgh8;Landroid/os/ProfilingResult;)V

    return-void
.end method
