.class public abstract Lorg/apache/tools/ant/q;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected description:Ljava/lang/String;

.field protected location:Lorg/apache/tools/ant/Location;

.field protected project:Lorg/apache/tools/ant/Project;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/apache/tools/ant/q;->location:Lorg/apache/tools/ant/Location;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/apache/tools/ant/q;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getLocation()Lorg/apache/tools/ant/Location;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/q;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/q;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/q;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocation()Lorg/apache/tools/ant/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/q;->location:Lorg/apache/tools/ant/Location;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProject()Lorg/apache/tools/ant/Project;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/q;->project:Lorg/apache/tools/ant/Project;

    .line 2
    .line 3
    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/q;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public log(Ljava/lang/String;I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-gt p2, v0, :cond_1

    .line 4
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/q;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLocation(Lorg/apache/tools/ant/Location;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/q;->location:Lorg/apache/tools/ant/Location;

    .line 2
    .line 3
    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/q;->project:Lorg/apache/tools/ant/Project;

    .line 2
    .line 3
    return-void
.end method
