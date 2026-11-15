.class public abstract Landroidx/compose/material/ripple/Ripple;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/foundation/x;


# instance fields
.field private final a:Z

.field private final b:F

.field private final c:Landroidx/compose/runtime/a3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>(ZFLandroidx/compose/runtime/a3;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Landroidx/compose/material/ripple/Ripple;->a:Z

    .line 4
    iput p2, p0, Landroidx/compose/material/ripple/Ripple;->b:F

    .line 5
    iput-object p3, p0, Landroidx/compose/material/ripple/Ripple;->c:Landroidx/compose/runtime/a3;

    return-void
.end method

.method public synthetic constructor <init>(ZFLandroidx/compose/runtime/a3;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material/ripple/Ripple;-><init>(ZFLandroidx/compose/runtime/a3;)V

    return-void
.end method


# virtual methods
.method public final a(Lp/g;Landroidx/compose/runtime/i;I)Landroidx/compose/foundation/y;
    .locals 11

    .line 1
    const v0, 0x3aef0613

    .line 2
    .line 3
    .line 4
    invoke-interface {p2, v0}, Landroidx/compose/runtime/i;->P(I)V

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
    const-string v2, "androidx.compose.material.ripple.Ripple.rememberUpdatedInstance (Ripple.kt:196)"

    .line 15
    .line 16
    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {}, Landroidx/compose/material/ripple/RippleThemeKt;->d()Landroidx/compose/runtime/s1;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {p2, v0}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroidx/compose/material/ripple/i;

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/compose/material/ripple/Ripple;->c:Landroidx/compose/runtime/a3;

    .line 30
    .line 31
    invoke-interface {v1}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroidx/compose/ui/graphics/u1;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/u1;->u()J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    const-wide/16 v3, 0x10

    .line 42
    .line 43
    cmp-long v1, v1, v3

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    const v1, -0x12182286

    .line 49
    .line 50
    .line 51
    invoke-interface {p2, v1}, Landroidx/compose/runtime/i;->P(I)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p2}, Landroidx/compose/runtime/i;->K()V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Landroidx/compose/material/ripple/Ripple;->c:Landroidx/compose/runtime/a3;

    .line 58
    .line 59
    invoke-interface {v1}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroidx/compose/ui/graphics/u1;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/u1;->u()J

    .line 66
    .line 67
    .line 68
    move-result-wide v3

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const v1, -0x12175dde    # -8.999566E27f

    .line 71
    .line 72
    .line 73
    invoke-interface {p2, v1}, Landroidx/compose/runtime/i;->P(I)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v0, p2, v2}, Landroidx/compose/material/ripple/i;->a(Landroidx/compose/runtime/i;I)J

    .line 77
    .line 78
    .line 79
    move-result-wide v3

    .line 80
    invoke-interface {p2}, Landroidx/compose/runtime/i;->K()V

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/u1;->g(J)Landroidx/compose/ui/graphics/u1;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v1, p2, v2}, Landroidx/compose/runtime/r2;->i(Ljava/lang/Object;Landroidx/compose/runtime/i;I)Landroidx/compose/runtime/a3;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-interface {v0, p2, v2}, Landroidx/compose/material/ripple/i;->b(Landroidx/compose/runtime/i;I)Landroidx/compose/material/ripple/c;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v0, p2, v2}, Landroidx/compose/runtime/r2;->i(Ljava/lang/Object;Landroidx/compose/runtime/i;I)Landroidx/compose/runtime/a3;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    iget-boolean v5, p0, Landroidx/compose/material/ripple/Ripple;->a:Z

    .line 100
    .line 101
    iget v6, p0, Landroidx/compose/material/ripple/Ripple;->b:F

    .line 102
    .line 103
    and-int/lit8 v0, p3, 0xe

    .line 104
    .line 105
    shl-int/lit8 v1, p3, 0xc

    .line 106
    .line 107
    const/high16 v3, 0x70000

    .line 108
    .line 109
    and-int/2addr v1, v3

    .line 110
    or-int v10, v0, v1

    .line 111
    .line 112
    move-object v3, p0

    .line 113
    move-object v4, p1

    .line 114
    move-object v9, p2

    .line 115
    invoke-virtual/range {v3 .. v10}, Landroidx/compose/material/ripple/Ripple;->c(Lp/g;ZFLandroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/i;I)Landroidx/compose/material/ripple/RippleIndicationInstance;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    xor-int/lit8 v0, v0, 0x6

    .line 120
    .line 121
    const/4 v3, 0x4

    .line 122
    if-le v0, v3, :cond_2

    .line 123
    .line 124
    invoke-interface {p2, p1}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-nez v0, :cond_3

    .line 129
    .line 130
    :cond_2
    and-int/lit8 v0, p3, 0x6

    .line 131
    .line 132
    if-ne v0, v3, :cond_4

    .line 133
    .line 134
    :cond_3
    const/4 v2, 0x1

    .line 135
    :cond_4
    invoke-interface {p2, v1}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    or-int/2addr v0, v2

    .line 140
    invoke-interface {p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    if-nez v0, :cond_5

    .line 145
    .line 146
    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    .line 147
    .line 148
    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    if-ne v2, v0, :cond_6

    .line 153
    .line 154
    :cond_5
    new-instance v2, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$1;

    .line 155
    .line 156
    const/4 v0, 0x0

    .line 157
    invoke-direct {v2, p1, v1, v0}, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$1;-><init>(Lp/g;Landroidx/compose/material/ripple/RippleIndicationInstance;Lkotlin/coroutines/Continuation;)V

    .line 158
    .line 159
    .line 160
    invoke-interface {p2, v2}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    :cond_6
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 164
    .line 165
    shl-int/lit8 p3, p3, 0x3

    .line 166
    .line 167
    and-int/lit8 p3, p3, 0x70

    .line 168
    .line 169
    invoke-static {v1, p1, v2, p2, p3}, Landroidx/compose/runtime/g0;->c(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;I)V

    .line 170
    .line 171
    .line 172
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-eqz p1, :cond_7

    .line 177
    .line 178
    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    .line 179
    .line 180
    .line 181
    :cond_7
    invoke-interface {p2}, Landroidx/compose/runtime/i;->K()V

    .line 182
    .line 183
    .line 184
    return-object v1
.end method

.method public abstract c(Lp/g;ZFLandroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/i;I)Landroidx/compose/material/ripple/RippleIndicationInstance;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/compose/material/ripple/Ripple;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    iget-boolean v1, p0, Landroidx/compose/material/ripple/Ripple;->a:Z

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/material/ripple/Ripple;

    .line 14
    .line 15
    iget-boolean v3, p1, Landroidx/compose/material/ripple/Ripple;->a:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Landroidx/compose/material/ripple/Ripple;->b:F

    .line 21
    .line 22
    iget v3, p1, Landroidx/compose/material/ripple/Ripple;->b:F

    .line 23
    .line 24
    invoke-static {v1, v3}, Lo0/i;->i(FF)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Landroidx/compose/material/ripple/Ripple;->c:Landroidx/compose/runtime/a3;

    .line 32
    .line 33
    iget-object p1, p1, Landroidx/compose/material/ripple/Ripple;->c:Landroidx/compose/runtime/a3;

    .line 34
    .line 35
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/material/ripple/Ripple;->a:Z

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/foundation/e;->a(Z)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Landroidx/compose/material/ripple/Ripple;->b:F

    .line 10
    .line 11
    invoke-static {v1}, Lo0/i;->j(F)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/material/ripple/Ripple;->c:Landroidx/compose/runtime/a3;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    return v0
.end method
