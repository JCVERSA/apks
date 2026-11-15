.class public final Ldja$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldja;->n(ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ldja;

.field public final synthetic c:I

.field public final synthetic d:Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;


# direct methods
.method public constructor <init>(Ldja;ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V
    .locals 0

    iput-object p1, p0, Ldja$f;->b:Ldja;

    iput p2, p0, Ldja$f;->c:I

    iput-object p3, p0, Ldja$f;->d:Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Ldja$f;->b:Ldja;

    iget v1, p0, Ldja$f;->c:I

    iget-object p0, p0, Ldja$f;->d:Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;

    invoke-static {v0, v1, p0}, Ldja;->h(Ldja;ILcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)Z

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ldja$f;->a()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
