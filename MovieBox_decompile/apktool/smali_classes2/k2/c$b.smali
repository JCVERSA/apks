.class final Lk2/c$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Z

.field public e:I

.field public f:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lk2/c$b;->a:Z

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lk2/c$b;->b:I

    .line 5
    iput v1, p0, Lk2/c$b;->c:I

    .line 6
    iput-boolean v0, p0, Lk2/c$b;->d:Z

    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lk2/c$b;->e:I

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lk2/c$b;->f:I

    return-void
.end method

.method synthetic constructor <init>(Lk2/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk2/c$b;-><init>()V

    return-void
.end method
