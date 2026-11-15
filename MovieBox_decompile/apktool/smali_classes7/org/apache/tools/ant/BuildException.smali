.class public Lorg/apache/tools/ant/BuildException;
.super Ljava/lang/RuntimeException;
.source "source.java"


# static fields
.field private static final serialVersionUID:J = -0x4b34350938a1f130L


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private location:Lorg/apache/tools/ant/Location;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 2
    sget-object v0, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    iput-object v0, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 4
    sget-object p1, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    iput-object p1, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    sget-object p1, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    iput-object p1, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    .line 7
    iput-object p2, p0, Lorg/apache/tools/ant/BuildException;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    iput-object p3, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 14
    sget-object p1, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    .line 15
    iput-object p2, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 11
    sget-object v0, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    iput-object v0, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    .line 12
    iput-object p1, p0, Lorg/apache/tools/ant/BuildException;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    iput-object p2, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/tools/ant/BuildException;->getException()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/BuildException;->cause:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocation()Lorg/apache/tools/ant/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    .line 2
    .line 3
    return-object v0
.end method

.method public printStackTrace()V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/BuildException;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1

    .line 2
    monitor-enter p1

    .line 3
    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 4
    iget-object v0, p0, Lorg/apache/tools/ant/BuildException;->cause:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 5
    const-string v0, "--- Nested Exception ---"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lorg/apache/tools/ant/BuildException;->cause:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1

    .line 8
    monitor-enter p1

    .line 9
    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 10
    iget-object v0, p0, Lorg/apache/tools/ant/BuildException;->cause:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 11
    const-string v0, "--- Nested Exception ---"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lorg/apache/tools/ant/BuildException;->cause:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 13
    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLocation(Lorg/apache/tools/ant/Location;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/tools/ant/BuildException;->location:Lorg/apache/tools/ant/Location;

    .line 7
    .line 8
    invoke-virtual {v1}, Lorg/apache/tools/ant/Location;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
