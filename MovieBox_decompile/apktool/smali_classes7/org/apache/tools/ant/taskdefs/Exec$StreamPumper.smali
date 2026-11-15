.class Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;
.super Ljava/lang/Thread;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Exec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamPumper"
.end annotation


# static fields
.field private static final SLEEP_TIME:I = 0x5


# instance fields
.field private din:Ljava/io/BufferedReader;

.field private endOfStream:Z

.field private messageLevel:I

.field private final synthetic this$0:Lorg/apache/tools/ant/taskdefs/Exec;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/Exec;Ljava/io/InputStream;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->this$0:Lorg/apache/tools/ant/taskdefs/Exec;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->endOfStream:Z

    .line 8
    .line 9
    new-instance p1, Ljava/io/BufferedReader;

    .line 10
    .line 11
    new-instance v0, Ljava/io/InputStreamReader;

    .line 12
    .line 13
    invoke-direct {v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->din:Ljava/io/BufferedReader;

    .line 20
    .line 21
    iput p3, p0, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->messageLevel:I

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public pumpStream()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->endOfStream:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->din:Ljava/io/BufferedReader;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->this$0:Lorg/apache/tools/ant/taskdefs/Exec;

    .line 14
    .line 15
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->messageLevel:I

    .line 16
    .line 17
    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/taskdefs/Exec;->u(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->endOfStream:Z

    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->endOfStream:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->pumpStream()V

    .line 6
    .line 7
    .line 8
    const-wide/16 v0, 0x5

    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->din:Ljava/io/BufferedReader;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 17
    .line 18
    .line 19
    :catch_1
    return-void
.end method
