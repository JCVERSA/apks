.class public final Lni/f$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lni/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lcom/bumptech/glide/Priority;

.field private p:Lkotlin/jvm/functions/Function3;

.field private q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lni/f$b;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {}, Lcom/blankj/utilcode/util/y;->b()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    div-int/lit8 p1, p1, 0x2

    .line 16
    .line 17
    iput p1, p0, Lni/f$b;->b:I

    .line 18
    .line 19
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lni/f$b;->c:I

    .line 24
    .line 25
    iput p1, p0, Lni/f$b;->d:I

    .line 26
    .line 27
    iput v0, p0, Lni/f$b;->e:I

    .line 28
    .line 29
    const-string p1, ""

    .line 30
    .line 31
    iput-object p1, p0, Lni/f$b;->f:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p1, p0, Lni/f$b;->g:Ljava/lang/String;

    .line 34
    .line 35
    sget p1, Lcom/transsion/base/image/R$color;->image_default:I

    .line 36
    .line 37
    iput p1, p0, Lni/f$b;->h:I

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lni/f$b;->j:Z

    .line 41
    .line 42
    iput-boolean p1, p0, Lni/f$b;->k:Z

    .line 43
    .line 44
    iput-boolean p1, p0, Lni/f$b;->l:Z

    .line 45
    .line 46
    sget-object p1, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    .line 47
    .line 48
    iput-object p1, p0, Lni/f$b;->o:Lcom/bumptech/glide/Priority;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final a(I)Lni/f$b;
    .locals 0

    .line 1
    iput p1, p0, Lni/f$b;->q:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final b(Lkotlin/jvm/functions/Function3;)Lni/f$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lni/f$b;->p:Lkotlin/jvm/functions/Function3;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c(I)Lni/f$b;
    .locals 0

    .line 1
    iput p1, p0, Lni/f$b;->e:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lni/f$b;->n:Z

    .line 5
    .line 6
    return-object p0
.end method

.method public final d(Landroid/widget/ImageView;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    const-string v1, "imageView"

    .line 6
    .line 7
    move-object/from16 v2, p1

    .line 8
    .line 9
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lni/f;->a:Lni/f$a;

    .line 13
    .line 14
    iget-object v2, v0, Lni/f$b;->a:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v4, v0, Lni/f$b;->f:Ljava/lang/String;

    .line 17
    .line 18
    iget v5, v0, Lni/f$b;->h:I

    .line 19
    .line 20
    iget v6, v0, Lni/f$b;->d:I

    .line 21
    .line 22
    iget v7, v0, Lni/f$b;->e:I

    .line 23
    .line 24
    iget v8, v0, Lni/f$b;->i:I

    .line 25
    .line 26
    iget-boolean v9, v0, Lni/f$b;->j:Z

    .line 27
    .line 28
    iget-object v10, v0, Lni/f$b;->g:Ljava/lang/String;

    .line 29
    .line 30
    iget-boolean v11, v0, Lni/f$b;->k:Z

    .line 31
    .line 32
    iget-boolean v12, v0, Lni/f$b;->l:Z

    .line 33
    .line 34
    iget-boolean v13, v0, Lni/f$b;->m:Z

    .line 35
    .line 36
    iget-boolean v14, v0, Lni/f$b;->n:Z

    .line 37
    .line 38
    iget-object v15, v0, Lni/f$b;->o:Lcom/bumptech/glide/Priority;

    .line 39
    .line 40
    move-object/from16 p1, v1

    .line 41
    .line 42
    iget v1, v0, Lni/f$b;->q:I

    .line 43
    .line 44
    move/from16 v16, v1

    .line 45
    .line 46
    iget-object v1, v0, Lni/f$b;->p:Lkotlin/jvm/functions/Function3;

    .line 47
    .line 48
    move-object/from16 v17, v1

    .line 49
    .line 50
    move-object/from16 v1, p1

    .line 51
    .line 52
    invoke-static/range {v1 .. v17}, Lni/f$a;->b(Lni/f$a;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIIZLjava/lang/String;ZZZZLcom/bumptech/glide/Priority;ILkotlin/jvm/functions/Function3;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final e(Z)Lni/f$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lni/f$b;->k:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final f(Z)Lni/f$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lni/f$b;->j:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lni/f$b;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    :cond_0
    iput-object p1, p0, Lni/f$b;->f:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0
.end method

.method public final h(Z)Lni/f$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lni/f$b;->m:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final i(I)Lni/f$b;
    .locals 0

    .line 1
    iput p1, p0, Lni/f$b;->h:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final j(I)Lni/f$b;
    .locals 0

    .line 1
    iput p1, p0, Lni/f$b;->i:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final k(Z)Lni/f$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lni/f$b;->l:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final l(Ljava/lang/String;)Lni/f$b;
    .locals 1

    .line 1
    const-string v0, "thumbnail"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lni/f$b;->g:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final m(I)Lni/f$b;
    .locals 0

    .line 1
    iput p1, p0, Lni/f$b;->d:I

    .line 2
    .line 3
    return-object p0
.end method
