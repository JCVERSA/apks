.class public final synthetic Lrm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/fragments/AudioBaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudioBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrm;->a:Lcom/transsion/audio/fragments/AudioBaseFragment;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lrm;->a:Lcom/transsion/audio/fragments/AudioBaseFragment;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->l0(Lcom/transsion/audio/fragments/AudioBaseFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
