.class public final synthetic La38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/fragments/PlayBaseFragment;

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/fragments/PlayBaseFragment;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La38;->b:Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    iput-boolean p2, p0, La38;->c:Z

    iput-boolean p3, p0, La38;->d:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, La38;->b:Lcom/transsion/playercommon/fragments/PlayBaseFragment;

    iget-boolean v1, p0, La38;->c:Z

    iget-boolean p0, p0, La38;->d:Z

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->T(Lcom/transsion/playercommon/fragments/PlayBaseFragment;ZZLandroid/view/View;)V

    return-void
.end method
