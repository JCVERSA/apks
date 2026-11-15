.class public final Landroidx/compose/material3/c;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Landroidx/compose/material3/c;

.field private static final b:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material3/c;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/material3/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material3/c;->a:Landroidx/compose/material3/c;

    .line 7
    .line 8
    sget-object v0, Lr/b;->a:Lr/b;

    .line 9
    .line 10
    invoke-virtual {v0}, Lr/b;->b()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sput v0, Landroidx/compose/material3/c;->b:F

    .line 15
    .line 16
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
.method public final a(Landroidx/compose/runtime/i;I)J
    .locals 3

    .line 1
    const v0, 0x49df631

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Landroidx/compose/runtime/i;->x(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    const-string v2, "androidx.compose.material3.DividerDefaults.<get-color> (Divider.kt:115)"

    .line 15
    .line 16
    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object p2, Lr/b;->a:Lr/b;

    .line 20
    .line 21
    invoke-virtual {p2}, Lr/b;->a()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const/4 v0, 0x6

    .line 26
    invoke-static {p2, p1, v0}, Landroidx/compose/material3/ColorSchemeKt;->c(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/i;I)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/i;->N()V

    .line 40
    .line 41
    .line 42
    return-wide v0
.end method

.method public final b()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material3/c;->b:F

    .line 2
    .line 3
    return v0
.end method
