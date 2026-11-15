.class public final synthetic Lf7b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V
    .locals 0

    check-cast p1, Landroidx/media3/transformer/Transformer$Listener;

    invoke-static {p1, p2}, Landroidx/media3/transformer/Transformer$Builder;->a(Landroidx/media3/transformer/Transformer$Listener;Landroidx/media3/common/FlagSet;)V

    return-void
.end method
