.class public final Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static onConversationMessage(Lcom/transsion/vishatransfer/manager/callback/VishaSocketServerListener;Lcom/transsion/vishatransfer/data/Conversation;)V
    .locals 0

    const-string p0, "conversation"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
