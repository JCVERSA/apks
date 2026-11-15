.class final Lcom/transsion/letswitch/ipc/type/ParcelableFactory$DefaultInstanceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/letswitch/ipc/type/ParcelableFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultInstanceHolder"
.end annotation


# static fields
.field private static final defaultInstance:Lcom/transsion/letswitch/ipc/type/ParcelableFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/letswitch/ipc/type/ParcelableFactory;-><init>(Lmw7;)V

    sput-object v0, Lcom/transsion/letswitch/ipc/type/ParcelableFactory$DefaultInstanceHolder;->defaultInstance:Lcom/transsion/letswitch/ipc/type/ParcelableFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lcom/transsion/letswitch/ipc/type/ParcelableFactory;
    .locals 1

    sget-object v0, Lcom/transsion/letswitch/ipc/type/ParcelableFactory$DefaultInstanceHolder;->defaultInstance:Lcom/transsion/letswitch/ipc/type/ParcelableFactory;

    return-object v0
.end method
