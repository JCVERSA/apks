.class public abstract Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static c:Z = true

.field private static final d:Ljava/lang/Runnable;


# instance fields
.field private a:J

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->d:Ljava/lang/Runnable;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const-wide/16 v1, 0x3e8

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;-><init>(ZJ)V

    return-void
.end method

.method public constructor <init>(ZJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->b:Z

    .line 4
    iput-wide p2, p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->a:J

    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method private static b(Landroid/view/View;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/e0;->E(Landroid/view/View;J)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method public abstract c(Landroid/view/View;)V
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-boolean v0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->c:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    sput-boolean v0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->c:Z

    .line 11
    .line 12
    sget-object v0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->d:Ljava/lang/Runnable;

    .line 13
    .line 14
    iget-wide v1, p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->a:J

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->c(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-wide v0, p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->a:J

    .line 24
    .line 25
    invoke-static {p1, v0, v1}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->b(Landroid/view/View;J)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->c(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method
