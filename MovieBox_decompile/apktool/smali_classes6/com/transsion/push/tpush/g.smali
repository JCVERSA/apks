.class public final Lcom/transsion/push/tpush/g;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/push/tpush/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/push/tpush/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/push/tpush/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/push/tpush/g;->a:Lcom/transsion/push/tpush/g;

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
.method public final a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "contentBitmap"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    return-object p2

    .line 14
    :cond_0
    sget-object v1, Lcom/transsion/push/utils/a;->a:Lcom/transsion/push/utils/a;

    .line 15
    .line 16
    const/16 p3, 0x47

    .line 17
    .line 18
    invoke-static {p3}, Llj/a;->b(I)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    sget-object p3, Lcom/transsion/push/helper/e;->a:Lcom/transsion/push/helper/e;

    .line 23
    .line 24
    invoke-virtual {p3}, Lcom/transsion/push/helper/e;->g()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    const/4 p3, 0x4

    .line 29
    invoke-static {p3}, Llj/a;->b(I)I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    const/4 v6, 0x0

    .line 34
    move-object v2, p1

    .line 35
    move-object v3, p2

    .line 36
    invoke-virtual/range {v1 .. v7}, Lcom/transsion/push/utils/a;->e(Landroid/content/Context;Landroid/graphics/Bitmap;IIZI)Landroid/graphics/Bitmap;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move-object p2, p1

    .line 44
    :goto_0
    return-object p2
.end method

.method public final b(Landroid/content/Context;IZ)Lcom/transsion/push/notification/c$a;
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    new-instance p3, Lcom/transsion/push/notification/c$a;

    .line 9
    .line 10
    sget v0, Lcom/transsion/lib/push/R$layout;->push_notification_normal_vertical_small:I

    .line 11
    .line 12
    sget v1, Lcom/transsion/lib/push/R$layout;->push_notification_normal_vertical_big:I

    .line 13
    .line 14
    invoke-direct {p3, p1, p2, v0, v1}, Lcom/transsion/push/notification/c$a;-><init>(Landroid/content/Context;III)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p3, Lcom/transsion/push/notification/c$a;

    .line 19
    .line 20
    sget v0, Lcom/transsion/lib/push/R$layout;->push_notification_normal_small:I

    .line 21
    .line 22
    sget v1, Lcom/transsion/lib/push/R$layout;->push_notification_big_picture:I

    .line 23
    .line 24
    invoke-direct {p3, p1, p2, v0, v1}, Lcom/transsion/push/notification/c$a;-><init>(Landroid/content/Context;III)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-object p3
.end method

.method public final c(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "contentBitmap"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/transsion/push/utils/a;->a:Lcom/transsion/push/utils/a;

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    const/16 p3, 0x28

    .line 16
    .line 17
    :goto_0
    invoke-static {p3}, Llj/a;->b(I)I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    move v4, p3

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/16 p3, 0x64

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :goto_1
    const/16 p3, 0x38

    .line 27
    .line 28
    invoke-static {p3}, Llj/a;->b(I)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const/4 p3, 0x4

    .line 33
    invoke-static {p3}, Llj/a;->b(I)I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    const/4 v6, 0x0

    .line 38
    move-object v2, p1

    .line 39
    move-object v3, p2

    .line 40
    invoke-virtual/range {v1 .. v7}, Lcom/transsion/push/utils/a;->e(Landroid/content/Context;Landroid/graphics/Bitmap;IIZI)Landroid/graphics/Bitmap;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_1
    move-object p2, p1

    .line 48
    :goto_2
    return-object p2
.end method
