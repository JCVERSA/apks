.class public Lcom/mgtv/task/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResultType;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mgtv/task/l;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ZZLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;ZZ",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/mgtv/task/l;->a:Ljava/lang/Object;

    .line 5
    iput-boolean p2, p0, Lcom/mgtv/task/l;->b:Z

    .line 6
    iput-boolean p3, p0, Lcom/mgtv/task/l;->c:Z

    .line 7
    iput-object p4, p0, Lcom/mgtv/task/l;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ZZLjava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;ZZ",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/mgtv/task/l;->a:Ljava/lang/Object;

    .line 10
    iput-boolean p2, p0, Lcom/mgtv/task/l;->b:Z

    .line 11
    iput-boolean p3, p0, Lcom/mgtv/task/l;->c:Z

    .line 12
    iput-object p4, p0, Lcom/mgtv/task/l;->d:Ljava/lang/Object;

    .line 13
    iput-object p5, p0, Lcom/mgtv/task/l;->e:Ljava/lang/Throwable;

    return-void
.end method
