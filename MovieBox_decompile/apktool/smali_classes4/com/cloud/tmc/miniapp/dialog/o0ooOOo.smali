.class public final Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;
.super Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o<",
        "Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;",
        ">;"
    }
.end annotation


# instance fields
.field public final OooO:Lkotlin/Lazy;

.field public final OooO00o:Ljava/lang/String;

.field public OooO0O0:Lcom/cloud/tmc/miniapp/dialog/o0OOO0o;

.field public final OooO0OO:Lkotlin/Lazy;

.field public final OooO0Oo:Lkotlin/Lazy;

.field public final OooO0o:Lkotlin/Lazy;

.field public final OooO0o0:Lkotlin/Lazy;

.field public final OooO0oO:Lkotlin/Lazy;

.field public final OooO0oo:Lkotlin/Lazy;

.field public final OooOO0:Lkotlin/Lazy;

.field public final OooOO0O:Lkotlin/Lazy;

.field public final OooOO0o:Lkotlin/Lazy;

.field public final OooOOO:Ljava/lang/String;

.field public OooOOO0:Z

.field public final OooOOOO:Ljava/lang/String;

.field public final OooOOOo:Ljava/lang/String;

.field public final OooOOo:Ljava/lang/String;

.field public final OooOOo0:Ljava/lang/String;

.field public final OooOOoo:Ljava/lang/String;

.field public final OooOo:Ljava/lang/String;

.field public final OooOo0:Ljava/lang/String;

.field public final OooOo00:Ljava/lang/String;

.field public final OooOo0O:Ljava/lang/String;

.field public final OooOo0o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    const-string p1, "MiniScopePermissionDialog"

    .line 10
    .line 11
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO00o:Ljava/lang/String;

    .line 12
    .line 13
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooO0OO;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0OO:Lkotlin/Lazy;

    .line 23
    .line 24
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooOOO;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooOOO;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0Oo:Lkotlin/Lazy;

    .line 34
    .line 35
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooOOOO;

    .line 36
    .line 37
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooOOOO;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0o0:Lkotlin/Lazy;

    .line 45
    .line 46
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooOO0O;

    .line 47
    .line 48
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooOO0O;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0o:Lkotlin/Lazy;

    .line 56
    .line 57
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooO0o;

    .line 58
    .line 59
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0oO:Lkotlin/Lazy;

    .line 67
    .line 68
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooOO0;

    .line 69
    .line 70
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooOO0;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0oo:Lkotlin/Lazy;

    .line 78
    .line 79
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooO;

    .line 80
    .line 81
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooO;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;)V

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO:Lkotlin/Lazy;

    .line 89
    .line 90
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooO00o;

    .line 91
    .line 92
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;)V

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOO0:Lkotlin/Lazy;

    .line 100
    .line 101
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooO0O0;

    .line 102
    .line 103
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;)V

    .line 104
    .line 105
    .line 106
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOO0O:Lkotlin/Lazy;

    .line 111
    .line 112
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooOOO0;

    .line 113
    .line 114
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooOOO0;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 118
    .line 119
    .line 120
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooOo00;

    .line 121
    .line 122
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo$OooOo00;-><init>(Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;)V

    .line 123
    .line 124
    .line 125
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOO0o:Lkotlin/Lazy;

    .line 130
    .line 131
    sget p1, Lcom/cloud/tmc/miniapp/R$layout;->mini_dialog_layout_permission_scope:I

    .line 132
    .line 133
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setContentView(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 134
    .line 135
    .line 136
    sget-object p1, Lcom/cloud/tmc/miniapp/action/AnimAction;->Companion:Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->getANIM_BOTTOM()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 143
    .line 144
    .line 145
    const/4 p1, 0x1

    .line 146
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setBackgroundDimEnabled(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO00o()Landroid/widget/TextView;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0OO()Landroid/widget/TextView;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0O0()Landroid/widget/TextView;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0Oo()Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    const/4 v4, 0x4

    .line 166
    new-array v4, v4, [Landroid/view/View;

    .line 167
    .line 168
    const/4 v5, 0x0

    .line 169
    aput-object v0, v4, v5

    .line 170
    .line 171
    aput-object v1, v4, p1

    .line 172
    .line 173
    const/4 p1, 0x2

    .line 174
    aput-object v2, v4, p1

    .line 175
    .line 176
    const/4 p1, 0x3

    .line 177
    aput-object v3, v4, p1

    .line 178
    .line 179
    invoke-virtual {p0, v4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setOnClickListener([Landroid/view/View;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v5}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCancelable(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 183
    .line 184
    .line 185
    const-string p1, "isShow"

    .line 186
    .line 187
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOO:Ljava/lang/String;

    .line 188
    .line 189
    const-string p1, "bgcolor"

    .line 190
    .line 191
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOOO:Ljava/lang/String;

    .line 192
    .line 193
    const-string p1, "text"

    .line 194
    .line 195
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOOo:Ljava/lang/String;

    .line 196
    .line 197
    const-string p1, "customText"

    .line 198
    .line 199
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOo0:Ljava/lang/String;

    .line 200
    .line 201
    const-string p1, "1"

    .line 202
    .line 203
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOo:Ljava/lang/String;

    .line 204
    .line 205
    const-string v0, "2"

    .line 206
    .line 207
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOoo:Ljava/lang/String;

    .line 208
    .line 209
    const-string v0, "3"

    .line 210
    .line 211
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOo00:Ljava/lang/String;

    .line 212
    .line 213
    const-string v0, "4"

    .line 214
    .line 215
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOo0:Ljava/lang/String;

    .line 216
    .line 217
    const-string v0, "5"

    .line 218
    .line 219
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOo0O:Ljava/lang/String;

    .line 220
    .line 221
    const-string v0, "0"

    .line 222
    .line 223
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOo0o:Ljava/lang/String;

    .line 224
    .line 225
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOo:Ljava/lang/String;

    .line 226
    .line 227
    return-void
.end method


# virtual methods
.method public final OooO00o()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0oO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final OooO00o(Landroid/widget/TextView;Lcom/google/gson/JsonObject;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOO:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 p2, 0x8

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :goto_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO00o:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initBtnConfig:-> btn is not show->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOOO:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v2

    :goto_2
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOo0o:Ljava/lang/String;

    .line 6
    :cond_5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_6

    move v3, v4

    goto :goto_3

    :cond_6
    move v3, v1

    :goto_3
    if-eqz v3, :cond_a

    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOo0o:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez p1, :cond_7

    goto :goto_4

    .line 8
    :cond_7
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_4

    .line 9
    :cond_8
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOo:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez p1, :cond_9

    goto :goto_4

    .line 10
    :cond_9
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 11
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOo0:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_b
    move-object v0, v2

    :goto_5
    const-string v3, ""

    if-nez v0, :cond_c

    move-object v0, v3

    .line 12
    :cond_c
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_d

    move v1, v4

    :cond_d
    if-eqz v1, :cond_f

    if-nez p1, :cond_e

    goto :goto_6

    .line 13
    :cond_e
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    return-void

    .line 14
    :cond_f
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOOo:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    :cond_10
    if-nez v2, :cond_11

    move-object v2, v3

    .line 15
    :cond_11
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOo:Ljava/lang/String;

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 16
    sget p2, Lcom/cloud/tmc/miniapp/R$string;->mini_permission_allow:I

    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 17
    :cond_12
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOoo:Ljava/lang/String;

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 18
    sget p2, Lcom/cloud/tmc/miniapp/R$string;->mini_permission_dont_allow:I

    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 19
    :cond_13
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOo00:Ljava/lang/String;

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 20
    sget p2, Lcom/cloud/tmc/miniapp/R$string;->mini_permission_only_this_time:I

    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 21
    :cond_14
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOo0:Ljava/lang/String;

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 22
    sget p2, Lcom/cloud/tmc/miniapp/R$string;->mini_permission_only_use_time:I

    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 23
    :cond_15
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOo0O:Ljava/lang/String;

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 24
    sget p2, Lcom/cloud/tmc/miniapp/R$string;->mini_permission_dont_allow_not_show:I

    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_16
    :goto_7
    if-nez p1, :cond_17

    goto :goto_8

    .line 25
    :cond_17
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    return-void
.end method

.method public final OooO0O0()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    return-object v0
.end method

.method public final OooO0OO()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0oo:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    return-object v0
.end method

.method public final OooO0Oo()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOO0o:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->onClick(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    sget v0, Lcom/cloud/tmc/miniapp/R$id;->tv_btn_one:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO00o:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "click1"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0O0:Lcom/cloud/tmc/miniapp/dialog/o0OOO0o;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-interface {p1, v1}, Lcom/cloud/tmc/miniapp/dialog/o0OOO0o;->OooO00o(I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    sget v0, Lcom/cloud/tmc/miniapp/R$id;->tv_btn_two:I

    .line 37
    .line 38
    if-ne p1, v0, :cond_3

    .line 39
    .line 40
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO00o:Ljava/lang/String;

    .line 41
    .line 42
    const-string v0, "click2"

    .line 43
    .line 44
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0O0:Lcom/cloud/tmc/miniapp/dialog/o0OOO0o;

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    const/4 v0, 0x2

    .line 52
    invoke-interface {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/o0OOO0o;->OooO00o(I)V

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    sget v0, Lcom/cloud/tmc/miniapp/R$id;->tv_btn_three:I

    .line 60
    .line 61
    if-ne p1, v0, :cond_5

    .line 62
    .line 63
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO00o:Ljava/lang/String;

    .line 64
    .line 65
    const-string v0, "click3"

    .line 66
    .line 67
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0O0:Lcom/cloud/tmc/miniapp/dialog/o0OOO0o;

    .line 71
    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    const/4 v0, 0x3

    .line 75
    invoke-interface {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/o0OOO0o;->OooO00o(I)V

    .line 76
    .line 77
    .line 78
    :cond_4
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->dismiss()V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_5
    sget v0, Lcom/cloud/tmc/miniapp/R$id;->view_click_show_again_check:I

    .line 83
    .line 84
    if-ne p1, v0, :cond_7

    .line 85
    .line 86
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOO0:Z

    .line 87
    .line 88
    xor-int/2addr p1, v1

    .line 89
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOO0:Z

    .line 90
    .line 91
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOO0O:Lkotlin/Lazy;

    .line 92
    .line 93
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Landroid/widget/ImageView;

    .line 98
    .line 99
    if-nez p1, :cond_6

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_6
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOO0:Z

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 105
    .line 106
    .line 107
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO00o:Ljava/lang/String;

    .line 108
    .line 109
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOO0:Z

    .line 110
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v2, "isNotShowAgain = "

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooO0O0:Lcom/cloud/tmc/miniapp/dialog/o0OOO0o;

    .line 132
    .line 133
    if-eqz p1, :cond_7

    .line 134
    .line 135
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/o0ooOOo;->OooOOO0:Z

    .line 136
    .line 137
    invoke-interface {p1, v0}, Lcom/cloud/tmc/miniapp/dialog/o0OOO0o;->clickNotShowAgagin(Z)V

    .line 138
    .line 139
    .line 140
    :cond_7
    :goto_1
    return-void
.end method
