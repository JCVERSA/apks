.class public final synthetic Ltp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/retrofit/cache/CacheManager;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/retrofit/cache/CacheManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltp0;->b:Lcom/transsion/retrofit/cache/CacheManager;

    iput-object p2, p0, Ltp0;->c:Ljava/lang/String;

    iput-object p3, p0, Ltp0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ltp0;->b:Lcom/transsion/retrofit/cache/CacheManager;

    iget-object v1, p0, Ltp0;->c:Ljava/lang/String;

    iget-object p0, p0, Ltp0;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/transsion/retrofit/cache/CacheManager;->a(Lcom/transsion/retrofit/cache/CacheManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
