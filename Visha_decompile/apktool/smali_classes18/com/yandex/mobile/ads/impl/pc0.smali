.class public final Lcom/yandex/mobile/ads/impl/pc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/z70;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/pc0$b;,
        Lcom/yandex/mobile/ads/impl/pc0$a;
    }
.end annotation


# static fields
.field private static final F:[B

.field private static final G:Lcom/yandex/mobile/ads/impl/jc0;


# instance fields
.field private A:Z

.field private B:Lcom/yandex/mobile/ads/impl/b80;

.field private C:[Lcom/yandex/mobile/ads/impl/a62;

.field private D:[Lcom/yandex/mobile/ads/impl/a62;

.field private E:Z

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/jc0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/yandex/mobile/ads/impl/pc0$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/ag1;

.field private final d:Lcom/yandex/mobile/ads/impl/ag1;

.field private final e:Lcom/yandex/mobile/ads/impl/ag1;

.field private final f:[B

.field private final g:Lcom/yandex/mobile/ads/impl/ag1;

.field private final h:Lcom/yandex/mobile/ads/impl/a60;

.field private final i:Lcom/yandex/mobile/ads/impl/ag1;

.field private final j:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/yandex/mobile/ads/impl/kh$a;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/yandex/mobile/ads/impl/pc0$a;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/yandex/mobile/ads/impl/a62;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:I

.field private n:I

.field private o:J

.field private p:I

.field private q:Lcom/yandex/mobile/ads/impl/ag1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r:J

.field private s:I

.field private t:J

.field private u:J

.field private v:J

.field private w:Lcom/yandex/mobile/ads/impl/pc0$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Leqd;

    invoke-direct {v0}, Leqd;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yandex/mobile/ads/impl/pc0;->F:[B

    new-instance v0, Lcom/yandex/mobile/ads/impl/jc0$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/jc0$a;-><init>()V

    const-string v1, "application/x-emsg"

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/jc0$a;->e(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/jc0$a;->a()Lcom/yandex/mobile/ads/impl/jc0;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/pc0;->G:Lcom/yandex/mobile/ads/impl/jc0;

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/pc0;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/pc0;-><init>(Ljava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pc0;->a:Ljava/util/List;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pc0;->l:Lcom/yandex/mobile/ads/impl/a62;

    .line 6
    new-instance p1, Lcom/yandex/mobile/ads/impl/a60;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/a60;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pc0;->h:Lcom/yandex/mobile/ads/impl/a60;

    .line 7
    new-instance p1, Lcom/yandex/mobile/ads/impl/ag1;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/yandex/mobile/ads/impl/ag1;-><init>(I)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pc0;->i:Lcom/yandex/mobile/ads/impl/ag1;

    .line 8
    new-instance p1, Lcom/yandex/mobile/ads/impl/ag1;

    sget-object v0, Lcom/yandex/mobile/ads/impl/e41;->a:[B

    invoke-direct {p1, v0}, Lcom/yandex/mobile/ads/impl/ag1;-><init>([B)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pc0;->c:Lcom/yandex/mobile/ads/impl/ag1;

    .line 9
    new-instance p1, Lcom/yandex/mobile/ads/impl/ag1;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Lcom/yandex/mobile/ads/impl/ag1;-><init>(I)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pc0;->d:Lcom/yandex/mobile/ads/impl/ag1;

    .line 10
    new-instance p1, Lcom/yandex/mobile/ads/impl/ag1;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/ag1;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pc0;->e:Lcom/yandex/mobile/ads/impl/ag1;

    .line 11
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pc0;->f:[B

    .line 12
    new-instance p2, Lcom/yandex/mobile/ads/impl/ag1;

    invoke-direct {p2, p1}, Lcom/yandex/mobile/ads/impl/ag1;-><init>([B)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/pc0;->g:Lcom/yandex/mobile/ads/impl/ag1;

    .line 13
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pc0;->j:Ljava/util/ArrayDeque;

    .line 14
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pc0;->k:Ljava/util/ArrayDeque;

    .line 15
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pc0;->b:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/pc0;->u:J

    .line 17
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/pc0;->t:J

    .line 18
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/pc0;->v:J

    .line 19
    sget-object p1, Lcom/yandex/mobile/ads/impl/b80;->a:Lcom/yandex/mobile/ads/impl/b80;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pc0;->B:Lcom/yandex/mobile/ads/impl/b80;

    const/4 p1, 0x0

    .line 20
    new-array p2, p1, [Lcom/yandex/mobile/ads/impl/a62;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/pc0;->C:[Lcom/yandex/mobile/ads/impl/a62;

    .line 21
    new-array p1, p1, [Lcom/yandex/mobile/ads/impl/a62;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pc0;->D:[Lcom/yandex/mobile/ads/impl/a62;

    return-void
.end method

.method private static a(Ljava/util/ArrayList;)Lcom/yandex/mobile/ads/impl/f40;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 3
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/mobile/ads/impl/kh$b;

    .line 4
    iget v5, v4, Lcom/yandex/mobile/ads/impl/kh;->a:I

    const v6, 0x70737368    # 3.013775E29f

    if-ne v5, v6, :cond_2

    if-nez v3, :cond_0

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :cond_0
    iget-object v4, v4, Lcom/yandex/mobile/ads/impl/kh$b;->b:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v4

    .line 7
    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/zm1;->c([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_1

    .line 8
    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v4, v5}, Lcom/yandex/mobile/ads/impl/et0;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_1
    new-instance v6, Lcom/yandex/mobile/ads/impl/f40$b;

    const-string v7, "video/mp4"

    .line 10
    invoke-direct {v6, v5, v1, v7, v4}, Lcom/yandex/mobile/ads/impl/f40$b;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 11
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    new-instance v1, Lcom/yandex/mobile/ads/impl/f40;

    invoke-direct {v1, v3}, Lcom/yandex/mobile/ads/impl/f40;-><init>(Ljava/util/ArrayList;)V

    :goto_2
    return-object v1
.end method

.method private a(J)V
    .locals 50
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/eg1;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v2, 0x10

    const/4 v3, 0x2

    const/16 v4, 0x8

    :goto_0
    const/4 v5, 0x1

    .line 90
    :goto_1
    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/pc0;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4b

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/pc0;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yandex/mobile/ads/impl/kh$a;

    iget-wide v8, v6, Lcom/yandex/mobile/ads/impl/kh$a;->b:J

    cmp-long v6, v8, p1

    if-nez v6, :cond_4b

    .line 91
    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/pc0;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yandex/mobile/ads/impl/kh$a;

    .line 92
    iget v8, v6, Lcom/yandex/mobile/ads/impl/kh;->a:I

    const v9, 0x6d6f6f76

    if-ne v8, v9, :cond_0

    .line 93
    invoke-direct {v0, v6}, Lcom/yandex/mobile/ads/impl/pc0;->a(Lcom/yandex/mobile/ads/impl/kh$a;)V

    goto :goto_1

    :cond_0
    const v9, 0x6d6f6f66

    if-ne v8, v9, :cond_4a

    .line 94
    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/pc0;->b:Landroid/util/SparseArray;

    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/pc0;->f:[B

    .line 95
    iget-object v10, v6, Lcom/yandex/mobile/ads/impl/kh$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_42

    .line 96
    iget-object v13, v6, Lcom/yandex/mobile/ads/impl/kh$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/yandex/mobile/ads/impl/kh$a;

    .line 97
    iget v14, v13, Lcom/yandex/mobile/ads/impl/kh;->a:I

    const v15, 0x74726166

    if-ne v14, v15, :cond_41

    const v14, 0x74666864

    .line 98
    invoke-virtual {v13, v14}, Lcom/yandex/mobile/ads/impl/kh$a;->c(I)Lcom/yandex/mobile/ads/impl/kh$b;

    move-result-object v14

    .line 99
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    iget-object v14, v14, Lcom/yandex/mobile/ads/impl/kh$b;->b:Lcom/yandex/mobile/ads/impl/ag1;

    .line 101
    invoke-virtual {v14, v4}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 102
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v15

    .line 103
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v12

    .line 104
    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/yandex/mobile/ads/impl/pc0$b;

    if-nez v12, :cond_1

    move-object/from16 v17, v8

    const/4 v12, 0x0

    goto :goto_7

    :cond_1
    and-int/lit8 v16, v15, 0x1

    move-object/from16 v17, v8

    if-eqz v16, :cond_2

    .line 105
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ag1;->y()J

    move-result-wide v7

    .line 106
    iget-object v1, v12, Lcom/yandex/mobile/ads/impl/pc0$b;->b:Lcom/yandex/mobile/ads/impl/x52;

    iput-wide v7, v1, Lcom/yandex/mobile/ads/impl/x52;->b:J

    .line 107
    iput-wide v7, v1, Lcom/yandex/mobile/ads/impl/x52;->c:J

    .line 108
    :cond_2
    iget-object v1, v12, Lcom/yandex/mobile/ads/impl/pc0$b;->e:Lcom/yandex/mobile/ads/impl/n00;

    and-int/lit8 v7, v15, 0x2

    if-eqz v7, :cond_3

    .line 109
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v7

    sub-int/2addr v7, v5

    goto :goto_3

    .line 110
    :cond_3
    iget v7, v1, Lcom/yandex/mobile/ads/impl/n00;->a:I

    :goto_3
    and-int/lit8 v8, v15, 0x8

    if-eqz v8, :cond_4

    .line 111
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v8

    goto :goto_4

    .line 112
    :cond_4
    iget v8, v1, Lcom/yandex/mobile/ads/impl/n00;->b:I

    :goto_4
    and-int/lit8 v18, v15, 0x10

    if-eqz v18, :cond_5

    .line 113
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v18

    move/from16 v3, v18

    goto :goto_5

    .line 114
    :cond_5
    iget v3, v1, Lcom/yandex/mobile/ads/impl/n00;->c:I

    :goto_5
    and-int/lit8 v15, v15, 0x20

    if-eqz v15, :cond_6

    .line 115
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v1

    goto :goto_6

    .line 116
    :cond_6
    iget v1, v1, Lcom/yandex/mobile/ads/impl/n00;->d:I

    .line 117
    :goto_6
    iget-object v14, v12, Lcom/yandex/mobile/ads/impl/pc0$b;->b:Lcom/yandex/mobile/ads/impl/x52;

    new-instance v15, Lcom/yandex/mobile/ads/impl/n00;

    invoke-direct {v15, v7, v8, v3, v1}, Lcom/yandex/mobile/ads/impl/n00;-><init>(IIII)V

    iput-object v15, v14, Lcom/yandex/mobile/ads/impl/x52;->a:Lcom/yandex/mobile/ads/impl/n00;

    :goto_7
    if-nez v12, :cond_7

    move v7, v2

    move v3, v4

    move v2, v5

    move-object/from16 v28, v6

    move-object v6, v9

    move/from16 v26, v10

    move/from16 v29, v11

    const/4 v11, 0x4

    const/4 v12, 0x2

    goto/16 :goto_2e

    .line 118
    :cond_7
    iget-object v1, v12, Lcom/yandex/mobile/ads/impl/pc0$b;->b:Lcom/yandex/mobile/ads/impl/x52;

    .line 119
    iget-wide v7, v1, Lcom/yandex/mobile/ads/impl/x52;->p:J

    .line 120
    iget-boolean v3, v1, Lcom/yandex/mobile/ads/impl/x52;->q:Z

    .line 121
    invoke-virtual {v12}, Lcom/yandex/mobile/ads/impl/pc0$b;->b()V

    .line 122
    invoke-static {v12, v5}, Lcom/yandex/mobile/ads/impl/pc0$b;->b(Lcom/yandex/mobile/ads/impl/pc0$b;Z)V

    const v14, 0x74666474

    .line 123
    invoke-virtual {v13, v14}, Lcom/yandex/mobile/ads/impl/kh$a;->c(I)Lcom/yandex/mobile/ads/impl/kh$b;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 124
    iget-object v3, v14, Lcom/yandex/mobile/ads/impl/kh$b;->b:Lcom/yandex/mobile/ads/impl/ag1;

    .line 125
    invoke-virtual {v3, v4}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 126
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v7

    shr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    if-ne v7, v5, :cond_8

    .line 127
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ag1;->y()J

    move-result-wide v7

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v7

    .line 128
    :goto_8
    iput-wide v7, v1, Lcom/yandex/mobile/ads/impl/x52;->p:J

    .line 129
    iput-boolean v5, v1, Lcom/yandex/mobile/ads/impl/x52;->q:Z

    goto :goto_9

    .line 130
    :cond_9
    iput-wide v7, v1, Lcom/yandex/mobile/ads/impl/x52;->p:J

    .line 131
    iput-boolean v3, v1, Lcom/yandex/mobile/ads/impl/x52;->q:Z

    .line 132
    :goto_9
    iget-object v3, v13, Lcom/yandex/mobile/ads/impl/kh$a;->c:Ljava/util/ArrayList;

    .line 133
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_a
    const v2, 0x7472756e

    if-ge v8, v7, :cond_b

    .line 134
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v5, v19

    check-cast v5, Lcom/yandex/mobile/ads/impl/kh$b;

    .line 135
    iget v4, v5, Lcom/yandex/mobile/ads/impl/kh;->a:I

    if-ne v4, v2, :cond_a

    .line 136
    iget-object v2, v5, Lcom/yandex/mobile/ads/impl/kh$b;->b:Lcom/yandex/mobile/ads/impl/ag1;

    const/16 v4, 0xc

    .line 137
    invoke-virtual {v2, v4}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 138
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ag1;->x()I

    move-result v2

    if-lez v2, :cond_a

    add-int/2addr v14, v2

    const/4 v2, 0x1

    add-int/2addr v15, v2

    goto :goto_b

    :cond_a
    const/4 v2, 0x1

    :goto_b
    add-int/2addr v8, v2

    move v5, v2

    const/16 v4, 0x8

    goto :goto_a

    :cond_b
    const/4 v4, 0x0

    .line 139
    iput v4, v12, Lcom/yandex/mobile/ads/impl/pc0$b;->h:I

    .line 140
    iput v4, v12, Lcom/yandex/mobile/ads/impl/pc0$b;->g:I

    .line 141
    iput v4, v12, Lcom/yandex/mobile/ads/impl/pc0$b;->f:I

    .line 142
    iget-object v4, v12, Lcom/yandex/mobile/ads/impl/pc0$b;->b:Lcom/yandex/mobile/ads/impl/x52;

    .line 143
    iput v15, v4, Lcom/yandex/mobile/ads/impl/x52;->d:I

    .line 144
    iput v14, v4, Lcom/yandex/mobile/ads/impl/x52;->e:I

    .line 145
    iget-object v5, v4, Lcom/yandex/mobile/ads/impl/x52;->g:[I

    array-length v5, v5

    if-ge v5, v15, :cond_c

    .line 146
    new-array v5, v15, [J

    iput-object v5, v4, Lcom/yandex/mobile/ads/impl/x52;->f:[J

    .line 147
    new-array v5, v15, [I

    iput-object v5, v4, Lcom/yandex/mobile/ads/impl/x52;->g:[I

    .line 148
    :cond_c
    iget-object v5, v4, Lcom/yandex/mobile/ads/impl/x52;->h:[I

    array-length v5, v5

    if-ge v5, v14, :cond_d

    mul-int/lit8 v14, v14, 0x7d

    .line 149
    div-int/lit8 v14, v14, 0x64

    .line 150
    new-array v5, v14, [I

    iput-object v5, v4, Lcom/yandex/mobile/ads/impl/x52;->h:[I

    .line 151
    new-array v5, v14, [J

    iput-object v5, v4, Lcom/yandex/mobile/ads/impl/x52;->i:[J

    .line 152
    new-array v5, v14, [Z

    iput-object v5, v4, Lcom/yandex/mobile/ads/impl/x52;->j:[Z

    .line 153
    new-array v5, v14, [Z

    iput-object v5, v4, Lcom/yandex/mobile/ads/impl/x52;->l:[Z

    :cond_d
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_c
    if-ge v4, v7, :cond_22

    .line 154
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v14, v21

    check-cast v14, Lcom/yandex/mobile/ads/impl/kh$b;

    .line 155
    iget v15, v14, Lcom/yandex/mobile/ads/impl/kh;->a:I

    if-ne v15, v2, :cond_21

    const/4 v15, 0x1

    add-int/lit8 v21, v5, 0x1

    .line 156
    iget-object v14, v14, Lcom/yandex/mobile/ads/impl/kh$b;->b:Lcom/yandex/mobile/ads/impl/ag1;

    const/16 v15, 0x8

    .line 157
    invoke-virtual {v14, v15}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 158
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v15

    .line 159
    iget-object v2, v12, Lcom/yandex/mobile/ads/impl/pc0$b;->d:Lcom/yandex/mobile/ads/impl/b62;

    iget-object v2, v2, Lcom/yandex/mobile/ads/impl/b62;->a:Lcom/yandex/mobile/ads/impl/v52;

    move-object/from16 v24, v3

    .line 160
    iget-object v3, v12, Lcom/yandex/mobile/ads/impl/pc0$b;->b:Lcom/yandex/mobile/ads/impl/x52;

    move/from16 v25, v7

    .line 161
    iget-object v7, v3, Lcom/yandex/mobile/ads/impl/x52;->a:Lcom/yandex/mobile/ads/impl/n00;

    sget v26, Lcom/yandex/mobile/ads/impl/f92;->a:I

    move/from16 v26, v10

    .line 162
    iget-object v10, v3, Lcom/yandex/mobile/ads/impl/x52;->g:[I

    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ag1;->x()I

    move-result v27

    aput v27, v10, v5

    .line 163
    iget-object v10, v3, Lcom/yandex/mobile/ads/impl/x52;->f:[J

    move-object/from16 v27, v1

    iget-wide v0, v3, Lcom/yandex/mobile/ads/impl/x52;->b:J

    aput-wide v0, v10, v5

    const/16 v20, 0x1

    and-int/lit8 v28, v15, 0x1

    if-eqz v28, :cond_e

    move-object/from16 v28, v6

    .line 164
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v6

    move/from16 v29, v11

    move-object/from16 v30, v12

    int-to-long v11, v6

    add-long/2addr v0, v11

    aput-wide v0, v10, v5

    :goto_d
    const/4 v0, 0x4

    goto :goto_e

    :cond_e
    move-object/from16 v28, v6

    move/from16 v29, v11

    move-object/from16 v30, v12

    goto :goto_d

    :goto_e
    and-int/lit8 v1, v15, 0x4

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    goto :goto_f

    :cond_f
    const/4 v0, 0x0

    .line 165
    :goto_f
    iget v1, v7, Lcom/yandex/mobile/ads/impl/n00;->d:I

    if-eqz v0, :cond_10

    .line 166
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v1

    :cond_10
    and-int/lit16 v6, v15, 0x100

    if-eqz v6, :cond_11

    const/4 v6, 0x1

    goto :goto_10

    :cond_11
    const/4 v6, 0x0

    :goto_10
    and-int/lit16 v10, v15, 0x200

    if-eqz v10, :cond_12

    const/4 v10, 0x1

    goto :goto_11

    :cond_12
    const/4 v10, 0x0

    :goto_11
    and-int/lit16 v11, v15, 0x400

    if-eqz v11, :cond_13

    const/4 v11, 0x1

    goto :goto_12

    :cond_13
    const/4 v11, 0x0

    :goto_12
    and-int/lit16 v12, v15, 0x800

    if-eqz v12, :cond_14

    const/4 v12, 0x1

    goto :goto_13

    :cond_14
    const/4 v12, 0x0

    .line 167
    :goto_13
    iget-object v15, v2, Lcom/yandex/mobile/ads/impl/v52;->h:[J

    move/from16 v31, v1

    if-eqz v15, :cond_15

    array-length v1, v15

    move-object/from16 v32, v9

    const/4 v9, 0x1

    if-ne v1, v9, :cond_16

    const/4 v1, 0x0

    aget-wide v33, v15, v1

    const-wide/16 v22, 0x0

    cmp-long v9, v33, v22

    if-nez v9, :cond_16

    .line 168
    iget-object v9, v2, Lcom/yandex/mobile/ads/impl/v52;->i:[J

    aget-wide v22, v9, v1

    goto :goto_14

    :cond_15
    move-object/from16 v32, v9

    :cond_16
    const-wide/16 v22, 0x0

    .line 169
    :goto_14
    iget-object v1, v3, Lcom/yandex/mobile/ads/impl/x52;->h:[I

    .line 170
    iget-object v9, v3, Lcom/yandex/mobile/ads/impl/x52;->i:[J

    .line 171
    iget-object v15, v3, Lcom/yandex/mobile/ads/impl/x52;->j:[Z

    move-object/from16 v33, v13

    .line 172
    iget-object v13, v3, Lcom/yandex/mobile/ads/impl/x52;->g:[I

    aget v5, v13, v5

    add-int/2addr v5, v8

    move-object v13, v1

    .line 173
    iget-wide v1, v2, Lcom/yandex/mobile/ads/impl/v52;->c:J

    move/from16 v34, v8

    move-object/from16 v40, v9

    .line 174
    iget-wide v8, v3, Lcom/yandex/mobile/ads/impl/x52;->p:J

    move-object/from16 v41, v3

    move-wide/from16 v48, v8

    move v9, v4

    move-wide/from16 v3, v48

    move/from16 v8, v34

    :goto_15
    if-ge v8, v5, :cond_20

    if-eqz v6, :cond_17

    .line 175
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v34

    move/from16 v42, v5

    move/from16 v43, v6

    move/from16 v5, v34

    goto :goto_16

    :cond_17
    move/from16 v42, v5

    iget v5, v7, Lcom/yandex/mobile/ads/impl/n00;->b:I

    move/from16 v43, v6

    :goto_16
    const-string v6, "Unexpected negative value: "

    if-ltz v5, :cond_1f

    if-eqz v10, :cond_18

    .line 176
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v34

    move/from16 v44, v10

    move/from16 v10, v34

    goto :goto_17

    :cond_18
    move/from16 v44, v10

    iget v10, v7, Lcom/yandex/mobile/ads/impl/n00;->c:I

    :goto_17
    if-ltz v10, :cond_1e

    if-eqz v11, :cond_19

    .line 177
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v6

    goto :goto_18

    :cond_19
    if-nez v8, :cond_1a

    if-eqz v0, :cond_1a

    move/from16 v6, v31

    goto :goto_18

    .line 178
    :cond_1a
    iget v6, v7, Lcom/yandex/mobile/ads/impl/n00;->d:I

    :goto_18
    if-eqz v12, :cond_1b

    .line 179
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v34

    move/from16 v45, v0

    move/from16 v46, v11

    move/from16 v47, v12

    move/from16 v0, v34

    goto :goto_19

    :cond_1b
    move/from16 v45, v0

    move/from16 v46, v11

    move/from16 v47, v12

    const/4 v0, 0x0

    :goto_19
    int-to-long v11, v0

    add-long/2addr v11, v3

    sub-long v34, v11, v22

    const-wide/32 v36, 0xf4240

    move-wide/from16 v38, v1

    .line 180
    invoke-static/range {v34 .. v39}, Lcom/yandex/mobile/ads/impl/f92;->a(JJJ)J

    move-result-wide v11

    aput-wide v11, v40, v8

    move-wide/from16 v35, v1

    move-object/from16 v0, v41

    .line 181
    iget-boolean v1, v0, Lcom/yandex/mobile/ads/impl/x52;->q:Z

    if-nez v1, :cond_1c

    move-object/from16 v1, v30

    .line 182
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/pc0$b;->d:Lcom/yandex/mobile/ads/impl/b62;

    iget-wide v1, v2, Lcom/yandex/mobile/ads/impl/b62;->h:J

    add-long/2addr v11, v1

    aput-wide v11, v40, v8

    .line 183
    :cond_1c
    aput v10, v13, v8

    const/16 v1, 0x10

    shr-int/lit8 v2, v6, 0x10

    const/4 v1, 0x1

    and-int/2addr v2, v1

    if-nez v2, :cond_1d

    move v2, v1

    goto :goto_1a

    :cond_1d
    const/4 v2, 0x0

    .line 184
    :goto_1a
    aput-boolean v2, v15, v8

    int-to-long v5, v5

    add-long/2addr v3, v5

    add-int/2addr v8, v1

    move-object/from16 v41, v0

    move-wide/from16 v1, v35

    move/from16 v5, v42

    move/from16 v6, v43

    move/from16 v10, v44

    move/from16 v0, v45

    move/from16 v11, v46

    move/from16 v12, v47

    goto/16 :goto_15

    .line 185
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    :cond_1f
    const/4 v1, 0x0

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    :cond_20
    move/from16 v42, v5

    move-object/from16 v0, v41

    .line 187
    iput-wide v3, v0, Lcom/yandex/mobile/ads/impl/x52;->p:J

    move/from16 v5, v21

    move/from16 v8, v42

    :goto_1b
    const/4 v0, 0x1

    goto :goto_1c

    :cond_21
    move-object/from16 v27, v1

    move-object/from16 v24, v3

    move-object/from16 v28, v6

    move/from16 v25, v7

    move/from16 v34, v8

    move-object/from16 v32, v9

    move/from16 v26, v10

    move/from16 v29, v11

    move-object/from16 v30, v12

    move-object/from16 v33, v13

    move v9, v4

    goto :goto_1b

    :goto_1c
    add-int/lit8 v4, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v24

    move/from16 v7, v25

    move/from16 v10, v26

    move-object/from16 v1, v27

    move-object/from16 v6, v28

    move/from16 v11, v29

    move-object/from16 v12, v30

    move-object/from16 v9, v32

    move-object/from16 v13, v33

    const v2, 0x7472756e

    goto/16 :goto_c

    :cond_22
    move-object/from16 v27, v1

    move-object/from16 v28, v6

    move-object/from16 v32, v9

    move/from16 v26, v10

    move/from16 v29, v11

    move-object/from16 v33, v13

    .line 188
    iget-object v0, v12, Lcom/yandex/mobile/ads/impl/pc0$b;->d:Lcom/yandex/mobile/ads/impl/b62;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/b62;->a:Lcom/yandex/mobile/ads/impl/v52;

    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/x52;->a:Lcom/yandex/mobile/ads/impl/n00;

    .line 189
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    iget v2, v2, Lcom/yandex/mobile/ads/impl/n00;->a:I

    .line 191
    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/impl/v52;->a(I)Lcom/yandex/mobile/ads/impl/w52;

    move-result-object v0

    const v2, 0x7361697a

    .line 192
    invoke-virtual {v13, v2}, Lcom/yandex/mobile/ads/impl/kh$a;->c(I)Lcom/yandex/mobile/ads/impl/kh$b;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 193
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    iget-object v2, v2, Lcom/yandex/mobile/ads/impl/kh$b;->b:Lcom/yandex/mobile/ads/impl/ag1;

    .line 195
    iget v3, v0, Lcom/yandex/mobile/ads/impl/w52;->d:I

    const/16 v4, 0x8

    .line 196
    invoke-virtual {v2, v4}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 197
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v5

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_23

    .line 198
    invoke-virtual {v2, v4}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 199
    :cond_23
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v4

    .line 200
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ag1;->x()I

    move-result v5

    .line 201
    iget v6, v1, Lcom/yandex/mobile/ads/impl/x52;->e:I

    if-gt v5, v6, :cond_28

    if-nez v4, :cond_26

    .line 202
    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/x52;->l:[Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1d
    if-ge v6, v5, :cond_25

    .line 203
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v8

    add-int/2addr v7, v8

    if-le v8, v3, :cond_24

    const/4 v8, 0x1

    goto :goto_1e

    :cond_24
    const/4 v8, 0x0

    .line 204
    :goto_1e
    aput-boolean v8, v4, v6

    const/4 v8, 0x1

    add-int/2addr v6, v8

    goto :goto_1d

    :cond_25
    const/4 v4, 0x0

    goto :goto_20

    :cond_26
    if-le v4, v3, :cond_27

    const/4 v2, 0x1

    goto :goto_1f

    :cond_27
    const/4 v2, 0x0

    :goto_1f
    mul-int v7, v4, v5

    .line 205
    iget-object v3, v1, Lcom/yandex/mobile/ads/impl/x52;->l:[Z

    const/4 v4, 0x0

    invoke-static {v3, v4, v5, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 206
    :goto_20
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/x52;->l:[Z

    iget v3, v1, Lcom/yandex/mobile/ads/impl/x52;->e:I

    invoke-static {v2, v5, v3, v4}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v7, :cond_29

    .line 207
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/x52;->n:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v2, v7}, Lcom/yandex/mobile/ads/impl/ag1;->c(I)V

    const/4 v2, 0x1

    .line 208
    iput-boolean v2, v1, Lcom/yandex/mobile/ads/impl/x52;->k:Z

    .line 209
    iput-boolean v2, v1, Lcom/yandex/mobile/ads/impl/x52;->o:Z

    goto :goto_21

    .line 210
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Saiz sample count "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is greater than fragment sample count"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/yandex/mobile/ads/impl/x52;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    :cond_29
    :goto_21
    const v2, 0x7361696f

    .line 211
    invoke-virtual {v13, v2}, Lcom/yandex/mobile/ads/impl/kh$a;->c(I)Lcom/yandex/mobile/ads/impl/kh$b;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 212
    iget-object v2, v2, Lcom/yandex/mobile/ads/impl/kh$b;->b:Lcom/yandex/mobile/ads/impl/ag1;

    const/16 v3, 0x8

    .line 213
    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 214
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v4

    const/4 v5, 0x1

    and-int/lit8 v6, v4, 0x1

    if-ne v6, v5, :cond_2a

    .line 215
    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 216
    :cond_2a
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ag1;->x()I

    move-result v3

    if-ne v3, v5, :cond_2d

    shr-int/lit8 v3, v4, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 217
    iget-wide v4, v1, Lcom/yandex/mobile/ads/impl/x52;->c:J

    if-nez v3, :cond_2b

    .line 218
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v2

    goto :goto_22

    :cond_2b
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ag1;->y()J

    move-result-wide v2

    :goto_22
    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/yandex/mobile/ads/impl/x52;->c:J

    :cond_2c
    const/4 v2, 0x0

    goto :goto_23

    .line 219
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected saio entry count: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    :goto_23
    const v3, 0x73656e63

    .line 220
    invoke-virtual {v13, v3}, Lcom/yandex/mobile/ads/impl/kh$a;->c(I)Lcom/yandex/mobile/ads/impl/kh$b;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 221
    iget-object v3, v3, Lcom/yandex/mobile/ads/impl/kh$b;->b:Lcom/yandex/mobile/ads/impl/ag1;

    const/4 v4, 0x0

    .line 222
    invoke-static {v3, v4, v1}, Lcom/yandex/mobile/ads/impl/pc0;->a(Lcom/yandex/mobile/ads/impl/ag1;ILcom/yandex/mobile/ads/impl/x52;)V

    :cond_2e
    if-eqz v0, :cond_2f

    .line 223
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/w52;->b:Ljava/lang/String;

    move-object v5, v0

    goto :goto_24

    :cond_2f
    move-object v5, v2

    :goto_24
    move-object v0, v2

    move-object v3, v0

    const/4 v4, 0x0

    .line 224
    :goto_25
    iget-object v6, v13, Lcom/yandex/mobile/ads/impl/kh$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_32

    .line 225
    iget-object v6, v13, Lcom/yandex/mobile/ads/impl/kh$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yandex/mobile/ads/impl/kh$b;

    .line 226
    iget-object v7, v6, Lcom/yandex/mobile/ads/impl/kh$b;->b:Lcom/yandex/mobile/ads/impl/ag1;

    .line 227
    iget v6, v6, Lcom/yandex/mobile/ads/impl/kh;->a:I

    const v8, 0x73626770

    const v9, 0x73656967

    if-ne v6, v8, :cond_31

    const/16 v8, 0xc

    .line 228
    invoke-virtual {v7, v8}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 229
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v6

    if-ne v6, v9, :cond_30

    move-object v0, v7

    :cond_30
    :goto_26
    const/4 v6, 0x1

    goto :goto_27

    :cond_31
    const/16 v8, 0xc

    const v10, 0x73677064

    if-ne v6, v10, :cond_30

    .line 230
    invoke-virtual {v7, v8}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 231
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v6

    if-ne v6, v9, :cond_30

    move-object v3, v7

    goto :goto_26

    :goto_27
    add-int/2addr v4, v6

    goto :goto_25

    :cond_32
    const/4 v6, 0x1

    if-eqz v0, :cond_33

    if-nez v3, :cond_34

    :cond_33
    const/4 v11, 0x4

    const/4 v12, 0x2

    goto/16 :goto_2a

    :cond_34
    const/16 v4, 0x8

    .line 232
    invoke-virtual {v0, v4}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 233
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v7

    shr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    const/4 v11, 0x4

    .line 234
    invoke-virtual {v0, v11}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    if-ne v7, v6, :cond_35

    .line 235
    invoke-virtual {v0, v11}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 236
    :cond_35
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v0

    if-ne v0, v6, :cond_3d

    .line 237
    invoke-virtual {v3, v4}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 238
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 239
    invoke-virtual {v3, v11}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    if-ne v0, v6, :cond_37

    .line 240
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_36

    const/4 v12, 0x2

    goto :goto_28

    .line 241
    :cond_36
    const-string v0, "Variable length description in sgpd found (unsupported)"

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    :cond_37
    const/4 v12, 0x2

    if-lt v0, v12, :cond_38

    .line 242
    invoke-virtual {v3, v11}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 243
    :cond_38
    :goto_28
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_3c

    const/4 v0, 0x1

    .line 244
    invoke-virtual {v3, v0}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 245
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v4

    and-int/lit16 v6, v4, 0xf0

    shr-int/lit8 v8, v6, 0x4

    and-int/lit8 v9, v4, 0xf

    .line 246
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v4

    if-ne v4, v0, :cond_39

    const/4 v4, 0x1

    goto :goto_29

    :cond_39
    const/4 v4, 0x0

    :goto_29
    if-nez v4, :cond_3a

    goto :goto_2a

    .line 247
    :cond_3a
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v6

    const/16 v0, 0x10

    .line 248
    new-array v7, v0, [B

    const/4 v10, 0x0

    .line 249
    invoke-virtual {v3, v7, v10, v0}, Lcom/yandex/mobile/ads/impl/ag1;->a([BII)V

    if-nez v6, :cond_3b

    .line 250
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v0

    .line 251
    new-array v2, v0, [B

    .line 252
    invoke-virtual {v3, v2, v10, v0}, Lcom/yandex/mobile/ads/impl/ag1;->a([BII)V

    :cond_3b
    move-object v10, v2

    const/4 v0, 0x1

    .line 253
    iput-boolean v0, v1, Lcom/yandex/mobile/ads/impl/x52;->k:Z

    .line 254
    new-instance v0, Lcom/yandex/mobile/ads/impl/w52;

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/yandex/mobile/ads/impl/w52;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v0, v1, Lcom/yandex/mobile/ads/impl/x52;->m:Lcom/yandex/mobile/ads/impl/w52;

    goto :goto_2a

    .line 255
    :cond_3c
    const-string v0, "Entry count in sgpd != 1 (unsupported)."

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    .line 256
    :cond_3d
    const-string v0, "Entry count in sbgp != 1 (unsupported)."

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    .line 257
    :goto_2a
    iget-object v0, v13, Lcom/yandex/mobile/ads/impl/kh$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_2b
    if-ge v4, v0, :cond_40

    .line 258
    iget-object v2, v13, Lcom/yandex/mobile/ads/impl/kh$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/kh$b;

    .line 259
    iget v3, v2, Lcom/yandex/mobile/ads/impl/kh;->a:I

    const v5, 0x75756964

    if-ne v3, v5, :cond_3f

    .line 260
    iget-object v2, v2, Lcom/yandex/mobile/ads/impl/kh$b;->b:Lcom/yandex/mobile/ads/impl/ag1;

    const/16 v3, 0x8

    .line 261
    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    move-object/from16 v6, v32

    const/4 v5, 0x0

    const/16 v7, 0x10

    .line 262
    invoke-virtual {v2, v6, v5, v7}, Lcom/yandex/mobile/ads/impl/ag1;->a([BII)V

    .line 263
    sget-object v5, Lcom/yandex/mobile/ads/impl/pc0;->F:[B

    invoke-static {v6, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_3e

    :goto_2c
    const/4 v2, 0x1

    goto :goto_2d

    .line 264
    :cond_3e
    invoke-static {v2, v7, v1}, Lcom/yandex/mobile/ads/impl/pc0;->a(Lcom/yandex/mobile/ads/impl/ag1;ILcom/yandex/mobile/ads/impl/x52;)V

    goto :goto_2c

    :cond_3f
    move-object/from16 v6, v32

    const/16 v3, 0x8

    const/16 v7, 0x10

    goto :goto_2c

    :goto_2d
    add-int/2addr v4, v2

    move-object/from16 v32, v6

    goto :goto_2b

    :cond_40
    move-object/from16 v6, v32

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/16 v7, 0x10

    goto :goto_2e

    :cond_41
    move v7, v2

    move v12, v3

    move v3, v4

    move v2, v5

    move-object/from16 v28, v6

    move-object/from16 v17, v8

    move-object v6, v9

    move/from16 v26, v10

    move/from16 v29, v11

    const/4 v11, 0x4

    :goto_2e
    add-int/lit8 v0, v29, 0x1

    move v11, v0

    move v5, v2

    move v4, v3

    move-object v9, v6

    move v2, v7

    move v3, v12

    move-object/from16 v8, v17

    move/from16 v10, v26

    move-object/from16 v6, v28

    move-object/from16 v0, p0

    goto/16 :goto_2

    :cond_42
    move v7, v2

    move v12, v3

    move v3, v4

    move-object v0, v6

    const/4 v2, 0x0

    const/4 v11, 0x4

    .line 265
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/kh$a;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/pc0;->a(Ljava/util/ArrayList;)Lcom/yandex/mobile/ads/impl/f40;

    move-result-object v0

    move-object/from16 v1, p0

    if-eqz v0, :cond_44

    .line 266
    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/pc0;->b:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2f
    if-ge v5, v4, :cond_44

    .line 267
    iget-object v6, v1, Lcom/yandex/mobile/ads/impl/pc0;->b:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yandex/mobile/ads/impl/pc0$b;

    .line 268
    iget-object v8, v6, Lcom/yandex/mobile/ads/impl/pc0$b;->d:Lcom/yandex/mobile/ads/impl/b62;

    .line 269
    iget-object v8, v8, Lcom/yandex/mobile/ads/impl/b62;->a:Lcom/yandex/mobile/ads/impl/v52;

    iget-object v9, v6, Lcom/yandex/mobile/ads/impl/pc0$b;->b:Lcom/yandex/mobile/ads/impl/x52;

    iget-object v9, v9, Lcom/yandex/mobile/ads/impl/x52;->a:Lcom/yandex/mobile/ads/impl/n00;

    .line 270
    sget v10, Lcom/yandex/mobile/ads/impl/f92;->a:I

    iget v9, v9, Lcom/yandex/mobile/ads/impl/n00;->a:I

    .line 271
    invoke-virtual {v8, v9}, Lcom/yandex/mobile/ads/impl/v52;->a(I)Lcom/yandex/mobile/ads/impl/w52;

    move-result-object v8

    if-eqz v8, :cond_43

    .line 272
    iget-object v8, v8, Lcom/yandex/mobile/ads/impl/w52;->b:Ljava/lang/String;

    goto :goto_30

    :cond_43
    move-object v8, v2

    .line 273
    :goto_30
    invoke-virtual {v0, v8}, Lcom/yandex/mobile/ads/impl/f40;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/f40;

    move-result-object v8

    .line 274
    iget-object v9, v6, Lcom/yandex/mobile/ads/impl/pc0$b;->d:Lcom/yandex/mobile/ads/impl/b62;

    iget-object v9, v9, Lcom/yandex/mobile/ads/impl/b62;->a:Lcom/yandex/mobile/ads/impl/v52;

    iget-object v9, v9, Lcom/yandex/mobile/ads/impl/v52;->f:Lcom/yandex/mobile/ads/impl/jc0;

    .line 275
    invoke-virtual {v9}, Lcom/yandex/mobile/ads/impl/jc0;->a()Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/yandex/mobile/ads/impl/jc0$a;->a(Lcom/yandex/mobile/ads/impl/f40;)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/jc0$a;->a()Lcom/yandex/mobile/ads/impl/jc0;

    move-result-object v8

    .line 276
    iget-object v6, v6, Lcom/yandex/mobile/ads/impl/pc0$b;->a:Lcom/yandex/mobile/ads/impl/a62;

    invoke-interface {v6, v8}, Lcom/yandex/mobile/ads/impl/a62;->a(Lcom/yandex/mobile/ads/impl/jc0;)V

    const/4 v6, 0x1

    add-int/2addr v5, v6

    goto :goto_2f

    .line 277
    :cond_44
    iget-wide v4, v1, Lcom/yandex/mobile/ads/impl/pc0;->t:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v8

    if-eqz v0, :cond_49

    .line 278
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/pc0;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_31
    if-ge v2, v0, :cond_47

    .line 279
    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/pc0;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/mobile/ads/impl/pc0$b;

    iget-wide v5, v1, Lcom/yandex/mobile/ads/impl/pc0;->t:J

    .line 280
    iget v10, v4, Lcom/yandex/mobile/ads/impl/pc0$b;->f:I

    .line 281
    :goto_32
    iget-object v13, v4, Lcom/yandex/mobile/ads/impl/pc0$b;->b:Lcom/yandex/mobile/ads/impl/x52;

    iget v14, v13, Lcom/yandex/mobile/ads/impl/x52;->e:I

    if-ge v10, v14, :cond_46

    .line 282
    iget-object v14, v13, Lcom/yandex/mobile/ads/impl/x52;->i:[J

    .line 283
    aget-wide v14, v14, v10

    cmp-long v14, v14, v5

    if-gez v14, :cond_46

    .line 284
    iget-object v13, v13, Lcom/yandex/mobile/ads/impl/x52;->j:[Z

    aget-boolean v13, v13, v10

    if-eqz v13, :cond_45

    .line 285
    iput v10, v4, Lcom/yandex/mobile/ads/impl/pc0$b;->i:I

    :cond_45
    const/4 v13, 0x1

    add-int/2addr v10, v13

    goto :goto_32

    :cond_46
    const/4 v13, 0x1

    add-int/2addr v2, v13

    goto :goto_31

    :cond_47
    const/4 v13, 0x1

    .line 286
    iput-wide v8, v1, Lcom/yandex/mobile/ads/impl/pc0;->t:J

    :cond_48
    :goto_33
    move-object v0, v1

    move v4, v3

    move v2, v7

    move v3, v12

    move v5, v13

    goto/16 :goto_1

    :cond_49
    move-object v0, v1

    move v4, v3

    move v2, v7

    move v3, v12

    goto/16 :goto_0

    :cond_4a
    move-object v1, v0

    move v7, v2

    move v12, v3

    move v3, v4

    move v13, v5

    move-object v0, v6

    const/4 v11, 0x4

    .line 287
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/pc0;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_48

    .line 288
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/pc0;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/kh$a;

    .line 289
    iget-object v2, v2, Lcom/yandex/mobile/ads/impl/kh$a;->d:Ljava/util/ArrayList;

    .line 290
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_4b
    move-object v1, v0

    const/4 v0, 0x0

    .line 291
    iput v0, v1, Lcom/yandex/mobile/ads/impl/pc0;->m:I

    .line 292
    iput v0, v1, Lcom/yandex/mobile/ads/impl/pc0;->p:I

    return-void
.end method

.method private static a(Lcom/yandex/mobile/ads/impl/ag1;ILcom/yandex/mobile/ads/impl/x52;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/eg1;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 75
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 76
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 77
    :goto_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ag1;->x()I

    move-result v2

    if-nez v2, :cond_1

    .line 78
    iget-object p0, p2, Lcom/yandex/mobile/ads/impl/x52;->l:[Z

    iget p1, p2, Lcom/yandex/mobile/ads/impl/x52;->e:I

    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    .line 79
    :cond_1
    iget v3, p2, Lcom/yandex/mobile/ads/impl/x52;->e:I

    if-ne v2, v3, :cond_2

    .line 80
    iget-object v3, p2, Lcom/yandex/mobile/ads/impl/x52;->l:[Z

    invoke-static {v3, v0, v2, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 81
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ag1;->a()I

    move-result p1

    .line 82
    iget-object v2, p2, Lcom/yandex/mobile/ads/impl/x52;->n:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v2, p1}, Lcom/yandex/mobile/ads/impl/ag1;->c(I)V

    .line 83
    iput-boolean v1, p2, Lcom/yandex/mobile/ads/impl/x52;->k:Z

    .line 84
    iput-boolean v1, p2, Lcom/yandex/mobile/ads/impl/x52;->o:Z

    .line 85
    iget-object p1, p2, Lcom/yandex/mobile/ads/impl/x52;->n:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object p1

    iget-object v1, p2, Lcom/yandex/mobile/ads/impl/x52;->n:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ag1;->e()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/ag1;->a([BII)V

    .line 86
    iget-object p0, p2, Lcom/yandex/mobile/ads/impl/x52;->n:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 87
    iput-boolean v0, p2, Lcom/yandex/mobile/ads/impl/x52;->o:Z

    return-void

    .line 88
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Senc sample count "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is different from fragment sample count"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/yandex/mobile/ads/impl/x52;->e:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object p0

    throw p0

    .line 89
    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object p0

    throw p0
.end method

.method private a(Lcom/yandex/mobile/ads/impl/kh$a;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/eg1;
        }
    .end annotation

    .line 27
    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/kh$a;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/pc0;->a(Ljava/util/ArrayList;)Lcom/yandex/mobile/ads/impl/f40;

    move-result-object v5

    const v0, 0x6d766578

    .line 28
    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/kh$a;->b(I)Lcom/yandex/mobile/ads/impl/kh$a;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 31
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/kh$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    move-wide v3, v2

    move v2, v10

    :goto_0
    const/4 v11, 0x1

    if-ge v2, v1, :cond_3

    .line 32
    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/kh$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yandex/mobile/ads/impl/kh$b;

    .line 33
    iget v7, v6, Lcom/yandex/mobile/ads/impl/kh;->a:I

    const v8, 0x74726578

    if-ne v7, v8, :cond_0

    .line 34
    iget-object v6, v6, Lcom/yandex/mobile/ads/impl/kh$b;->b:Lcom/yandex/mobile/ads/impl/ag1;

    const/16 v7, 0xc

    .line 35
    invoke-virtual {v6, v7}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 36
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v7

    .line 37
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v8

    sub-int/2addr v8, v11

    .line 38
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v11

    .line 39
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v12

    .line 40
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v6

    .line 41
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v13, Lcom/yandex/mobile/ads/impl/n00;

    invoke-direct {v13, v8, v11, v12, v6}, Lcom/yandex/mobile/ads/impl/n00;-><init>(IIII)V

    .line 42
    invoke-static {v7, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 43
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/yandex/mobile/ads/impl/n00;

    invoke-virtual {v9, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    const v8, 0x6d656864

    if-ne v7, v8, :cond_2

    .line 44
    iget-object v3, v6, Lcom/yandex/mobile/ads/impl/kh$b;->b:Lcom/yandex/mobile/ads/impl/ag1;

    const/16 v4, 0x8

    .line 45
    invoke-virtual {v3, v4}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 46
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v4

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    if-nez v4, :cond_1

    .line 47
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v3

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ag1;->y()J

    move-result-wide v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    :cond_3
    new-instance v2, Lcom/yandex/mobile/ads/impl/ie0;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/ie0;-><init>()V

    new-instance v8, Ldqd;

    invoke-direct {v8, p0}, Ldqd;-><init>(Lcom/yandex/mobile/ads/impl/pc0;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    .line 49
    invoke-static/range {v1 .. v8}, Lcom/yandex/mobile/ads/impl/lh;->a(Lcom/yandex/mobile/ads/impl/kh$a;Lcom/yandex/mobile/ads/impl/ie0;JLcom/yandex/mobile/ads/impl/f40;ZZLcom/yandex/mobile/ads/impl/fe0;)Ljava/util/ArrayList;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/pc0;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_6

    move v1, v10

    :goto_2
    if-ge v1, v0, :cond_5

    .line 52
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/b62;

    .line 53
    iget-object v3, v2, Lcom/yandex/mobile/ads/impl/b62;->a:Lcom/yandex/mobile/ads/impl/v52;

    .line 54
    new-instance v4, Lcom/yandex/mobile/ads/impl/pc0$b;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/pc0;->B:Lcom/yandex/mobile/ads/impl/b80;

    iget v6, v3, Lcom/yandex/mobile/ads/impl/v52;->b:I

    .line 55
    invoke-interface {v5, v1, v6}, Lcom/yandex/mobile/ads/impl/b80;->a(II)Lcom/yandex/mobile/ads/impl/a62;

    move-result-object v5

    iget v6, v3, Lcom/yandex/mobile/ads/impl/v52;->a:I

    .line 56
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ne v7, v11, :cond_4

    .line 57
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yandex/mobile/ads/impl/n00;

    goto :goto_3

    .line 58
    :cond_4
    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yandex/mobile/ads/impl/n00;

    .line 59
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    :goto_3
    invoke-direct {v4, v5, v2, v6}, Lcom/yandex/mobile/ads/impl/pc0$b;-><init>(Lcom/yandex/mobile/ads/impl/a62;Lcom/yandex/mobile/ads/impl/b62;Lcom/yandex/mobile/ads/impl/n00;)V

    .line 61
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/pc0;->b:Landroid/util/SparseArray;

    iget v5, v3, Lcom/yandex/mobile/ads/impl/v52;->a:I

    invoke-virtual {v2, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    iget-wide v4, p0, Lcom/yandex/mobile/ads/impl/pc0;->u:J

    iget-wide v2, v3, Lcom/yandex/mobile/ads/impl/v52;->e:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/yandex/mobile/ads/impl/pc0;->u:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 63
    :cond_5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pc0;->B:Lcom/yandex/mobile/ads/impl/b80;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/b80;->a()V

    goto :goto_6

    .line 64
    :cond_6
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/pc0;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ne v1, v0, :cond_9

    move v1, v10

    :goto_4
    if-ge v1, v0, :cond_8

    .line 65
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/b62;

    .line 66
    iget-object v3, v2, Lcom/yandex/mobile/ads/impl/b62;->a:Lcom/yandex/mobile/ads/impl/v52;

    .line 67
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/pc0;->b:Landroid/util/SparseArray;

    iget v5, v3, Lcom/yandex/mobile/ads/impl/v52;->a:I

    .line 68
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/mobile/ads/impl/pc0$b;

    iget v3, v3, Lcom/yandex/mobile/ads/impl/v52;->a:I

    .line 69
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ne v5, v11, :cond_7

    .line 70
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/mobile/ads/impl/n00;

    goto :goto_5

    .line 71
    :cond_7
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/mobile/ads/impl/n00;

    .line 72
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    :goto_5
    invoke-virtual {v4, v2, v3}, Lcom/yandex/mobile/ads/impl/pc0$b;->a(Lcom/yandex/mobile/ads/impl/b62;Lcom/yandex/mobile/ads/impl/n00;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    :goto_6
    return-void

    .line 74
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static a()[Lcom/yandex/mobile/ads/impl/z70;
    .locals 3

    .line 571
    new-instance v0, Lcom/yandex/mobile/ads/impl/pc0;

    const/4 v1, 0x0

    .line 572
    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/pc0;-><init>(I)V

    const/4 v2, 0x1

    .line 573
    new-array v2, v2, [Lcom/yandex/mobile/ads/impl/z70;

    aput-object v0, v2, v1

    return-object v2
.end method

.method public static synthetic b()[Lcom/yandex/mobile/ads/impl/z70;
    .locals 1

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pc0;->a()[Lcom/yandex/mobile/ads/impl/z70;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/a80;Lcom/yandex/mobile/ads/impl/pj1;)I
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_0
    const/4 v2, 0x1

    .line 293
    :goto_1
    iget v3, v0, Lcom/yandex/mobile/ads/impl/pc0;->m:I

    const v4, 0x656d7367

    const v5, 0x73696478

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v3, :cond_3a

    const-string v10, "FragmentedMp4Extractor"

    if-eq v3, v2, :cond_2b

    const-wide v4, 0x7fffffffffffffffL

    const/4 v12, 0x3

    if-eq v3, v6, :cond_26

    .line 294
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/pc0;->w:Lcom/yandex/mobile/ads/impl/pc0$b;

    if-nez v3, :cond_9

    .line 295
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/pc0;->b:Landroid/util/SparseArray;

    .line 296
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v13

    move-wide v14, v4

    move-object v4, v8

    move v5, v9

    :goto_2
    if-ge v5, v13, :cond_4

    .line 297
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lcom/yandex/mobile/ads/impl/pc0$b;

    .line 298
    invoke-static {v6}, Lcom/yandex/mobile/ads/impl/pc0$b;->a(Lcom/yandex/mobile/ads/impl/pc0$b;)Z

    move-result v16

    if-nez v16, :cond_0

    iget v11, v6, Lcom/yandex/mobile/ads/impl/pc0$b;->f:I

    iget-object v7, v6, Lcom/yandex/mobile/ads/impl/pc0$b;->d:Lcom/yandex/mobile/ads/impl/b62;

    iget v7, v7, Lcom/yandex/mobile/ads/impl/b62;->b:I

    if-eq v11, v7, :cond_3

    :cond_0
    if-eqz v16, :cond_1

    iget v7, v6, Lcom/yandex/mobile/ads/impl/pc0$b;->h:I

    iget-object v11, v6, Lcom/yandex/mobile/ads/impl/pc0$b;->b:Lcom/yandex/mobile/ads/impl/x52;

    iget v11, v11, Lcom/yandex/mobile/ads/impl/x52;->d:I

    if-ne v7, v11, :cond_1

    goto :goto_4

    :cond_1
    if-nez v16, :cond_2

    .line 299
    iget-object v7, v6, Lcom/yandex/mobile/ads/impl/pc0$b;->d:Lcom/yandex/mobile/ads/impl/b62;

    iget-object v7, v7, Lcom/yandex/mobile/ads/impl/b62;->c:[J

    iget v11, v6, Lcom/yandex/mobile/ads/impl/pc0$b;->f:I

    aget-wide v19, v7, v11

    goto :goto_3

    .line 300
    :cond_2
    iget-object v7, v6, Lcom/yandex/mobile/ads/impl/pc0$b;->b:Lcom/yandex/mobile/ads/impl/x52;

    iget-object v7, v7, Lcom/yandex/mobile/ads/impl/x52;->f:[J

    iget v11, v6, Lcom/yandex/mobile/ads/impl/pc0$b;->h:I

    aget-wide v19, v7, v11

    :goto_3
    cmp-long v7, v19, v14

    if-gez v7, :cond_3

    move-object v4, v6

    move-wide/from16 v14, v19

    :cond_3
    :goto_4
    add-int/2addr v5, v2

    const/4 v6, 0x2

    goto :goto_2

    :cond_4
    if-nez v4, :cond_6

    .line 301
    iget-wide v3, v0, Lcom/yandex/mobile/ads/impl/pc0;->r:J

    move-object v5, v1

    check-cast v5, Lcom/yandex/mobile/ads/impl/wz;

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/wz;->a()J

    move-result-wide v6

    sub-long/2addr v3, v6

    long-to-int v3, v3

    if-ltz v3, :cond_5

    .line 302
    invoke-virtual {v5, v3}, Lcom/yandex/mobile/ads/impl/wz;->a(I)V

    .line 303
    iput v9, v0, Lcom/yandex/mobile/ads/impl/pc0;->m:I

    .line 304
    iput v9, v0, Lcom/yandex/mobile/ads/impl/pc0;->p:I

    goto :goto_1

    .line 305
    :cond_5
    const-string v0, "Offset to end of mdat was negative."

    invoke-static {v0, v8}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    .line 306
    :cond_6
    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/pc0$b;->a(Lcom/yandex/mobile/ads/impl/pc0$b;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 307
    iget-object v3, v4, Lcom/yandex/mobile/ads/impl/pc0$b;->d:Lcom/yandex/mobile/ads/impl/b62;

    iget-object v3, v3, Lcom/yandex/mobile/ads/impl/b62;->c:[J

    iget v5, v4, Lcom/yandex/mobile/ads/impl/pc0$b;->f:I

    aget-wide v5, v3, v5

    goto :goto_5

    .line 308
    :cond_7
    iget-object v3, v4, Lcom/yandex/mobile/ads/impl/pc0$b;->b:Lcom/yandex/mobile/ads/impl/x52;

    iget-object v3, v3, Lcom/yandex/mobile/ads/impl/x52;->f:[J

    iget v5, v4, Lcom/yandex/mobile/ads/impl/pc0$b;->h:I

    aget-wide v5, v3, v5

    .line 309
    :goto_5
    move-object v3, v1

    check-cast v3, Lcom/yandex/mobile/ads/impl/wz;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/wz;->a()J

    move-result-wide v13

    sub-long/2addr v5, v13

    long-to-int v5, v5

    if-gez v5, :cond_8

    .line 310
    const-string v5, "Ignoring negative offset to sample data."

    invoke-static {v10, v5}, Lcom/yandex/mobile/ads/impl/et0;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v9

    .line 311
    :cond_8
    invoke-virtual {v3, v5}, Lcom/yandex/mobile/ads/impl/wz;->a(I)V

    .line 312
    iput-object v4, v0, Lcom/yandex/mobile/ads/impl/pc0;->w:Lcom/yandex/mobile/ads/impl/pc0$b;

    move-object v3, v4

    .line 313
    :cond_9
    iget v4, v0, Lcom/yandex/mobile/ads/impl/pc0;->m:I

    const/4 v5, 0x6

    if-ne v4, v12, :cond_13

    .line 314
    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/pc0$b;->a(Lcom/yandex/mobile/ads/impl/pc0$b;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 315
    iget-object v4, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->d:Lcom/yandex/mobile/ads/impl/b62;

    iget-object v4, v4, Lcom/yandex/mobile/ads/impl/b62;->d:[I

    iget v6, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->f:I

    aget v4, v4, v6

    goto :goto_6

    .line 316
    :cond_a
    iget-object v4, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->b:Lcom/yandex/mobile/ads/impl/x52;

    iget-object v4, v4, Lcom/yandex/mobile/ads/impl/x52;->h:[I

    iget v6, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->f:I

    aget v4, v4, v6

    .line 317
    :goto_6
    iput v4, v0, Lcom/yandex/mobile/ads/impl/pc0;->x:I

    .line 318
    iget v6, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->f:I

    iget v7, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->i:I

    if-ge v6, v7, :cond_10

    .line 319
    check-cast v1, Lcom/yandex/mobile/ads/impl/wz;

    invoke-virtual {v1, v4}, Lcom/yandex/mobile/ads/impl/wz;->a(I)V

    .line 320
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/pc0$b;->a()Lcom/yandex/mobile/ads/impl/w52;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_7

    .line 321
    :cond_b
    iget-object v4, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->b:Lcom/yandex/mobile/ads/impl/x52;

    iget-object v4, v4, Lcom/yandex/mobile/ads/impl/x52;->n:Lcom/yandex/mobile/ads/impl/ag1;

    .line 322
    iget v1, v1, Lcom/yandex/mobile/ads/impl/w52;->d:I

    if-eqz v1, :cond_c

    .line 323
    invoke-virtual {v4, v1}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 324
    :cond_c
    iget-object v1, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->b:Lcom/yandex/mobile/ads/impl/x52;

    iget v6, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->f:I

    .line 325
    iget-boolean v7, v1, Lcom/yandex/mobile/ads/impl/x52;->k:Z

    if-eqz v7, :cond_d

    .line 326
    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/x52;->l:[Z

    aget-boolean v1, v1, v6

    if-eqz v1, :cond_d

    .line 327
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/ag1;->z()I

    move-result v1

    mul-int/2addr v1, v5

    invoke-virtual {v4, v1}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 328
    :cond_d
    :goto_7
    iget v1, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->f:I

    add-int/2addr v1, v2

    iput v1, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->f:I

    .line 329
    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/pc0$b;->a(Lcom/yandex/mobile/ads/impl/pc0$b;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_8

    .line 330
    :cond_e
    iget v1, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->g:I

    add-int/2addr v1, v2

    iput v1, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->g:I

    .line 331
    iget-object v4, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->b:Lcom/yandex/mobile/ads/impl/x52;

    iget-object v4, v4, Lcom/yandex/mobile/ads/impl/x52;->g:[I

    iget v5, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->h:I

    aget v4, v4, v5

    if-ne v1, v4, :cond_f

    add-int/2addr v5, v2

    .line 332
    iput v5, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->h:I

    .line 333
    iput v9, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->g:I

    .line 334
    :goto_8
    iput-object v8, v0, Lcom/yandex/mobile/ads/impl/pc0;->w:Lcom/yandex/mobile/ads/impl/pc0$b;

    .line 335
    :cond_f
    iput v12, v0, Lcom/yandex/mobile/ads/impl/pc0;->m:I

    move v1, v9

    goto/16 :goto_17

    .line 336
    :cond_10
    iget-object v6, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->d:Lcom/yandex/mobile/ads/impl/b62;

    iget-object v6, v6, Lcom/yandex/mobile/ads/impl/b62;->a:Lcom/yandex/mobile/ads/impl/v52;

    iget v6, v6, Lcom/yandex/mobile/ads/impl/v52;->g:I

    if-ne v6, v2, :cond_11

    const/16 v6, 0x8

    sub-int/2addr v4, v6

    .line 337
    iput v4, v0, Lcom/yandex/mobile/ads/impl/pc0;->x:I

    .line 338
    move-object v4, v1

    check-cast v4, Lcom/yandex/mobile/ads/impl/wz;

    invoke-virtual {v4, v6}, Lcom/yandex/mobile/ads/impl/wz;->a(I)V

    .line 339
    :cond_11
    iget-object v4, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->d:Lcom/yandex/mobile/ads/impl/b62;

    iget-object v4, v4, Lcom/yandex/mobile/ads/impl/b62;->a:Lcom/yandex/mobile/ads/impl/v52;

    iget-object v4, v4, Lcom/yandex/mobile/ads/impl/v52;->f:Lcom/yandex/mobile/ads/impl/jc0;

    iget-object v4, v4, Lcom/yandex/mobile/ads/impl/jc0;->m:Ljava/lang/String;

    const-string v6, "audio/ac4"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 340
    iget v4, v0, Lcom/yandex/mobile/ads/impl/pc0;->x:I

    const/4 v6, 0x7

    .line 341
    invoke-virtual {v3, v4, v6}, Lcom/yandex/mobile/ads/impl/pc0$b;->a(II)I

    move-result v4

    iput v4, v0, Lcom/yandex/mobile/ads/impl/pc0;->y:I

    .line 342
    iget v4, v0, Lcom/yandex/mobile/ads/impl/pc0;->x:I

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/pc0;->g:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-static {v4, v7}, Lcom/yandex/mobile/ads/impl/w;->a(ILcom/yandex/mobile/ads/impl/ag1;)V

    .line 343
    iget-object v4, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->a:Lcom/yandex/mobile/ads/impl/a62;

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/pc0;->g:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-interface {v4, v6, v7}, Lcom/yandex/mobile/ads/impl/a62;->a(ILcom/yandex/mobile/ads/impl/ag1;)V

    .line 344
    iget v4, v0, Lcom/yandex/mobile/ads/impl/pc0;->y:I

    add-int/2addr v4, v6

    iput v4, v0, Lcom/yandex/mobile/ads/impl/pc0;->y:I

    goto :goto_9

    .line 345
    :cond_12
    iget v4, v0, Lcom/yandex/mobile/ads/impl/pc0;->x:I

    .line 346
    invoke-virtual {v3, v4, v9}, Lcom/yandex/mobile/ads/impl/pc0$b;->a(II)I

    move-result v4

    iput v4, v0, Lcom/yandex/mobile/ads/impl/pc0;->y:I

    .line 347
    :goto_9
    iget v4, v0, Lcom/yandex/mobile/ads/impl/pc0;->x:I

    iget v6, v0, Lcom/yandex/mobile/ads/impl/pc0;->y:I

    add-int/2addr v4, v6

    iput v4, v0, Lcom/yandex/mobile/ads/impl/pc0;->x:I

    const/4 v4, 0x4

    .line 348
    iput v4, v0, Lcom/yandex/mobile/ads/impl/pc0;->m:I

    .line 349
    iput v9, v0, Lcom/yandex/mobile/ads/impl/pc0;->z:I

    .line 350
    :cond_13
    iget-object v4, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->d:Lcom/yandex/mobile/ads/impl/b62;

    iget-object v6, v4, Lcom/yandex/mobile/ads/impl/b62;->a:Lcom/yandex/mobile/ads/impl/v52;

    .line 351
    iget-object v7, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->a:Lcom/yandex/mobile/ads/impl/a62;

    .line 352
    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/pc0$b;->a(Lcom/yandex/mobile/ads/impl/pc0$b;)Z

    move-result v10

    if-nez v10, :cond_14

    .line 353
    iget-object v4, v4, Lcom/yandex/mobile/ads/impl/b62;->f:[J

    iget v10, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->f:I

    aget-wide v10, v4, v10

    goto :goto_a

    .line 354
    :cond_14
    iget-object v4, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->b:Lcom/yandex/mobile/ads/impl/x52;

    iget v10, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->f:I

    .line 355
    iget-object v4, v4, Lcom/yandex/mobile/ads/impl/x52;->i:[J

    .line 356
    aget-wide v10, v4, v10

    .line 357
    :goto_a
    iget v4, v6, Lcom/yandex/mobile/ads/impl/v52;->j:I

    if-eqz v4, :cond_1b

    .line 358
    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/pc0;->d:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v4

    .line 359
    aput-byte v9, v4, v9

    .line 360
    aput-byte v9, v4, v2

    const/4 v13, 0x2

    .line 361
    aput-byte v9, v4, v13

    .line 362
    iget v13, v6, Lcom/yandex/mobile/ads/impl/v52;->j:I

    add-int/lit8 v14, v13, 0x1

    const/4 v15, 0x4

    rsub-int/lit8 v13, v13, 0x4

    .line 363
    :goto_b
    iget v15, v0, Lcom/yandex/mobile/ads/impl/pc0;->y:I

    iget v12, v0, Lcom/yandex/mobile/ads/impl/pc0;->x:I

    if-ge v15, v12, :cond_1c

    .line 364
    iget v12, v0, Lcom/yandex/mobile/ads/impl/pc0;->z:I

    const-string v15, "video/hevc"

    if-nez v12, :cond_19

    .line 365
    move-object v12, v1

    check-cast v12, Lcom/yandex/mobile/ads/impl/wz;

    .line 366
    invoke-virtual {v12, v4, v13, v14, v9}, Lcom/yandex/mobile/ads/impl/wz;->a([BIIZ)Z

    .line 367
    iget-object v12, v0, Lcom/yandex/mobile/ads/impl/pc0;->d:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v12, v9}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 368
    iget-object v12, v0, Lcom/yandex/mobile/ads/impl/pc0;->d:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v12}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v12

    if-lt v12, v2, :cond_18

    sub-int/2addr v12, v2

    .line 369
    iput v12, v0, Lcom/yandex/mobile/ads/impl/pc0;->z:I

    .line 370
    iget-object v12, v0, Lcom/yandex/mobile/ads/impl/pc0;->c:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v12, v9}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 371
    iget-object v12, v0, Lcom/yandex/mobile/ads/impl/pc0;->c:Lcom/yandex/mobile/ads/impl/ag1;

    const/4 v9, 0x4

    invoke-interface {v7, v9, v12}, Lcom/yandex/mobile/ads/impl/a62;->a(ILcom/yandex/mobile/ads/impl/ag1;)V

    .line 372
    iget-object v12, v0, Lcom/yandex/mobile/ads/impl/pc0;->d:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-interface {v7, v2, v12}, Lcom/yandex/mobile/ads/impl/a62;->a(ILcom/yandex/mobile/ads/impl/ag1;)V

    .line 373
    iget-object v12, v0, Lcom/yandex/mobile/ads/impl/pc0;->D:[Lcom/yandex/mobile/ads/impl/a62;

    array-length v12, v12

    if-lez v12, :cond_17

    iget-object v12, v6, Lcom/yandex/mobile/ads/impl/v52;->f:Lcom/yandex/mobile/ads/impl/jc0;

    iget-object v12, v12, Lcom/yandex/mobile/ads/impl/jc0;->m:Ljava/lang/String;

    aget-byte v18, v4, v9

    .line 374
    sget-object v9, Lcom/yandex/mobile/ads/impl/e41;->a:[B

    .line 375
    const-string v9, "video/avc"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    and-int/lit8 v9, v18, 0x1f

    if-eq v9, v5, :cond_16

    .line 376
    :cond_15
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    and-int/lit8 v9, v18, 0x7e

    shr-int/2addr v9, v2

    const/16 v12, 0x27

    if-ne v9, v12, :cond_17

    :cond_16
    move v9, v2

    goto :goto_c

    :cond_17
    const/4 v9, 0x0

    .line 377
    :goto_c
    iput-boolean v9, v0, Lcom/yandex/mobile/ads/impl/pc0;->A:Z

    .line 378
    iget v9, v0, Lcom/yandex/mobile/ads/impl/pc0;->y:I

    add-int/lit8 v9, v9, 0x5

    iput v9, v0, Lcom/yandex/mobile/ads/impl/pc0;->y:I

    .line 379
    iget v9, v0, Lcom/yandex/mobile/ads/impl/pc0;->x:I

    add-int/2addr v9, v13

    iput v9, v0, Lcom/yandex/mobile/ads/impl/pc0;->x:I

    :goto_d
    const/4 v9, 0x0

    const/4 v12, 0x3

    goto :goto_b

    .line 380
    :cond_18
    const-string v0, "Invalid NAL length"

    invoke-static {v0, v8}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    .line 381
    :cond_19
    iget-boolean v9, v0, Lcom/yandex/mobile/ads/impl/pc0;->A:Z

    if-eqz v9, :cond_1a

    .line 382
    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/pc0;->e:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v9, v12}, Lcom/yandex/mobile/ads/impl/ag1;->c(I)V

    .line 383
    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/pc0;->e:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v9}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v9

    iget v12, v0, Lcom/yandex/mobile/ads/impl/pc0;->z:I

    move-object v5, v1

    check-cast v5, Lcom/yandex/mobile/ads/impl/wz;

    const/4 v8, 0x0

    .line 384
    invoke-virtual {v5, v9, v8, v12, v8}, Lcom/yandex/mobile/ads/impl/wz;->a([BIIZ)Z

    .line 385
    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/pc0;->e:Lcom/yandex/mobile/ads/impl/ag1;

    iget v8, v0, Lcom/yandex/mobile/ads/impl/pc0;->z:I

    invoke-interface {v7, v8, v5}, Lcom/yandex/mobile/ads/impl/a62;->a(ILcom/yandex/mobile/ads/impl/ag1;)V

    .line 386
    iget v5, v0, Lcom/yandex/mobile/ads/impl/pc0;->z:I

    .line 387
    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/pc0;->e:Lcom/yandex/mobile/ads/impl/ag1;

    .line 388
    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v8

    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/pc0;->e:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v9}, Lcom/yandex/mobile/ads/impl/ag1;->e()I

    move-result v9

    invoke-static {v9, v8}, Lcom/yandex/mobile/ads/impl/e41;->a(I[B)I

    move-result v8

    .line 389
    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/pc0;->e:Lcom/yandex/mobile/ads/impl/ag1;

    iget-object v12, v6, Lcom/yandex/mobile/ads/impl/v52;->f:Lcom/yandex/mobile/ads/impl/jc0;

    iget-object v12, v12, Lcom/yandex/mobile/ads/impl/jc0;->m:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v9, v12}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 390
    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/pc0;->e:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v9, v8}, Lcom/yandex/mobile/ads/impl/ag1;->d(I)V

    .line 391
    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/pc0;->e:Lcom/yandex/mobile/ads/impl/ag1;

    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/pc0;->D:[Lcom/yandex/mobile/ads/impl/a62;

    invoke-static {v10, v11, v8, v9}, Lcom/yandex/mobile/ads/impl/do;->a(JLcom/yandex/mobile/ads/impl/ag1;[Lcom/yandex/mobile/ads/impl/a62;)V

    goto :goto_e

    :cond_1a
    const/4 v5, 0x0

    .line 392
    invoke-interface {v7, v1, v12, v5}, Lcom/yandex/mobile/ads/impl/a62;->b(Lcom/yandex/mobile/ads/impl/qv;IZ)I

    move-result v8

    move v5, v8

    .line 393
    :goto_e
    iget v8, v0, Lcom/yandex/mobile/ads/impl/pc0;->y:I

    add-int/2addr v8, v5

    iput v8, v0, Lcom/yandex/mobile/ads/impl/pc0;->y:I

    .line 394
    iget v8, v0, Lcom/yandex/mobile/ads/impl/pc0;->z:I

    sub-int/2addr v8, v5

    iput v8, v0, Lcom/yandex/mobile/ads/impl/pc0;->z:I

    const/4 v5, 0x6

    const/4 v8, 0x0

    goto :goto_d

    .line 395
    :cond_1b
    :goto_f
    iget v4, v0, Lcom/yandex/mobile/ads/impl/pc0;->y:I

    iget v5, v0, Lcom/yandex/mobile/ads/impl/pc0;->x:I

    if-ge v4, v5, :cond_1c

    sub-int/2addr v5, v4

    const/4 v4, 0x0

    .line 396
    invoke-interface {v7, v1, v5, v4}, Lcom/yandex/mobile/ads/impl/a62;->b(Lcom/yandex/mobile/ads/impl/qv;IZ)I

    move-result v5

    .line 397
    iget v4, v0, Lcom/yandex/mobile/ads/impl/pc0;->y:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/yandex/mobile/ads/impl/pc0;->y:I

    goto :goto_f

    .line 398
    :cond_1c
    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/pc0$b;->a(Lcom/yandex/mobile/ads/impl/pc0$b;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 399
    iget-object v1, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->d:Lcom/yandex/mobile/ads/impl/b62;

    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/b62;->g:[I

    iget v4, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->f:I

    aget v1, v1, v4

    goto :goto_10

    .line 400
    :cond_1d
    iget-object v1, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->b:Lcom/yandex/mobile/ads/impl/x52;

    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/x52;->j:[Z

    iget v4, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->f:I

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_1e

    move v1, v2

    goto :goto_10

    :cond_1e
    const/4 v1, 0x0

    .line 401
    :goto_10
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/pc0$b;->a()Lcom/yandex/mobile/ads/impl/w52;

    move-result-object v4

    if-eqz v4, :cond_1f

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v1, v4

    :cond_1f
    move/from16 v21, v1

    .line 402
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/pc0$b;->a()Lcom/yandex/mobile/ads/impl/w52;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 403
    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/w52;->c:Lcom/yandex/mobile/ads/impl/a62$a;

    move-object/from16 v24, v1

    goto :goto_11

    :cond_20
    const/16 v24, 0x0

    .line 404
    :goto_11
    iget v1, v0, Lcom/yandex/mobile/ads/impl/pc0;->x:I

    const/16 v23, 0x0

    move-object/from16 v18, v7

    move-wide/from16 v19, v10

    move/from16 v22, v1

    invoke-interface/range {v18 .. v24}, Lcom/yandex/mobile/ads/impl/a62;->a(JIIILcom/yandex/mobile/ads/impl/a62$a;)V

    .line 405
    :cond_21
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/pc0;->k:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    .line 406
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/pc0;->k:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/pc0$a;

    .line 407
    iget v4, v0, Lcom/yandex/mobile/ads/impl/pc0;->s:I

    iget v5, v1, Lcom/yandex/mobile/ads/impl/pc0$a;->c:I

    sub-int/2addr v4, v5

    iput v4, v0, Lcom/yandex/mobile/ads/impl/pc0;->s:I

    .line 408
    iget-wide v4, v1, Lcom/yandex/mobile/ads/impl/pc0$a;->a:J

    .line 409
    iget-boolean v6, v1, Lcom/yandex/mobile/ads/impl/pc0$a;->b:Z

    if-eqz v6, :cond_22

    add-long/2addr v4, v10

    .line 410
    :cond_22
    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/pc0;->C:[Lcom/yandex/mobile/ads/impl/a62;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_12
    if-ge v8, v7, :cond_21

    aget-object v17, v6, v8

    .line 411
    iget v9, v1, Lcom/yandex/mobile/ads/impl/pc0$a;->c:I

    iget v12, v0, Lcom/yandex/mobile/ads/impl/pc0;->s:I

    const/16 v20, 0x1

    const/16 v23, 0x0

    move-wide/from16 v18, v4

    move/from16 v21, v9

    move/from16 v22, v12

    invoke-interface/range {v17 .. v23}, Lcom/yandex/mobile/ads/impl/a62;->a(JIIILcom/yandex/mobile/ads/impl/a62$a;)V

    add-int/2addr v8, v2

    goto :goto_12

    .line 412
    :cond_23
    iget v1, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->f:I

    add-int/2addr v1, v2

    iput v1, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->f:I

    .line 413
    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/pc0$b;->a(Lcom/yandex/mobile/ads/impl/pc0$b;)Z

    move-result v1

    if-nez v1, :cond_24

    const/4 v1, 0x0

    :goto_13
    const/4 v2, 0x0

    goto :goto_14

    .line 414
    :cond_24
    iget v1, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->g:I

    add-int/2addr v1, v2

    iput v1, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->g:I

    .line 415
    iget-object v4, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->b:Lcom/yandex/mobile/ads/impl/x52;

    iget-object v4, v4, Lcom/yandex/mobile/ads/impl/x52;->g:[I

    iget v5, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->h:I

    aget v4, v4, v5

    if-ne v1, v4, :cond_25

    add-int/2addr v5, v2

    .line 416
    iput v5, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->h:I

    const/4 v1, 0x0

    .line 417
    iput v1, v3, Lcom/yandex/mobile/ads/impl/pc0$b;->g:I

    goto :goto_13

    .line 418
    :goto_14
    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->w:Lcom/yandex/mobile/ads/impl/pc0$b;

    :goto_15
    const/4 v2, 0x3

    goto :goto_16

    :cond_25
    const/4 v1, 0x0

    goto :goto_15

    .line 419
    :goto_16
    iput v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->m:I

    :goto_17
    return v1

    .line 420
    :cond_26
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/pc0;->b:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_18
    if-ge v6, v3, :cond_28

    .line 421
    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/pc0;->b:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/yandex/mobile/ads/impl/pc0$b;

    iget-object v8, v8, Lcom/yandex/mobile/ads/impl/pc0$b;->b:Lcom/yandex/mobile/ads/impl/x52;

    .line 422
    iget-boolean v9, v8, Lcom/yandex/mobile/ads/impl/x52;->o:Z

    if-eqz v9, :cond_27

    iget-wide v8, v8, Lcom/yandex/mobile/ads/impl/x52;->c:J

    cmp-long v10, v8, v4

    if-gez v10, :cond_27

    .line 423
    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/pc0;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/mobile/ads/impl/pc0$b;

    move-object v7, v4

    move-wide v4, v8

    :cond_27
    add-int/2addr v6, v2

    goto :goto_18

    :cond_28
    if-nez v7, :cond_29

    const/4 v3, 0x3

    .line 424
    iput v3, v0, Lcom/yandex/mobile/ads/impl/pc0;->m:I

    goto/16 :goto_1

    .line 425
    :cond_29
    move-object v3, v1

    check-cast v3, Lcom/yandex/mobile/ads/impl/wz;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/wz;->a()J

    move-result-wide v8

    sub-long/2addr v4, v8

    long-to-int v4, v4

    if-ltz v4, :cond_2a

    .line 426
    invoke-virtual {v3, v4}, Lcom/yandex/mobile/ads/impl/wz;->a(I)V

    .line 427
    iget-object v4, v7, Lcom/yandex/mobile/ads/impl/pc0$b;->b:Lcom/yandex/mobile/ads/impl/x52;

    .line 428
    iget-object v5, v4, Lcom/yandex/mobile/ads/impl/x52;->n:Lcom/yandex/mobile/ads/impl/ag1;

    .line 429
    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v5

    iget-object v6, v4, Lcom/yandex/mobile/ads/impl/x52;->n:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->e()I

    move-result v6

    const/4 v7, 0x0

    .line 430
    invoke-virtual {v3, v5, v7, v6, v7}, Lcom/yandex/mobile/ads/impl/wz;->a([BIIZ)Z

    .line 431
    iget-object v3, v4, Lcom/yandex/mobile/ads/impl/x52;->n:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v3, v7}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 432
    iput-boolean v7, v4, Lcom/yandex/mobile/ads/impl/x52;->o:Z

    goto/16 :goto_1

    .line 433
    :cond_2a
    const-string v0, "Offset to encryption data was negative."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    .line 434
    :cond_2b
    iget-wide v6, v0, Lcom/yandex/mobile/ads/impl/pc0;->o:J

    long-to-int v3, v6

    iget v6, v0, Lcom/yandex/mobile/ads/impl/pc0;->p:I

    sub-int/2addr v3, v6

    .line 435
    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/pc0;->q:Lcom/yandex/mobile/ads/impl/ag1;

    if-eqz v6, :cond_38

    .line 436
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v7

    move-object v8, v1

    check-cast v8, Lcom/yandex/mobile/ads/impl/wz;

    const/16 v9, 0x8

    const/4 v11, 0x0

    .line 437
    invoke-virtual {v8, v7, v9, v3, v11}, Lcom/yandex/mobile/ads/impl/wz;->a([BIIZ)Z

    .line 438
    new-instance v3, Lcom/yandex/mobile/ads/impl/kh$b;

    iget v7, v0, Lcom/yandex/mobile/ads/impl/pc0;->n:I

    invoke-direct {v3, v7, v6}, Lcom/yandex/mobile/ads/impl/kh$b;-><init>(ILcom/yandex/mobile/ads/impl/ag1;)V

    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/wz;->a()J

    move-result-wide v8

    .line 439
    iget-object v11, v0, Lcom/yandex/mobile/ads/impl/pc0;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v11}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2c

    .line 440
    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/pc0;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/mobile/ads/impl/kh$a;

    .line 441
    iget-object v4, v4, Lcom/yandex/mobile/ads/impl/kh$a;->c:Ljava/util/ArrayList;

    .line 442
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    :cond_2c
    if-ne v7, v5, :cond_30

    const/16 v3, 0x8

    .line 443
    invoke-virtual {v6, v3}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 444
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x4

    .line 445
    invoke-virtual {v6, v4}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 446
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v4

    if-nez v3, :cond_2d

    .line 447
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v10

    .line 448
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v12

    :goto_19
    add-long/2addr v12, v8

    move-wide v7, v10

    move-wide/from16 v18, v12

    goto :goto_1a

    .line 449
    :cond_2d
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->y()J

    move-result-wide v10

    .line 450
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->y()J

    move-result-wide v12

    goto :goto_19

    :goto_1a
    const-wide/32 v12, 0xf4240

    move-wide v10, v7

    move-wide v14, v4

    .line 451
    invoke-static/range {v10 .. v15}, Lcom/yandex/mobile/ads/impl/f92;->a(JJJ)J

    move-result-wide v20

    const/4 v3, 0x2

    .line 452
    invoke-virtual {v6, v3}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 453
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->z()I

    move-result v3

    .line 454
    new-array v9, v3, [I

    .line 455
    new-array v14, v3, [J

    .line 456
    new-array v15, v3, [J

    .line 457
    new-array v12, v3, [J

    move-wide/from16 v10, v20

    const/4 v13, 0x0

    :goto_1b
    if-ge v13, v3, :cond_2f

    .line 458
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v16

    const/high16 v22, -0x80000000

    and-int v22, v16, v22

    if-nez v22, :cond_2e

    .line 459
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v22

    const v24, 0x7fffffff

    and-int v16, v16, v24

    .line 460
    aput v16, v9, v13

    .line 461
    aput-wide v18, v14, v13

    .line 462
    aput-wide v10, v12, v13

    add-long v7, v7, v22

    const-wide/32 v22, 0xf4240

    move-wide v10, v7

    move-object v2, v12

    move/from16 v16, v13

    move-wide/from16 v12, v22

    move/from16 p2, v3

    move-wide/from16 v22, v7

    move-object v3, v14

    move-object v7, v15

    move-wide v14, v4

    .line 463
    invoke-static/range {v10 .. v15}, Lcom/yandex/mobile/ads/impl/f92;->a(JJJ)J

    move-result-wide v10

    .line 464
    aget-wide v12, v2, v16

    sub-long v12, v10, v12

    aput-wide v12, v7, v16

    const/4 v8, 0x4

    .line 465
    invoke-virtual {v6, v8}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    .line 466
    aget v12, v9, v16

    int-to-long v12, v12

    add-long v18, v18, v12

    const/4 v12, 0x1

    add-int/lit8 v13, v16, 0x1

    move-object v14, v3

    move-object v15, v7

    move-wide/from16 v7, v22

    move/from16 v3, p2

    move/from16 v33, v12

    move-object v12, v2

    move/from16 v2, v33

    goto :goto_1b

    .line 467
    :cond_2e
    const-string v0, "Unhandled indirect reference"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    :cond_2f
    move-object v2, v12

    move-object v3, v14

    move-object v7, v15

    .line 468
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lcom/yandex/mobile/ads/impl/mo;

    invoke-direct {v5, v9, v3, v7, v2}, Lcom/yandex/mobile/ads/impl/mo;-><init>([I[J[J[J)V

    .line 469
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 470
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/yandex/mobile/ads/impl/pc0;->v:J

    .line 471
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/pc0;->B:Lcom/yandex/mobile/ads/impl/b80;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/yandex/mobile/ads/impl/ex1;

    invoke-interface {v3, v2}, Lcom/yandex/mobile/ads/impl/b80;->a(Lcom/yandex/mobile/ads/impl/ex1;)V

    const/4 v2, 0x1

    .line 472
    iput-boolean v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->E:Z

    goto/16 :goto_20

    :cond_30
    if-ne v7, v4, :cond_39

    .line 473
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->C:[Lcom/yandex/mobile/ads/impl/a62;

    array-length v2, v2

    if-nez v2, :cond_31

    goto/16 :goto_20

    :cond_31
    const/16 v2, 0x8

    .line 474
    invoke-virtual {v6, v2}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 475
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_33

    const/4 v5, 0x1

    if-eq v2, v5, :cond_32

    .line 476
    const-string v3, "Skipping unsupported emsg version: "

    invoke-static {v3, v2, v10}, Lcom/yandex/mobile/ads/impl/xr0;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_20

    .line 477
    :cond_32
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v7

    .line 478
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->y()J

    move-result-wide v17

    const-wide/32 v19, 0xf4240

    move-wide/from16 v21, v7

    invoke-static/range {v17 .. v22}, Lcom/yandex/mobile/ads/impl/f92;->a(JJJ)J

    move-result-wide v9

    .line 479
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    invoke-static/range {v17 .. v22}, Lcom/yandex/mobile/ads/impl/f92;->a(JJJ)J

    move-result-wide v7

    .line 480
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v11

    .line 481
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->q()Ljava/lang/String;

    move-result-object v2

    .line 482
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 483
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->q()Ljava/lang/String;

    move-result-object v5

    .line 484
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v26, v2

    move-object/from16 v27, v5

    move-wide/from16 v28, v7

    move-wide v14, v9

    move-wide/from16 v30, v11

    move-wide v7, v3

    goto :goto_1d

    .line 485
    :cond_33
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->q()Ljava/lang/String;

    move-result-object v2

    .line 486
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 487
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->q()Ljava/lang/String;

    move-result-object v5

    .line 488
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v13

    .line 490
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v7

    const-wide/32 v9, 0xf4240

    move-wide v11, v13

    invoke-static/range {v7 .. v12}, Lcom/yandex/mobile/ads/impl/f92;->a(JJJ)J

    move-result-wide v17

    .line 491
    iget-wide v7, v0, Lcom/yandex/mobile/ads/impl/pc0;->v:J

    cmp-long v9, v7, v3

    if-eqz v9, :cond_34

    add-long v7, v7, v17

    move-wide/from16 v19, v7

    goto :goto_1c

    :cond_34
    move-wide/from16 v19, v3

    .line 492
    :goto_1c
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    move-wide v11, v13

    invoke-static/range {v7 .. v12}, Lcom/yandex/mobile/ads/impl/f92;->a(JJJ)J

    move-result-wide v7

    .line 493
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v11

    move-object/from16 v26, v2

    move-object/from16 v27, v5

    move-wide/from16 v28, v7

    move-wide/from16 v30, v11

    move-wide/from16 v7, v17

    move-wide/from16 v14, v19

    .line 494
    :goto_1d
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->a()I

    move-result v2

    new-array v2, v2, [B

    .line 495
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/ag1;->a()I

    move-result v5

    const/4 v9, 0x0

    invoke-virtual {v6, v2, v9, v5}, Lcom/yandex/mobile/ads/impl/ag1;->a([BII)V

    .line 496
    new-instance v5, Lcom/yandex/mobile/ads/impl/y50;

    move-object/from16 v25, v5

    move-object/from16 v32, v2

    invoke-direct/range {v25 .. v32}, Lcom/yandex/mobile/ads/impl/y50;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 497
    new-instance v2, Lcom/yandex/mobile/ads/impl/ag1;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/pc0;->h:Lcom/yandex/mobile/ads/impl/a60;

    .line 498
    invoke-virtual {v6, v5}, Lcom/yandex/mobile/ads/impl/a60;->a(Lcom/yandex/mobile/ads/impl/y50;)[B

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/yandex/mobile/ads/impl/ag1;-><init>([B)V

    .line 499
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ag1;->a()I

    move-result v5

    .line 500
    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/pc0;->C:[Lcom/yandex/mobile/ads/impl/a62;

    array-length v9, v6

    const/4 v10, 0x0

    :goto_1e
    if-ge v10, v9, :cond_35

    aget-object v11, v6, v10

    const/4 v12, 0x0

    .line 501
    invoke-virtual {v2, v12}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 502
    invoke-interface {v11, v5, v2}, Lcom/yandex/mobile/ads/impl/a62;->a(ILcom/yandex/mobile/ads/impl/ag1;)V

    const/4 v11, 0x1

    add-int/2addr v10, v11

    goto :goto_1e

    :cond_35
    const/4 v11, 0x1

    cmp-long v2, v14, v3

    if-nez v2, :cond_36

    .line 503
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->k:Ljava/util/ArrayDeque;

    new-instance v3, Lcom/yandex/mobile/ads/impl/pc0$a;

    invoke-direct {v3, v5, v7, v8, v11}, Lcom/yandex/mobile/ads/impl/pc0$a;-><init>(IJZ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 504
    iget v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->s:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->s:I

    goto :goto_20

    .line 505
    :cond_36
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->k:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_37

    .line 506
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->k:Ljava/util/ArrayDeque;

    new-instance v3, Lcom/yandex/mobile/ads/impl/pc0$a;

    const/4 v4, 0x0

    invoke-direct {v3, v5, v14, v15, v4}, Lcom/yandex/mobile/ads/impl/pc0$a;-><init>(IJZ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 507
    iget v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->s:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->s:I

    goto :goto_20

    .line 508
    :cond_37
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->C:[Lcom/yandex/mobile/ads/impl/a62;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v3, :cond_39

    aget-object v7, v2, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x1

    move-wide v8, v14

    move v11, v5

    .line 509
    invoke-interface/range {v7 .. v13}, Lcom/yandex/mobile/ads/impl/a62;->a(JIIILcom/yandex/mobile/ads/impl/a62$a;)V

    const/4 v6, 0x1

    add-int/2addr v4, v6

    goto :goto_1f

    .line 510
    :cond_38
    move-object v2, v1

    check-cast v2, Lcom/yandex/mobile/ads/impl/wz;

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/wz;->a(I)V

    .line 511
    :cond_39
    :goto_20
    move-object v2, v1

    check-cast v2, Lcom/yandex/mobile/ads/impl/wz;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/wz;->a()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/yandex/mobile/ads/impl/pc0;->a(J)V

    goto/16 :goto_0

    .line 512
    :cond_3a
    iget v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->p:I

    if-nez v2, :cond_3c

    .line 513
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->i:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/yandex/mobile/ads/impl/wz;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v3, v2, v7, v6, v8}, Lcom/yandex/mobile/ads/impl/wz;->a([BIIZ)Z

    move-result v2

    if-nez v2, :cond_3b

    const/4 v0, -0x1

    return v0

    .line 514
    :cond_3b
    iput v6, v0, Lcom/yandex/mobile/ads/impl/pc0;->p:I

    .line 515
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->i:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v2, v7}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 516
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->i:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->o:J

    .line 517
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->i:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v2

    iput v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->n:I

    .line 518
    :cond_3c
    iget-wide v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->o:J

    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-nez v6, :cond_3d

    .line 519
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->i:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/yandex/mobile/ads/impl/wz;

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 520
    invoke-virtual {v3, v2, v6, v6, v7}, Lcom/yandex/mobile/ads/impl/wz;->a([BIIZ)Z

    .line 521
    iget v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->p:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->p:I

    .line 522
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->i:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ag1;->y()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->o:J

    goto :goto_21

    :cond_3d
    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_3f

    .line 523
    move-object v2, v1

    check-cast v2, Lcom/yandex/mobile/ads/impl/wz;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/wz;->b()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_3e

    .line 524
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/pc0;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 525
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/pc0;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/mobile/ads/impl/kh$a;

    iget-wide v6, v3, Lcom/yandex/mobile/ads/impl/kh$a;->b:J

    :cond_3e
    cmp-long v3, v6, v8

    if-eqz v3, :cond_3f

    .line 526
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/wz;->a()J

    move-result-wide v2

    sub-long/2addr v6, v2

    iget v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->p:I

    int-to-long v2, v2

    add-long/2addr v6, v2

    iput-wide v6, v0, Lcom/yandex/mobile/ads/impl/pc0;->o:J

    .line 527
    :cond_3f
    :goto_21
    iget-wide v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->o:J

    iget v6, v0, Lcom/yandex/mobile/ads/impl/pc0;->p:I

    int-to-long v6, v6

    cmp-long v2, v2, v6

    if-ltz v2, :cond_4c

    .line 528
    move-object v2, v1

    check-cast v2, Lcom/yandex/mobile/ads/impl/wz;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/wz;->a()J

    move-result-wide v6

    iget v3, v0, Lcom/yandex/mobile/ads/impl/pc0;->p:I

    int-to-long v8, v3

    sub-long/2addr v6, v8

    .line 529
    iget v3, v0, Lcom/yandex/mobile/ads/impl/pc0;->n:I

    const v8, 0x6d646174

    const v9, 0x6d6f6f66

    if-eq v3, v9, :cond_40

    if-ne v3, v8, :cond_41

    .line 530
    :cond_40
    iget-boolean v3, v0, Lcom/yandex/mobile/ads/impl/pc0;->E:Z

    if-nez v3, :cond_41

    .line 531
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/pc0;->B:Lcom/yandex/mobile/ads/impl/b80;

    new-instance v10, Lcom/yandex/mobile/ads/impl/ex1$b;

    iget-wide v11, v0, Lcom/yandex/mobile/ads/impl/pc0;->u:J

    invoke-direct {v10, v11, v12, v6, v7}, Lcom/yandex/mobile/ads/impl/ex1$b;-><init>(JJ)V

    invoke-interface {v3, v10}, Lcom/yandex/mobile/ads/impl/b80;->a(Lcom/yandex/mobile/ads/impl/ex1;)V

    const/4 v3, 0x1

    .line 532
    iput-boolean v3, v0, Lcom/yandex/mobile/ads/impl/pc0;->E:Z

    .line 533
    :cond_41
    iget v3, v0, Lcom/yandex/mobile/ads/impl/pc0;->n:I

    if-ne v3, v9, :cond_42

    .line 534
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/pc0;->b:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v10, 0x0

    :goto_22
    if-ge v10, v3, :cond_42

    .line 535
    iget-object v11, v0, Lcom/yandex/mobile/ads/impl/pc0;->b:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/yandex/mobile/ads/impl/pc0$b;

    iget-object v11, v11, Lcom/yandex/mobile/ads/impl/pc0$b;->b:Lcom/yandex/mobile/ads/impl/x52;

    .line 536
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 537
    iput-wide v6, v11, Lcom/yandex/mobile/ads/impl/x52;->c:J

    .line 538
    iput-wide v6, v11, Lcom/yandex/mobile/ads/impl/x52;->b:J

    const/4 v11, 0x1

    add-int/2addr v10, v11

    goto :goto_22

    .line 539
    :cond_42
    iget v3, v0, Lcom/yandex/mobile/ads/impl/pc0;->n:I

    if-ne v3, v8, :cond_43

    const/4 v8, 0x0

    .line 540
    iput-object v8, v0, Lcom/yandex/mobile/ads/impl/pc0;->w:Lcom/yandex/mobile/ads/impl/pc0$b;

    .line 541
    iget-wide v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->o:J

    add-long/2addr v6, v2

    iput-wide v6, v0, Lcom/yandex/mobile/ads/impl/pc0;->r:J

    const/4 v2, 0x2

    .line 542
    iput v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->m:I

    goto/16 :goto_0

    :cond_43
    const v6, 0x6d6f6f76

    if-eq v3, v6, :cond_44

    const v6, 0x7472616b

    if-eq v3, v6, :cond_44

    const v6, 0x6d646961

    if-eq v3, v6, :cond_44

    const v6, 0x6d696e66

    if-eq v3, v6, :cond_44

    const v6, 0x7374626c

    if-eq v3, v6, :cond_44

    if-eq v3, v9, :cond_44

    const v6, 0x74726166

    if-eq v3, v6, :cond_44

    const v6, 0x6d766578

    if-eq v3, v6, :cond_44

    const v6, 0x65647473

    if-ne v3, v6, :cond_45

    :cond_44
    const/4 v3, 0x1

    goto/16 :goto_25

    :cond_45
    const v2, 0x68646c72    # 4.3148E24f

    const-wide/32 v6, 0x7fffffff

    if-eq v3, v2, :cond_48

    const v2, 0x6d646864

    if-eq v3, v2, :cond_48

    const v2, 0x6d766864

    if-eq v3, v2, :cond_48

    if-eq v3, v5, :cond_48

    const v2, 0x73747364

    if-eq v3, v2, :cond_48

    const v2, 0x73747473

    if-eq v3, v2, :cond_48

    const v2, 0x63747473

    if-eq v3, v2, :cond_48

    const v2, 0x73747363

    if-eq v3, v2, :cond_48

    const v2, 0x7374737a

    if-eq v3, v2, :cond_48

    const v2, 0x73747a32

    if-eq v3, v2, :cond_48

    const v2, 0x7374636f

    if-eq v3, v2, :cond_48

    const v2, 0x636f3634

    if-eq v3, v2, :cond_48

    const v2, 0x73747373

    if-eq v3, v2, :cond_48

    const v2, 0x74666474

    if-eq v3, v2, :cond_48

    const v2, 0x74666864

    if-eq v3, v2, :cond_48

    const v2, 0x746b6864

    if-eq v3, v2, :cond_48

    const v2, 0x74726578

    if-eq v3, v2, :cond_48

    const v2, 0x7472756e

    if-eq v3, v2, :cond_48

    const v2, 0x70737368    # 3.013775E29f

    if-eq v3, v2, :cond_48

    const v2, 0x7361697a

    if-eq v3, v2, :cond_48

    const v2, 0x7361696f

    if-eq v3, v2, :cond_48

    const v2, 0x73656e63

    if-eq v3, v2, :cond_48

    const v2, 0x75756964

    if-eq v3, v2, :cond_48

    const v2, 0x73626770

    if-eq v3, v2, :cond_48

    const v2, 0x73677064

    if-eq v3, v2, :cond_48

    const v2, 0x656c7374

    if-eq v3, v2, :cond_48

    const v2, 0x6d656864

    if-eq v3, v2, :cond_48

    if-ne v3, v4, :cond_46

    goto :goto_23

    .line 543
    :cond_46
    iget-wide v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->o:J

    cmp-long v2, v2, v6

    if-gtz v2, :cond_47

    const/4 v2, 0x0

    .line 544
    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->q:Lcom/yandex/mobile/ads/impl/ag1;

    const/4 v2, 0x1

    .line 545
    iput v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->m:I

    goto/16 :goto_1

    .line 546
    :cond_47
    const-string v0, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    .line 547
    :cond_48
    :goto_23
    iget v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->p:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4a

    .line 548
    iget-wide v4, v0, Lcom/yandex/mobile/ads/impl/pc0;->o:J

    cmp-long v2, v4, v6

    if-gtz v2, :cond_49

    .line 549
    new-instance v2, Lcom/yandex/mobile/ads/impl/ag1;

    long-to-int v4, v4

    invoke-direct {v2, v4}, Lcom/yandex/mobile/ads/impl/ag1;-><init>(I)V

    .line 550
    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/pc0;->i:Lcom/yandex/mobile/ads/impl/ag1;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v4

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 551
    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->q:Lcom/yandex/mobile/ads/impl/ag1;

    const/4 v3, 0x1

    .line 552
    iput v3, v0, Lcom/yandex/mobile/ads/impl/pc0;->m:I

    :goto_24
    move v2, v3

    goto/16 :goto_1

    .line 553
    :cond_49
    const-string v0, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    .line 554
    :cond_4a
    const-string v0, "Leaf atom defines extended atom size (unsupported)."

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    .line 555
    :goto_25
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/wz;->a()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/yandex/mobile/ads/impl/pc0;->o:J

    add-long/2addr v4, v6

    const-wide/16 v6, 0x8

    sub-long/2addr v4, v6

    .line 556
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->j:Ljava/util/ArrayDeque;

    new-instance v6, Lcom/yandex/mobile/ads/impl/kh$a;

    iget v7, v0, Lcom/yandex/mobile/ads/impl/pc0;->n:I

    invoke-direct {v6, v7, v4, v5}, Lcom/yandex/mobile/ads/impl/kh$a;-><init>(IJ)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 557
    iget-wide v6, v0, Lcom/yandex/mobile/ads/impl/pc0;->o:J

    iget v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->p:I

    int-to-long v8, v2

    cmp-long v2, v6, v8

    if-nez v2, :cond_4b

    .line 558
    invoke-direct {v0, v4, v5}, Lcom/yandex/mobile/ads/impl/pc0;->a(J)V

    goto :goto_24

    :cond_4b
    const/4 v2, 0x0

    .line 559
    iput v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->m:I

    .line 560
    iput v2, v0, Lcom/yandex/mobile/ads/impl/pc0;->p:I

    goto :goto_24

    .line 561
    :cond_4c
    const-string v0, "Atom size less than header length (unsupported)."

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/v52;)Lcom/yandex/mobile/ads/impl/v52;
    .locals 0
    .param p1    # Lcom/yandex/mobile/ads/impl/v52;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    return-object p1
.end method

.method public final a(JJ)V
    .locals 2

    .line 562
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/pc0;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/pc0;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/pc0$b;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/pc0$b;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 564
    :cond_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/pc0;->k:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 565
    iput p2, p0, Lcom/yandex/mobile/ads/impl/pc0;->s:I

    .line 566
    iput-wide p3, p0, Lcom/yandex/mobile/ads/impl/pc0;->t:J

    .line 567
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/pc0;->j:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 568
    iput p2, p0, Lcom/yandex/mobile/ads/impl/pc0;->m:I

    .line 569
    iput p2, p0, Lcom/yandex/mobile/ads/impl/pc0;->p:I

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/b80;)V
    .locals 5

    .line 13
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pc0;->B:Lcom/yandex/mobile/ads/impl/b80;

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/yandex/mobile/ads/impl/pc0;->m:I

    .line 15
    iput p1, p0, Lcom/yandex/mobile/ads/impl/pc0;->p:I

    const/4 v0, 0x2

    .line 16
    new-array v0, v0, [Lcom/yandex/mobile/ads/impl/a62;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/pc0;->C:[Lcom/yandex/mobile/ads/impl/a62;

    .line 17
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/pc0;->l:Lcom/yandex/mobile/ads/impl/a62;

    if-eqz v1, :cond_0

    .line 18
    aput-object v1, v0, p1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, p1

    .line 19
    :goto_0
    invoke-static {v1, v0}, Lcom/yandex/mobile/ads/impl/f92;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/mobile/ads/impl/a62;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/pc0;->C:[Lcom/yandex/mobile/ads/impl/a62;

    .line 20
    array-length v1, v0

    move v2, p1

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 21
    sget-object v4, Lcom/yandex/mobile/ads/impl/pc0;->G:Lcom/yandex/mobile/ads/impl/jc0;

    invoke-interface {v3, v4}, Lcom/yandex/mobile/ads/impl/a62;->a(Lcom/yandex/mobile/ads/impl/jc0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/pc0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/yandex/mobile/ads/impl/a62;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/pc0;->D:[Lcom/yandex/mobile/ads/impl/a62;

    const/16 v0, 0x64

    .line 23
    :goto_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/pc0;->D:[Lcom/yandex/mobile/ads/impl/a62;

    array-length v1, v1

    if-ge p1, v1, :cond_2

    .line 24
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/pc0;->B:Lcom/yandex/mobile/ads/impl/b80;

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x3

    invoke-interface {v1, v0, v3}, Lcom/yandex/mobile/ads/impl/b80;->a(II)Lcom/yandex/mobile/ads/impl/a62;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/pc0;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/jc0;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/a62;->a(Lcom/yandex/mobile/ads/impl/jc0;)V

    .line 26
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/pc0;->D:[Lcom/yandex/mobile/ads/impl/a62;

    aput-object v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    move v0, v2

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/a80;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 570
    check-cast p1, Lcom/yandex/mobile/ads/impl/wz;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/u02;->a(Lcom/yandex/mobile/ads/impl/wz;)Z

    move-result p0

    return p0
.end method

.method public final release()V
    .locals 0

    return-void
.end method
