.class final Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/n;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2$a;->a:Lkotlinx/coroutines/n;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2$a;->a:Lkotlinx/coroutines/n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, p1, v1}, Lkotlinx/coroutines/n;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/push/notification/ToolbarNotificationUtils$loadImageAsBitmap$2$a;->a(Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method
