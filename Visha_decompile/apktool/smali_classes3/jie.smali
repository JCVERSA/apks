.class public final Ljie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltge;


# instance fields
.field public final a:Lyhe;

.field public final b:[J

.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/Map;

.field public final e:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lyhe;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljie;->a:Lyhe;

    iput-object p3, p0, Ljie;->d:Ljava/util/Map;

    iput-object p4, p0, Ljie;->e:Ljava/util/Map;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Ljie;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lyhe;->h()[J

    move-result-object p1

    iput-object p1, p0, Ljie;->b:[J

    return-void
.end method


# virtual methods
.method public final a(J)Ljava/util/List;
    .locals 6

    iget-object v3, p0, Ljie;->c:Ljava/util/Map;

    iget-object v4, p0, Ljie;->d:Ljava/util/Map;

    iget-object v5, p0, Ljie;->e:Ljava/util/Map;

    iget-object v0, p0, Ljie;->a:Lyhe;

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lyhe;->e(JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final zza()I
    .locals 0

    iget-object p0, p0, Ljie;->b:[J

    array-length p0, p0

    return p0
.end method

.method public final zzb(I)J
    .locals 0

    iget-object p0, p0, Ljie;->b:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method
