.class public final synthetic Landroidx/media3/transformer/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/transformer/TransformerInternal;

.field public final synthetic c:Lcom/google/common/collect/ImmutableList$a;

.field public final synthetic d:Landroidx/media3/transformer/ExportException;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/transformer/TransformerInternal;Lcom/google/common/collect/ImmutableList$a;Landroidx/media3/transformer/ExportException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/j0;->b:Landroidx/media3/transformer/TransformerInternal;

    iput-object p2, p0, Landroidx/media3/transformer/j0;->c:Lcom/google/common/collect/ImmutableList$a;

    iput-object p3, p0, Landroidx/media3/transformer/j0;->d:Landroidx/media3/transformer/ExportException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/transformer/j0;->b:Landroidx/media3/transformer/TransformerInternal;

    iget-object v1, p0, Landroidx/media3/transformer/j0;->c:Lcom/google/common/collect/ImmutableList$a;

    iget-object p0, p0, Landroidx/media3/transformer/j0;->d:Landroidx/media3/transformer/ExportException;

    invoke-static {v0, v1, p0}, Landroidx/media3/transformer/TransformerInternal;->b(Landroidx/media3/transformer/TransformerInternal;Lcom/google/common/collect/ImmutableList$a;Landroidx/media3/transformer/ExportException;)V

    return-void
.end method
