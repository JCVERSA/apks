.class public Lorg/apache/tools/ant/ExitStatusException;
.super Lorg/apache/tools/ant/BuildException;
.source "source.java"


# static fields
.field private static final serialVersionUID:J = 0x6bb4110d58b31670L


# instance fields
.field private status:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/tools/ant/BuildException;-><init>()V

    .line 2
    iput p1, p0, Lorg/apache/tools/ant/ExitStatusException;->status:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 4
    iput p2, p0, Lorg/apache/tools/ant/ExitStatusException;->status:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/apache/tools/ant/Location;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    .line 6
    iput p2, p0, Lorg/apache/tools/ant/ExitStatusException;->status:I

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/tools/ant/ExitStatusException;->status:I

    .line 2
    .line 3
    return v0
.end method
