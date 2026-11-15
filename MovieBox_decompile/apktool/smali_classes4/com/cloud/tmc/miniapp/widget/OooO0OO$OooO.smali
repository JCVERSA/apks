.class public final Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.cloud.tmc.miniapp.widget.TabBarItemView$requestDrawable$1"
    f = "TabBarView.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/widget/OooO0OO;

.field public final synthetic OooO0O0:Ljava/lang/String;

.field public final synthetic OooO0OO:Ljava/lang/String;

.field public final synthetic OooO0Oo:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/OooO0OO;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/widget/OooO0OO;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0O0:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0OO:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0Oo:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static final OooO00o(Lkotlin/jvm/functions/Function1;Ljava/io/File;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    invoke-static {p1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0O0:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0OO:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0Oo:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;-><init>(Lcom/cloud/tmc/miniapp/widget/OooO0OO;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    move-object v5, p2

    .line 4
    check-cast v5, Lkotlin/coroutines/Continuation;

    .line 5
    .line 6
    new-instance p1, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0O0:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0OO:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0Oo:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;-><init>(Lcom/cloud/tmc/miniapp/widget/OooO0OO;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0o:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-lez p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    .line 18
    .line 19
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0o:Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0O0:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0OO:Ljava/lang/String;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooOO0o:Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface {v0, v1, v2, p1}, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0o:Lcom/cloud/tmc/kernel/resource/IResourceProcessor;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0O0:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0OO:Ljava/lang/String;

    .line 39
    .line 40
    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/resource/IResourceProcessor;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO00o:Lcom/cloud/tmc/miniapp/widget/OooO0OO;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/widget/OooO0OO;->OooO0O0(Lcom/cloud/tmc/miniapp/widget/OooO0OO;)Landroidx/appcompat/widget/AppCompatImageView;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/OooO0OO$OooO;->OooO0Oo:Lkotlin/jvm/functions/Function1;

    .line 51
    .line 52
    new-instance v2, Lcom/cloud/tmc/miniapp/widget/o;

    .line 53
    .line 54
    invoke-direct {v2, v1, p1}, Lcom/cloud/tmc/miniapp/widget/o;-><init>(Lkotlin/jvm/functions/Function1;Ljava/io/File;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 58
    .line 59
    .line 60
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 61
    .line 62
    return-object p1
.end method
