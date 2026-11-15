.class public Lcom/transsion/baseui/widget/shimmer/a$a;
.super Lcom/transsion/baseui/widget/shimmer/a$b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baseui/widget/shimmer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/widget/shimmer/a$b;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/baseui/widget/shimmer/a$b;->a:Lcom/transsion/baseui/widget/shimmer/a;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/transsion/baseui/widget/shimmer/a;->q:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method protected bridge synthetic d()Lcom/transsion/baseui/widget/shimmer/a$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/widget/shimmer/a$a;->v()Lcom/transsion/baseui/widget/shimmer/a$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected v()Lcom/transsion/baseui/widget/shimmer/a$a;
    .locals 0

    .line 1
    return-object p0
.end method
