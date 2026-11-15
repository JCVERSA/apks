.class public final synthetic Lv28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/fragments/PlayBaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/fragments/PlayBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv28;->a:Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    return-void
.end method


# virtual methods
.method public final onOverScrollUpdated(F)V
    .locals 0

    iget-object p0, p0, Lv28;->a:Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->P(Lcom/transsion/playercommon/fragments/PlayBaseFragment;F)V

    return-void
.end method
