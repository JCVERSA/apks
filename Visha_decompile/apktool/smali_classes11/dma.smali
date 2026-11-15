.class public final synthetic Ldma;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

.field public final synthetic c:Lc74;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Lc74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldma;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    iput-object p2, p0, Ldma;->c:Lc74;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ldma;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    iget-object p0, p0, Ldma;->c:Lc74;

    invoke-static {v0, p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->E(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Lc74;)V

    return-void
.end method
