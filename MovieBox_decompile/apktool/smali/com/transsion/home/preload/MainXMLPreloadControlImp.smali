.class public final Lcom/transsion/home/preload/MainXMLPreloadControlImp;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/home/preload/b;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 7

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/i0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v4, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/home/preload/MainXMLPreloadControlImp$1;-><init>(Lcom/transsion/home/preload/MainXMLPreloadControlImp;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static final synthetic g(Lcom/transsion/home/preload/MainXMLPreloadControlImp;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->f:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic h(Lcom/transsion/home/preload/MainXMLPreloadControlImp;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->e:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic i(Lcom/transsion/home/preload/MainXMLPreloadControlImp;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->a:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public c()Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->m:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->f:Landroid/view/View;

    .line 5
    .line 6
    return-object v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->j:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->e:Landroid/view/View;

    .line 5
    .line 6
    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public f()Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->g:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->a:Landroid/view/View;

    .line 5
    .line 6
    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->a:Landroid/view/View;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->d:Landroid/view/View;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->e:Landroid/view/View;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->b:Landroid/view/View;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->c:Landroid/view/View;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->f:Landroid/view/View;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->g:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->k:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->l:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->h:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->i:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->j:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/transsion/home/preload/MainXMLPreloadControlImp;->m:Z

    .line 28
    .line 29
    return-void
.end method
