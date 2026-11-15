.class public final Lih/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lfh/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lih/b$a;
    }
.end annotation


# static fields
.field public static final a:Lih/b$a;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lih/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lih/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lih/b;->a:Lih/b$a;

    .line 8
    .line 9
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 10
    .line 11
    new-instance v1, Lih/a;

    .line 12
    .line 13
    invoke-direct {v1}, Lih/a;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lih/b;->b:Lkotlin/Lazy;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e()Lih/b;
    .locals 1

    .line 1
    invoke-static {}, Lih/b;->h()Lih/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic f()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lih/b;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method private final g(Ljava/lang/CharSequence;IIIII)V
    .locals 1

    .line 1
    if-eqz p6, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 4
    .line 5
    invoke-virtual {v0, p6}, Lcom/tn/lib/widget/toast/core/h;->j(I)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p6, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 10
    .line 11
    sget v0, Lcom/tn/lib/widget/R$layout;->libui_common_toast_layout:I

    .line 12
    .line 13
    invoke-virtual {p6, v0}, Lcom/tn/lib/widget/toast/core/h;->j(I)V

    .line 14
    .line 15
    .line 16
    :goto_0
    if-nez p3, :cond_1

    .line 17
    .line 18
    if-nez p4, :cond_1

    .line 19
    .line 20
    if-eqz p5, :cond_2

    .line 21
    .line 22
    :cond_1
    sget-object p6, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 23
    .line 24
    invoke-virtual {p6, p3, p4, p5}, Lcom/tn/lib/widget/toast/core/h;->f(III)V

    .line 25
    .line 26
    .line 27
    :cond_2
    if-eqz p2, :cond_3

    .line 28
    .line 29
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    sget-object p2, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    return-void
.end method

.method private static final h()Lih/b;
    .locals 1

    .line 1
    new-instance v0, Lih/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lih/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 7

    .line 1
    const/4 v5, 0x0

    .line 2
    const/4 v6, 0x0

    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move v2, p1

    .line 9
    invoke-direct/range {v0 .. v6}, Lih/b;->g(Ljava/lang/CharSequence;IIIII)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 7

    .line 1
    const/4 v5, 0x0

    .line 2
    const/4 v6, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    invoke-direct/range {v0 .. v6}, Lih/b;->g(Ljava/lang/CharSequence;IIIII)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public c(ILjava/lang/CharSequence;III)V
    .locals 8

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p2

    .line 9
    move v4, p3

    .line 10
    move v5, p4

    .line 11
    move v6, p5

    .line 12
    move v7, p1

    .line 13
    invoke-direct/range {v1 .. v7}, Lih/b;->g(Ljava/lang/CharSequence;IIIII)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public d(Ljava/lang/CharSequence;I)V
    .locals 7

    .line 1
    const/4 v5, 0x0

    .line 2
    const/4 v6, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v4, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move v3, p2

    .line 8
    invoke-direct/range {v0 .. v6}, Lih/b;->g(Ljava/lang/CharSequence;IIIII)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
