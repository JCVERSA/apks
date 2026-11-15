.class public final Lnn/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lnn/a;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnn/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lnn/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnn/a;->a:Lnn/a;

    .line 7
    .line 8
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
.method public final a(Lln/a;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lln/a;->v()Lcom/transsion/player/enum/PlayMimeType;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/transsion/player/enum/PlayMimeType;->DASH:Lcom/transsion/player/enum/PlayMimeType;

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    const-string p1, "3"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lln/a;->v()Lcom/transsion/player/enum/PlayMimeType;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lcom/transsion/player/enum/PlayMimeType;->HLS:Lcom/transsion/player/enum/PlayMimeType;

    .line 22
    .line 23
    if-ne v0, v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1}, Lln/a;->w()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const-string p1, "5"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string p1, "6"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p1}, Lln/a;->j()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lln/c;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1}, Lln/c;->j()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    const/4 v0, 0x1

    .line 54
    if-ne p1, v0, :cond_3

    .line 55
    .line 56
    const-string p1, "4"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const-string p1, "0"

    .line 60
    .line 61
    :goto_0
    return-object p1
.end method

.method public final b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lnn/a;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final c(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lnn/a;->b:Z

    .line 2
    .line 3
    return-void
.end method
