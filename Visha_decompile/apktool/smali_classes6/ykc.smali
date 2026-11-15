.class public Lykc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Lykc;


# instance fields
.field public a:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lykc;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Lykc;
    .locals 2

    sget-object v0, Lykc;->b:Lykc;

    if-nez v0, :cond_1

    const-class v0, Lykc;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lykc;->b:Lykc;

    if-nez v1, :cond_0

    new-instance v1, Lykc;

    invoke-direct {v1}, Lykc;-><init>()V

    sput-object v1, Lykc;->b:Lykc;

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
    sget-object v0, Lykc;->b:Lykc;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lykc;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method public c(Ljava/util/ArrayList;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WhatsApp] setVideosList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WhatsAppVideoList"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lykc;->a:Ljava/util/ArrayList;

    return-void
.end method
