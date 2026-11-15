.class public final synthetic Lm20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudiosFragment$d;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudiosFragment$d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm20;->b:Lcom/transsion/audio/fragments/AudiosFragment$d;

    iput p2, p0, Lm20;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lm20;->b:Lcom/transsion/audio/fragments/AudiosFragment$d;

    iget p0, p0, Lm20;->c:I

    invoke-static {v0, p0}, Lcom/transsion/audio/fragments/AudiosFragment$d;->j(Lcom/transsion/audio/fragments/AudiosFragment$d;I)V

    return-void
.end method
