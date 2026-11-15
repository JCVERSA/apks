.class public final Lyn2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/histogram/DivParsingHistogramReporter;


# instance fields
.field public final b:Lc74;

.field public final c:Lc74;


# direct methods
.method public constructor <init>(Lc74;Lc74;)V
    .locals 1

    const-string v0, "histogramReporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "calculateSizeExecutor"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyn2;->b:Lc74;

    iput-object p2, p0, Lyn2;->c:Lc74;

    return-void
.end method
