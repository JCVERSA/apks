.class public final synthetic Ljs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/fragments/AudioMainFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljs;->a:Lcom/transsion/audio/fragments/AudioMainFragment;

    return-void
.end method


# virtual methods
.method public final onOverScrollUpdated(F)V
    .locals 0

    iget-object p0, p0, Ljs;->a:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/AudioMainFragment;->v0(Lcom/transsion/audio/fragments/AudioMainFragment;F)V

    return-void
.end method
