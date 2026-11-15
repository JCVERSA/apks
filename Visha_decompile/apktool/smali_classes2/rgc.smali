.class public final synthetic Lrgc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/transformer/WatchdogTimer$Listener;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/transformer/WatchdogTimer$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrgc;->b:Landroidx/media3/transformer/WatchdogTimer$Listener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lrgc;->b:Landroidx/media3/transformer/WatchdogTimer$Listener;

    invoke-interface {p0}, Landroidx/media3/transformer/WatchdogTimer$Listener;->onTimeout()V

    return-void
.end method
