.class public final synthetic Le20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudiosFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudiosFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le20;->b:Lcom/transsion/audio/fragments/AudiosFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Le20;->b:Lcom/transsion/audio/fragments/AudiosFragment;

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudiosFragment;->m2(Lcom/transsion/audio/fragments/AudiosFragment;)V

    return-void
.end method
