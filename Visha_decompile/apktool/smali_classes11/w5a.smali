.class public abstract Lw5a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljw4;

.field public static final b:Ljw4;

.field public static final c:Ljw4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw07;

    invoke-direct {v0}, Lw07;-><init>()V

    sput-object v0, Lw5a;->a:Ljw4;

    new-instance v0, Ltm5;

    invoke-direct {v0}, Ltm5;-><init>()V

    sput-object v0, Lw5a;->b:Ljw4;

    new-instance v0, Lwr9;

    invoke-direct {v0}, Lwr9;-><init>()V

    sput-object v0, Lw5a;->c:Ljw4;

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 1

    invoke-static {}, Lw5a;->b()Ljw4;

    move-result-object v0

    invoke-interface {v0}, Ljw4;->l()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljw4;
    .locals 1

    invoke-static {}, Lw;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lw5a;->a:Ljw4;

    return-object v0

    :cond_0
    invoke-static {}, Lw;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lw5a;->b:Ljw4;

    return-object v0

    :cond_1
    sget-object v0, Lw5a;->c:Ljw4;

    return-object v0
.end method

.method public static c(Ljava/util/List;)V
    .locals 1

    invoke-static {}, Lw5a;->b()Ljw4;

    move-result-object v0

    invoke-interface {v0, p0}, Ljw4;->c(Ljava/util/List;)V

    return-void
.end method

.method public static d(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Z)V
    .locals 1

    invoke-static {}, Lw5a;->b()Ljw4;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljw4;->d(Lcom/transsion/playercommon/subtitle/model/AILaunageConfig;Z)V

    return-void
.end method
