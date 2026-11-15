.class public final synthetic Lss;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudioMainFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lss;->b:Lcom/transsion/audio/fragments/AudioMainFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lss;->b:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {p0}, Lcom/transsion/audio/fragments/AudioMainFragment;->u0(Lcom/transsion/audio/fragments/AudioMainFragment;)V

    return-void
.end method
