.class public final Ldja$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldja;->v(Landroid/content/Context;III)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ldja;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Ldja;I)V
    .locals 0

    iput-object p1, p0, Ldja$d;->b:Ldja;

    iput p2, p0, Ldja$d;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Ldja$d;->b:Ldja;

    invoke-virtual {v0}, Ldja;->r()Lbja;

    move-result-object v0

    iget v1, p0, Ldja$d;->c:I

    invoke-virtual {v0, v1}, Lbja;->t(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldja$d;->b:Ldja;

    iget p0, p0, Ldja$d;->c:I

    sget-object v1, Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;->MILESTONE_PASSED:Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;

    invoke-static {v0, p0, v1}, Ldja;->h(Ldja;ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ldja$d;->a()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
