.class public abstract Ln7c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashSet;

.field public static final b:Ljava/util/HashSet;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ln7c;->a:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Ln7c;->b:Ljava/util/HashSet;

    const-string v2, "%.stl%"

    const-string v3, "%.ttml%"

    const-string v4, "%.srt%"

    const-string v5, "%.ass%"

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Ln7c;->c:[Ljava/lang/String;

    const-string v7, "%.smi%"

    const-string v8, "%.utf8%"

    const-string v3, "%.srt%"

    const-string v4, "%.txt%"

    const-string v5, "%.ass%"

    const-string v6, "%.ssa%"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Ln7c;->d:[Ljava/lang/String;

    const-string v2, "%.idx%"

    const-string v3, "%.sub%"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Ln7c;->e:[Ljava/lang/String;

    const-string v9, ".smi"

    const-string v10, ".utf8"

    const-string v3, ".srt"

    const-string v4, ".txt"

    const-string v5, ".ass"

    const-string v6, ".ssa"

    const-string v7, ".idx"

    const-string v8, ".sub"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, ".stl"

    const-string v4, ".ttml"

    const-string v5, ".srt"

    const-string v6, ".ass"

    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, ".srt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".txt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".idx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".sub"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lpp3;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ln7c;->a:Ljava/util/HashSet;

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_1

    :cond_0
    sget-object v0, Ln7c;->b:Ljava/util/HashSet;

    goto :goto_0

    :goto_1
    return p0
.end method
