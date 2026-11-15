.class public abstract Line;
.super Lcom/google/android/gms/internal/ads/c;
.source "SourceFile"


# instance fields
.field public final n:Ljava/lang/Object;

.field public final o:Ljme;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljme;Lime;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/ads/c;-><init>(ILjava/lang/String;Lime;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Line;->n:Ljava/lang/Object;

    iput-object p3, p0, Line;->o:Ljme;

    return-void
.end method


# virtual methods
.method public final a(Lfme;)Lkme;
    .locals 9

    :try_start_0
    new-instance p0, Ljava/lang/String;

    iget-object v0, p1, Lfme;->b:[B

    iget-object v1, p1, Lfme;->c:Ljava/util/Map;

    const-string v2, "ISO-8859-1"

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "Content-Type"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v3, ";"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    move v5, v3

    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_2

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    aget-object v7, v6, v4

    const-string v8, "charset"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    aget-object v2, v6, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {p0, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance p0, Ljava/lang/String;

    iget-object v0, p1, Lfme;->b:[B

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    :goto_2
    invoke-static {p1}, Lane;->b(Lfme;)Lxle;

    move-result-object p1

    invoke-static {p0, p1}, Lkme;->b(Ljava/lang/Object;Lxle;)Lkme;

    move-result-object p0

    return-object p0
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Line;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Line;->o:Ljme;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0, p1}, Ljme;->zza(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
