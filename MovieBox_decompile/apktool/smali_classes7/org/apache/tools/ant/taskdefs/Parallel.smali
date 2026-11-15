.class public Lorg/apache/tools/ant/taskdefs/Parallel;
.super Lorg/apache/tools/ant/u;
.source "source.java"

# interfaces
.implements Lorg/apache/tools/ant/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Parallel$TaskRunnable;
    }
.end annotation


# instance fields
.field private g:Ljava/util/Vector;

.field private final h:Ljava/lang/Object;

.field private i:I

.field private j:I

.field private k:J

.field private volatile l:Z

.field private m:Z

.field private n:Z

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/tools/ant/u;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Vector;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->g:Ljava/util/Vector;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->h:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->i:I

    .line 20
    .line 21
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->j:I

    .line 22
    .line 23
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->o:I

    .line 24
    .line 25
    return-void
.end method

.method static synthetic u(Lorg/apache/tools/ant/taskdefs/Parallel;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->k:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic v(Lorg/apache/tools/ant/taskdefs/Parallel;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->h:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic w(Lorg/apache/tools/ant/taskdefs/Parallel;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->l:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic x(Lorg/apache/tools/ant/taskdefs/Parallel;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->m:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic y(Lorg/apache/tools/ant/taskdefs/Parallel;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->n:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public b(Lorg/apache/tools/ant/u;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Parallel;->g:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
