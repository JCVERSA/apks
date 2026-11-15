.class public final Lcq3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/zip/Checksum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcq3$a;
    }
.end annotation


# static fields
.field public static final b:Lcq3$a;

.field public static final c:[J


# instance fields
.field public a:J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcq3$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcq3$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcq3;->b:Lcq3$a;

    const/16 v0, 0x100

    new-array v1, v0, [J

    sput-object v1, Lcq3;->c:[J

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    int-to-long v3, v2

    move v5, v1

    :goto_1
    const/16 v6, 0x8

    if-ge v5, v6, :cond_1

    const-wide/16 v6, 0x1

    and-long v8, v3, v6

    cmp-long v6, v8, v6

    const/4 v7, 0x1

    if-nez v6, :cond_0

    ushr-long/2addr v3, v7

    const-wide v6, 0x82f63b78L

    xor-long/2addr v3, v6

    goto :goto_2

    :cond_0
    ushr-long/2addr v3, v7

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    sget-object v5, Lcq3;->c:[J

    aput-wide v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 4

    const-string v0, "f"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0xffffffffL

    iput-wide v0, p0, Lcq3;->a:J

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 p1, 0x2800

    :try_start_1
    new-array p1, p1, [B

    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v2}, Lcq3;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_2
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v1, v0

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v1, v0

    :goto_1
    :try_start_3
    sget-object p1, Loq5;->a:Loq5;

    const-string v2, "FileCRC32CCheckSum"

    const-string v3, "check file crc32c error:"

    filled-new-array {v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Loq5;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    sget-object v0, Lzfb;->a:Lzfb;

    :cond_1
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    return-void

    :goto_3
    :try_start_5
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    sget-object v0, Lzfb;->a:Lzfb;

    goto :goto_4

    :catchall_3
    move-exception p1

    goto :goto_5

    :cond_2
    :goto_4
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_6

    :goto_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcq3;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(B)V
    .locals 4

    iget-wide v0, p0, Lcq3;->a:J

    long-to-int v2, v0

    xor-int/2addr p1, v2

    and-int/lit16 p1, p1, 0xff

    const/16 v2, 0x8

    ushr-long/2addr v0, v2

    sget-object v2, Lcq3;->c:[J

    aget-wide v2, v2, p1

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcq3;->a:J

    return-void
.end method

.method public getValue()J
    .locals 4

    iget-wide v0, p0, Lcq3;->a:J

    not-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public reset()V
    .locals 2

    const-wide v0, 0xffffffffL

    iput-wide v0, p0, Lcq3;->a:J

    return-void
.end method

.method public update(I)V
    .locals 0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 1
    invoke-virtual {p0, p1}, Lcq3;->b(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    const-string v0, "b"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-lez p3, :cond_0

    add-int/lit8 v0, p2, 0x1

    .line 2
    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lcq3;->b(B)V

    add-int/lit8 p3, p3, -0x1

    move p2, v0

    goto :goto_0

    :cond_0
    return-void
.end method
