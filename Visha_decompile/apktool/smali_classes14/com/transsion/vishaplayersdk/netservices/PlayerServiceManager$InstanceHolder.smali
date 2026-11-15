.class final Lcom/transsion/vishaplayersdk/netservices/PlayerServiceManager$InstanceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishaplayersdk/netservices/PlayerServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/transsion/vishaplayersdk/netservices/PlayerServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceManager;-><init>(Lkb8;)V

    sput-object v0, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceManager$InstanceHolder;->INSTANCE:Lcom/transsion/vishaplayersdk/netservices/PlayerServiceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lcom/transsion/vishaplayersdk/netservices/PlayerServiceManager;
    .locals 1

    sget-object v0, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceManager$InstanceHolder;->INSTANCE:Lcom/transsion/vishaplayersdk/netservices/PlayerServiceManager;

    return-object v0
.end method
