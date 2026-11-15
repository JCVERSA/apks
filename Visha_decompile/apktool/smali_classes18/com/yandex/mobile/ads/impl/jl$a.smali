.class public final Lcom/yandex/mobile/ads/impl/jl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ex1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/jl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/jl$d;

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:J

.field private final g:J


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/jl$d;JJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jl$a;->a:Lcom/yandex/mobile/ads/impl/jl$d;

    iput-wide p2, p0, Lcom/yandex/mobile/ads/impl/jl$a;->b:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/jl$a;->c:J

    iput-wide p4, p0, Lcom/yandex/mobile/ads/impl/jl$a;->d:J

    iput-wide p6, p0, Lcom/yandex/mobile/ads/impl/jl$a;->e:J

    iput-wide p8, p0, Lcom/yandex/mobile/ads/impl/jl$a;->f:J

    iput-wide p10, p0, Lcom/yandex/mobile/ads/impl/jl$a;->g:J

    return-void
.end method

.method public static bridge synthetic a(Lcom/yandex/mobile/ads/impl/jl$a;)Lcom/yandex/mobile/ads/impl/jl$d;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jl$a;->a:Lcom/yandex/mobile/ads/impl/jl$d;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/yandex/mobile/ads/impl/jl$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/jl$a;->c:J

    return-wide v0
.end method

.method public static bridge synthetic c(Lcom/yandex/mobile/ads/impl/jl$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/jl$a;->d:J

    return-wide v0
.end method

.method public static bridge synthetic d(Lcom/yandex/mobile/ads/impl/jl$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/jl$a;->e:J

    return-wide v0
.end method

.method public static bridge synthetic e(Lcom/yandex/mobile/ads/impl/jl$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/jl$a;->f:J

    return-wide v0
.end method

.method public static bridge synthetic f(Lcom/yandex/mobile/ads/impl/jl$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/jl$a;->g:J

    return-wide v0
.end method


# virtual methods
.method public final b(J)Lcom/yandex/mobile/ads/impl/ex1$a;
    .locals 13

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jl$a;->a:Lcom/yandex/mobile/ads/impl/jl$d;

    .line 4
    invoke-interface {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/jl$d;->a(J)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/yandex/mobile/ads/impl/jl$a;->c:J

    iget-wide v5, p0, Lcom/yandex/mobile/ads/impl/jl$a;->d:J

    iget-wide v7, p0, Lcom/yandex/mobile/ads/impl/jl$a;->e:J

    iget-wide v9, p0, Lcom/yandex/mobile/ads/impl/jl$a;->f:J

    iget-wide v11, p0, Lcom/yandex/mobile/ads/impl/jl$a;->g:J

    .line 5
    invoke-static/range {v1 .. v12}, Lcom/yandex/mobile/ads/impl/jl$c;->a(JJJJJJ)J

    move-result-wide v0

    .line 6
    new-instance p0, Lcom/yandex/mobile/ads/impl/ex1$a;

    new-instance v2, Lcom/yandex/mobile/ads/impl/gx1;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/yandex/mobile/ads/impl/gx1;-><init>(JJ)V

    .line 7
    invoke-direct {p0, v2, v2}, Lcom/yandex/mobile/ads/impl/ex1$a;-><init>(Lcom/yandex/mobile/ads/impl/gx1;Lcom/yandex/mobile/ads/impl/gx1;)V

    return-object p0
.end method

.method public final b()Z
    .locals 0

    .line 2
    const/4 p0, 0x1

    return p0
.end method

.method public final c()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/jl$a;->b:J

    return-wide v0
.end method
