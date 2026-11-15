.class public final Lcom/yandex/mobile/ads/impl/ju0$b;
.super Lcom/yandex/mobile/ads/impl/i52;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/ju0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final c:Lcom/yandex/mobile/ads/impl/jw0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/jw0;)V
    .locals 0

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/i52;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ju0$b;->c:Lcom/yandex/mobile/ads/impl/jw0;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public final a(Ljava/lang/Object;)I
    .locals 0

    .line 2
    sget-object p0, Lcom/yandex/mobile/ads/impl/ju0$a;->f:Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final a(ILcom/yandex/mobile/ads/impl/i52$b;Z)Lcom/yandex/mobile/ads/impl/i52$b;
    .locals 10

    const/4 p0, 0x0

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v1, p1

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    if-eqz p3, :cond_1

    .line 4
    sget-object p0, Lcom/yandex/mobile/ads/impl/ju0$a;->f:Ljava/lang/Object;

    :cond_1
    move-object v2, p0

    sget-object v8, Lcom/yandex/mobile/ads/impl/n5;->h:Lcom/yandex/mobile/ads/impl/n5;

    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p2

    .line 5
    invoke-virtual/range {v0 .. v9}, Lcom/yandex/mobile/ads/impl/i52$b;->a(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/yandex/mobile/ads/impl/n5;Z)Lcom/yandex/mobile/ads/impl/i52$b;

    return-object p2
.end method

.method public final a(ILcom/yandex/mobile/ads/impl/i52$d;J)Lcom/yandex/mobile/ads/impl/i52$d;
    .locals 21

    move-object/from16 v15, p2

    move-object/from16 v0, p2

    .line 6
    sget-object v1, Lcom/yandex/mobile/ads/impl/i52$d;->s:Ljava/lang/Object;

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/yandex/mobile/ads/impl/ju0$b;->c:Lcom/yandex/mobile/ads/impl/jw0;

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v20}, Lcom/yandex/mobile/ads/impl/i52$d;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/jw0;Ljava/lang/Object;JJJZZLcom/yandex/mobile/ads/impl/jw0$e;JJIIJ)Lcom/yandex/mobile/ads/impl/i52$d;

    const/4 v0, 0x1

    move-object/from16 v1, p2

    .line 7
    iput-boolean v0, v1, Lcom/yandex/mobile/ads/impl/i52$d;->m:Z

    return-object v1
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 0

    .line 8
    sget-object p0, Lcom/yandex/mobile/ads/impl/ju0$a;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public final b()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
