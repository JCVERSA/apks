.class Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP/TKC$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Sj:I

.field final synthetic sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP/TKC$2;->Sj:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP/TKC$2;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;->e(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "video_http_header_t"

    .line 12
    .line 13
    const-string v2, "flag=?"

    .line 14
    .line 15
    iget v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP/TKC$2;->Sj:I

    .line 16
    .line 17
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    filled-new-array {v3}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    :catchall_0
    return-void
.end method
