.class public abstract Lkob$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:[Lgy7$b;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lkob$d;->a:[Lgy7$b;

    return-void
.end method

.method public constructor <init>(Lkob$d;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lkob$d;->a:[Lgy7$b;

    .line 5
    iget-object v0, p1, Lkob$d;->b:Ljava/lang/String;

    iput-object v0, p0, Lkob$d;->b:Ljava/lang/String;

    .line 6
    iget v0, p1, Lkob$d;->c:I

    iput v0, p0, Lkob$d;->c:I

    .line 7
    iget-object p1, p1, Lkob$d;->a:[Lgy7$b;

    invoke-static {p1}, Lgy7;->d([Lgy7$b;)[Lgy7$b;

    move-result-object p1

    iput-object p1, p0, Lkob$d;->a:[Lgy7$b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkob$d;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c(Landroid/graphics/Path;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p0, p0, Lkob$d;->a:[Lgy7$b;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lgy7$b;->d([Lgy7$b;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method
