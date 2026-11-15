.class public abstract Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static d:Z = true

.field public static final e:Ljava/lang/Runnable;


# instance fields
.field public final b:J

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener$1;

    invoke-direct {v0}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener$1;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->c:Z

    iput-wide p2, p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->b:J

    return-void
.end method

.method public static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->d:Z

    return p0
.end method

.method public static b(Landroid/view/View;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/h;->E(Landroid/view/View;J)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract c(Landroid/view/View;)V
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->c:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->d:Z

    sget-object v0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->e:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->b:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->c(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->b:J

    invoke-static {p1, v0, v1}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->b(Landroid/view/View;J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;->c(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
