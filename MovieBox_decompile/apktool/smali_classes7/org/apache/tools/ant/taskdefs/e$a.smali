.class public Lorg/apache/tools/ant/taskdefs/e$a;
.super Lorg/apache/tools/ant/types/f;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/tools/ant/types/f;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/tools/ant/types/f;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/f;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c()[Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "ignore"

    .line 2
    .line 3
    const-string v1, "failall"

    .line 4
    .line 5
    const-string v2, "fail"

    .line 6
    .line 7
    const-string v3, "report"

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
