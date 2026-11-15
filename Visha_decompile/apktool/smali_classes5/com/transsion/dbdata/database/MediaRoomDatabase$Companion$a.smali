.class public final Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/dbdata/migration/MigrationExecutor$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/dbdata/database/MediaRoomDatabase$Companion;->f(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 6

    const-string p0, "MediaRoomDatabase"

    const/4 v0, 0x3

    const/4 v1, 0x2

    const-string v2, "mmkv_key_video_is_migrate"

    const-string v3, "mmkv_key_audio_is_migrate"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/transsion/dbdata/utils/MigrationUtils;->a:Lcom/transsion/dbdata/utils/MigrationUtils;

    invoke-virtual {p1, v1}, Lcom/transsion/dbdata/utils/MigrationUtils;->u(I)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/utils/MigrationUtils;->g()I

    move-result p1

    if-eq p1, v5, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    invoke-virtual {p1, v2, v4}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    invoke-virtual {p1, v2, v4}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    :goto_0
    const-string p1, "Playlist migration success"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/transsion/dbdata/utils/MigrationUtils;->a:Lcom/transsion/dbdata/utils/MigrationUtils;

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/utils/MigrationUtils;->u(I)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/utils/MigrationUtils;->g()I

    move-result p1

    if-eq p1, v5, :cond_6

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    invoke-virtual {p1, v3, v5}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    invoke-virtual {p1, v2, v5}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    invoke-virtual {p1, v2, v5}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    invoke-virtual {p1, v3, v5}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    :goto_1
    const-string p1, "Playlist migration failed"

    invoke-static {p0, p1}, Lvmb;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 p1, 0x4a1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method
