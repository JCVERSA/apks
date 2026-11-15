.class public abstract Lqn6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lqn6;


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

.method public static final b(I)Ljava/lang/String;
    .locals 3

    const-string v0, "com.mq.mgmi.client.message.internal.MIDPCatalog"

    sget-object v1, Lqn6;->a:Lqn6;

    if-nez v1, :cond_1

    const-string v1, "java.util.ResourceBundle"

    invoke-static {v1}, Lne3;->a(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    :try_start_0
    const-class v0, Lvt8;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqn6;

    sput-object v0, Lqn6;->a:Lqn6;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-object v2

    :cond_0
    invoke-static {v0}, Lne3;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqn6;

    sput-object v0, Lqn6;->a:Lqn6;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    return-object v2

    :cond_1
    :goto_0
    sget-object v0, Lqn6;->a:Lqn6;

    invoke-virtual {v0, p0}, Lqn6;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/String;
.end method
