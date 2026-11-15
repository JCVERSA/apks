.class public abstract Lkr8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkr8$a;
    }
.end annotation


# static fields
.field public static final a:Lpq5;

.field public static volatile b:Z

.field public static final c:Ljava/lang/Object;

.field public static d:I

.field public static final e:Lfs6;

.field public static final f:J

.field public static final g:J

.field public static final h:J

.field public static final i:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "freemarker.runtime"

    invoke-static {v0}, Lpq5;->k(Ljava/lang/String;)Lpq5;

    move-result-object v0

    sput-object v0, Lkr8;->a:Lpq5;

    invoke-virtual {v0}, Lpq5;->t()Z

    move-result v0

    sput-boolean v0, Lkr8;->b:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkr8;->c:Ljava/lang/Object;

    new-instance v0, Lfs6;

    const/16 v1, 0x32

    const/16 v2, 0x96

    invoke-direct {v0, v1, v2}, Lfs6;-><init>(II)V

    sput-object v0, Lkr8;->e:Lfs6;

    const/4 v0, 0x2

    invoke-static {v0}, Lkr8;->d(I)J

    move-result-wide v0

    sput-wide v0, Lkr8;->f:J

    const/16 v0, 0x8

    invoke-static {v0}, Lkr8;->d(I)J

    move-result-wide v0

    sput-wide v0, Lkr8;->g:J

    const/4 v0, 0x4

    invoke-static {v0}, Lkr8;->d(I)J

    move-result-wide v0

    sput-wide v0, Lkr8;->h:J

    const/16 v0, 0x20

    invoke-static {v0}, Lkr8;->d(I)J

    move-result-wide v0

    sput-wide v0, Lkr8;->i:J

    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lkr8;->b(Ljava/lang/String;JZ)V

    return-void
.end method

.method public static b(Ljava/lang/String;JZ)V
    .locals 4

    if-nez p3, :cond_0

    sget-boolean v0, Lkr8;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-wide v0, Lkr8;->g:J

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-string p1, "m"

    goto :goto_0

    :cond_1
    sget-wide v0, Lkr8;->i:J

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const-string p1, "s"

    goto :goto_0

    :cond_2
    sget-wide v0, Lkr8;->h:J

    and-long/2addr p1, v0

    cmp-long p1, p1, v2

    if-eqz p1, :cond_4

    const-string p1, "c"

    :goto_0
    const-string p2, " doesn\'t support the \""

    const-string v0, "\" flag without the \"r\" flag."

    const-string v1, "?"

    filled-new-array {v1, p0, p2, p1, v0}, [Ljava/lang/Object;

    move-result-object p0

    if-nez p3, :cond_3

    new-instance p1, Lq0d;

    invoke-direct {p1, p0}, Lq0d;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p1}, Lq0d;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkr8;->e(Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance p1, Lfreemarker/core/_TemplateModelException;

    invoke-direct {p1, p0}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    throw p1

    :cond_4
    return-void
.end method

.method public static c(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    .locals 3

    new-instance v0, Lkr8$a;

    invoke-direct {v0, p0, p1}, Lkr8$a;-><init>(Ljava/lang/String;I)V

    sget-object v1, Lkr8;->e:Lfs6;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, v0}, Lfs6;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    monitor-enter v1

    :try_start_2
    invoke-virtual {v1, v0, p0}, Lfs6;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lfreemarker/core/_TemplateModelException;

    const-string v0, "Malformed regular expression: "

    new-instance v1, Li0d;

    invoke-direct {v1, p0}, Li0d;-><init>(Ljava/lang/Throwable;)V

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw p1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public static d(I)J
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lkr8;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lkr8;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lkr8;->d:I

    const/16 v2, 0x19

    if-ge v1, v2, :cond_2

    add-int/lit8 v3, v1, 0x1

    sput v3, Lkr8;->d:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " This will be an error in some later FreeMarker version!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " [Will not log more regular expression flag problems until restart!]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    sget-object v0, Lkr8;->a:Lpq5;

    invoke-virtual {v0, p0}, Lpq5;->z(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :try_start_1
    sput-boolean p0, Lkr8;->b:Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static f(Ljava/lang/String;)J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x63

    if-eq v3, v4, :cond_5

    const/16 v4, 0x66

    if-eq v3, v4, :cond_4

    const/16 v4, 0x69

    if-eq v3, v4, :cond_3

    const/16 v4, 0x6d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x72

    if-eq v3, v4, :cond_1

    const/16 v4, 0x73

    if-eq v3, v4, :cond_0

    sget-boolean v4, Lkr8;->b:Z

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unrecognized regular expression flag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ln0a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkr8;->e(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    sget-wide v3, Lkr8;->i:J

    :goto_1
    or-long/2addr v0, v3

    goto :goto_2

    :cond_1
    const-wide v3, 0x100000000L

    goto :goto_1

    :cond_2
    sget-wide v3, Lkr8;->g:J

    goto :goto_1

    :cond_3
    sget-wide v3, Lkr8;->f:J

    goto :goto_1

    :cond_4
    const-wide v3, 0x200000000L

    goto :goto_1

    :cond_5
    sget-wide v3, Lkr8;->h:J

    goto :goto_1

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-wide v0
.end method
