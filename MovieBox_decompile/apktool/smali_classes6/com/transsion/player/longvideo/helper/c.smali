.class public final Lcom/transsion/player/longvideo/helper/c;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Lmn/j;

.field private final b:J

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:F

.field private g:Z

.field private h:Z

.field private i:Lcom/transsion/player/longvideo/ui/LongVodUiType;


# direct methods
.method public constructor <init>(Lmn/j;)V
    .locals 2

    .line 1
    const-string v0, "viewBinding"

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
    iput-object p1, p0, Lcom/transsion/player/longvideo/helper/c;->a:Lmn/j;

    .line 10
    .line 11
    const-wide/16 v0, 0xc8

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/transsion/player/longvideo/helper/c;->b:J

    .line 14
    .line 15
    const/high16 p1, 0x41c00000    # 24.0f

    .line 16
    .line 17
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Lcom/transsion/player/longvideo/helper/c;->c:I

    .line 22
    .line 23
    const/high16 p1, 0x41800000    # 16.0f

    .line 24
    .line 25
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lcom/transsion/player/longvideo/helper/c;->d:I

    .line 30
    .line 31
    const/high16 p1, 0x41a00000    # 20.0f

    .line 32
    .line 33
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Lcom/transsion/player/longvideo/helper/c;->e:I

    .line 38
    .line 39
    const/high16 p1, 0x3f800000    # 1.0f

    .line 40
    .line 41
    iput p1, p0, Lcom/transsion/player/longvideo/helper/c;->f:F

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/transsion/player/longvideo/helper/c;->h:Z

    .line 45
    .line 46
    sget-object p1, Lcom/transsion/player/longvideo/ui/LongVodUiType;->MIDDLE:Lcom/transsion/player/longvideo/ui/LongVodUiType;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/transsion/player/longvideo/helper/c;->i:Lcom/transsion/player/longvideo/ui/LongVodUiType;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/player/longvideo/helper/c;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public final c(Lcom/transsion/player/longvideo/ui/LongVodUiType;)V
    .locals 1

    .line 1
    const-string v0, "uiType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d()V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(JJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f()V
    .locals 0

    .line 1
    return-void
.end method
