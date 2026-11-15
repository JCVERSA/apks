.class public final synthetic Lqma;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lc74;

.field public final synthetic c:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;


# direct methods
.method public synthetic constructor <init>(Lc74;Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqma;->b:Lc74;

    iput-object p2, p0, Lqma;->c:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lqma;->b:Lc74;

    iget-object p0, p0, Lqma;->c:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    invoke-static {v0, p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->D(Lc74;Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;)V

    return-void
.end method
