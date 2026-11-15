.class public final synthetic Ly31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly31;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Ly31;->b:Ljava/util/List;

    invoke-static {p0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a(Ljava/util/List;)V

    return-void
.end method
