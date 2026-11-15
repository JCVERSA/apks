.class final Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/d0;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/h$b;Lo0/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/ui/text/font/h;",
        "Landroidx/compose/ui/text/font/p;",
        "Landroidx/compose/ui/text/font/n;",
        "Landroidx/compose/ui/text/font/o;",
        "Landroid/graphics/Typeface;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\n\u00a2\u0006\u0004\u0008\t\u0010\n"
    }
    d2 = {
        "Landroidx/compose/ui/text/font/h;",
        "fontFamily",
        "Landroidx/compose/ui/text/font/p;",
        "fontWeight",
        "Landroidx/compose/ui/text/font/n;",
        "fontStyle",
        "Landroidx/compose/ui/text/font/o;",
        "fontSynthesis",
        "Landroid/graphics/Typeface;",
        "invoke-DPcqOEQ",
        "(Landroidx/compose/ui/text/font/h;Landroidx/compose/ui/text/font/p;II)Landroid/graphics/Typeface;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;


# direct methods
.method constructor <init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;->this$0:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 2
    .line 3
    const/4 p1, 0x4

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/text/font/h;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/ui/text/font/p;

    .line 4
    .line 5
    check-cast p3, Landroidx/compose/ui/text/font/n;

    .line 6
    .line 7
    invoke-virtual {p3}, Landroidx/compose/ui/text/font/n;->i()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    check-cast p4, Landroidx/compose/ui/text/font/o;

    .line 12
    .line 13
    invoke-virtual {p4}, Landroidx/compose/ui/text/font/o;->k()I

    .line 14
    .line 15
    .line 16
    move-result p4

    .line 17
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;->invoke-DPcqOEQ(Landroidx/compose/ui/text/font/h;Landroidx/compose/ui/text/font/p;II)Landroid/graphics/Typeface;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public final invoke-DPcqOEQ(Landroidx/compose/ui/text/font/h;Landroidx/compose/ui/text/font/p;II)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;->this$0:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->g()Landroidx/compose/ui/text/font/h$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/compose/ui/text/font/h$b;->a(Landroidx/compose/ui/text/font/h;Landroidx/compose/ui/text/font/p;II)Landroidx/compose/runtime/a3;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    instance-of p2, p1, Landroidx/compose/ui/text/font/e0$a;

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    new-instance p2, Landroidx/compose/ui/text/platform/q;

    .line 16
    .line 17
    iget-object p3, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;->this$0:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 18
    .line 19
    invoke-static {p3}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->d(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;)Landroidx/compose/ui/text/platform/q;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-direct {p2, p1, p3}, Landroidx/compose/ui/text/platform/q;-><init>(Landroidx/compose/runtime/a3;Landroidx/compose/ui/text/platform/q;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics$resolveTypeface$1;->this$0:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 27
    .line 28
    invoke-static {p1, p2}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->e(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;Landroidx/compose/ui/text/platform/q;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Landroidx/compose/ui/text/platform/q;->a()Landroid/graphics/Typeface;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string p2, "null cannot be cast to non-null type android.graphics.Typeface"

    .line 41
    .line 42
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    check-cast p1, Landroid/graphics/Typeface;

    .line 46
    .line 47
    :goto_0
    return-object p1
.end method
