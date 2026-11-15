.class public final Lma1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/div/storage/b;

.field public final b:Ljava/lang/String;

.field public final c:Lpq4;

.field public final d:Loj8;

.field public final e:Ljava/util/concurrent/ConcurrentHashMap;

.field public final f:Lwn2;


# direct methods
.method public constructor <init>(Lcom/yandex/div/storage/b;Llx7;Ljava/lang/String;Lpq4;Loj8;)V
    .locals 1

    const-string v0, "divStorage"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "histogramRecorder"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsingHistogramProxy"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lma1;->a:Lcom/yandex/div/storage/b;

    iput-object p3, p0, Lma1;->b:Ljava/lang/String;

    iput-object p4, p0, Lma1;->c:Lpq4;

    iput-object p5, p0, Lma1;->d:Loj8;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lma1;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Lqga;->a(Llx7;)Lwn2;

    move-result-object p1

    iput-object p1, p0, Lma1;->f:Lwn2;

    return-void
.end method
