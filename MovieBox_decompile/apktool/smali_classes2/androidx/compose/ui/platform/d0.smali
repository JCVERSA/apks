.class public final Landroidx/compose/ui/platform/d0;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Landroidx/compose/ui/platform/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/platform/d0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/platform/d0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/platform/d0;->a:Landroidx/compose/ui/platform/d0;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/compose/ui/platform/c0;->a(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/z;->a:Landroidx/compose/ui/platform/z;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/platform/a0;->a(Ljava/lang/Object;)Landroid/view/translation/ViewTranslationCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Landroidx/compose/ui/platform/b0;->a(Landroid/view/View;Landroid/view/translation/ViewTranslationCallback;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
