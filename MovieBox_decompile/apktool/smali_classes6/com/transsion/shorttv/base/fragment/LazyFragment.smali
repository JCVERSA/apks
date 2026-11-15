.class public abstract Lcom/transsion/shorttv/base/fragment/LazyFragment;
.super Lcom/transsion/shorttv/base/fragment/PageStatusFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lf4/a;",
        ">",
        "Lcom/transsion/shorttv/base/fragment/PageStatusFragment<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u000f\u0010\u0008\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0005J\u0017\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\rJ\u000f\u0010\u0010\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\u0010\u0010\u0005R\u0016\u0010\u0013\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0012R\u0016\u0010\u0016\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0012R\u0016\u0010\u0018\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0012\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/transsion/shorttv/base/fragment/LazyFragment;",
        "Lf4/a;",
        "T",
        "Lcom/transsion/shorttv/base/fragment/PageStatusFragment;",
        "<init>",
        "()V",
        "",
        "f0",
        "onResume",
        "onDestroyView",
        "",
        "isVisibleToUser",
        "setUserVisibleHint",
        "(Z)V",
        "hidden",
        "onHiddenChanged",
        "lazyLoadData",
        "i",
        "Z",
        "isLoaded",
        "j",
        "k",
        "isCallResume",
        "l",
        "isCallUserVisibleHint",
        "shortTvLib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/base/fragment/PageStatusFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final f0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/transsion/shorttv/base/fragment/LazyFragment;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/transsion/shorttv/base/fragment/LazyFragment;->j:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/transsion/shorttv/base/fragment/LazyFragment;->k:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/transsion/shorttv/base/fragment/LazyFragment;->i:Z

    .line 15
    .line 16
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 17
    .line 18
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/transsion/shorttv/base/fragment/LazyFragment;->lazyLoadData()V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "TraditionLazyFragment --> "

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, " lazyInit:!!!!!!!"

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method


# virtual methods
.method public abstract lazyLoadData()V
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/shorttv/base/fragment/PageStatusFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/transsion/shorttv/base/fragment/LazyFragment;->i:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/transsion/shorttv/base/fragment/LazyFragment;->j:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/transsion/shorttv/base/fragment/LazyFragment;->l:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/transsion/shorttv/base/fragment/LazyFragment;->k:Z

    .line 12
    .line 13
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    xor-int/lit8 p1, p1, 0x1

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/transsion/shorttv/base/fragment/LazyFragment;->j:Z

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/transsion/shorttv/base/fragment/LazyFragment;->f0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/shorttv/base/fragment/PageStatusFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/transsion/shorttv/base/fragment/LazyFragment;->k:Z

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/transsion/shorttv/base/fragment/LazyFragment;->l:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    xor-int/2addr v0, v1

    .line 16
    iput-boolean v0, p0, Lcom/transsion/shorttv/base/fragment/LazyFragment;->j:Z

    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/transsion/shorttv/base/fragment/LazyFragment;->f0()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/transsion/shorttv/base/fragment/LazyFragment;->j:Z

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/transsion/shorttv/base/fragment/LazyFragment;->l:Z

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/shorttv/base/fragment/LazyFragment;->f0()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
