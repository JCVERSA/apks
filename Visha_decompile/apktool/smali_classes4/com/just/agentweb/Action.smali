.class public final Lcom/just/agentweb/Action;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final transient ACTION_CAMERA:I = 0x3

.field public static final transient ACTION_FILE:I = 0x2

.field public static final transient ACTION_PERMISSION:I = 0x1

.field public static final transient ACTION_VIDEO:I = 0x4


# instance fields
.field private mAction:I

.field private mChooserListener:Lcom/just/agentweb/AgentActionFragment$ChooserListener;

.field private mFromIntention:I

.field private mIntent:Landroid/content/Intent;

.field private mPermissionListener:Lcom/just/agentweb/AgentActionFragment$PermissionListener;

.field private mPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRationaleListener:Lcom/just/agentweb/AgentActionFragment$RationaleListener;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/just/agentweb/Action;->mPermissions:Ljava/util/ArrayList;

    return-void
.end method

.method public static createPermissionsAction([Ljava/lang/String;)Lcom/just/agentweb/Action;
    .locals 2

    new-instance v0, Lcom/just/agentweb/Action;

    invoke-direct {v0}, Lcom/just/agentweb/Action;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/just/agentweb/Action;->setAction(I)V

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/just/agentweb/Action;->setPermissions(Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public getAction()I
    .locals 0

    iget p0, p0, Lcom/just/agentweb/Action;->mAction:I

    return p0
.end method

.method public getChooserListener()Lcom/just/agentweb/AgentActionFragment$ChooserListener;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/Action;->mChooserListener:Lcom/just/agentweb/AgentActionFragment$ChooserListener;

    return-object p0
.end method

.method public getFromIntention()I
    .locals 0

    iget p0, p0, Lcom/just/agentweb/Action;->mFromIntention:I

    return p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/Action;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getPermissionListener()Lcom/just/agentweb/AgentActionFragment$PermissionListener;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/Action;->mPermissionListener:Lcom/just/agentweb/AgentActionFragment$PermissionListener;

    return-object p0
.end method

.method public getPermissions()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/just/agentweb/Action;->mPermissions:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getRationaleListener()Lcom/just/agentweb/AgentActionFragment$RationaleListener;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/Action;->mRationaleListener:Lcom/just/agentweb/AgentActionFragment$RationaleListener;

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/just/agentweb/Action;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setAction(I)V
    .locals 0

    iput p1, p0, Lcom/just/agentweb/Action;->mAction:I

    return-void
.end method

.method public setChooserListener(Lcom/just/agentweb/AgentActionFragment$ChooserListener;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/Action;->mChooserListener:Lcom/just/agentweb/AgentActionFragment$ChooserListener;

    return-void
.end method

.method public setFromIntention(I)Lcom/just/agentweb/Action;
    .locals 0

    iput p1, p0, Lcom/just/agentweb/Action;->mFromIntention:I

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/Action;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public setPermissionListener(Lcom/just/agentweb/AgentActionFragment$PermissionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/Action;->mPermissionListener:Lcom/just/agentweb/AgentActionFragment$PermissionListener;

    return-void
.end method

.method public setPermissions(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/just/agentweb/Action;->mPermissions:Ljava/util/ArrayList;

    return-void
.end method

.method public setPermissions([Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/just/agentweb/Action;->mPermissions:Ljava/util/ArrayList;

    return-void
.end method

.method public setRationaleListener(Lcom/just/agentweb/AgentActionFragment$RationaleListener;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/Action;->mRationaleListener:Lcom/just/agentweb/AgentActionFragment$RationaleListener;

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/just/agentweb/Action;->mUri:Landroid/net/Uri;

    return-void
.end method
