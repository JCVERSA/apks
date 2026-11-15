.class public final synthetic Ld7b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic a:Landroidx/media3/transformer/Transformer;

.field public final synthetic b:Landroidx/media3/transformer/ExportResult;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/ExportResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld7b;->a:Landroidx/media3/transformer/Transformer;

    iput-object p2, p0, Ld7b;->b:Landroidx/media3/transformer/ExportResult;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ld7b;->a:Landroidx/media3/transformer/Transformer;

    iget-object p0, p0, Ld7b;->b:Landroidx/media3/transformer/ExportResult;

    check-cast p1, Landroidx/media3/transformer/Transformer$Listener;

    invoke-static {v0, p0, p1}, Landroidx/media3/transformer/Transformer;->b(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/ExportResult;Landroidx/media3/transformer/Transformer$Listener;)V

    return-void
.end method
