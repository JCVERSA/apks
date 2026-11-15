.class public final Leji;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Leri;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Leri;->b([B)Leri;

    move-result-object v0

    sput-object v0, Leji;->b:Leri;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Ldji;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leji;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a([B)Ljava/lang/Iterable;
    .locals 4

    iget-object v0, p0, Leji;->a:Ljava/util/Map;

    sget-object v1, Leji;->b:Leri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    array-length v2, p1

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-static {p1, v2, v3}, Leri;->c([BII)Leri;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    return-object p1

    :cond_3
    if-nez p1, :cond_4

    return-object v1

    :cond_4
    new-instance v0, Laji;

    invoke-direct {v0, p0, p1, v1}, Laji;-><init>(Leji;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
