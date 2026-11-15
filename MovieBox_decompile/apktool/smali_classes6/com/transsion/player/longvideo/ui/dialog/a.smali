.class public final Lcom/transsion/player/longvideo/ui/dialog/a;
.super Landroidx/lifecycle/t0;
.source "source.java"


# instance fields
.field private final a:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/b0;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/a;->a:Landroidx/lifecycle/b0;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/a;->a:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(Lln/b;)V
    .locals 1

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/a;->a:Landroidx/lifecycle/b0;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
