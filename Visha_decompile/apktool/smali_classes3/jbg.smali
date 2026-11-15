.class public final Ljbg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leuf;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Map;

.field public final d:Lvyi;

.field public final e:Lsdg;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lvyi;Lsdg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljbg;->a:Ljava/util/Map;

    iput-object p2, p0, Ljbg;->b:Ljava/util/Map;

    iput-object p3, p0, Ljbg;->c:Ljava/util/Map;

    iput-object p4, p0, Ljbg;->d:Lvyi;

    iput-object p5, p0, Ljbg;->e:Lsdg;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Lkxg;
    .locals 2

    iget-object v0, p0, Ljbg;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkxg;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    return-object v1

    :cond_1
    iget-object p1, p0, Ljbg;->c:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkzg;

    if-eqz p1, :cond_2

    new-instance v1, Llxg;

    new-instance p0, Lguf;

    invoke-direct {p0}, Lguf;-><init>()V

    invoke-direct {v1, p1, p0}, Llxg;-><init>(Lkxg;Lm2i;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Ljbg;->b:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkxg;

    if-nez p0, :cond_5

    :goto_0
    return-object v1

    :cond_3
    iget-object v0, p0, Ljbg;->e:Lsdg;

    invoke-virtual {v0}, Lsdg;->e()Lcom/google/android/gms/internal/ads/zzbhe;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object p0, p0, Ljbg;->d:Lvyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Leuf;

    invoke-interface {p0, p1, p2}, Leuf;->a(ILjava/lang/String;)Lkxg;

    move-result-object p0

    if-nez p0, :cond_5

    :goto_1
    return-object v1

    :cond_5
    new-instance p1, Llxg;

    new-instance p2, Lhuf;

    invoke-direct {p2}, Lhuf;-><init>()V

    invoke-direct {p1, p0, p2}, Llxg;-><init>(Lkxg;Lm2i;)V

    return-object p1
.end method
