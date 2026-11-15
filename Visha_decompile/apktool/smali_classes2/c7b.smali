.class public final synthetic Lc7b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/WatchdogTimer$Listener;


# instance fields
.field public final synthetic a:Landroidx/media3/transformer/Transformer;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/transformer/Transformer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc7b;->a:Landroidx/media3/transformer/Transformer;

    return-void
.end method


# virtual methods
.method public final onTimeout()V
    .locals 0

    iget-object p0, p0, Lc7b;->a:Landroidx/media3/transformer/Transformer;

    invoke-static {p0}, Landroidx/media3/transformer/Transformer;->a(Landroidx/media3/transformer/Transformer;)V

    return-void
.end method
