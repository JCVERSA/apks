.class Lcom/cloud/hisavana/sdk/w5$b;
.super Landroidx/room/l0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/w5;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/cloud/hisavana/sdk/w5;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/w5;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/w5$b;->d:Lcom/cloud/hisavana/sdk/w5;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/room/l0;-><init>(Landroidx/room/RoomDatabase;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "DELETE FROM attr_impression_room WHERE _id IN (SELECT _id FROM attr_impression_room ORDER BY _id ASC LIMIT ?)"

    .line 2
    .line 3
    return-object v0
.end method
