.class public final Lcom/transsion/push/notification/c$a;
.super Lcom/transsion/push/notification/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/push/notification/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private z:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/transsion/push/notification/a;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/push/notification/c$a;->z:Landroid/content/Context;

    .line 10
    .line 11
    invoke-direct {p0, p3}, Lcom/transsion/push/notification/c$a;->Q(I)Landroid/widget/RemoteViews;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/transsion/push/notification/a;->D(Landroid/widget/RemoteViews;)V

    .line 16
    .line 17
    .line 18
    if-lez p4, :cond_0

    .line 19
    .line 20
    invoke-direct {p0, p4}, Lcom/transsion/push/notification/c$a;->Q(I)Landroid/widget/RemoteViews;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lcom/transsion/push/notification/a;->C(Landroid/widget/RemoteViews;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method private final Q(I)Landroid/widget/RemoteViews;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/RemoteViews;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/push/notification/c$a;->z:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public O(J)Lcom/transsion/push/notification/a;
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-wide v0, p1

    .line 13
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/transsion/push/notification/a;->O(J)Lcom/transsion/push/notification/a;

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/push/notification/a;->j()Landroid/widget/RemoteViews;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    sget p2, Lcom/transsion/lib/push/R$id;->time:I

    .line 23
    .line 24
    const-string v2, "setTime"

    .line 25
    .line 26
    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catch_0
    move-exception p1

    .line 31
    move-object v3, p1

    .line 32
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 33
    .line 34
    const/16 v5, 0x8

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    const-string v1, "CustomNotification"

    .line 38
    .line 39
    const-string v2, "setTime error:"

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-static/range {v0 .. v6}, Lwf/a$a;->e(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_1
    return-object p0
.end method

.method public final P()Lcom/transsion/push/notification/c;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/push/notification/a;->r()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v2, v3}, Lcom/transsion/push/notification/c$a;->O(J)Lcom/transsion/push/notification/a;

    .line 12
    .line 13
    .line 14
    :cond_0
    new-instance v0, Lcom/transsion/push/notification/c;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/transsion/push/notification/c;-><init>(Lcom/transsion/push/notification/c$a;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final R(ILandroid/graphics/Bitmap;)Lcom/transsion/push/notification/c$a;
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/push/notification/a;->i()Landroid/widget/RemoteViews;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, p1, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/push/notification/a;->i()Landroid/widget/RemoteViews;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 21
    .line 22
    .line 23
    :cond_2
    return-object p0
.end method

.method public final S(ILjava/lang/CharSequence;)Lcom/transsion/push/notification/c$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/push/notification/a;->i()Landroid/widget/RemoteViews;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-object p0
.end method

.method public final T(II)Lcom/transsion/push/notification/c$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/push/notification/a;->i()Landroid/widget/RemoteViews;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/push/notification/a;->i()Landroid/widget/RemoteViews;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-object p0
.end method

.method public final U(ILjava/lang/String;)Lcom/transsion/push/notification/c$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/transsion/push/notification/a;->B(Ljava/lang/String;)Lcom/transsion/push/notification/a;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/transsion/push/notification/c$a;->W(ILjava/lang/String;)Lcom/transsion/push/notification/c$a;

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public V(ILandroid/graphics/Bitmap;)Lcom/transsion/push/notification/c$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/push/notification/a;->j()Landroid/widget/RemoteViews;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    if-eqz p2, :cond_4

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0, p2}, Lcom/transsion/push/notification/a;->H(Landroid/graphics/Bitmap;)Lcom/transsion/push/notification/a;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/transsion/push/notification/a;->j()Landroid/widget/RemoteViews;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/push/notification/a;->j()Landroid/widget/RemoteViews;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    if-eqz p2, :cond_3

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 37
    .line 38
    .line 39
    :cond_3
    return-object p0

    .line 40
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/push/notification/a;->j()Landroid/widget/RemoteViews;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    if-eqz p2, :cond_5

    .line 45
    .line 46
    const/16 v0, 0x8

    .line 47
    .line 48
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 49
    .line 50
    .line 51
    :cond_5
    return-object p0
.end method

.method public final W(ILjava/lang/String;)Lcom/transsion/push/notification/c$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/push/notification/a;->j()Landroid/widget/RemoteViews;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-object p0
.end method

.method public final X(II)Lcom/transsion/push/notification/c$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/push/notification/a;->j()Landroid/widget/RemoteViews;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/push/notification/a;->j()Landroid/widget/RemoteViews;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-object p0
.end method
