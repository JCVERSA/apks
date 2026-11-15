.class public final synthetic Lis;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/fragments/PlayBaseFragment$b;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/fragments/AudioMainFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudioMainFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lis;->a:Lcom/transsion/audio/fragments/AudioMainFragment;

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;)V
    .locals 0

    iget-object p0, p0, Lis;->a:Lcom/transsion/audio/fragments/AudioMainFragment;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->nestedScroll(Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;)V

    return-void
.end method
