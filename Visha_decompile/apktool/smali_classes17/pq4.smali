.class public Lpq4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lrq4;

.field public final b:Ljava/util/concurrent/CopyOnWriteArraySet;


# direct methods
.method public constructor <init>(Lsq4;Lnq4;)V
    .locals 0

    const-string p2, "histogramReporterDelegate"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lrq4;

    invoke-direct {p2, p1}, Lrq4;-><init>(Lsq4;)V

    iput-object p2, p0, Lpq4;->a:Lrq4;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lpq4;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method
