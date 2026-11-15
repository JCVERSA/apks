.class Lorg/apache/tools/ant/taskdefs/m$a;
.super Ljava/io/ByteArrayOutputStream;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private final synthetic c:Lorg/apache/tools/ant/taskdefs/m;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/m;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/m$a;->c:Lorg/apache/tools/ant/taskdefs/m;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/m$a;->b:Z

    .line 8
    .line 9
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/m$a;->a:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/m$a;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m$a;->c:Lorg/apache/tools/ant/taskdefs/m;

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/m;->a(Lorg/apache/tools/ant/taskdefs/m;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m$a;->c:Lorg/apache/tools/ant/taskdefs/m;

    .line 14
    .line 15
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/m;->b(Lorg/apache/tools/ant/taskdefs/m;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m$a;->c:Lorg/apache/tools/ant/taskdefs/m;

    .line 22
    .line 23
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/m$a;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0, p0, v1}, Lorg/apache/tools/ant/taskdefs/m;->c(Lorg/apache/tools/ant/taskdefs/m;Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/m$a;->b:Z

    .line 30
    .line 31
    :cond_1
    return-void
.end method
