.class final Lcom/transsion/retrofit/cache/CacheManager$InstanceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/retrofit/cache/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/transsion/retrofit/cache/CacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/retrofit/cache/CacheManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/retrofit/cache/CacheManager;-><init>(Lvp0;)V

    sput-object v0, Lcom/transsion/retrofit/cache/CacheManager$InstanceHolder;->INSTANCE:Lcom/transsion/retrofit/cache/CacheManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lcom/transsion/retrofit/cache/CacheManager;
    .locals 1

    sget-object v0, Lcom/transsion/retrofit/cache/CacheManager$InstanceHolder;->INSTANCE:Lcom/transsion/retrofit/cache/CacheManager;

    return-object v0
.end method
