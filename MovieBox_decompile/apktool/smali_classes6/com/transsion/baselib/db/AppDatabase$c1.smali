.class public final Lcom/transsion/baselib/db/AppDatabase$c1;
.super Lx3/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baselib/db/AppDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x7

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    invoke-direct {p0, v0, v1}, Lx3/b;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public b(Lz3/d;)V
    .locals 1

    .line 1
    const-string v0, "database"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "CREATE TABLE IF NOT EXISTS PERMANENT_MSG (`id` INTEGER NOT NULL, `deep_link_list` TEXT, `desc` TEXT, `image_list` TEXT, `message_id` TEXT, `style` TEXT, `title` TEXT, PRIMARY KEY(`id`))"

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "CREATE TABLE IF NOT EXISTS MSG (`id` INTEGER NOT NULL, `deep_link` TEXT, `desc` TEXT, `image_list` TEXT, `message_id` TEXT, `style` TEXT, `title` TEXT, `source` TEXT, `type` TEXT, `receive_time` INTEGER, `msg_status` INTEGER NOT NULL, `show_time` INTEGER, `force_show` INTEGER NOT NULL, PRIMARY KEY(`id`))"

    .line 12
    .line 13
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
