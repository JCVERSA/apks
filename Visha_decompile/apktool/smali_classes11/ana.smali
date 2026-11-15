.class public final synthetic Lana;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

.field public final synthetic c:Lc74;

.field public final synthetic d:Lc74;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Lc74;Lc74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lana;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    iput-object p2, p0, Lana;->c:Lc74;

    iput-object p3, p0, Lana;->d:Lc74;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lana;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;

    iget-object v1, p0, Lana;->c:Lc74;

    iget-object p0, p0, Lana;->d:Lc74;

    invoke-static {v0, v1, p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;->w(Lcom/transsion/onlinevideo/tiktok/TiktokVideoPagerAdapter;Lc74;Lc74;)V

    return-void
.end method
