.class public final Lcom/bumptech/glide/util/pool/GlideTrace;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final COOKIE_CREATOR:Ljava/util/concurrent/atomic/AtomicInteger; = null

.field private static final MAX_LENGTH:I = 0x7f

.field private static final TRACING_ENABLED:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
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

.method public static beginSection(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static beginSectionAsync(Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public static beginSectionFormat(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static beginSectionFormat(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2
    return-void
.end method

.method public static beginSectionFormat(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 3
    return-void
.end method

.method public static endSection()V
    .locals 0

    .line 1
    return-void
.end method

.method public static endSectionAsync(Ljava/lang/String;I)V
    .locals 0

    .line 1
    return-void
.end method

.method private static truncateTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x7f

    .line 6
    .line 7
    if-le v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/16 v1, 0x7e

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_0
    return-object p0
.end method
