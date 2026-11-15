.class public final Landroidx/compose/ui/platform/AndroidComposeView$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/input/pointer/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/platform/AndroidComposeView;-><init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:Landroidx/compose/ui/input/pointer/s;

.field final synthetic b:Landroidx/compose/ui/platform/AndroidComposeView;


# direct methods
.method constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView$c;->b:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object p1, Landroidx/compose/ui/input/pointer/s;->a:Landroidx/compose/ui/input/pointer/s$a;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/s$a;->a()Landroidx/compose/ui/input/pointer/s;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView$c;->a:Landroidx/compose/ui/input/pointer/s;

    .line 13
    .line 14
    return-void
.end method
