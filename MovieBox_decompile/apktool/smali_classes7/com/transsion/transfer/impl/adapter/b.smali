.class public final Lcom/transsion/transfer/impl/adapter/b;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u000b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B%\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0002H\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J#\u0010\u0015\u001a\u00020\u00132\u0014\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001d\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u001f\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010#\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020!H\u0007\u00a2\u0006\u0004\u0008#\u0010$R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R$\u0010+\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*\u00a8\u0006,"
    }
    d2 = {
        "Lcom/transsion/transfer/impl/adapter/b;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/transfer/impl/entity/FileData;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lkotlinx/coroutines/n0;",
        "scope",
        "",
        "isServer",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "data",
        "<init>",
        "(Lkotlinx/coroutines/n0;ZLjava/util/concurrent/CopyOnWriteArrayList;)V",
        "",
        "G1",
        "()I",
        "item",
        "F1",
        "(Lcom/transsion/transfer/impl/entity/FileData;)I",
        "Lkotlin/Function1;",
        "",
        "listener",
        "J1",
        "(Lkotlin/jvm/functions/Function1;)V",
        "H1",
        "()V",
        "",
        "filePath",
        "changeInfo",
        "I1",
        "(Ljava/lang/String;Lcom/transsion/transfer/impl/entity/FileData;)V",
        "holder",
        "C1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/transfer/impl/entity/FileData;)V",
        "",
        "size",
        "E1",
        "(J)Ljava/lang/String;",
        "F",
        "Lkotlinx/coroutines/n0;",
        "G",
        "Z",
        "H",
        "Lkotlin/jvm/functions/Function1;",
        "retryClickListener",
        "Transfer_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final F:Lkotlinx/coroutines/n0;

.field private final G:Z

.field private H:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/transsion/transfer/impl/entity/FileData;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/n0;ZLjava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Z",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/transsion/transfer/impl/entity/FileData;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "scope"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "data"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget v0, Lcom/transsion/transfer/R$layout;->adapter_transfer_file_state:I

    .line 12
    .line 13
    invoke-direct {p0, v0, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/transsion/transfer/impl/adapter/b;->F:Lkotlinx/coroutines/n0;

    .line 17
    .line 18
    iput-boolean p2, p0, Lcom/transsion/transfer/impl/adapter/b;->G:Z

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic B1(Lcom/transsion/transfer/impl/adapter/b;Lcom/transsion/transfer/impl/entity/FileData;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/transfer/impl/adapter/b;->D1(Lcom/transsion/transfer/impl/adapter/b;Lcom/transsion/transfer/impl/entity/FileData;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final D1(Lcom/transsion/transfer/impl/adapter/b;Lcom/transsion/transfer/impl/entity/FileData;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/impl/adapter/b;->H:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final F1(Lcom/transsion/transfer/impl/entity/FileData;)I
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/FileData;->getDownloadSize()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->f(JJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/entity/FileData;->getFileSize()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    const-wide/16 v4, 0x1

    .line 16
    .line 17
    invoke-static {v2, v3, v4, v5}, Lkotlin/ranges/RangesKt;->f(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    long-to-float p1, v0

    .line 22
    long-to-float v0, v2

    .line 23
    div-float/2addr p1, v0

    .line 24
    const/high16 v0, 0x42c80000    # 100.0f

    .line 25
    .line 26
    mul-float/2addr p1, v0

    .line 27
    float-to-int p1, p1

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    return p1
.end method

.method private final G1()I
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    const v0, 0x800005

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const v0, 0x800003

    .line 17
    .line 18
    .line 19
    :goto_0
    return v0
.end method


# virtual methods
.method protected C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/transfer/impl/entity/FileData;)V
    .locals 7

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget v0, Lcom/transsion/transfer/R$id;->file_image:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/transsion/transfer/impl/adapter/b;->G:Z

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x2

    .line 24
    const-string v5, "/"

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/entity/FileData;->getCoverUrl()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-lez v1, :cond_1

    .line 37
    .line 38
    new-instance v1, Ljava/io/File;

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/entity/FileData;->getCoverUrl()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/entity/FileData;->getCoverUrl()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1, v5, v3, v4, v2}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_0

    .line 67
    .line 68
    invoke-static {v0}, Lni/a;->a(Landroid/view/View;)Lni/d;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-instance v2, Ljava/io/File;

    .line 73
    .line 74
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/entity/FileData;->getCoverUrl()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Lni/d;->n(Ljava/io/File;)Lni/c;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 86
    .line 87
    .line 88
    goto/16 :goto_0

    .line 89
    .line 90
    :cond_0
    invoke-static {v0}, Lni/a;->a(Landroid/view/View;)Lni/d;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/entity/FileData;->getCoverUrl()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v1, v2}, Lni/d;->q(Ljava/lang/String;)Lni/c;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 103
    .line 104
    .line 105
    goto/16 :goto_0

    .line 106
    .line 107
    :cond_1
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/entity/FileData;->getCoverFile()Ljava/io/File;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_2

    .line 116
    .line 117
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v0}, Lni/a;->a(Landroid/view/View;)Lni/d;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v2, v1}, Lni/d;->n(Ljava/io/File;)Lni/c;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_2
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 137
    .line 138
    .line 139
    sget v1, Lcom/transsion/transfer/R$mipmap;->transfer_img_loading_error:I

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 142
    .line 143
    .line 144
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_3
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/entity/FileData;->getCoverFile()Ljava/io/File;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-eqz v6, :cond_4

    .line 156
    .line 157
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 158
    .line 159
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 160
    .line 161
    .line 162
    invoke-static {v0}, Lni/a;->a(Landroid/view/View;)Lni/d;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v2, v1}, Lni/d;->n(Ljava/io/File;)Lni/c;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_4
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/entity/FileData;->getCoverUrl()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-lez v1, :cond_5

    .line 183
    .line 184
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/entity/FileData;->getCoverUrl()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-static {v1, v5, v3, v4, v2}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_5

    .line 193
    .line 194
    new-instance v1, Ljava/io/File;

    .line 195
    .line 196
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/entity/FileData;->getCoverUrl()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_5

    .line 208
    .line 209
    invoke-static {v0}, Lni/a;->a(Landroid/view/View;)Lni/d;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    new-instance v2, Ljava/io/File;

    .line 214
    .line 215
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/entity/FileData;->getCoverUrl()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v2}, Lni/d;->n(Ljava/io/File;)Lni/c;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 227
    .line 228
    .line 229
    goto :goto_0

    .line 230
    :cond_5
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 231
    .line 232
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 233
    .line 234
    .line 235
    sget v1, Lcom/transsion/transfer/R$mipmap;->transfer_img_loading_error:I

    .line 236
    .line 237
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 238
    .line 239
    .line 240
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 241
    .line 242
    :goto_0
    sget v0, Lcom/transsion/transfer/R$id;->file_name:I

    .line 243
    .line 244
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    check-cast v0, Landroid/widget/TextView;

    .line 249
    .line 250
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/entity/FileData;->getFileShowName()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    .line 256
    .line 257
    invoke-direct {p0}, Lcom/transsion/transfer/impl/adapter/b;->G1()I

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 262
    .line 263
    .line 264
    sget v0, Lcom/transsion/transfer/R$id;->file_trans_ratio:I

    .line 265
    .line 266
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Landroid/widget/TextView;

    .line 271
    .line 272
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    if-ne v1, v4, :cond_6

    .line 277
    .line 278
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/entity/FileData;->getDownloadSize()J

    .line 279
    .line 280
    .line 281
    move-result-wide v1

    .line 282
    invoke-virtual {p0, v1, v2}, Lcom/transsion/transfer/impl/adapter/b;->E1(J)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/entity/FileData;->getFileSize()J

    .line 287
    .line 288
    .line 289
    move-result-wide v2

    .line 290
    invoke-virtual {p0, v2, v3}, Lcom/transsion/transfer/impl/adapter/b;->E1(J)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    goto :goto_1

    .line 313
    :cond_6
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/entity/FileData;->getFileSize()J

    .line 314
    .line 315
    .line 316
    move-result-wide v1

    .line 317
    invoke-virtual {p0, v1, v2}, Lcom/transsion/transfer/impl/adapter/b;->E1(J)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    .line 323
    .line 324
    sget v0, Lcom/transsion/transfer/R$id;->file_trans_ratio_pb:I

    .line 325
    .line 326
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    check-cast v0, Landroid/widget/ProgressBar;

    .line 331
    .line 332
    invoke-direct {p0, p2}, Lcom/transsion/transfer/impl/adapter/b;->F1(Lcom/transsion/transfer/impl/entity/FileData;)I

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    const/4 v2, 0x4

    .line 344
    if-ne v1, v2, :cond_7

    .line 345
    .line 346
    invoke-static {v0}, Luf/c;->h(Landroid/view/View;)V

    .line 347
    .line 348
    .line 349
    goto :goto_2

    .line 350
    :cond_7
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 351
    .line 352
    .line 353
    :goto_2
    sget v0, Lcom/transsion/transfer/R$id;->file_trans_retry:I

    .line 354
    .line 355
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    check-cast v0, Landroid/widget/ImageView;

    .line 360
    .line 361
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    const/4 v2, 0x3

    .line 366
    if-ne v1, v2, :cond_8

    .line 367
    .line 368
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 369
    .line 370
    .line 371
    goto :goto_3

    .line 372
    :cond_8
    invoke-static {v0}, Luf/c;->h(Landroid/view/View;)V

    .line 373
    .line 374
    .line 375
    :goto_3
    new-instance v1, Lcom/transsion/transfer/impl/adapter/a;

    .line 376
    .line 377
    invoke-direct {v1, p0, p2}, Lcom/transsion/transfer/impl/adapter/a;-><init>(Lcom/transsion/transfer/impl/adapter/b;Lcom/transsion/transfer/impl/entity/FileData;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    .line 382
    .line 383
    sget v0, Lcom/transsion/transfer/R$id;->file_trans_state:I

    .line 384
    .line 385
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    check-cast p1, Landroid/widget/TextView;

    .line 390
    .line 391
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    if-eqz v0, :cond_a

    .line 396
    .line 397
    packed-switch v0, :pswitch_data_0

    .line 398
    .line 399
    .line 400
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    sget v1, Lcom/transsion/transfer/R$string;->transfer_connecting:I

    .line 405
    .line 406
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    goto :goto_5

    .line 411
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    sget v1, Lcom/transsion/transfer/R$string;->transfer_space_limit:I

    .line 416
    .line 417
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    goto :goto_5

    .line 422
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    sget v1, Lcom/transsion/transfer/R$string;->transfer_no_file:I

    .line 427
    .line 428
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    goto :goto_5

    .line 433
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    sget v1, Lcom/transsion/transfer/R$string;->transfer_disconnect:I

    .line 438
    .line 439
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    goto :goto_5

    .line 444
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    sget v1, Lcom/transsion/transfer/R$string;->transfer_finished:I

    .line 449
    .line 450
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    goto :goto_5

    .line 455
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    sget v1, Lcom/transsion/transfer/R$string;->transfer_fail:I

    .line 460
    .line 461
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    goto :goto_5

    .line 466
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    iget-boolean v1, p0, Lcom/transsion/transfer/impl/adapter/b;->G:Z

    .line 471
    .line 472
    if-eqz v1, :cond_9

    .line 473
    .line 474
    sget v1, Lcom/transsion/transfer/R$string;->transfer_server_transferring:I

    .line 475
    .line 476
    goto :goto_4

    .line 477
    :cond_9
    sget v1, Lcom/transsion/transfer/R$string;->transfer_receiver_transferring:I

    .line 478
    .line 479
    :goto_4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    goto :goto_5

    .line 484
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    sget v1, Lcom/transsion/transfer/R$string;->transfer_connecting:I

    .line 489
    .line 490
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    :goto_5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    .line 498
    .line 499
    .line 500
    move-result p2

    .line 501
    const-string v0, "#2ADC66"

    .line 502
    .line 503
    if-eqz p2, :cond_b

    .line 504
    .line 505
    const-string v1, "#F03930"

    .line 506
    .line 507
    packed-switch p2, :pswitch_data_1

    .line 508
    .line 509
    .line 510
    goto :goto_6

    .line 511
    :pswitch_6
    move-object v0, v1

    .line 512
    goto :goto_6

    .line 513
    :pswitch_7
    const-string v0, "#8E8E8E"

    .line 514
    .line 515
    :cond_b
    :goto_6
    :pswitch_8
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 516
    .line 517
    .line 518
    move-result p2

    .line 519
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 520
    .line 521
    .line 522
    return-void

    .line 523
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public final E1(J)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    invoke-static {p1, p2, v0, v1}, Lkotlin/ranges/RangesKt;->f(JJ)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    .line 8
    .line 9
    long-to-double p1, p1

    .line 10
    div-double/2addr p1, v0

    .line 11
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 12
    .line 13
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 p2, 0x1

    .line 18
    new-array v0, p2, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    aput-object p1, v0, v1

    .line 22
    .line 23
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string p2, "%.1fMB"

    .line 28
    .line 29
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "format(...)"

    .line 34
    .line 35
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object p1
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/transfer/impl/entity/FileData;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/transfer/impl/adapter/b;->C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/transfer/impl/entity/FileData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final H1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Iterable;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/transsion/transfer/impl/entity/FileData;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x4

    .line 28
    if-eq v2, v3, :cond_0

    .line 29
    .line 30
    const/4 v2, 0x5

    .line 31
    invoke-virtual {v1, v2}, Lcom/transsion/transfer/impl/entity/FileData;->setState(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final I1(Ljava/lang/String;Lcom/transsion/transfer/impl/entity/FileData;)V
    .locals 3

    .line 1
    const-string v0, "filePath"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "changeInfo"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Iterable;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v2, v1

    .line 32
    check-cast v2, Lcom/transsion/transfer/impl/entity/FileData;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v1, 0x0

    .line 46
    :goto_0
    check-cast v1, Lcom/transsion/transfer/impl/entity/FileData;

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/transsion/transfer/impl/entity/FileData;

    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/entity/FileData;->getState()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/impl/entity/FileData;->setState(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/entity/FileData;->getDownloadSize()J

    .line 76
    .line 77
    .line 78
    move-result-wide v1

    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/impl/entity/FileData;->setDownloadSize(J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/entity/FileData;->getFileSize()J

    .line 83
    .line 84
    .line 85
    move-result-wide v1

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/impl/entity/FileData;->setFileSize(J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 90
    .line 91
    .line 92
    :cond_2
    return-void
.end method

.method public final J1(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/transsion/transfer/impl/entity/FileData;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/impl/adapter/b;->H:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method
