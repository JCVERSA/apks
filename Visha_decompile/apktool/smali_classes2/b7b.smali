.class public final synthetic Lb7b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic a:Landroidx/media3/transformer/Transformer;

.field public final synthetic b:Landroidx/media3/transformer/ExportResult;

.field public final synthetic c:Landroidx/media3/transformer/ExportException;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/ExportResult;Landroidx/media3/transformer/ExportException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb7b;->a:Landroidx/media3/transformer/Transformer;

    iput-object p2, p0, Lb7b;->b:Landroidx/media3/transformer/ExportResult;

    iput-object p3, p0, Lb7b;->c:Landroidx/media3/transformer/ExportException;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lb7b;->a:Landroidx/media3/transformer/Transformer;

    iget-object v1, p0, Lb7b;->b:Landroidx/media3/transformer/ExportResult;

    iget-object p0, p0, Lb7b;->c:Landroidx/media3/transformer/ExportException;

    check-cast p1, Landroidx/media3/transformer/Transformer$Listener;

    invoke-static {v0, v1, p0, p1}, Landroidx/media3/transformer/Transformer;->c(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/ExportResult;Landroidx/media3/transformer/ExportException;Landroidx/media3/transformer/Transformer$Listener;)V

    return-void
.end method
