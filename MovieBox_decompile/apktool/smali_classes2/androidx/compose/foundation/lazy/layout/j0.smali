.class public abstract Landroidx/compose/foundation/lazy/layout/j0;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Landroidx/compose/foundation/lazy/layout/j0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "robolectric"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Landroidx/compose/foundation/lazy/layout/j0$a;

    .line 23
    .line 24
    invoke-direct {v0}, Landroidx/compose/foundation/lazy/layout/j0$a;-><init>()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    sput-object v0, Landroidx/compose/foundation/lazy/layout/j0;->a:Landroidx/compose/foundation/lazy/layout/j0$a;

    .line 30
    .line 31
    return-void
.end method

.method public static final a(Landroidx/compose/runtime/i;I)Landroidx/compose/foundation/lazy/layout/i0;
    .locals 3

    .line 1
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    const-string v1, "androidx.compose.foundation.lazy.layout.rememberDefaultPrefetchScheduler (PrefetchScheduler.android.kt:32)"

    .line 9
    .line 10
    const v2, 0x440f9293

    .line 11
    .line 12
    .line 13
    invoke-static {v2, p1, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object p1, Landroidx/compose/foundation/lazy/layout/j0;->a:Landroidx/compose/foundation/lazy/layout/j0$a;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const v0, 0x485a89af

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, v0}, Landroidx/compose/runtime/i;->P(I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0}, Landroidx/compose/runtime/i;->K()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const p1, 0x485b21a8    # 224390.62f

    .line 31
    .line 32
    .line 33
    invoke-interface {p0, p1}, Landroidx/compose/runtime/i;->P(I)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->j()Landroidx/compose/runtime/s1;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p0, p1}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/view/View;

    .line 45
    .line 46
    invoke-interface {p0, p1}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-interface {p0}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-ne v1, v0, :cond_3

    .line 63
    .line 64
    :cond_2
    new-instance v1, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;

    .line 65
    .line 66
    invoke-direct {v1, p1}, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;-><init>(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p0, v1}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    move-object p1, v1

    .line 73
    check-cast p1, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;

    .line 74
    .line 75
    invoke-interface {p0}, Landroidx/compose/runtime/i;->K()V

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_4

    .line 83
    .line 84
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 85
    .line 86
    .line 87
    :cond_4
    return-object p1
.end method
