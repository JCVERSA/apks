.class public Lcom/mgtv/task/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Param:",
        "Ljava/lang/Object;",
        "ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/mgtv/task/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mgtv/task/n<",
            "TParam;TResultType;>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TParam;"
        }
    .end annotation
.end field

.field public c:Lcom/mgtv/task/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mgtv/task/d<",
            "TResultType;>;"
        }
    .end annotation
.end field

.field public d:Lcom/mgtv/task/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mgtv/task/c<",
            "TParam;TResultType;>;"
        }
    .end annotation
.end field

.field public e:J

.field public f:I

.field g:Lcom/mgtv/task/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mgtv/task/f<",
            "TParam;TResultType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/mgtv/task/f;->f:I

    return-void
.end method
