.class public Lj07;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj07$a;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lt13;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lj07;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj07;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lyx2;->h:Ljava/lang/String;

    iput-object v0, p0, Lj07;->a:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lmv4;->c(Ljava/lang/String;)Z

    .line 5
    new-instance v0, Lt13;

    invoke-direct {v0}, Lt13;-><init>()V

    iput-object v0, p0, Lj07;->b:Lt13;

    .line 6
    invoke-static {}, Lyv5;->c()Lyv5;

    move-result-object p0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyv5;->d(Landroid/content/Context;)V

    .line 7
    invoke-static {}, Lyv5;->c()Lyv5;

    move-result-object p0

    sget-object v0, Lcom/transsion/sniffer_load/okdownload/M3U8DownloadTask;->sM3U8DownloadListener:Ltz2;

    invoke-virtual {p0, v0}, Lyv5;->g(Ltz2;)V

    return-void
.end method

.method public synthetic constructor <init>(Lk07;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj07;-><init>()V

    return-void
.end method

.method public static a()Lj07;
    .locals 1

    invoke-static {}, Lj07$a;->a()Lj07;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()Lt13;
    .locals 0

    iget-object p0, p0, Lj07;->b:Lt13;

    return-object p0
.end method
