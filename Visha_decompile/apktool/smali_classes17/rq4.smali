.class public Lrq4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lsq4;


# direct methods
.method public constructor <init>(Lsq4;)V
    .locals 1

    const-string v0, "histogramReporterDelegate"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrq4;->a:Lsq4;

    return-void
.end method

.method public static synthetic b(Lrq4;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lmq4;ILjava/lang/Object;)V
    .locals 9

    if-nez p8, :cond_3

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, p4

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object v7, p5

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    sget-object v0, Lmq4;->a:Lmq4$a;

    invoke-virtual {v0}, Lmq4$a;->f()Lmq4;

    move-result-object v0

    move-object v8, v0

    goto :goto_2

    :cond_2
    move-object v8, p6

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-virtual/range {v2 .. v8}, Lrq4;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lmq4;)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: reportDuration"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lmq4;)V
    .locals 2

    const-string v0, "histogramName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filter"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p6, v0}, Lmq4;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrq4;->a:Lsq4;

    invoke-interface {v0, p1, p2, p3, p5}, Lsq4;->a(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p6, p4}, Lmq4;->a(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p0, p0, Lrq4;->a:Lsq4;

    invoke-interface {p0, p1, p2, p3, p5}, Lsq4;->a(Ljava/lang/String;JLjava/lang/String;)V

    :cond_1
    return-void
.end method
