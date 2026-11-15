.class final Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ninegridview/helper/FileHelper;->r(Landroidx/appcompat/app/AppCompatActivity;Landroid/graphics/Bitmap;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.ninegridview.helper.FileHelper$saveBitmapToPicture$1$1"
    f = "FileHelper.kt"
    l = {
        0x154,
        0x15b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic $callback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Boolean;",
            "Ljava/io/File;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $fileName:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/io/File;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$fileName:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$bitmap:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$callback:Lkotlin/jvm/functions/Function2;

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
    new-instance p1, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$fileName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$bitmap:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$callback:Lkotlin/jvm/functions/Function2;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lcom/transsion/ninegridview/helper/FileHelper;->a:Lcom/transsion/ninegridview/helper/FileHelper;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$fileName:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Lcom/transsion/ninegridview/helper/FileHelper;->m(Ljava/lang/String;)Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const/4 v11, 0x0

    .line 47
    if-eqz v4, :cond_4

    .line 48
    .line 49
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v2, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1$1;

    .line 54
    .line 55
    iget-object v4, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$callback:Lkotlin/jvm/functions/Function2;

    .line 56
    .line 57
    invoke-direct {v2, v4, v1, v11}, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    .line 58
    .line 59
    .line 60
    iput v3, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->label:I

    .line 61
    .line 62
    invoke-static {p1, v2, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-ne p1, v0, :cond_3

    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 70
    .line 71
    return-object p1

    .line 72
    :cond_4
    iget-object v4, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$bitmap:Landroid/graphics/Bitmap;

    .line 73
    .line 74
    iget-object v5, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 75
    .line 76
    iget-object v6, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$fileName:Ljava/lang/String;

    .line 77
    .line 78
    const/16 v9, 0xc

    .line 79
    .line 80
    const/4 v10, 0x0

    .line 81
    const/4 v7, 0x0

    .line 82
    const/4 v8, 0x0

    .line 83
    move-object v3, p1

    .line 84
    invoke-static/range {v3 .. v10}, Lcom/transsion/ninegridview/helper/FileHelper;->v(Lcom/transsion/ninegridview/helper/FileHelper;Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Landroid/net/Uri;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    new-instance v3, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1$2;

    .line 92
    .line 93
    iget-object v4, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->$callback:Lkotlin/jvm/functions/Function2;

    .line 94
    .line 95
    invoke-direct {v3, v4, v1, v11}, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1$2;-><init>(Lkotlin/jvm/functions/Function2;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    .line 96
    .line 97
    .line 98
    iput v2, p0, Lcom/transsion/ninegridview/helper/FileHelper$saveBitmapToPicture$1$1;->label:I

    .line 99
    .line 100
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-ne p1, v0, :cond_5

    .line 105
    .line 106
    return-object v0

    .line 107
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 108
    .line 109
    return-object p1
.end method
