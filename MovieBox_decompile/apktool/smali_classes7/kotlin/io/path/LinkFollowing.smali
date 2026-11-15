.class public final Lkotlin/io/path/LinkFollowing;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001b\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001b\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u000eR\u001a\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u000eR\u001a\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lkotlin/io/path/LinkFollowing;",
        "",
        "<init>",
        "()V",
        "",
        "followLinks",
        "",
        "Ljava/nio/file/LinkOption;",
        "a",
        "(Z)[Ljava/nio/file/LinkOption;",
        "",
        "Ljava/nio/file/FileVisitOption;",
        "b",
        "(Z)Ljava/util/Set;",
        "[Ljava/nio/file/LinkOption;",
        "nofollowLinkOption",
        "c",
        "followLinkOption",
        "d",
        "Ljava/util/Set;",
        "nofollowVisitOption",
        "e",
        "followVisitOption",
        "kotlin-stdlib-jdk7"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lkotlin/io/path/LinkFollowing;

.field private static final b:[Ljava/nio/file/LinkOption;

.field private static final c:[Ljava/nio/file/LinkOption;

.field private static final d:Ljava/util/Set;

.field private static final e:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkotlin/io/path/LinkFollowing;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/io/path/LinkFollowing;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlin/io/path/LinkFollowing;->a:Lkotlin/io/path/LinkFollowing;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    .line 10
    .line 11
    invoke-static {}, Lkotlin/io/path/f;->a()Ljava/nio/file/LinkOption;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object v1, v0, v2

    .line 17
    .line 18
    sput-object v0, Lkotlin/io/path/LinkFollowing;->b:[Ljava/nio/file/LinkOption;

    .line 19
    .line 20
    new-array v0, v2, [Ljava/nio/file/LinkOption;

    .line 21
    .line 22
    sput-object v0, Lkotlin/io/path/LinkFollowing;->c:[Ljava/nio/file/LinkOption;

    .line 23
    .line 24
    invoke-static {}, Lkotlin/collections/SetsKt;->f()Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lkotlin/io/path/LinkFollowing;->d:Ljava/util/Set;

    .line 29
    .line 30
    invoke-static {}, Lkotlin/io/path/g;->a()Ljava/nio/file/FileVisitOption;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lkotlin/collections/SetsKt;->d(Ljava/lang/Object;)Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lkotlin/io/path/LinkFollowing;->e:Ljava/util/Set;

    .line 39
    .line 40
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
.method public final a(Z)[Ljava/nio/file/LinkOption;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lkotlin/io/path/LinkFollowing;->c:[Ljava/nio/file/LinkOption;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lkotlin/io/path/LinkFollowing;->b:[Ljava/nio/file/LinkOption;

    .line 7
    .line 8
    :goto_0
    return-object p1
.end method

.method public final b(Z)Ljava/util/Set;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lkotlin/io/path/LinkFollowing;->e:Ljava/util/Set;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lkotlin/io/path/LinkFollowing;->d:Ljava/util/Set;

    .line 7
    .line 8
    :goto_0
    return-object p1
.end method
