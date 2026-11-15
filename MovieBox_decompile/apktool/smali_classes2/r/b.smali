.class public final Lr/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lr/b;

.field private static final b:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lr/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lr/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lr/b;->a:Lr/b;

    .line 7
    .line 8
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OutlineVariant:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 9
    .line 10
    sput-object v0, Lr/b;->b:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 11
    .line 12
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 13
    .line 14
    double-to-float v0, v0

    .line 15
    invoke-static {v0}, Lo0/i;->g(F)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sput v0, Lr/b;->c:F

    .line 20
    .line 21
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
.method public final a()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 1

    .line 1
    sget-object v0, Lr/b;->b:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()F
    .locals 1

    .line 1
    sget v0, Lr/b;->c:F

    .line 2
    .line 3
    return v0
.end method
