.class public final synthetic Lvja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/tiktok/TiktokFragment;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvja;->b:Lcom/transsion/onlinevideo/tiktok/TiktokFragment;

    iput p2, p0, Lvja;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lvja;->b:Lcom/transsion/onlinevideo/tiktok/TiktokFragment;

    iget p0, p0, Lvja;->c:I

    invoke-static {v0, p0}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->P(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;I)V

    return-void
.end method
