.class public final Ldu/a$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldu/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldu/a$a;-><init>()V

    return-void
.end method

.method private final a(Ldu/a;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ldu/a;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Ldu/a;->a()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const-string v0, "toUpperCase(...)"

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-direct {p0}, Ldu/a$a;->b()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object v2, Lcom/transsion/transfer/wifi/util/d;->a:Lcom/transsion/transfer/wifi/util/d;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Lcom/transsion/transfer/wifi/util/d;->a(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, "-5G-"

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-direct {p0}, Ldu/a$a;->b()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    sget-object v2, Lcom/transsion/transfer/wifi/util/d;->a:Lcom/transsion/transfer/wifi/util/d;

    .line 61
    .line 62
    invoke-virtual {v2, v1}, Lcom/transsion/transfer/wifi/util/d;->a(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p1, "-"

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :goto_0
    return-object p1

    .line 96
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 97
    .line 98
    const-string v0, "the device isn\u2018t sender"

    .line 99
    .line 100
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1
.end method

.method private final b()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/util/d;->a:Lcom/transsion/transfer/wifi/util/d;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/wifi/util/d;->a(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "toUpperCase(...)"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "DIRECT-"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, "-MOVIEBOX"

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method


# virtual methods
.method public final c(Z)Ldu/a;
    .locals 21

    .line 1
    new-instance v15, Ldu/a;

    .line 2
    .line 3
    move-object v0, v15

    .line 4
    const v18, 0x1ffff

    .line 5
    .line 6
    .line 7
    const/16 v19, 0x0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x0

    .line 19
    const/4 v11, 0x0

    .line 20
    const/4 v12, 0x0

    .line 21
    const/4 v13, 0x0

    .line 22
    const/4 v14, 0x0

    .line 23
    const/16 v16, 0x0

    .line 24
    .line 25
    move-object/from16 v20, v15

    .line 26
    .line 27
    move-object/from16 v15, v16

    .line 28
    .line 29
    const/16 v17, 0x0

    .line 30
    .line 31
    invoke-direct/range {v0 .. v19}, Ldu/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "mb_unique"

    .line 35
    .line 36
    move-object/from16 v1, v20

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ldu/a;->y(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ldu/a;->u(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ldu/a;->s(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ldu/a;->w(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Ldu/a;->C(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 62
    .line 63
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v1, v0}, Ldu/a;->D(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/blankj/utilcode/util/c;->f()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v1, v0}, Ldu/a;->A(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lcom/blankj/utilcode/util/c;->h()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v1, v0}, Ldu/a;->B(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lcom/blankj/utilcode/util/c;->e()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v1, v0}, Ldu/a;->v(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sget-object v0, Ljg/b;->a:Ljg/b$a;

    .line 96
    .line 97
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    const-string v3, "getApp(...)"

    .line 102
    .line 103
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ljg/b$a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v1, v0}, Ldu/a;->t(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v0, "userId"

    .line 114
    .line 115
    invoke-virtual {v1, v0}, Ldu/a;->z(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string v0, "avatarIndex"

    .line 119
    .line 120
    invoke-virtual {v1, v0}, Ldu/a;->r(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    if-eqz p1, :cond_0

    .line 124
    .line 125
    const-string v0, "5G"

    .line 126
    .line 127
    invoke-virtual {v1, v0}, Ldu/a;->E(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :goto_0
    move-object/from16 v0, p0

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_0
    const-string v0, "2.4G"

    .line 134
    .line 135
    invoke-virtual {v1, v0}, Ldu/a;->E(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :goto_1
    invoke-direct {v0, v1}, Ldu/a$a;->a(Ldu/a;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v1, v2}, Ldu/a;->H(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    sget-object v2, Lcom/transsion/transfer/wifi/util/b;->a:Lcom/transsion/transfer/wifi/util/b;

    .line 147
    .line 148
    invoke-virtual {v1}, Ldu/a;->p()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    if-nez v3, :cond_1

    .line 153
    .line 154
    const-string v3, ""

    .line 155
    .line 156
    :cond_1
    invoke-virtual {v2, v3}, Lcom/transsion/transfer/wifi/util/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    const/4 v3, 0x0

    .line 161
    const/16 v4, 0x8

    .line 162
    .line 163
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    const-string v3, "substring(...)"

    .line 168
    .line 169
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v2}, Ldu/a;->G(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const/4 v2, 0x1

    .line 176
    invoke-virtual {v1, v2}, Ldu/a;->x(Z)V

    .line 177
    .line 178
    .line 179
    return-object v1
.end method
