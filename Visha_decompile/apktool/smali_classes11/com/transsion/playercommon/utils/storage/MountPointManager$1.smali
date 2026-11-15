.class Lcom/transsion/playercommon/utils/storage/MountPointManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/utils/storage/MountPointManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/transsion/playercommon/utils/storage/MountPointManager$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/utils/storage/MountPointManager;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/utils/storage/MountPointManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/utils/storage/MountPointManager$1;->this$0:Lcom/transsion/playercommon/utils/storage/MountPointManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/transsion/playercommon/utils/storage/MountPointManager$b;Lcom/transsion/playercommon/utils/storage/MountPointManager$b;)I
    .locals 3

    .line 2
    iget-boolean p0, p1, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->d:Z

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p0, :cond_3

    iget-boolean v2, p2, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->d:Z

    if-nez v2, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-boolean p0, p1, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->e:Z

    if-eqz p0, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    iget-boolean p0, p2, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->e:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    :goto_2
    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;

    check-cast p2, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/utils/storage/MountPointManager$1;->compare(Lcom/transsion/playercommon/utils/storage/MountPointManager$b;Lcom/transsion/playercommon/utils/storage/MountPointManager$b;)I

    move-result p0

    return p0
.end method
