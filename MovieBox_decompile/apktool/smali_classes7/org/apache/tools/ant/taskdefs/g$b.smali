.class abstract Lorg/apache/tools/ant/taskdefs/g$b;
.super Lorg/apache/tools/ant/taskdefs/g$a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Lorg/apache/tools/ant/taskdefs/g$a;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/g$a;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/g$a;-><init>(Lorg/apache/tools/ant/taskdefs/f;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/g$b;->a:Lorg/apache/tools/ant/taskdefs/g$a;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/g$b;->a:Lorg/apache/tools/ant/taskdefs/g$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/g$a;->a(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
