.class public abstract Lcom/transsion/baseui/fragment/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "source.java"

# interfaces
.implements Lcom/transsion/baselib/report/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lf4/a;",
        ">",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/transsion/baselib/report/g;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\'\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0006J\u000f\u0010\n\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0006J\u0019\u0010\r\u001a\u00020\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ-\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00028\u00002\u0006\u0010\u0010\u001a\u00020\u000fH&\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J!\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u00132\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ!\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u00132\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH&\u00a2\u0006\u0004\u0008\u001b\u0010\u001aJ!\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u00132\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001aJ\u000f\u0010\u001d\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0006J\u000f\u0010\u001e\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u001e\u0010\u0006J\u000f\u0010\u001f\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u0006J\u000f\u0010 \u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008 \u0010\u0006J\u000f\u0010!\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008!\u0010\u0006J\u0019\u0010$\u001a\u00020\u00072\u0008\u0010#\u001a\u0004\u0018\u00010\"H\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010&\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008&\u0010\u0006J\u000f\u0010\'\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\'\u0010\u0006J\u000f\u0010(\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008(\u0010\u0006J\u000f\u0010)\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008)\u0010\u0006R$\u0010+\u001a\u0004\u0018\u00010*8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R$\u00101\u001a\u0004\u0018\u00018\u00008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00081\u00102\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\"\u00108\u001a\u0002078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00088\u0010\n\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\u001d\u0010A\u001a\u0004\u0018\u00010<8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008=\u0010>\u001a\u0004\u0008?\u0010@\u00a8\u0006B"
    }
    d2 = {
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lf4/a;",
        "T",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/transsion/baselib/report/g;",
        "<init>",
        "()V",
        "",
        "X",
        "Y",
        "Z",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "getViewBinding",
        "(Landroid/view/LayoutInflater;)Lf4/a;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "initView",
        "initData",
        "initListener",
        "lazyLoadData",
        "startLoading",
        "hideLoading",
        "onDestroyView",
        "Landroid/content/Intent;",
        "intent",
        "newIntent",
        "(Landroid/content/Intent;)V",
        "onResume",
        "onPause",
        "logResume",
        "logPause",
        "Lyg/m;",
        "netListener",
        "Lyg/m;",
        "getNetListener",
        "()Lyg/m;",
        "setNetListener",
        "(Lyg/m;)V",
        "mViewBinding",
        "Lf4/a;",
        "getMViewBinding",
        "()Lf4/a;",
        "setMViewBinding",
        "(Lf4/a;)V",
        "",
        "isFirst",
        "()Z",
        "setFirst",
        "(Z)V",
        "Lqi/b;",
        "logViewConfig$delegate",
        "Lkotlin/Lazy;",
        "getLogViewConfig",
        "()Lqi/b;",
        "logViewConfig",
        "BaseUI_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private isFirst:Z

.field private final logViewConfig$delegate:Lkotlin/Lazy;

.field private mViewBinding:Lf4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private netListener:Lyg/m;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/transsion/baseui/fragment/BaseFragment;->isFirst:Z

    .line 6
    .line 7
    new-instance v0, Lcom/transsion/baseui/fragment/a;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/transsion/baseui/fragment/a;-><init>(Lcom/transsion/baseui/fragment/BaseFragment;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/transsion/baseui/fragment/BaseFragment;->logViewConfig$delegate:Lkotlin/Lazy;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic V(Lcom/transsion/baseui/fragment/BaseFragment;)Lqi/b;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->W(Lcom/transsion/baseui/fragment/BaseFragment;)Lqi/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final W(Lcom/transsion/baseui/fragment/BaseFragment;)Lqi/b;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->newLogViewConfig()Lqi/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final X()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baseui/fragment/BaseFragment;->isFirst:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/transsion/baseui/fragment/BaseFragment;->isFirst:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->lazyLoadData()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private final Y()V
    .locals 2

    .line 1
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/baseui/fragment/BaseFragment;->netListener:Lyg/m;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lyg/l;->l(Lyg/m;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final Z()V
    .locals 2

    .line 1
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/baseui/fragment/BaseFragment;->netListener:Lyg/m;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lyg/l;->m(Lyg/m;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getLogViewConfig()Lqi/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/fragment/BaseFragment;->logViewConfig$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lqi/b;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getMViewBinding()Lf4/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/fragment/BaseFragment;->mViewBinding:Lf4/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNetListener()Lyg/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baseui/fragment/BaseFragment;->netListener:Lyg/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
.end method

.method public hideLoading()V
    .locals 0

    .line 1
    return-void
.end method

.method public initData(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public initListener()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract initView(Landroid/view/View;Landroid/os/Bundle;)V
.end method

.method public final isFirst()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baseui/fragment/BaseFragment;->isFirst:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract lazyLoadData()V
.end method

.method public logPause()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/baselib/report/g$a;->b(Lcom/transsion/baselib/report/g;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public logResume()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/baselib/report/g$a;->c(Lcom/transsion/baselib/report/g;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public newIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public newLogViewConfig()Lqi/b;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/transsion/baselib/report/g$a;->a(Lcom/transsion/baselib/report/g;)Lqi/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/transsion/baseui/fragment/BaseFragment;->isFirst:Z

    .line 6
    .line 7
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    const-string p2, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/transsion/baseui/fragment/BaseFragment;->mViewBinding:Lf4/a;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lf4/a;->getRoot()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/transsion/baseui/fragment/BaseFragment;->mViewBinding:Lf4/a;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->Z()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->logPause()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->logResume()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->X()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/transsion/baseui/fragment/BaseFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/transsion/baseui/fragment/BaseFragment;->initData(Landroid/view/View;Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->initListener()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->Y()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final setFirst(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/baseui/fragment/BaseFragment;->isFirst:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setMViewBinding(Lf4/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/baseui/fragment/BaseFragment;->mViewBinding:Lf4/a;

    .line 2
    .line 3
    return-void
.end method

.method public final setNetListener(Lyg/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baseui/fragment/BaseFragment;->netListener:Lyg/m;

    .line 2
    .line 3
    return-void
.end method

.method public startLoading()V
    .locals 0

    .line 1
    return-void
.end method
