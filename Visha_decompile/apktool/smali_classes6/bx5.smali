.class public Lbx5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbx5$a;
    }
.end annotation


# static fields
.field public static volatile b:Lbx5;


# instance fields
.field public a:Lbx5$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbx5;
    .locals 2

    sget-object v0, Lbx5;->b:Lbx5;

    if-nez v0, :cond_1

    const-class v0, Lbx5;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbx5;->b:Lbx5;

    if-nez v1, :cond_0

    new-instance v1, Lbx5;

    invoke-direct {v1}, Lbx5;-><init>()V

    sput-object v1, Lbx5;->b:Lbx5;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lbx5;->b:Lbx5;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    iget-object p0, p0, Lbx5;->a:Lbx5$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lbx5$a;->a(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_0
    return-void
.end method

.method public c(Lbx5$a;)V
    .locals 0

    iput-object p1, p0, Lbx5;->a:Lbx5$a;

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lbx5$a;->a(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_0
    return-void
.end method
