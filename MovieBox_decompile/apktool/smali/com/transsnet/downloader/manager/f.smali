.class public final Lcom/transsnet/downloader/manager/f;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/manager/f$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsnet/downloader/manager/f$a;

.field private static final b:Lkotlin/Lazy;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:I

.field private static final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsnet/downloader/manager/f$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsnet/downloader/manager/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsnet/downloader/manager/f;->a:Lcom/transsnet/downloader/manager/f$a;

    .line 8
    .line 9
    new-instance v0, Lcom/transsnet/downloader/manager/e;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/transsnet/downloader/manager/e;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/transsnet/downloader/manager/f;->b:Lkotlin/Lazy;

    .line 19
    .line 20
    const-string v0, "key_next_dl_type"

    .line 21
    .line 22
    sput-object v0, Lcom/transsnet/downloader/manager/f;->c:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "key_last_download_time"

    .line 25
    .line 26
    sput-object v0, Lcom/transsnet/downloader/manager/f;->d:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "key_today_downloaded_times"

    .line 29
    .line 30
    sput-object v0, Lcom/transsnet/downloader/manager/f;->e:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    sput v0, Lcom/transsnet/downloader/manager/f;->f:I

    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    sput v1, Lcom/transsnet/downloader/manager/f;->g:I

    .line 37
    .line 38
    sput v0, Lcom/transsnet/downloader/manager/f;->i:I

    .line 39
    .line 40
    sput v1, Lcom/transsnet/downloader/manager/f;->j:I

    .line 41
    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Lcom/transsnet/downloader/manager/f;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/manager/f;->i()Lcom/transsnet/downloader/manager/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic b()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsnet/downloader/manager/f;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsnet/downloader/manager/f;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d()I
    .locals 1

    .line 1
    sget v0, Lcom/transsnet/downloader/manager/f;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic e()I
    .locals 1

    .line 1
    sget v0, Lcom/transsnet/downloader/manager/f;->g:I

    .line 2
    .line 3
    return v0
.end method

.method private static final i()Lcom/transsnet/downloader/manager/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsnet/downloader/manager/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/downloader/manager/f;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final f()I
    .locals 1

    .line 1
    sget v0, Lcom/transsnet/downloader/manager/f;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public final g()V
    .locals 5

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lcom/transsnet/downloader/manager/f;->d:Ljava/lang/String;

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/c0;->f(J)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Lcom/transsnet/downloader/manager/f;->e:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sget-object v3, Lcom/transsnet/downloader/manager/f;->e:Ljava/lang/String;

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-virtual {v1, v3, v4}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    add-int/2addr v1, v2

    .line 48
    invoke-virtual {v0, v3, v1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method public final h()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsnet/downloader/manager/f;->f()I

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final j(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "subject"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsnet/downloader/manager/f;->f()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    sget p2, Lcom/transsnet/downloader/manager/f;->h:I

    .line 16
    .line 17
    if-ne p1, p2, :cond_0

    .line 18
    .line 19
    if-eqz p3, :cond_0

    .line 20
    .line 21
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
