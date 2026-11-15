.class public abstract Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;
.super Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\nJO\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0019\u0010\u0018\u001a\u00020\u00082\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0003J\u0017\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0019\u0010\u001f\u001a\u00020\u00082\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008!\u0010\u0003J\u000f\u0010\"\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\"\u0010\u0003J\u0017\u0010%\u001a\u00020\u00082\u0006\u0010$\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\'\u0010)\u001a\u00020\u00082\u0006\u0010$\u001a\u00020#2\u0006\u0010(\u001a\u00020\'2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008)\u0010*J\'\u0010+\u001a\u00020\u00082\u0006\u0010$\u001a\u00020#2\u0006\u0010(\u001a\u00020\'2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008+\u0010*J\'\u0010,\u001a\u00020\u00082\u0006\u0010$\u001a\u00020#2\u0006\u0010(\u001a\u00020\'2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008,\u0010*J\'\u0010-\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\'2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008-\u0010.J\u001f\u00101\u001a\u00020\u00082\u000e\u00100\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010/H\u0016\u00a2\u0006\u0004\u00081\u00102J\u0011\u00104\u001a\u0004\u0018\u000103H\u0016\u00a2\u0006\u0004\u00084\u00105J\u000f\u00106\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00086\u00107J\u000f\u00108\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00088\u00107J\u000f\u00109\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u00089\u0010\u0003R\u0016\u0010<\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0018\u0010?\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R$\u0010F\u001a\u0004\u0018\u00010\'8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008@\u0010A\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER\u0016\u0010J\u001a\u00020G8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u001d\u0010P\u001a\u0004\u0018\u00010K8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010OR\u001d\u0010U\u001a\u0004\u0018\u00010Q8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008R\u0010M\u001a\u0004\u0008S\u0010TR\u001d\u0010Z\u001a\u0004\u0018\u00010V8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008W\u0010M\u001a\u0004\u0008X\u0010Y\u00a8\u0006["
    }
    d2 = {
        "Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;",
        "Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;",
        "<init>",
        "()V",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "bean",
        "",
        "position",
        "",
        "b1",
        "(Lcom/transsion/baselib/db/download/DownloadBean;I)V",
        "item",
        "Z0",
        "",
        "path",
        "resourceId",
        "url",
        "name",
        "postId",
        "subjectId",
        "a1",
        "(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V",
        "Lcom/transsnet/downloader/bean/MovieRecBean;",
        "movieRecBean",
        "g1",
        "(Lcom/transsnet/downloader/bean/MovieRecBean;)V",
        "V0",
        "c1",
        "(Ljava/lang/String;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "initViewData",
        "initViewModel",
        "Lcom/transsnet/downloader/adapter/k;",
        "adapter",
        "o0",
        "(Lcom/transsnet/downloader/adapter/k;)V",
        "Landroid/view/View;",
        "view",
        "B0",
        "(Lcom/transsnet/downloader/adapter/k;Landroid/view/View;I)V",
        "A0",
        "C0",
        "X0",
        "(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V",
        "",
        "list",
        "D0",
        "(Ljava/util/List;)V",
        "Lcom/transsnet/downloader/viewmodel/DownloadViewModel;",
        "q0",
        "()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;",
        "e1",
        "()I",
        "getScreenType",
        "h1",
        "d",
        "I",
        "movieRecPage",
        "e",
        "Lcom/transsnet/downloader/viewmodel/DownloadViewModel;",
        "mForYouViewModel",
        "f",
        "Landroid/view/View;",
        "R0",
        "()Landroid/view/View;",
        "f1",
        "(Landroid/view/View;)V",
        "mEmptyView",
        "",
        "g",
        "J",
        "lastRecLoadTime",
        "Lep/a;",
        "h",
        "Lkotlin/Lazy;",
        "getMAudioApi",
        "()Lep/a;",
        "mAudioApi",
        "Lep/b;",
        "i",
        "getMFloatApi",
        "()Lep/b;",
        "mFloatApi",
        "Lsi/a;",
        "j",
        "Q0",
        "()Lsi/a;",
        "audioDao",
        "Downloader_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private d:I

.field private e:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

.field private f:Landroid/view/View;

.field private g:J

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->d:I

    .line 6
    .line 7
    new-instance v0, Lcom/transsnet/downloader/fragment/b5;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/transsnet/downloader/fragment/b5;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->h:Lkotlin/Lazy;

    .line 17
    .line 18
    new-instance v0, Lcom/transsnet/downloader/fragment/c5;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/transsnet/downloader/fragment/c5;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->i:Lkotlin/Lazy;

    .line 28
    .line 29
    new-instance v0, Lcom/transsnet/downloader/fragment/d5;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/transsnet/downloader/fragment/d5;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->j:Lkotlin/Lazy;

    .line 39
    .line 40
    return-void
.end method

.method public static synthetic E0()Lep/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->mAudioApi_delegate$lambda$0()Lep/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic F0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->d1(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic G0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->U0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H0()Lep/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->W0()Lep/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic I0()Lsi/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->P0()Lsi/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic J0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->T0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic K0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->Y0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic L0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->S0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic M0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)Lsi/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->Q0()Lsi/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic N0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)Lep/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->getMAudioApi()Lep/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic O0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)Lep/b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->getMFloatApi()Lep/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final P0()Lsi/a;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApp(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->n1()Lsi/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method private final Q0()Lsi/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->j:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lsi/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final S0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 10
    .line 11
    sget v0, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lfh/b$a;->d(I)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->V0()V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method private static final T0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/transsnet/downloader/bean/MovieRecBean;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->g1(Lcom/transsnet/downloader/bean/MovieRecBean;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final U0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->c1(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private final V0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->e:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->d:I

    .line 6
    .line 7
    const/4 v2, 0x6

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->S(II)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private static final W0()Lep/b;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lep/b;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lep/b;

    .line 11
    .line 12
    return-object v0
.end method

.method private static final Y0(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "/download/transfer"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-static {v0, p0, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method private final Z0(Lcom/transsion/baselib/db/download/DownloadBean;I)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isFileExist()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "getContext(...)"

    .line 28
    .line 29
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, p1, p2}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->v(Landroid/content/Context;Lcom/transsion/baselib/db/download/DownloadBean;I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-static {p2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v3, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;

    .line 45
    .line 46
    const/4 p2, 0x0

    .line 47
    invoke-direct {v3, p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMedia$1;-><init>(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V

    .line 48
    .line 49
    .line 50
    const/4 v4, 0x3

    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v1, 0x0

    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 55
    .line 56
    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v1, ""

    .line 64
    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    move-object v4, v1

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    move-object v4, v0

    .line 70
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-nez v0, :cond_3

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :cond_3
    move-object v5, v0

    .line 81
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-lez v0, :cond_5

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    if-nez v0, :cond_4

    .line 108
    .line 109
    :goto_1
    move-object v7, v1

    .line 110
    goto :goto_2

    .line 111
    :cond_4
    move-object v7, v0

    .line 112
    goto :goto_2

    .line 113
    :cond_5
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-nez v0, :cond_4

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :goto_2
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-nez v0, :cond_6

    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    :cond_6
    move-object v8, v0

    .line 131
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    if-nez v0, :cond_7

    .line 136
    .line 137
    move-object v9, v1

    .line 138
    goto :goto_3

    .line 139
    :cond_7
    move-object v9, v0

    .line 140
    :goto_3
    move-object v2, p0

    .line 141
    move-object v3, p1

    .line 142
    move v10, p2

    .line 143
    invoke-direct/range {v2 .. v10}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->a1(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 144
    .line 145
    .line 146
    :goto_4
    return-void
.end method

.method private final a1(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isShotTV()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x2

    .line 8
    const-string v3, "id"

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lpr/a;->a:Lpr/a;

    .line 14
    .line 15
    invoke-virtual {v0}, Lpr/a;->b()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v3, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "ep"

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {v0, v1, v3}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "ops"

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v0, v1, v3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "ms"

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getReadProgress()J

    .line 54
    .line 55
    .line 56
    move-result-wide v5

    .line 57
    invoke-virtual {v0, v1, v5, v6}, Lcom/therouter/router/Navigator;->G(Ljava/lang/String;J)Lcom/therouter/router/Navigator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v0, v1, v4, v2, v4}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isShorts()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    const/4 v5, 0x1

    .line 74
    if-eqz v1, :cond_9

    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    move-object v0, v4

    .line 88
    :goto_0
    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 89
    .line 90
    if-eqz v1, :cond_2

    .line 91
    .line 92
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    move-object v0, v4

    .line 96
    :goto_1
    if-nez v0, :cond_3

    .line 97
    .line 98
    return-void

    .line 99
    :cond_3
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->O()Landroidx/lifecycle/b0;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Ljava/util/List;

    .line 112
    .line 113
    if-eqz v1, :cond_7

    .line 114
    .line 115
    check-cast v1, Ljava/lang/Iterable;

    .line 116
    .line 117
    new-instance v6, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-eqz v7, :cond_6

    .line 131
    .line 132
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    move-object v8, v7

    .line 137
    check-cast v8, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 138
    .line 139
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->isShorts()Z

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    if-eqz v9, :cond_4

    .line 144
    .line 145
    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    if-eqz v8, :cond_4

    .line 150
    .line 151
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    if-nez v8, :cond_5

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_5
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_6
    new-instance v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMp4File$$inlined$sortedByDescending$1;

    .line 163
    .line 164
    invoke-direct {v1}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$openMp4File$$inlined$sortedByDescending$1;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-static {v6, v1}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    if-eqz v1, :cond_7

    .line 172
    .line 173
    check-cast v1, Ljava/lang/Iterable;

    .line 174
    .line 175
    new-instance v6, Ljava/util/ArrayList;

    .line 176
    .line 177
    const/16 v7, 0xa

    .line 178
    .line 179
    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 184
    .line 185
    .line 186
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    if-eqz v7, :cond_8

    .line 195
    .line 196
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    check-cast v7, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 201
    .line 202
    sget-object v8, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    .line 203
    .line 204
    invoke-virtual {v8, v7}, Lcom/transsnet/downloader/util/DownloadUtil;->l(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    :cond_8
    const-string v1, "/post/detailVideo"

    .line 217
    .line 218
    invoke-static {v1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    invoke-virtual {v1, v3, v7}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    const-string v3, "page_from"

    .line 231
    .line 232
    const-string v7, "download_list"

    .line 233
    .line 234
    invoke-virtual {v1, v3, v7}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    const-string v3, "video_load_more"

    .line 239
    .line 240
    invoke-virtual {v1, v3, v5}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    new-instance v3, Ljava/util/ArrayList;

    .line 245
    .line 246
    check-cast v6, Ljava/util/Collection;

    .line 247
    .line 248
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 249
    .line 250
    .line 251
    const-string v6, "downloaded_shorts_list"

    .line 252
    .line 253
    invoke-virtual {v1, v6, v3}, Lcom/therouter/router/Navigator;->J(Ljava/lang/String;Ljava/io/Serializable;)Lcom/therouter/router/Navigator;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    const-string v3, "prioritize_downloaded"

    .line 258
    .line 259
    invoke-virtual {v1, v3, v5}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    const-string v3, "is_from_downloaded"

    .line 264
    .line 265
    invoke-virtual {v1, v3, v5}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    sget-object v3, Lcom/transsion/moviedetailapi/bean/MediaType;->VIDEO:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 270
    .line 271
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    const-string v5, "media_type"

    .line 276
    .line 277
    invoke-virtual {v1, v5, v3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    sget-object v3, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    .line 282
    .line 283
    move-object v6, p1

    .line 284
    invoke-virtual {v3, p1}, Lcom/transsnet/downloader/util/DownloadUtil;->l(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    const-string v5, "item_object"

    .line 289
    .line 290
    invoke-virtual {v1, v5, v3}, Lcom/therouter/router/Navigator;->J(Ljava/lang/String;Ljava/io/Serializable;)Lcom/therouter/router/Navigator;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-static {v1, v0, v4, v2, v4}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    :cond_9
    move-object v6, p1

    .line 299
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    if-eqz v1, :cond_a

    .line 304
    .line 305
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    goto :goto_4

    .line 310
    :cond_a
    move-object v1, v4

    .line 311
    :goto_4
    instance-of v7, v1, Landroidx/appcompat/app/AppCompatActivity;

    .line 312
    .line 313
    if-eqz v7, :cond_b

    .line 314
    .line 315
    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    .line 316
    .line 317
    goto :goto_5

    .line 318
    :cond_b
    move-object v1, v4

    .line 319
    :goto_5
    if-nez v1, :cond_c

    .line 320
    .line 321
    return-void

    .line 322
    :cond_c
    const-string v7, "/video/detail"

    .line 323
    .line 324
    invoke-static {v7}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 325
    .line 326
    .line 327
    move-result-object v7

    .line 328
    const-string v8, "subject_type"

    .line 329
    .line 330
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectType()I

    .line 331
    .line 332
    .line 333
    move-result v9

    .line 334
    invoke-virtual {v7, v8, v9}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 335
    .line 336
    .line 337
    move-result-object v7

    .line 338
    invoke-virtual {v7, v3, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    const-string v7, "extra_local_path"

    .line 343
    .line 344
    move-object v8, p2

    .line 345
    invoke-virtual {v3, v7, p2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    const-string v7, "extra_url"

    .line 350
    .line 351
    move-object v8, p4

    .line 352
    invoke-virtual {v3, v7, p4}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    const-string v7, "extra_resource_id"

    .line 357
    .line 358
    move-object v8, p3

    .line 359
    invoke-virtual {v3, v7, p3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    const-string v7, "extra_subject_id"

    .line 364
    .line 365
    invoke-virtual {v3, v7, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    const-string v3, "extra_name"

    .line 370
    .line 371
    move-object v7, p5

    .line 372
    invoke-virtual {v0, v3, p5}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    const-string v3, "extra_post_id"

    .line 377
    .line 378
    move-object/from16 v7, p6

    .line 379
    .line 380
    invoke-virtual {v0, v3, v7}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    const-string v3, "extra_completed"

    .line 385
    .line 386
    invoke-virtual {v0, v3, v5}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    const-string v3, "extra_is_series"

    .line 391
    .line 392
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    .line 393
    .line 394
    .line 395
    move-result v5

    .line 396
    invoke-virtual {v0, v3, v5}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    const-string v3, "extra_page_from"

    .line 401
    .line 402
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->getPageName()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v5

    .line 406
    invoke-virtual {v0, v3, v5}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    const-string v3, "extra_height"

    .line 411
    .line 412
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getVideoHeight()I

    .line 413
    .line 414
    .line 415
    move-result v5

    .line 416
    invoke-virtual {v0, v3, v5}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    const-string v3, "extra_width"

    .line 421
    .line 422
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getVideoWidth()I

    .line 423
    .line 424
    .line 425
    move-result v5

    .line 426
    invoke-virtual {v0, v3, v5}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    const-string v3, "extra_position"

    .line 431
    .line 432
    move/from16 v5, p8

    .line 433
    .line 434
    invoke-virtual {v0, v3, v5}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    const-string v3, "extra_parent_position"

    .line 439
    .line 440
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->e1()I

    .line 441
    .line 442
    .line 443
    move-result v7

    .line 444
    invoke-virtual {v0, v3, v7}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    .line 449
    .line 450
    .line 451
    move-result v3

    .line 452
    if-eqz v3, :cond_d

    .line 453
    .line 454
    move v3, v5

    .line 455
    goto :goto_6

    .line 456
    :cond_d
    const/4 v3, -0x1

    .line 457
    :goto_6
    const-string v5, "extra_series_position"

    .line 458
    .line 459
    invoke-virtual {v0, v5, v3}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-static {v0, v1, v4, v2, v4}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    return-void
.end method

.method private final b1(Lcom/transsion/baselib/db/download/DownloadBean;I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    instance-of v2, v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object v0, v1

    .line 22
    :goto_1
    if-nez v0, :cond_2

    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    const-string v2, "/download/series_list"

    .line 26
    .line 27
    invoke-static {v2}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-nez v3, :cond_3

    .line 36
    .line 37
    const-string v3, "Series"

    .line 38
    .line 39
    :cond_3
    const-string v4, "extra_name"

    .line 40
    .line 41
    invoke-virtual {v2, v4, v3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, "extra_subject_id"

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v2, v3, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v2, "extra_parent_position"

    .line 56
    .line 57
    invoke-virtual {p1, v2, p2}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/4 p2, 0x2

    .line 62
    invoke-static {p1, v0, v1, p2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private final c1(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->r0()Lcom/transsnet/downloader/adapter/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_3

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 v1, -0x1

    .line 54
    :cond_3
    :goto_1
    if-ltz v1, :cond_4

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lbx/v;

    .line 61
    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    iget-object p1, p1, Lbx/v;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    new-instance v0, Lcom/transsnet/downloader/fragment/g5;

    .line 69
    .line 70
    invoke-direct {v0, p0, v1}, Lcom/transsnet/downloader/fragment/g5;-><init>(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    :cond_4
    return-void
.end method

.method private static final d1(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbx/v;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Lbx/v;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    :goto_0
    instance-of v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move-object v0, v1

    .line 28
    :goto_1
    if-eqz v0, :cond_2

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v0, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->R()Landroidx/lifecycle/b0;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private final g1(Lcom/transsnet/downloader/bean/MovieRecBean;)V
    .locals 103

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/MovieRecBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-static {v2}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v2, v0

    .line 30
    :goto_0
    iput v2, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->d:I

    .line 31
    .line 32
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 33
    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->getTAG()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    iget v3, v1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->d:I

    .line 39
    .line 40
    const/4 v9, 0x0

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/MovieRecBean;->getItems()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move-object v5, v9

    .line 59
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v7, "----------showFootMovieRec,empty  movieRecPage:"

    .line 65
    .line 66
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v3, ", size:"

    .line 73
    .line 74
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    filled-new-array {v3}, [Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    const/4 v7, 0x4

    .line 89
    const/4 v8, 0x0

    .line 90
    const/4 v6, 0x0

    .line 91
    move-object v3, v2

    .line 92
    invoke-static/range {v3 .. v8}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Lbx/v;

    .line 100
    .line 101
    const/4 v10, 0x0

    .line 102
    if-eqz v3, :cond_9

    .line 103
    .line 104
    iget-object v3, v3, Lbx/v;->f:Landroidx/core/widget/NestedScrollView;

    .line 105
    .line 106
    if-eqz v3, :cond_9

    .line 107
    .line 108
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-nez v3, :cond_9

    .line 113
    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->getTAG()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    const-string v3, "----------showFootMovieRec,empty  "

    .line 119
    .line 120
    filled-new-array {v3}, [Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    const/4 v7, 0x4

    .line 125
    const/4 v8, 0x0

    .line 126
    const/4 v6, 0x0

    .line 127
    move-object v3, v2

    .line 128
    invoke-static/range {v3 .. v8}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Lbx/v;

    .line 136
    .line 137
    if-eqz v2, :cond_6

    .line 138
    .line 139
    iget-object v2, v2, Lbx/v;->c:Lcom/transsnet/downloader/widget/DownloadPanelForYouFootView;

    .line 140
    .line 141
    if-eqz v2, :cond_6

    .line 142
    .line 143
    if-eqz p1, :cond_2

    .line 144
    .line 145
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/MovieRecBean;->getItems()Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    goto :goto_2

    .line 150
    :cond_2
    move-object v3, v9

    .line 151
    :goto_2
    check-cast v3, Ljava/util/Collection;

    .line 152
    .line 153
    if-eqz v3, :cond_4

    .line 154
    .line 155
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-eqz v3, :cond_3

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_3
    move v0, v10

    .line 163
    :cond_4
    :goto_3
    if-nez v0, :cond_5

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_5
    const/16 v10, 0x8

    .line 167
    .line 168
    :goto_4
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    :cond_6
    if-eqz p1, :cond_15

    .line 172
    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/MovieRecBean;->getItems()Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-eqz v0, :cond_15

    .line 178
    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    check-cast v2, Lbx/v;

    .line 184
    .line 185
    if-eqz v2, :cond_8

    .line 186
    .line 187
    iget-object v2, v2, Lbx/v;->c:Lcom/transsnet/downloader/widget/DownloadPanelForYouFootView;

    .line 188
    .line 189
    if-eqz v2, :cond_8

    .line 190
    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    check-cast v3, Lbx/v;

    .line 196
    .line 197
    if-eqz v3, :cond_7

    .line 198
    .line 199
    iget-object v9, v3, Lbx/v;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 200
    .line 201
    :cond_7
    invoke-virtual {v2, v9}, Lcom/transsnet/downloader/widget/DownloadPanelForYouFootView;->initBrowseReport(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 202
    .line 203
    .line 204
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    check-cast v2, Lbx/v;

    .line 209
    .line 210
    if-eqz v2, :cond_15

    .line 211
    .line 212
    iget-object v2, v2, Lbx/v;->c:Lcom/transsnet/downloader/widget/DownloadPanelForYouFootView;

    .line 213
    .line 214
    if-eqz v2, :cond_15

    .line 215
    .line 216
    invoke-virtual {v2, v0}, Lcom/transsnet/downloader/widget/DownloadPanelForYouFootView;->setData(Ljava/util/List;)V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_c

    .line 220
    .line 221
    :cond_9
    if-eqz p1, :cond_a

    .line 222
    .line 223
    invoke-virtual/range {p1 .. p1}, Lcom/transsnet/downloader/bean/MovieRecBean;->getItems()Ljava/util/List;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    goto :goto_5

    .line 228
    :cond_a
    move-object v3, v9

    .line 229
    :goto_5
    check-cast v3, Ljava/util/Collection;

    .line 230
    .line 231
    if-eqz v3, :cond_15

    .line 232
    .line 233
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    if-eqz v3, :cond_b

    .line 238
    .line 239
    goto/16 :goto_c

    .line 240
    .line 241
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->r0()Lcom/transsnet/downloader/adapter/k;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    if-eqz v3, :cond_c

    .line 246
    .line 247
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    if-eqz v3, :cond_c

    .line 252
    .line 253
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    check-cast v3, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_c
    move-object v3, v9

    .line 261
    :goto_6
    if-eqz v3, :cond_f

    .line 262
    .line 263
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->isFroYouList()Z

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    if-ne v3, v0, :cond_f

    .line 268
    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->getTAG()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    const-string v3, "----------2showFootMovieRec, data refresh  "

    .line 274
    .line 275
    filled-new-array {v3}, [Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    const/4 v7, 0x4

    .line 280
    const/4 v8, 0x0

    .line 281
    const/4 v6, 0x0

    .line 282
    move-object v3, v2

    .line 283
    invoke-static/range {v3 .. v8}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->r0()Lcom/transsnet/downloader/adapter/k;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    const/4 v3, -0x1

    .line 291
    if-eqz v2, :cond_e

    .line 292
    .line 293
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    if-eqz v2, :cond_e

    .line 298
    .line 299
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    if-eqz v4, :cond_e

    .line 308
    .line 309
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 314
    .line 315
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->isFroYouList()Z

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    if-eqz v4, :cond_d

    .line 320
    .line 321
    move v3, v10

    .line 322
    goto :goto_8

    .line 323
    :cond_d
    add-int/2addr v10, v0

    .line 324
    goto :goto_7

    .line 325
    :cond_e
    :goto_8
    if-ltz v3, :cond_15

    .line 326
    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->r0()Lcom/transsnet/downloader/adapter/k;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    if-eqz v0, :cond_15

    .line 332
    .line 333
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_c

    .line 337
    .line 338
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->getTAG()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->r0()Lcom/transsnet/downloader/adapter/k;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    if-eqz v3, :cond_10

    .line 347
    .line 348
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    if-eqz v3, :cond_10

    .line 353
    .line 354
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 359
    .line 360
    .line 361
    move-result-object v9

    .line 362
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .line 366
    .line 367
    const-string v5, "----------3showFootMovieRec, data add  size:"

    .line 368
    .line 369
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    filled-new-array {v3}, [Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v5

    .line 383
    const/4 v7, 0x4

    .line 384
    const/4 v8, 0x0

    .line 385
    const/4 v6, 0x0

    .line 386
    move-object v3, v2

    .line 387
    invoke-static/range {v3 .. v8}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->r0()Lcom/transsnet/downloader/adapter/k;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    if-eqz v2, :cond_11

    .line 395
    .line 396
    new-instance v3, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 397
    .line 398
    move-object v11, v3

    .line 399
    const-wide/16 v4, 0x0

    .line 400
    .line 401
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 402
    .line 403
    .line 404
    move-result-object v16

    .line 405
    const v101, 0xffff

    .line 406
    .line 407
    .line 408
    const/16 v102, 0x0

    .line 409
    .line 410
    const/16 v17, 0x0

    .line 411
    .line 412
    const/16 v18, 0x0

    .line 413
    .line 414
    const/16 v19, 0x0

    .line 415
    .line 416
    const/16 v20, 0x0

    .line 417
    .line 418
    const/16 v21, 0x0

    .line 419
    .line 420
    const-wide/16 v22, 0x0

    .line 421
    .line 422
    const/16 v24, 0x0

    .line 423
    .line 424
    const/16 v25, 0x0

    .line 425
    .line 426
    const/16 v26, 0x0

    .line 427
    .line 428
    const-wide/16 v27, 0x0

    .line 429
    .line 430
    const-wide/16 v29, 0x0

    .line 431
    .line 432
    const/16 v31, 0x0

    .line 433
    .line 434
    const/16 v32, 0x0

    .line 435
    .line 436
    const/16 v33, 0x0

    .line 437
    .line 438
    const/16 v34, 0x0

    .line 439
    .line 440
    const/16 v35, 0x0

    .line 441
    .line 442
    const/16 v36, 0x0

    .line 443
    .line 444
    const/16 v37, 0x0

    .line 445
    .line 446
    const/16 v38, 0x0

    .line 447
    .line 448
    const/16 v39, 0x0

    .line 449
    .line 450
    const/16 v40, 0x0

    .line 451
    .line 452
    const/16 v41, 0x0

    .line 453
    .line 454
    const/16 v42, 0x0

    .line 455
    .line 456
    const/16 v43, 0x0

    .line 457
    .line 458
    const/16 v44, 0x0

    .line 459
    .line 460
    const/16 v45, 0x0

    .line 461
    .line 462
    const-wide/16 v46, 0x0

    .line 463
    .line 464
    const/16 v48, 0x0

    .line 465
    .line 466
    const/16 v49, 0x0

    .line 467
    .line 468
    const/16 v50, 0x0

    .line 469
    .line 470
    const/16 v51, 0x0

    .line 471
    .line 472
    const-wide/16 v52, 0x0

    .line 473
    .line 474
    const/16 v54, 0x0

    .line 475
    .line 476
    const/16 v55, 0x0

    .line 477
    .line 478
    const-wide/16 v56, 0x0

    .line 479
    .line 480
    const/16 v58, 0x0

    .line 481
    .line 482
    const-wide/16 v59, 0x0

    .line 483
    .line 484
    const/16 v61, 0x0

    .line 485
    .line 486
    const/16 v62, 0x0

    .line 487
    .line 488
    const/16 v63, 0x0

    .line 489
    .line 490
    const/16 v64, 0x0

    .line 491
    .line 492
    const/16 v65, 0x0

    .line 493
    .line 494
    const/16 v66, 0x0

    .line 495
    .line 496
    const/16 v67, 0x0

    .line 497
    .line 498
    const/16 v68, 0x0

    .line 499
    .line 500
    const/16 v69, 0x0

    .line 501
    .line 502
    const/16 v70, 0x0

    .line 503
    .line 504
    const/16 v71, 0x0

    .line 505
    .line 506
    const/16 v72, 0x0

    .line 507
    .line 508
    const/16 v73, 0x0

    .line 509
    .line 510
    const/16 v74, 0x0

    .line 511
    .line 512
    const/16 v75, 0x0

    .line 513
    .line 514
    const/16 v76, 0x0

    .line 515
    .line 516
    const/16 v77, 0x0

    .line 517
    .line 518
    const/16 v78, 0x0

    .line 519
    .line 520
    const/16 v79, 0x0

    .line 521
    .line 522
    const/16 v80, 0x0

    .line 523
    .line 524
    const/16 v81, 0x0

    .line 525
    .line 526
    const/16 v82, 0x0

    .line 527
    .line 528
    const/16 v83, 0x0

    .line 529
    .line 530
    const/16 v84, 0x0

    .line 531
    .line 532
    const/16 v85, 0x0

    .line 533
    .line 534
    const/16 v86, 0x0

    .line 535
    .line 536
    const/16 v87, 0x0

    .line 537
    .line 538
    const/16 v88, 0x0

    .line 539
    .line 540
    const/16 v89, 0x0

    .line 541
    .line 542
    const/16 v90, 0x0

    .line 543
    .line 544
    const/16 v91, 0x0

    .line 545
    .line 546
    const/16 v92, 0x0

    .line 547
    .line 548
    const/16 v93, 0x0

    .line 549
    .line 550
    const/16 v94, 0x0

    .line 551
    .line 552
    const/16 v95, 0x0

    .line 553
    .line 554
    const/16 v96, 0x0

    .line 555
    .line 556
    const/16 v97, 0x0

    .line 557
    .line 558
    const/16 v98, 0x0

    .line 559
    .line 560
    const/16 v99, -0x20

    .line 561
    .line 562
    const/16 v100, -0x1

    .line 563
    .line 564
    const-string v12, ""

    .line 565
    .line 566
    const-string v13, ""

    .line 567
    .line 568
    const-string v14, ""

    .line 569
    .line 570
    const-string v15, ""

    .line 571
    .line 572
    invoke-direct/range {v11 .. v102}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v3, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setFroYouList(Z)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->p(Ljava/lang/Object;)V

    .line 579
    .line 580
    .line 581
    :cond_11
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 582
    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->r0()Lcom/transsnet/downloader/adapter/k;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    if-eqz v0, :cond_12

    .line 588
    .line 589
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    if-eqz v0, :cond_12

    .line 594
    .line 595
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 596
    .line 597
    .line 598
    move-result v0

    .line 599
    goto :goto_9

    .line 600
    :catchall_0
    move-exception v0

    .line 601
    goto :goto_a

    .line 602
    :cond_12
    move v0, v10

    .line 603
    :goto_9
    add-int/lit8 v0, v0, -0x2

    .line 604
    .line 605
    if-ltz v0, :cond_14

    .line 606
    .line 607
    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->r0()Lcom/transsnet/downloader/adapter/k;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    if-eqz v0, :cond_14

    .line 612
    .line 613
    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->r0()Lcom/transsnet/downloader/adapter/k;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    if-eqz v2, :cond_13

    .line 618
    .line 619
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 620
    .line 621
    .line 622
    move-result-object v2

    .line 623
    if-eqz v2, :cond_13

    .line 624
    .line 625
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 626
    .line 627
    .line 628
    move-result v10

    .line 629
    :cond_13
    add-int/lit8 v10, v10, -0x2

    .line 630
    .line 631
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 632
    .line 633
    .line 634
    :cond_14
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 635
    .line 636
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    goto :goto_b

    .line 641
    :goto_a
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 642
    .line 643
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    :goto_b
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 652
    .line 653
    .line 654
    :cond_15
    :goto_c
    return-void
.end method

.method private final getMAudioApi()Lep/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->h:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lep/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getMFloatApi()Lep/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->i:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lep/b;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final mAudioApi_delegate$lambda$0()Lep/a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lep/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lep/a;

    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public A0(Lcom/transsnet/downloader/adapter/k;Landroid/view/View;I)V
    .locals 2

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sget v1, Lcom/transsnet/downloader/R$id;->iv_more:I

    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->X0(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public B0(Lcom/transsnet/downloader/adapter/k;Landroid/view/View;I)V
    .locals 1

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isFroYouList()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    const/16 v0, 0xe

    .line 29
    .line 30
    if-ne p2, v0, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    const/16 v0, 0xa

    .line 38
    .line 39
    if-ne p2, v0, :cond_2

    .line 40
    .line 41
    invoke-direct {p0, p1, p3}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->b1(Lcom/transsion/baselib/db/download/DownloadBean;I)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->Z0(Lcom/transsion/baselib/db/download/DownloadBean;I)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public C0(Lcom/transsnet/downloader/adapter/k;Landroid/view/View;I)V
    .locals 1

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->X0(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public D0(Ljava/util/List;)V
    .locals 7

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lbx/v;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, v0, Lbx/v;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lbx/v;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v0, v0, Lbx/v;->f:Landroidx/core/widget/NestedScrollView;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-super {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->D0(Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->R()Landroidx/lifecycle/b0;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Ljava/lang/String;

    .line 59
    .line 60
    if-eqz p1, :cond_5

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->c1(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->h1()V

    .line 74
    .line 75
    .line 76
    :cond_5
    :goto_1
    instance-of p1, p0, Lcom/transsnet/downloader/fragment/DownloadEpisodesListFragment;

    .line 77
    .line 78
    if-nez p1, :cond_b

    .line 79
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v0

    .line 84
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->e:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 85
    .line 86
    const/4 v2, 0x0

    .line 87
    if-eqz p1, :cond_6

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->T()Landroidx/lifecycle/b0;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_6

    .line 94
    .line 95
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_6
    move-object p1, v2

    .line 103
    :goto_2
    if-eqz p1, :cond_a

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Lcom/transsnet/downloader/bean/MovieRecBean;

    .line 110
    .line 111
    if-eqz p1, :cond_7

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/MovieRecBean;->getItems()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    goto :goto_3

    .line 118
    :cond_7
    move-object p1, v2

    .line 119
    :goto_3
    check-cast p1, Ljava/util/Collection;

    .line 120
    .line 121
    if-eqz p1, :cond_a

    .line 122
    .line 123
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_8

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_8
    iget-wide v3, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->g:J

    .line 131
    .line 132
    sub-long v3, v0, v3

    .line 133
    .line 134
    const-wide/32 v5, 0x2bf20

    .line 135
    .line 136
    .line 137
    cmp-long p1, v3, v5

    .line 138
    .line 139
    if-gez p1, :cond_a

    .line 140
    .line 141
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->e:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 142
    .line 143
    if-eqz p1, :cond_b

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->T()Landroidx/lifecycle/b0;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    if-eqz p1, :cond_b

    .line 150
    .line 151
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->e:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 152
    .line 153
    if-eqz v0, :cond_9

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->T()Landroidx/lifecycle/b0;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-eqz v0, :cond_9

    .line 160
    .line 161
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    move-object v2, v0

    .line 166
    check-cast v2, Lcom/tn/lib/net/bean/BaseDto;

    .line 167
    .line 168
    :cond_9
    invoke-virtual {p1, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_a
    :goto_4
    iput-wide v0, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->g:J

    .line 173
    .line 174
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->V0()V

    .line 175
    .line 176
    .line 177
    :cond_b
    :goto_5
    return-void
.end method

.method protected final R0()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->f:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public X0(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V
    .locals 1

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/transsnet/downloader/popup/PopupManager;

    .line 12
    .line 13
    invoke-direct {v0, p3, p1}, Lcom/transsnet/downloader/popup/PopupManager;-><init>(ILcom/transsion/baselib/db/download/DownloadBean;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-virtual {v0, p2, p1}, Lcom/transsnet/downloader/popup/PopupManager;->I(Landroid/view/View;I)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/transsnet/downloader/fragment/f5;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/transsnet/downloader/fragment/f5;-><init>(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/popup/PopupManager;->B(Lkotlin/jvm/functions/Function0;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$a;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$a;-><init>(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/popup/PopupManager;->A(Lcom/transsnet/downloader/adapter/u0$b;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public e1()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method protected final f1(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->f:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public getScreenType()I
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    return v0
.end method

.method public h1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->r0()Lcom/transsnet/downloader/adapter/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lbx/v;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, v0, Lbx/v;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lbx/v;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object v0, v0, Lbx/v;->f:Landroidx/core/widget/NestedScrollView;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lbx/v;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    iget-object v0, v0, Lbx/v;->b:Landroid/widget/FrameLayout;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 54
    .line 55
    .line 56
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lbx/v;

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    iget-object v0, v0, Lbx/v;->b:Landroid/widget/FrameLayout;

    .line 65
    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, v1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getEmptyView(Z)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    :cond_4
    return-void
.end method

.method public initViewData()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->initViewData()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lbx/v;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lbx/v;->c:Lcom/transsnet/downloader/widget/DownloadPanelForYouFootView;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v1, Lcom/transsnet/downloader/fragment/e5;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/e5;-><init>(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/widget/DownloadPanelForYouFootView;->setRefreshClickCallback(Lkotlin/jvm/functions/Function0;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public initViewModel()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->initViewModel()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->e:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->T()Landroidx/lifecycle/b0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/transsnet/downloader/fragment/z4;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/z4;-><init>(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$b;

    .line 20
    .line 21
    invoke-direct {v2, v1}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->R()Landroidx/lifecycle/b0;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Lcom/transsnet/downloader/fragment/a5;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/a5;-><init>(Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;)V

    .line 38
    .line 39
    .line 40
    new-instance v2, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$b;

    .line 41
    .line 42
    invoke-direct {v2, v1}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public o0(Lcom/transsnet/downloader/adapter/k;)V
    .locals 1

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/transsnet/downloader/R$id;->iv_more:I

    .line 7
    .line 8
    filled-new-array {v0}, [I

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->l([I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroidx/lifecycle/v0;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 7
    .line 8
    .line 9
    const-class v0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->e:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 18
    .line 19
    return-void
.end method

.method public q0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->e:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 2
    .line 3
    return-object v0
.end method
