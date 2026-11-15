.class public final synthetic Lb38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/fragments/PlayBaseFragment;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/fragments/PlayBaseFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb38;->b:Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    iput-boolean p2, p0, Lb38;->c:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lb38;->b:Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    iget-boolean p0, p0, Lb38;->c:Z

    invoke-static {v0, p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->R(Lcom/transsion/playercommon/fragments/PlayBaseFragment;ZLandroid/view/View;)V

    return-void
.end method
