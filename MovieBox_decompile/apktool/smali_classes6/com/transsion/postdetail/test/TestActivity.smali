.class public final Lcom/transsion/postdetail/test/TestActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0003J\u0019\u0010\n\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0010\u001a\n \r*\u0004\u0018\u00010\u000c0\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\u000c8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u000fR\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001c\u001a\u00020\u000c8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u000fR\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006%"
    }
    d2 = {
        "Lcom/transsion/postdetail/test/TestActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "",
        "R",
        "initPlayer",
        "S",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "kotlin.jvm.PlatformType",
        "a",
        "Ljava/lang/String;",
        "TAG",
        "b",
        "json",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "c",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "Lcom/transsion/postdetail/test/a;",
        "d",
        "Lcom/transsion/postdetail/test/a;",
        "mAdapter",
        "e",
        "videoUrl",
        "Lcom/transsion/player/orplayer/f;",
        "f",
        "Lcom/transsion/player/orplayer/f;",
        "mPlayer",
        "Lwm/a;",
        "g",
        "Lwm/a;",
        "mItemChange",
        "PostDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Landroidx/recyclerview/widget/RecyclerView;

.field private d:Lcom/transsion/postdetail/test/a;

.field private final e:Ljava/lang/String;

.field private f:Lcom/transsion/player/orplayer/f;

.field private g:Lwm/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/transsion/postdetail/test/TestActivity;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/transsion/postdetail/test/TestActivity;->a:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    iput-object v0, p0, Lcom/transsion/postdetail/test/TestActivity;->b:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "https://test-acdn.aoneroom.com/media/video/2022/08/11/5970c1ffed2920c3b2d80da029fe3944-sd.mp4"

    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/postdetail/test/TestActivity;->e:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method

.method public static final synthetic O(Lcom/transsion/postdetail/test/TestActivity;)Lcom/transsion/postdetail/test/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/test/TestActivity;->d:Lcom/transsion/postdetail/test/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic P(Lcom/transsion/postdetail/test/TestActivity;)Lwm/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/test/TestActivity;->g:Lwm/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Q(Lcom/transsion/postdetail/test/TestActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/test/TestActivity;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private final R()V
    .locals 51

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    const/16 v4, 0x15

    .line 11
    .line 12
    const/16 v5, 0xc8

    .line 13
    .line 14
    if-ge v3, v4, :cond_1

    .line 15
    .line 16
    new-instance v10, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v4, Lcom/transsion/moviedetailapi/bean/GifBean;

    .line 22
    .line 23
    move-object/from16 v18, v4

    .line 24
    .line 25
    const-string v6, "https://test-acdn.aoneroom.com/image/2022/08/16/61e43091d911c7e773efd9189332fadb.webp"

    .line 26
    .line 27
    const-string v7, "https://test-acdn.aoneroom.com/media/video/2022/08/11/5970c1ffed2920c3b2d80da029fe3944-sd.mp4"

    .line 28
    .line 29
    invoke-direct {v4, v6, v7}, Lcom/transsion/moviedetailapi/bean/GifBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v4, Lcom/transsion/moviedetailapi/bean/Image;

    .line 33
    .line 34
    move-object v11, v4

    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v12

    .line 39
    const/16 v6, 0x7d0

    .line 40
    .line 41
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v13

    .line 45
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v15

    .line 49
    const/16 v26, 0x3f80

    .line 50
    .line 51
    const/16 v27, 0x0

    .line 52
    .line 53
    const-string v14, "https://cdn.shalltry.com/tcmservice/tcmservice/111630622592760357.jpg"

    .line 54
    .line 55
    const/16 v16, 0x0

    .line 56
    .line 57
    const/16 v17, 0x0

    .line 58
    .line 59
    const/16 v19, 0x0

    .line 60
    .line 61
    const/16 v20, 0x0

    .line 62
    .line 63
    const/16 v21, 0x0

    .line 64
    .line 65
    const/16 v22, 0x0

    .line 66
    .line 67
    const/16 v23, 0x0

    .line 68
    .line 69
    const/16 v24, 0x0

    .line 70
    .line 71
    const/16 v25, 0x0

    .line 72
    .line 73
    invoke-direct/range {v11 .. v27}, Lcom/transsion/moviedetailapi/bean/Image;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/GifBean;Ljava/lang/String;Ljava/lang/String;FFIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 74
    .line 75
    .line 76
    rem-int/lit8 v5, v3, 0x9

    .line 77
    .line 78
    if-ltz v5, :cond_0

    .line 79
    .line 80
    move v6, v2

    .line 81
    :goto_1
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    if-eq v6, v5, :cond_0

    .line 85
    .line 86
    add-int/lit8 v6, v6, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_0
    new-instance v6, Lcom/transsion/moviedetailapi/bean/Media;

    .line 90
    .line 91
    move-object/from16 v21, v6

    .line 92
    .line 93
    sget-object v4, Lcom/transsion/moviedetailapi/bean/MediaType;->IMAGE:Lcom/transsion/moviedetailapi/bean/MediaType;

    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v11

    .line 99
    const/4 v12, 0x0

    .line 100
    const/4 v13, 0x0

    .line 101
    const/4 v7, 0x0

    .line 102
    const/4 v8, 0x0

    .line 103
    const/4 v9, 0x0

    .line 104
    invoke-direct/range {v6 .. v13}, Lcom/transsion/moviedetailapi/bean/Media;-><init>(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetailapi/bean/FirstFrame;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Video;)V

    .line 105
    .line 106
    .line 107
    new-instance v4, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 108
    .line 109
    move-object v14, v4

    .line 110
    const/16 v49, 0x1

    .line 111
    .line 112
    const/16 v50, 0x0

    .line 113
    .line 114
    const/4 v15, 0x0

    .line 115
    const/16 v16, 0x0

    .line 116
    .line 117
    const/16 v17, 0x0

    .line 118
    .line 119
    const/16 v18, 0x0

    .line 120
    .line 121
    const/16 v19, 0x0

    .line 122
    .line 123
    const/16 v20, 0x0

    .line 124
    .line 125
    const/16 v22, 0x0

    .line 126
    .line 127
    const/16 v23, 0x0

    .line 128
    .line 129
    const/16 v24, 0x0

    .line 130
    .line 131
    const/16 v25, 0x0

    .line 132
    .line 133
    const/16 v26, 0x0

    .line 134
    .line 135
    const/16 v27, 0x0

    .line 136
    .line 137
    const/16 v28, 0x0

    .line 138
    .line 139
    const/16 v29, 0x0

    .line 140
    .line 141
    const/16 v30, 0x0

    .line 142
    .line 143
    const/16 v31, 0x0

    .line 144
    .line 145
    const/16 v32, 0x0

    .line 146
    .line 147
    const/16 v33, 0x0

    .line 148
    .line 149
    const/16 v34, 0x0

    .line 150
    .line 151
    const/16 v35, 0x0

    .line 152
    .line 153
    const/16 v36, 0x0

    .line 154
    .line 155
    const/16 v37, 0x0

    .line 156
    .line 157
    const/16 v38, 0x0

    .line 158
    .line 159
    const/16 v39, 0x0

    .line 160
    .line 161
    const/16 v40, 0x0

    .line 162
    .line 163
    const/16 v41, 0x0

    .line 164
    .line 165
    const/16 v42, 0x0

    .line 166
    .line 167
    const/16 v43, 0x0

    .line 168
    .line 169
    const/16 v44, 0x0

    .line 170
    .line 171
    const/16 v45, 0x0

    .line 172
    .line 173
    const/16 v46, 0x0

    .line 174
    .line 175
    const/16 v47, 0x0

    .line 176
    .line 177
    const/high16 v48, -0x80000

    .line 178
    .line 179
    invoke-direct/range {v14 .. v50}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Group;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/transsion/moviedetailapi/bean/Link;Lcom/transsion/moviedetailapi/bean/Media;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Stat;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ZZZZLcom/transsion/moviedetailapi/bean/CommentBean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 180
    .line 181
    .line 182
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    add-int/lit8 v3, v3, 0x1

    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :cond_1
    new-instance v3, Lcom/transsion/postdetail/test/a;

    .line 190
    .line 191
    invoke-direct {v3, v1}, Lcom/transsion/postdetail/test/a;-><init>(Ljava/util/List;)V

    .line 192
    .line 193
    .line 194
    iput-object v3, v0, Lcom/transsion/postdetail/test/TestActivity;->d:Lcom/transsion/postdetail/test/a;

    .line 195
    .line 196
    sget v1, Lcom/transsion/postdetail/R$id;->recycler_view:I

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 203
    .line 204
    const/4 v3, 0x0

    .line 205
    if-eqz v1, :cond_2

    .line 206
    .line 207
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 208
    .line 209
    invoke-direct {v4, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 213
    .line 214
    .line 215
    new-instance v4, Ltf/i;

    .line 216
    .line 217
    const/4 v6, 0x2

    .line 218
    invoke-direct {v4, v5, v2, v6, v3}, Ltf/i;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 222
    .line 223
    .line 224
    iget-object v2, v0, Lcom/transsion/postdetail/test/TestActivity;->d:Lcom/transsion/postdetail/test/a;

    .line 225
    .line 226
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_2
    move-object v1, v3

    .line 231
    :goto_2
    iput-object v1, v0, Lcom/transsion/postdetail/test/TestActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 232
    .line 233
    return-void
.end method

.method private final S()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/test/TestActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/transsion/postdetail/test/TestActivity$b;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/test/TestActivity$b;-><init>(Lcom/transsion/postdetail/test/TestActivity;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private final initPlayer()V
    .locals 3

    .line 1
    new-instance v0, Lcom/transsion/player/ui/ORPlayerView;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/player/config/RenderType;->TEXTURE_VIEW:Lcom/transsion/player/config/RenderType;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/transsion/player/ui/ORPlayerView;-><init>(Landroid/content/Context;Lcom/transsion/player/config/RenderType;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/transsion/player/orplayer/f$a;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/transsion/player/orplayer/f$a;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/transsion/player/orplayer/f$a;->a()Lcom/transsion/player/orplayer/f;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0}, Lcom/transsion/player/ui/ORPlayerView;->getTextureView()Landroid/view/TextureView;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v1, v2}, Lcom/transsion/player/orplayer/f;->setTextureView(Landroid/view/TextureView;)V

    .line 22
    .line 23
    .line 24
    sget-object v2, Lcom/transsion/player/enum/ScaleMode;->SCALE_ASPECT_FILL:Lcom/transsion/player/enum/ScaleMode;

    .line 25
    .line 26
    invoke-interface {v1, v2}, Lcom/transsion/player/orplayer/f;->setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lwm/a;

    .line 30
    .line 31
    invoke-direct {v2, v1, v0}, Lwm/a;-><init>(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;)V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lcom/transsion/postdetail/test/TestActivity;->g:Lwm/a;

    .line 35
    .line 36
    new-instance v0, Lcom/transsion/postdetail/test/TestActivity$a;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/transsion/postdetail/test/TestActivity$a;-><init>(Lcom/transsion/postdetail/test/TestActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v1, v0}, Lcom/transsion/player/orplayer/f;->setPlayerListener(Lcom/transsion/player/orplayer/e;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/transsion/postdetail/test/TestActivity;->f:Lcom/transsion/player/orplayer/f;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/transsion/postdetail/R$layout;->activity_test:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/postdetail/test/TestActivity;->R()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/transsion/postdetail/test/TestActivity;->initPlayer()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/transsion/postdetail/test/TestActivity;->S()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
