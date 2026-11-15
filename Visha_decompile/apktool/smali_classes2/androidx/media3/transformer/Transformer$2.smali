.class Landroidx/media3/transformer/Transformer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj94;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/transformer/Transformer;->copyOutput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj94;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/transformer/Transformer;


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/Transformer;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/transformer/Transformer$2;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    iget-object p0, p0, Landroidx/media3/transformer/Transformer$2;->this$0:Landroidx/media3/transformer/Transformer;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Copy output task failed for the resumed export"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Landroidx/media3/transformer/ExportException;->createForUnexpected(Ljava/lang/Exception;)Landroidx/media3/transformer/ExportException;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/media3/transformer/Transformer;->access$3300(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/ExportException;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/media3/transformer/Transformer$2;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 0

    .line 2
    iget-object p0, p0, Landroidx/media3/transformer/Transformer$2;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p0}, Landroidx/media3/transformer/Transformer;->access$3200(Landroidx/media3/transformer/Transformer;)V

    return-void
.end method
