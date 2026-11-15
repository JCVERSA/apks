.class public final Landroidx/compose/material/MinimumInteractiveModifierNode;
.super Landroidx/compose/ui/f$c;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/node/d;
.implements Landroidx/compose/ui/node/x;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public z(Landroidx/compose/ui/layout/x;Landroidx/compose/ui/layout/s;J)Landroidx/compose/ui/layout/v;
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->j1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/material/InteractiveComponentSizeKt;->b()Landroidx/compose/runtime/s1;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p0, v0}, Landroidx/compose/ui/node/e;->a(Landroidx/compose/ui/node/d;Landroidx/compose/runtime/q;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-static {}, Landroidx/compose/material/InteractiveComponentSizeKt;->a()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/s;->P(J)Landroidx/compose/ui/layout/g0;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p2}, Landroidx/compose/ui/layout/g0;->u0()I

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    invoke-static {v1, v2}, Lo0/l;->d(J)F

    .line 41
    .line 42
    .line 43
    move-result p4

    .line 44
    invoke-interface {p1, p4}, Lo0/e;->c0(F)I

    .line 45
    .line 46
    .line 47
    move-result p4

    .line 48
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    :goto_1
    move v4, p3

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    invoke-virtual {p2}, Landroidx/compose/ui/layout/g0;->u0()I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    goto :goto_1

    .line 59
    :goto_2
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {p2}, Landroidx/compose/ui/layout/g0;->l0()I

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    invoke-static {v1, v2}, Lo0/l;->c(J)F

    .line 66
    .line 67
    .line 68
    move-result p4

    .line 69
    invoke-interface {p1, p4}, Lo0/e;->c0(F)I

    .line 70
    .line 71
    .line 72
    move-result p4

    .line 73
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    :goto_3
    move v5, p3

    .line 78
    goto :goto_4

    .line 79
    :cond_2
    invoke-virtual {p2}, Landroidx/compose/ui/layout/g0;->l0()I

    .line 80
    .line 81
    .line 82
    move-result p3

    .line 83
    goto :goto_3

    .line 84
    :goto_4
    new-instance v7, Landroidx/compose/material/MinimumInteractiveModifierNode$measure$1;

    .line 85
    .line 86
    invoke-direct {v7, v4, p2, v5}, Landroidx/compose/material/MinimumInteractiveModifierNode$measure$1;-><init>(ILandroidx/compose/ui/layout/g0;I)V

    .line 87
    .line 88
    .line 89
    const/4 v8, 0x4

    .line 90
    const/4 v9, 0x0

    .line 91
    const/4 v6, 0x0

    .line 92
    move-object v3, p1

    .line 93
    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/w;->b(Landroidx/compose/ui/layout/x;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/v;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    return-object p1
.end method
